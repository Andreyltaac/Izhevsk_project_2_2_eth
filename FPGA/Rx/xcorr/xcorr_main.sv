module xcorr_main #(
parameter premb_addr = "D:\\FPGA\\xcorr\\sig_pr.txt"
)(
	input 						clk_l,
	input						clk,
	input 						rst,
	input signed	[11:0]		data_i,
	input signed	[11:0]		data_q,
	input 			[2:0]		band_in,
	input						ival,
	input			[23:0]		thr_lvl,
	input			[13:0]		addr_shft,

	(* mark_debug = "true" *)output logic signed [11:0]		odata_i,
	(* mark_debug = "true" *)output logic signed [11:0]		odata_q,

	output logic		[17:0]		peak_i,
	output logic		[17:0]		peak_q,

	output logic					osop,
	output logic					oval,
	output logic					corr_dtct
);

localparam wind_mean_sz = 128;

// `include "../../input_data/preamb_corr.svh";

// reg [23:0]	sig_pr [2047:0];
reg [10:0]	count_pr_0, count_pr_1;
reg	[10:0]	count_val;
reg			val_0, val_1;
wire				val_sig1, val_sig2, eop_sig1, eop_sig2;
reg			index_upsamp,  val_sig, index_ifft;

initial begin
	// $readmemb(premb_addr,sig_pr);
	index_upsamp	<= 0;
	index_ifft		<= 0;
end

logic signed [11:0] pream_i_0, pream_q_0;
wire signed [11:0]	sig_c_i1, sig_c_q1, sig_c_i2, sig_c_q2;
reg signed [11:0]	sig_c_i, sig_c_q;

wire signed [11:0] 	data_fft_i_0, 	 	data_fft_q_0;
logic signed [11:0]	data_fft_i_0_n, 	data_fft_q_0_n;
logic signed [23:0]	data_fft_mx_ii, 	data_fft_mx_qq, data_fft_mx_iq, data_fft_mx_qi;
reg signed [11:0]	data_fft_i_0_n_1, 	data_fft_q_0_n_1;
reg signed [15:0] 	data_mx_i_0, 	data_mx_q_0;

wire signed [15:0] 	data_ifft_i_0, 	data_ifft_q_0;
wire signed [17:0] data_ifft_i_wire_n, data_ifft_q_wire_n;
reg signed [17:0]	data_ifft_i_0_n, 	data_ifft_q_0_n;

wire signed [17:0] 	data_ifft_i_0_n_ds,	data_ifft_q_0_n_ds;
wire		[39:0]	data_ifft_iq_ds0, data_ifft_iq_ds1;

reg signed [17:0]	data_ifft_i_reg, data_ifft_q_reg, data_ifft_i_reg_0, data_ifft_q_reg_0, data_ifft_i_reg_1, data_ifft_q_reg_1;

reg signed [17:0] data_ifft_i_reg_1_rsl	[wind_mean_sz/2-1:0];
reg signed [17:0] data_ifft_q_reg_1_rsl	[wind_mean_sz/2-1:0]; 

wire	[4:0]	exp_ifft_0;
wire	[7:0]	exp_fft_0;

reg signed [17:0] 	data_abs_0, data_abs_1, data_abs_2, data_abs_3;
reg signed [23:0] 	data_abs_mx, data_abs_mx_0, data_abs_mx_1 ,data_abs_mx_thr;

wire signed [17:0] 	data_ifft_i_0_abs,	data_ifft_q_0_abs;
wire signed [17:0] 	data_ifft_i_abs, 	data_ifft_q_abs;

wire				val_fft_0, val_fft_1, eop_fft_0, eop_fft_1;
wire				val_ifft_0, eop_ifft_0;
reg					val_downsamp;
wire				val_ifft_0_ds, val_ifft_1_ds;
reg					ival_ifft_0, ival_ifft_1, val_fft_01,val_fft_02,val_fft_03, val_fft_11;





