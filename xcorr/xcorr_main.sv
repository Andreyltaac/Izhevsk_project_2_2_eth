//`include "../../input_data/pream_tsync_band_all.svh"
module xcorr_main #(
parameter premb_addr = ""
)(
	input 						clk,
	input 						rst,
	input signed	[11:0]		data_i,
	input signed	[11:0]		data_q,
	input						ival,
	input			[23:0]		thr_lvl,
	input			[13:0]		addr_shft,
	input logic     [2:0]       index_bw,

	output logic signed [11:0]		odata_i,
	output logic signed [11:0]		odata_q,

	output logic		[17:0]		peak_i,
	output logic		[17:0]		peak_q,

	output logic					osop,
	output logic					oval,
	output logic					corr_dtct
);




reg [13:0]	count_pr_0, count_pr_1;
reg	[10:0]	count_val;
reg			val_0, val_1;

/* initial begin
	$readmemb(premb_addr,sig_pr);
end */

(* mark_debug = "true" *) logic signed [11:0] pream_i_0; 
(* mark_debug = "true" *) logic signed [11:0] pream_q_0;
(* mark_debug = "true" *) logic signed [11:0] pream_i_1;
(* mark_debug = "true" *) logic signed [11:0] pream_q_1;

wire signed [11:0] 	data_fft_i_0, 	data_fft_i_1, 	data_fft_q_0, data_fft_q_1;
logic signed [11:0] 	data_fft_i_0_n, 	data_fft_i_1_n, 	data_fft_q_0_n, data_fft_q_1_n;
reg signed [15:0] 	data_mx_i_0, 	data_mx_i_1,	data_mx_q_0, data_mx_q_1;

wire signed [15:0] 	data_ifft_i_0, 	data_ifft_i_1,	data_ifft_q_0, data_ifft_q_1;
wire signed [17:0] 	data_ifft_i_0_n, 	data_ifft_i_1_n,	data_ifft_q_0_n, data_ifft_q_1_n, data_ifft_i_wire_n, data_ifft_q_wire_n;

reg signed [17:0]	data_ifft_i_reg, data_ifft_q_reg, data_ifft_i_reg_0, data_ifft_q_reg_0;

(* mark_debug = "true" *) reg signed [17:0] data_ifft_i_reg_1;
(* mark_debug = "true" *) reg signed [17:0] data_ifft_q_reg_1;

wire	[4:0]	exp_ifft_0, exp_ifft_1;
wire	[7:0]	exp_fft_0, exp_fft_1;

reg signed [17:0] 	data_abs_0, data_abs_1, data_abs_2, data_abs_3;
reg signed [23:0]   data_abs_mx_0, data_abs_mx_1;
(* mark_debug = "true" *) reg signed [23:0] 	data_abs_mx;
wire signed [17:0] 	data_ifft_i_0_abs, 	data_ifft_i_1_abs,	data_ifft_q_0_abs, data_ifft_q_1_abs;
wire signed [17:0] 	data_ifft_i_abs, 	data_ifft_q_abs;

wire				val_fft_0, val_fft_1, eop_fft_0, eop_fft_1;
wire				val_ifft_0, val_ifft_1, eop_ifft_0, eop_ifft_1;
reg					ival_ifft_0, ival_ifft_1;

logic [23:0]	sig_pr_0;
logic [23:0]	sig_pr_1;

prb_tsync_ram#(
	.depht_ram	(14)
)
prb_tsync_ram_sub_0
(
	.clk	    (clk),
	.addr	    (count_pr_0),
	.index_bw	(index_bw),
	.odat	    (sig_pr_0)
);


prb_tsync_ram#(
	.depht_ram	(14)
)
prb_tsync_ram_sub_1
(
	.clk	    (clk),
	.addr	    (count_pr_1),
	.index_bw	(index_bw),
	.odat	    (sig_pr_1)
);


assign pream_i_0 = sig_pr_0[23:12];
assign pream_q_0 = sig_pr_0[11:0];

assign pream_i_1 = sig_pr_1[23:12];
assign pream_q_1 = sig_pr_1[11:0]; 


