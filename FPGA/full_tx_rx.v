module full_tx_rx(

	input														clk_l,
	input														clk_h,
	input														clk_hh,
	input														rst,

	input 			[3:0]										ss_in,
	input 			[2:0]										m_in,
	input			[23:0]										thr_lvl,

	input 			[7:0]										s_axis_tdata,
	input														s_axis_tvalid,
	input														s_axis_tlast,
	input 			[0:0]										s_axis_tuser,
	output														s_axis_tready,
	input														s_axis_aclk,


	output			[7:0]										m_axis_tdata,
	output														m_axis_tvalid,
	output			[14:0]										N_sop_detect,
	output			[14:0]										N_sop_detect_true,
	output			[23:0]										N_err,
	output														m_axis_tlast,
	output			[0:0]										m_axis_tuser,
	input														m_axis_tready,
	input														m_axis_aclk,

	output														corr_pr_detect
);

localparam MaxOrderModulat 	= 6;
localparam fft_depth        = 4;

wire phy_fec_req, phy_fec_dat, phy_fec_val;
wire signed [7:0]		fifo_defec_dat;
wire 					fifo_defec_val;
wire signed [4:0]		phy_fifo_dat;
wire 					phy_fifo_val;


wire tbs_val, tbs_req;
wire [7:0] tbs_data;


// transport_block_shaper #(476, 5)
// transport_block_shaper_sub(
// 	.clk		(clk_h),
// 	.rst		(~rst),
// 	.ival		(s_axis_tvalid),
// 	.idata		(s_axis_tdata),
// 	.ireq		(tbs_req),

// 	.oval		(tbs_val),
// 	.odata		(tbs_data),
// 	.oreq		(s_axis_tready)
// );




// FEC FEC_sub(
//     .clk			(clk_h),
//     .rst			(rst),
//     .idat			(tbs_data),
//     .ival			(tbs_val),
//     .ordy			(),
//     .oreq			(tbs_req),
// 	.irdy			(),
//     .osop			(),
// 	.ireq			(phy_fec_req),
//     .oval			(phy_fec_val),
//     .odat			(phy_fec_dat),
//     .pack_rdy		()
//     );


// assign  phy_fifo_dat = phy_fec_dat ? 5'd8 : -5'd8;
// assign  phy_fifo_val = phy_fec_val;
// assign phy_fec_req	  = 1'd1;





prbs_gen23
#( 1, 0 // 1/0 :: first scrambled bit is MSB/LSB
)
prbs_gen23_sub
(
	.iclk		(clk_h),
	.iclkena	(1'd1),
	.ival		(phy_fec_req),
	.oval		(phy_fec_val),
	.odat		(phy_fec_dat)
);






TX_RX_phy TX_RX_phy_sub(
		.clk_low_data		(clk_l),
		.clk_h				(clk_h),
		.rst				(rst),
		.ss_in				(ss_in),
		.m_in				(m_in),
		.thr_lvl			(thr_lvl),
		.s_ax_ibit			(phy_fec_dat),
		.s_ax_ival			(phy_fec_val),
		.s_ax_oreq			(phy_fec_req),
		.m_ax_obit_soft		(phy_fifo_dat),
		.m_ax_oval_soft		(phy_fifo_val),
		.n_sps				(N_sop_detect),
		.n_sps_true			(N_sop_detect_true),
		.corr_pr_detect		(),
		
		.db_index			(db_index),
		.db_sub_i			(db_sub_i),
		.db_sub_q			(db_sub_q));


prbs23_check
#(1 ,0 , 15 ,32)
prbs23_check_sub
(
	.iclk			(clk_h),
	.iclkena		(1'd1),
	.ibyp			(1'd0),
	.iclr			(~rst),
	.ival			(phy_fifo_val),
	.idat			(~phy_fifo_dat[4]),
	// .idat			(1'd0),
	.oval			(val_prbs),
	.odat			(),
	.err			(),
	.err_led		(corr_pr_detect),
	.odgood			(dat_prbs)
);




count_err
count_err_sub(
	.clk	(clk_h),
	.rst	(~rst),
	.err	(dat_prbs),
	.val	(val_prbs),
	.n_er	(N_err)
);



/*

axis_data_fifo_fhy_defec axis_data_fifo_fhy_defec_sub (
  .s_axis_aresetn	(rst), 
  .s_axis_aclk		(clk_h),       
  .s_axis_tvalid	(phy_fifo_val),   
  .s_axis_tready	(),   
  .s_axis_tdata		({3'd0, phy_fifo_dat}),     

  .m_axis_aclk		(clk_hh),       
  .m_axis_tvalid	(fifo_defec_val),   
  .m_axis_tready	(1'd1),   
  .m_axis_tdata		(fifo_defec_dat)      
);

// assign fifo_defec_dat = phy_fifo_dat;
// assign fifo_defec_val = phy_fifo_val;


 DeFEC DeFEC_sub(
    	.clk			(clk_hh),
    	.rst			(rst),
    	.idat			(fifo_defec_dat[4:0]),
		.ival			(fifo_defec_val),
		.ordy			(),
    	.irdy			(),
    	.oval			(m_axis_tvalid),
    	.odat			(m_axis_tdata));

*/







endmodule