always @(posedge clk_l)begin
	if(rst)
		count_val <= '0;
	else if(count_val == 11'd1025)
		count_val <= count_val;
	else if(ival)
		count_val <= count_val + 1'd1;
end

initial begin
	val_1 <= '0;
	val_0 <= '0;
end

always @(posedge clk_l) begin
	if(rst)
		val_0 <= 1'd0;
	else if(count_val == 11'd1)
		val_0 <= '1;
end

always @(posedge clk_l) begin
	if(rst)
		val_1 <= 1'd0;
	else if(count_val == 11'd1025)
		val_1 <= '1;
end

data_upsampler #(
    .DATA_WIDTH		(12),
	.BUFFER_DEPTH	(2048)
)
data_upsampler_sub1(
	.clk_in		(clk_l),
	.clk_out	(clk),
	.rst		(rst),
	.in_data_i	(data_i),
	.in_data_q	(data_q),
	.in_valid	(val_0),
	.out_data_i	(sig_c_i1),
	.out_data_q	(sig_c_q1),
	.out_valid	(val_sig1),
	.out_eop	(eop_sig1)
);



data_upsampler #(
    .DATA_WIDTH		(12),
	.BUFFER_DEPTH	(2048)
)
data_upsampler_sub2(
	.clk_in		(clk_l),
	.clk_out	(clk),
	.rst		(rst),
	.in_data_i	(data_i),
	.in_data_q	(data_q),
	.in_valid	(val_1),
	.out_data_i	(sig_c_i2),
	.out_data_q	(sig_c_q2),
	.out_valid	(val_sig2),
	.out_eop	(eop_sig2)
);



always @(posedge clk) begin
	if(rst) begin
		sig_c_i <= 0;
		sig_c_q <= 0;
		val_sig <= 0;
	end
	else if(index_upsamp) begin
		sig_c_i <= sig_c_i2;
		sig_c_q <= sig_c_q2;
		val_sig <= val_sig2;
	end
	else begin
		sig_c_i <= sig_c_i1;
		sig_c_q <= sig_c_q1;
		val_sig <= val_sig1;
	end
end

always @(posedge clk) begin
	if(rst)
		index_upsamp <= 0;
	else if(eop_sig1)
		index_upsamp <= 1;
	else if(eop_sig2)
		index_upsamp <= 0;
end


xcorr_fft_sub
xcorr_fft_sub_s0(
	.clk		(clk),
	.rst		(rst),
	.ival		(val_sig),
	.data_i		(sig_c_i),
	.data_q		(sig_c_q),
	.conf		(8'd1),
	.odata_i	(data_fft_i_0),
	.odata_q	(data_fft_q_0),
	.oexp		(exp_fft_0),
	.oval		(val_fft_0),
	.oeop		(eop_fft_0)
);



always @(posedge clk) begin
	if(rst)
		count_pr_0 <= '0;
	else if(val_fft_0)
		count_pr_0 <= count_pr_0 + 1'd1;
	else
		count_pr_0 <= '0;
end 

wire [23:0]		preamb_ram;

ram_preamb#(
	.DEPTH_LOG2	(11),
	.WORD_W    	(24),
	.NUM_BANDS 	(5)
)
ram_preamb_sub
(
	.clk		(clk),
	.addr		(count_pr_0),
	.band		(band_in),
	.odat		(preamb_ram)
);




always @(posedge clk) begin

	pream_i_0 		<= preamb_ram[23:12];
	pream_q_0 		<= preamb_ram[11:0];

	data_fft_i_0_n_1 	<= data_fft_i_0 >>> (8'd9 - exp_fft_0);
	data_fft_q_0_n_1 	<= data_fft_q_0 >>> (8'd9 - exp_fft_0);

	data_fft_i_0_n <= data_fft_i_0_n_1;
	data_fft_q_0_n <= data_fft_q_0_n_1;

	data_fft_mx_ii <= (data_fft_i_0_n * pream_i_0);
	data_fft_mx_qq <= (data_fft_q_0_n * pream_q_0);
	data_fft_mx_iq <= (data_fft_i_0_n * pream_q_0);
	data_fft_mx_qi <= (data_fft_q_0_n * pream_i_0);

	data_mx_i_0 <= data_fft_mx_ii / 64 - data_fft_mx_qq / 64;
	data_mx_q_0 <= data_fft_mx_iq / 64 + data_fft_mx_qi / 64;

	val_fft_01	<= val_fft_0;
	val_fft_02  <= val_fft_01;
	val_fft_03	<= val_fft_02;
	ival_ifft_0 <= val_fft_03;

end


xcorr_ifft_sub
xcorr_ifft_sub_s0(
	.clk		(clk),
	.rst		(rst),
	.ival		(ival_ifft_0),
	.data_i		(data_mx_i_0),
	.data_q		(data_mx_q_0),
	.conf		(8'd0),
	.odata_i	(data_ifft_i_0),
	.odata_q	(data_ifft_q_0),
	.oexp		(exp_ifft_0),
	.oval		(val_ifft_0),
	.oeop		(eop_ifft_0)
);


reg [10:0] count_mx;

always @(posedge clk) begin
	if(rst)
		index_ifft <= 0;
	else if(eop_ifft_0)
		index_ifft <= ~index_ifft;
end

always @(posedge clk) begin
	if(rst) begin
		data_ifft_i_0_n <= '0;
		data_ifft_q_0_n <= '0;
		count_mx <= '0;
	end
	else begin
		data_ifft_i_0_n = (data_ifft_i_0) >>> (5'd8 - exp_ifft_0);
		data_ifft_q_0_n = (data_ifft_q_0) >>> (5'd8 - exp_ifft_0);

		if(index_ifft & count_mx > 1023 & val_ifft_0) begin
			val_downsamp <= val_ifft_0;
			count_mx <= count_mx + 1'd1;
		end
		else if(~index_ifft & count_mx <= 1023 & val_ifft_0)begin
			val_downsamp <= val_ifft_0;
			count_mx <= count_mx + 1'd1;
		end
		else 
			val_downsamp <= '0;
	end
end

axis_fifo_downsamp axis_fifo_downsamp_sub0 (
  .s_axis_aresetn	(~rst),			// input wire s_axis_aresetn
  .s_axis_aclk		(clk),			// input wire s_axis_aclk
  .s_axis_tvalid	(val_downsamp),		// input wire s_axis_tvalid
  .s_axis_tready	(),				// output wire s_axis_tready
  .s_axis_tdata		({{4{0}},data_ifft_i_0_n, data_ifft_q_0_n}),		// input wire [23 : 0] s_axis_tdata

  .m_axis_aclk		(clk_l),		// input wire m_axis_aclk
  .m_axis_tvalid	(val_ifft_0_ds),	// output wire m_axis_tvalid
  .m_axis_tready	(1'd1),			// input wire m_axis_tready
  .m_axis_tdata		(data_ifft_iq_ds0)	// output wire [23 : 0] m_axis_tdata
);

assign data_ifft_q_0_n_ds = data_ifft_iq_ds0[17:0];
assign data_ifft_i_0_n_ds = data_ifft_iq_ds0[35:18];






assign data_ifft_i_0_abs = data_ifft_i_0_n_ds >= 0 ? data_ifft_i_0_n_ds : -data_ifft_i_0_n_ds;
assign data_ifft_q_0_abs = data_ifft_q_0_n_ds >= 0 ? data_ifft_q_0_n_ds : -data_ifft_q_0_n_ds;

assign data_ifft_i_abs = data_ifft_i_0_abs;
assign data_ifft_q_abs = data_ifft_q_0_abs;

assign data_ifft_i_wire_n = data_ifft_i_0_n_ds;
assign data_ifft_q_wire_n = data_ifft_q_0_n_ds;

always @(posedge clk_l) begin
	data_abs_0 <= data_ifft_i_abs;
	data_abs_1 <= (((data_ifft_i_abs << 1) + (data_ifft_i_abs << 2) + (data_ifft_i_abs)) >> 3) + (data_ifft_q_abs >> 1);
	data_abs_2 <= (((data_ifft_q_abs << 1) + (data_ifft_q_abs << 2) + (data_ifft_q_abs)) >> 3) + (data_ifft_i_abs >> 1);
	data_abs_3 <= data_ifft_q_abs;

	data_ifft_i_reg <= data_ifft_i_wire_n;
	data_ifft_q_reg <= data_ifft_q_wire_n;

end

always @(posedge clk_l) begin
	if(rst) begin
		data_abs_mx_0 <= '0;
		data_abs_mx_1 <= '0;
		data_abs_mx <= '0;
	end
	else begin
		data_abs_mx_0 <= (data_abs_0 > data_abs_1) ? data_abs_0 : data_abs_1;
		data_abs_mx_1 <= (data_abs_2 > data_abs_3) ? data_abs_2 : data_abs_3;
		data_abs_mx   <= (data_abs_mx_0 > data_abs_mx_1) ? data_abs_mx_0 : data_abs_mx_1;

		data_ifft_i_reg_0 <= data_ifft_i_reg;
		data_ifft_q_reg_0 <= data_ifft_q_reg;

		data_ifft_i_reg_1 <= data_ifft_i_reg_0;
		data_ifft_q_reg_1 <= data_ifft_q_reg_0;
	end
end


wire [23:0]		thr_lvl_mean;

int i;

always @(posedge clk_l) begin
    if (rst) begin
        for (i = 0; i < wind_mean_sz/2; i = i + 1) begin
            data_ifft_i_reg_1_rsl[i] <= '0;
			data_ifft_q_reg_1_rsl[i] <= '0;
		end
    end
    else begin
        for (i = wind_mean_sz/2-1; i > 0; i = i - 1) begin
            data_ifft_i_reg_1_rsl[i] <= data_ifft_i_reg_1_rsl[i-1];
            data_ifft_q_reg_1_rsl[i] <= data_ifft_q_reg_1_rsl[i-1];
		end
        data_ifft_i_reg_1_rsl[0] <= data_ifft_i_reg_1;
        data_ifft_q_reg_1_rsl[0] <= data_ifft_q_reg_1;
    end
end

calculate_mean #(
	.width_Dat	(24),
	.Wind_size	(wind_mean_sz)
	// .koef		(5)
)
calculate_mean_sub
(
	.clk		(clk_l),
	.rst		(rst),	
	.data_in	(data_abs_mx),
	.koef		(thr_lvl),
	.data_out	(data_abs_mx_thr),
	.Calc_mean	(thr_lvl_mean)
);

find_max#(32, 24)
find_max_sub(
	.clk		(clk_l),
	.rst		(rst),
	.corr_in	(data_abs_mx_thr),
	.data_i		(data_ifft_i_reg_1_rsl[wind_mean_sz/2-1]),
	.data_q		(data_ifft_q_reg_1_rsl[wind_mean_sz/2-1]),
	.thr_lvl	(thr_lvl_mean),
	.odata_i	(peak_i),
	.odata_q	(peak_q),
	.osop		(osop)
);

//////////////////////////////////////////////
reg [13:0]	count_r, count_w;


ram #(14)
ram_sub(
	.clk		(clk_l),
	.rst		(rst),
	.isub_i		(data_i),
	.isub_q		(data_q),
	.count_r	(count_r),
	.count_w	(count_w),
	.osub_i		(odata_i),
	.osub_q		(odata_q)
);

always @(posedge clk_l)
	if(rst)
		count_w <= '0;
	else if(ival)
		count_w <= count_w + 1'd1;
	
always @(posedge clk_l)
	if(rst)
		count_r <= '0;
	else if(ival)
		count_r <= count_w - addr_shft;

endmodule