always @(posedge clk)begin
	if(rst)
		count_val <= '0;
	else if(count_val == 11'd1025)
		count_val <= count_val;
	else
		count_val <= count_val + 1'd1;
end

initial begin
	val_1 <= '0;
	val_0 <= '0;
end

always @(posedge clk) begin
	if(rst)
		val_0 <= 1'd0;
	else if(count_val == 11'd1)
		val_0 <= '1;
end

always @(posedge clk) begin
	if(rst)
		val_1 <= 1'd0;
	else if(count_val == 11'd1025)
		val_1 <= '1;
end

xcorr_fft_sub
xcorr_fft_sub_s0(
	.clk		(clk),
	.rst		(rst),
	.ival		(val_0),
	.data_i		(data_i),
	.data_q		(data_q),
	.conf		(8'd1),
	.odata_i	(data_fft_i_0),
	.odata_q	(data_fft_q_0),
	.oexp		(exp_fft_0),
	.oval		(val_fft_0),
	.oeop		(eop_fft_0)
);

xcorr_fft_sub
xcorr_fft_sub_s1(
	.clk		(clk),
	.rst		(rst),
	.ival		(val_1),
	.data_i		(data_i),
	.data_q		(data_q),
	.conf		(8'd1),
	.odata_i	(data_fft_i_1),
	.odata_q	(data_fft_q_1),
	.oexp		(exp_fft_1),
	.oval		(val_fft_1),
	.oeop		(eop_fft_1)
);

always @(posedge clk) begin
	if(rst)
		count_pr_0 <= '0;
	else if(eop_fft_0)
		count_pr_0 <= '0;
	else if(val_fft_0)
		count_pr_0 <= count_pr_0 + 1'd1;
end 
always @(posedge clk) begin
	if(rst)
		count_pr_1 <= '0;
	else if(eop_fft_1)
		count_pr_1 <= '0;
	else if(val_fft_1)
		count_pr_1 <= count_pr_1 + 1'd1;
end 

/*assign data_fft_i_0_n = data_fft_i_0 >>> (8'd8 - exp_fft_0);
assign data_fft_q_0_n = data_fft_q_0 >>> (8'd8 - exp_fft_0);
assign data_fft_i_1_n = data_fft_i_1 >>> (8'd8 - exp_fft_1);
assign data_fft_q_1_n = data_fft_q_1 >>> (8'd8 - exp_fft_1);*/

logic val_fft_0_loc,val_fft_1_loc;

always @(posedge clk) begin
 data_fft_i_0_n <= data_fft_i_0 >>> (8'd8 - exp_fft_0);
 data_fft_q_0_n <= data_fft_q_0 >>> (8'd8 - exp_fft_0);
 data_fft_i_1_n <= data_fft_i_1 >>> (8'd8 - exp_fft_1);
 data_fft_q_1_n <= data_fft_q_1 >>> (8'd8 - exp_fft_1);

 val_fft_0_loc <= val_fft_0;
 val_fft_1_loc <= val_fft_1;
end

always @(posedge clk) begin
	data_mx_i_0 <= (data_fft_i_0_n*pream_i_0) / 64 - (data_fft_q_0_n * pream_q_0) / 64;
	data_mx_q_0 <= (data_fft_i_0_n*pream_q_0) / 64 + (data_fft_q_0_n * pream_i_0) / 64;
	data_mx_i_1 <= (data_fft_i_1_n*pream_i_1) / 64 - (data_fft_q_1_n * pream_q_1) / 64;
	data_mx_q_1 <= (data_fft_i_1_n*pream_q_1) / 64 + (data_fft_q_1_n * pream_i_1) / 64;

	ival_ifft_0 <= val_fft_0_loc;
	ival_ifft_1 <= val_fft_1_loc;
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


xcorr_ifft_sub
xcorr_ifft_sub_s1(
	.clk		(clk),
	.rst		(rst),
	.ival		(ival_ifft_1),
	.data_i		(data_mx_i_1),
	.data_q		(data_mx_q_1),
	.conf		(8'd0),
	.odata_i	(data_ifft_i_1),
	.odata_q	(data_ifft_q_1),
	.oexp		(exp_ifft_1),
	.oval		(val_ifft_1),
	.oeop		(eop_ifft_1)
);



assign data_ifft_i_0_n = (data_ifft_i_0) >>> (5'd8 - exp_ifft_0);
assign data_ifft_q_0_n = (data_ifft_q_0) >>> (5'd8 - exp_ifft_0);
assign data_ifft_i_1_n = (data_ifft_i_1) >>> (5'd8 - exp_ifft_1);
assign data_ifft_q_1_n = (data_ifft_q_1) >>> (5'd8 - exp_ifft_1);

assign data_ifft_i_0_abs = data_ifft_i_0_n >= 0 ? data_ifft_i_0_n : -data_ifft_i_0_n;
assign data_ifft_q_0_abs = data_ifft_q_0_n >= 0 ? data_ifft_q_0_n : -data_ifft_q_0_n;
assign data_ifft_i_1_abs = data_ifft_i_1_n >= 0 ? data_ifft_i_1_n : -data_ifft_i_1_n;
assign data_ifft_q_1_abs = data_ifft_q_1_n >= 0 ? data_ifft_q_1_n : -data_ifft_q_1_n;

assign data_ifft_i_abs = (count_mx < 1024) ? data_ifft_i_0_abs : data_ifft_i_1_abs;
assign data_ifft_q_abs = (count_mx < 1024) ? data_ifft_q_0_abs : data_ifft_q_1_abs;

assign data_ifft_i_wire_n = (count_mx < 1024) ? data_ifft_i_0_n : data_ifft_i_1_n;
assign data_ifft_q_wire_n = (count_mx < 1024) ? data_ifft_q_0_n : data_ifft_q_1_n;

always @(posedge clk) begin
	data_abs_0 <= data_ifft_i_abs;
	data_abs_1 <= (((data_ifft_i_abs << 1) + (data_ifft_i_abs << 2) + (data_ifft_i_abs)) >> 3) + (data_ifft_q_abs >> 1);
	data_abs_2 <= (((data_ifft_q_abs << 1) + (data_ifft_q_abs << 2) + (data_ifft_q_abs)) >> 3) + (data_ifft_i_abs >> 1);
	data_abs_3 <= data_ifft_q_abs;

	data_ifft_i_reg <= data_ifft_i_wire_n;
	data_ifft_q_reg <= data_ifft_q_wire_n;

end

always @(posedge clk) begin
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

reg [10:0] count_mx;

always @(posedge clk) begin
	if(rst)
		count_mx <= '0;
	else if(val_ifft_0)
		count_mx <= count_mx + 1'd1;
end


find_max#(128, 24)
find_max_sub(
	.clk		(clk),
	.rst		(rst),
	.corr_in	(data_abs_mx),
	.data_i		(data_ifft_i_reg_1),
	.data_q		(data_ifft_q_reg_1),
	.thr_lvl	(thr_lvl),
	.odata_i	(peak_i),
	.odata_q	(peak_q),
	.osop		(osop)
);

//////////////////////////////////////////////
reg [13:0]	count_r, count_w;


ram #(14)
ram_sub(
	.clk		(clk),
	.rst		(rst),
	.isub_i		(data_i),
	.isub_q		(data_q),
	.count_r	(count_r),
	.count_w	(count_w),
	.osub_i		(odata_i),
	.osub_q		(odata_q)
);

always @(posedge clk)
	if(rst)
		count_w <= '0;
	else
		count_w <= count_w + 1'd1;
	
always @(posedge clk)
	if(rst)
		count_r <= '0;
	else
		count_r <= count_w - addr_shft;


 reg [12:0]	count_dtct;


 always @(posedge clk) begin
 	if(rst)
 		corr_dtct <= '0;
 	else if(osop)
 		corr_dtct <= '1;
 	else if(count_dtct == 13'd8191)
 		corr_dtct <= '0;
 end

 always @(posedge clk) begin
 	if(rst)
 		count_dtct <= '0;
 	else if(count_dtct == 13'd8191)
 		count_dtct <= '0;
 	else if(osop || corr_dtct)
 		count_dtct <= count_dtct + 1'd1;
 end



endmodule