module fr_sync
#(
	parameter  pDAT_W    = 12,
	parameter  pDAT_Num  = 1024,
	parameter  pCP_Len   = 32,
	parameter  pSB_Num   = 100
)
(
	input					clk,
	input					rst,
	input			[1:0]	fr_sync_ctrl,
	input					fr_sync_isop,
	input signed	[11:0]	idata_i,
	input signed	[11:0]	idata_q,
	input signed	[15:0]	idata_corr_i,
	input signed	[15:0]	idata_corr_q,
	input logic     [2:0]   index_bw,

	output logic	[23:0] 	delta_ph,
	output					fr_sync_oval,
	output					fr_sync_osop,
	output signed	[11:0]	odata_i,
	output signed	[11:0]	odata_q
);


	assign Phi_wire = fr_sync_ctrl[1] ? m_dout_phase : 24'd0;
	assign fr_sync_osop = fr_sync_ctrl[0] ? local_sop : local_sop_bps;

	assign odata_i = fr_sync_ctrl[0] ? odata_rot[11:0] 	: odata_fifo_i;
	assign odata_q = fr_sync_ctrl[0] ? odata_rot[35:24] : odata_fifo_q;




	localparam sz_Frm = (pSB_Num-2)*(pCP_Len+pDAT_Num);
	localparam cnt_w = $clog2((pDAT_Num + pCP_Len)*2);
	localparam cnt_pream = $clog2(pDAT_Num);
	localparam cnt_fr = $clog2(sz_Frm);

	reg count_r;

	reg [cnt_w-1:0]		count_frame;
	reg [12:0]	        count_pream;
	reg  signed [31:0]  mult_add_re;
    reg  signed [31:0]  mult_add_im;
	reg					val_mult;
	reg					val_mult_2;

	wire				val_add;

	wire signed [11:0] pream_i, pream_q;

	reg signed [23:0]	mult_re, mult_im;
	wire signed [23:0]	mult_add_cut_re, mult_add_cut_im, icorr_ext_i, icorr_ext_q;

	wire  signed	[23:0]	m_dout_phase_1, m_dout_phase_2, m_dout_phase, Phi_wire;
	wire  signed	[24:0]	m_dout_dif_phase;
	wire					val_phase_1, val_phase_2;

	wire  signed 	[11:0]	odata_fifo_i, odata_fifo_q;
	wire  [47:0] 	odata_div;
	wire 			oval_div;
	wire			local_sop;
	reg				local_sop_bps;

	always @(posedge clk) begin
		if(rst) begin
			count_r		<= '0;
			count_frame	<= '0;
		end
		else if(count_frame == (pDAT_Num + pCP_Len)*2 - 1) begin
			count_r		<= '0;
			count_frame	<= '0;
		end
		else if(count_r || fr_sync_isop) begin
			count_r		<= '1;
			count_frame	<= count_frame + 1'd1;
		end
		else begin
			count_r		<= '0;
			count_frame	<= '0;
		end
	end

	always @(posedge clk) begin
		if(rst) begin
			count_pream <= '0;
			val_mult 	<= '0;
		end
		else if(count_frame >= pDAT_Num + pCP_Len * 2) begin
			count_pream <= count_pream + 13'd1;
			val_mult	<= '1;
		end
		else begin
			count_pream <= '0;
			val_mult 	<= '0;
		end
	end

	wire [23:0]		preamb_com;


    prb_fsync_ram#(
    	.depht_ram	(13)
    )
    prb_fsync_ram_sub_0
    (
    	.clk	    (clk),
    	.addr	    (count_pream),
    	.index_bw	(index_bw),
    	.odat	    (preamb_com)
    );


	assign pream_i = preamb_com[23:12];
	assign pream_q = preamb_com[11:0];

	always @(posedge clk) begin
		mult_re   <= (idata_i*pream_i)  + (idata_q*pream_q);
		mult_im   <= (idata_q*pream_i)  - (idata_i*pream_q);
		val_mult_2 <= val_mult;
		local_sop_bps <= oval_div;
	end


	assign val_add = ~val_mult & val_mult_2;
	always @(posedge clk) begin
		if(rst) begin
			mult_add_re <= '0;
			mult_add_im <= '0;
		end
		else if(val_mult) begin
			mult_add_re <= mult_add_re + mult_re;
			mult_add_im <= mult_add_im + mult_im;
		end
		else if(fr_sync_isop) begin
			mult_add_re <= '0;
			mult_add_im <= '0;
		end 
	end

	assign mult_add_cut_re = mult_add_re >>> 12;
	assign mult_add_cut_im = mult_add_im >>> 12;

	assign icorr_ext_i = idata_corr_i;
	assign icorr_ext_q = idata_corr_q;

	cordic_2 
	cordic_atan_1 
	 (
		.aclk							(clk),						// input wire aclk
		.aresetn						(~rst),						// input wire aresetn
		.s_axis_cartesian_tvalid 		(val_add),					// input wire s_axis_cartesian_tvalid
		.s_axis_cartesian_tdata  		({mult_add_cut_im,mult_add_cut_re}),	// input wire [31 : 0] s_axis_cartesian_tdata
		.m_axis_dout_tvalid      		(val_phase_1),		// output wire m_axis_dout_tvalid
		.m_axis_dout_tdata       		(m_dout_phase_1)				// output wire [15 : 0] m_axis_dout_tdata
	); 

	cordic_2 
	cordic_atan_2 
	 (
		.aclk							(clk),						// input wire aclk
		.aresetn						(~rst),						// input wire aresetn
		.s_axis_cartesian_tvalid 		(val_add),					// input wire s_axis_cartesian_tvalid
		.s_axis_cartesian_tdata  		({icorr_ext_q,icorr_ext_i}),	// input wire [31 : 0] s_axis_cartesian_tdata
		.m_axis_dout_tvalid      		(val_phase_2),		// output wire m_axis_dout_tvalid
		.m_axis_dout_tdata       		(m_dout_phase_2)				// output wire [15 : 0] m_axis_dout_tdata
	); 


	localparam Board = 6588398;

	// assign m_dout_dif_phase = {(m_dout_phase_1[23:21] - m_dout_phase_2[23:21]),(m_dout_phase_1[20:0] - m_dout_phase_2[20:0])};
	assign m_dout_dif_phase = m_dout_phase_1- m_dout_phase_2;
	assign m_dout_phase =	(m_dout_dif_phase > Board) ? (m_dout_dif_phase - Board*2) :  // 2^24 - 2 = 16777214
	    					(m_dout_dif_phase < -Board) ? (m_dout_dif_phase + Board*2) : // -2^24 + 2^24 = 0 (корректировка)
							m_dout_dif_phase;


	div_gen_fr_corr
	div_gen_1152 
	(
		.aclk					(clk),                                      // input wire aclk
		.aresetn				(~rst),                                // input wire aresetn
		.s_axis_divisor_tvalid	(1),    // input wire s_axis_divisor_tvalid
		.s_axis_divisor_tdata	(24'd1056),      // input wire [15 : 0] s_axis_divisor_tdata // 24'd11520
		.s_axis_dividend_tvalid	(val_phase_1),  // input wire s_axis_dividend_tvalid
		.s_axis_dividend_tdata	(Phi_wire),    // input wire [15 : 0] s_axis_dividend_tdata
		.m_axis_dout_tvalid		(oval_div),          // output wire m_axis_dout_tvalid
		.m_axis_dout_tdata		(odata_div)            // output wire [23 : 0] m_axis_dout_tdata
	);  

	reg signed [23:0] Phi;
	reg signed [23:0] Phi_acc;
	reg		   [cnt_fr-1:0] count_symb;
	reg				  rn_count_symb;

	always @(posedge clk) begin
		if(rst) 
			delta_ph <= '0;
		else if(val_phase_1)
			delta_ph <= Phi_wire;
	end

	always @(posedge clk) begin
		if(rst) begin
			Phi		<= '0;
			Phi_acc <= '0;
			count_symb <= '0;
			rn_count_symb <= '0;
		end
		else if(oval_div) begin
			Phi <= odata_div[47:24]; //24'd2176
			Phi_acc <= 0;
			count_symb <=  1'd1;
			rn_count_symb <= '1;
		end
		else if(count_symb == sz_Frm) begin
			Phi		<= '0;
			Phi_acc <= '0;
			count_symb <= '0;
			rn_count_symb <= '0;
		end
		else if(rn_count_symb) begin
			if(Phi_acc > Board) begin
				Phi_acc <= Phi_acc + Phi - 2*Board;
			end
			else if(Phi_acc < -Board) begin
				Phi_acc <= Phi_acc + Phi + 2*Board;
			end
			else 
				Phi_acc <= Phi_acc + Phi;
			
			count_symb <= count_symb + 1'd1;
		end
	end

	reg [5:0] count_fifo_in, count_fifo_out;


	always @(posedge clk) begin
		if(rst) begin
			count_fifo_in <= '0;
			count_fifo_out <= '0;
		end
		else begin
			count_fifo_in <= count_fifo_in + 1'd1;
			count_fifo_out <= count_fifo_in - 6'd57;
		end
	end

	sync_fifo
	#(
		.DATA_W	(12), 
		.ADDR_W	(6)
	)
	sync_fifo_i(
		.clk		(clk),
		.en_wr		(1'd1), 	
		.wr_addr	(count_fifo_in),
		.idata		(idata_i),
		.r_addr		(count_fifo_out),
		.odata		(odata_fifo_i));
	
	sync_fifo
	#(
		.DATA_W	(12), 
		.ADDR_W	(6)
	)
	sync_fifo_q(
		.clk		(clk),
		.en_wr		(1'd1), 	
		.wr_addr	(count_fifo_in),
		.idata		(idata_q),
		.r_addr		(count_fifo_out),
		.odata		(odata_fifo_q));


	wire [47:0] odata_rot;
	wire [47:0] idata_rotate;
	
	assign idata_rotate[23:0] = {{12{odata_fifo_i[11]}},odata_fifo_i[11:0]};
	assign idata_rotate[47:24] = {{12{odata_fifo_q[11]}},odata_fifo_q[11:0]};
 
	cordic_0 
	cordic_rotate 
	(
		.aclk						(clk),                                        // input wire aclk
		.aresetn					(~rst),                                  // input wire aresetn
		.s_axis_phase_tvalid		(rn_count_symb),          // input wire s_axis_phase_tvalid
		.s_axis_phase_tdata			(-Phi_acc),            // input wire [15 : 0] s_axis_phase_tdata
		.s_axis_cartesian_tvalid	(rn_count_symb),  			// input wire s_axis_cartesian_tvalid
		.s_axis_cartesian_tdata		(idata_rotate),    // input wire [31 : 0] s_axis_cartesian_tdata
		.m_axis_dout_tvalid			(fr_sync_oval),            // output wire m_axis_dout_tvalid
		.m_axis_dout_tdata			(odata_rot)              // output wire [31 : 0] m_axis_dout_tdata
	); 



assign local_sop = count_symb == 29 & fr_sync_oval;
endmodule
	