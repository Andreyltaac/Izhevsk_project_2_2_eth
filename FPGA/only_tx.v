module only_tx
(
	input 						clk_l,
	input						clk_h,
	input						rst,

	input		[3:0]			ss_in,
	input		[2:0]			m_in,
	input       [2:0]           bw_in,
	input                       data_off_tx,
	input		[7:0]			s_axis_tdata,
	input						s_axis_tvalid,
	input						s_axis_tlast,
	input		[0:0]			s_axis_tuser,
	output						s_axis_tready,
	input						s_axis_aclk,
	input						tx_i_axis_aclk,
	input						tx_q_axis_aclk,
	input						validate_en,


	
	output		[15:0]			tx_i_axis_tdata,
	output						tx_i_axis_tvalid,
	input						tx_i_axis_tready,
	
	output		[15:0]			tx_q_axis_tdata,
	output						tx_q_axis_tvalid,
	input						tx_q_axis_tready);








(* mark_debug = "true" *) wire phy_fec_req, phy_fec_dat, phy_fec_val;
wire signed [7:0]		fifo_defec_dat;
wire 					fifo_defec_val;
wire signed [4:0]		phy_fifo_dat;
wire 					phy_fifo_val;


wire tbs_val, tbs_req;
wire [7:0] tbs_data;



wire		[7:0]			s_axis_tdata_l;
wire						s_axis_tready_l;
wire						s_axis_tvalid_l;

wire		[7:0]			s_axis_tdata_r;
wire						s_axis_tready_r;
wire						s_axis_tvalid_r;

prbs_gen23
#(
  .pDAT_W		(8),
  .pMSB_FIRST	(0) // 1/0 :: first scrambled bit is MSB/LSB
)
prbs_gen23_sub
(
  .iclk			(clk_h),
  .iclkena		(1'd1),
  .ival			(s_axis_tready_l),
  .oval			(s_axis_tvalid_l),
  .odat			(s_axis_tdata_l)
);


assign s_axis_tdata_r  = validate_en ? s_axis_tdata_l  : s_axis_tdata;
assign s_axis_tready   = s_axis_tready_l;
assign s_axis_tvalid_r = validate_en ? s_axis_tvalid_l : s_axis_tvalid;


transport_block_shaper #(476, 5)
transport_block_shaper_sub(
	.clk		(clk_h),
	.rst		(~rst),
	.ival		(s_axis_tvalid_r),
	.idata		(s_axis_tdata_r),
	.ireq		(tbs_req),

	.oval		(tbs_val),
	.odata		(tbs_data),
	.oreq		(s_axis_tready_l)
);


FEC 
FEC_sub(
    .clk			(clk_h),
    .rst			(rst),
    .idat			(tbs_data),
    .ival			(tbs_val),
    .ordy			(),
    .oreq			(tbs_req),
	.irdy			(),
    .osop			(),
	.ireq			(phy_fec_req),
    .oval			(phy_fec_val),
    .odat			(phy_fec_dat),
    .pack_rdy		()
    );

TX_phy
TX_phy_sub(
	.clk_low_data	(clk_l),
	.clk_h			(clk_h),
	.rst			(rst),
	.ss_in			(ss_in),
	.m_in			(m_in),
	.bw_in          (bw_in),
	.data_off       (data_off_tx),
	.s_ax_ibit		(phy_fec_dat),
	.s_ax_ival		(phy_fec_val),
	.s_ax_oreq		(phy_fec_req),
	.db_sub_i		(tx_i_axis_tdata),
	.db_sub_q		(tx_q_axis_tdata));

// wire fnd_pks_dbg_sop_i;
// wire fnd_pks_dbg_sop_q;


// find_peaks(
// 	.clk		(clk_l),
// 	.data_i		(tx_i_axis_tdata),
// 	.data_q		(tx_q_axis_tdata),
// 	.porog		(porog_pks_dtc),
// 	.osop_i		(fnd_pks_dbg_sop_i),
// 	.osop_q		(fnd_pks_dbg_sop_q)
// );




assign tx_i_axis_tvalid = 1'd1;
assign tx_q_axis_tvalid = 1'd1;

endmodule 