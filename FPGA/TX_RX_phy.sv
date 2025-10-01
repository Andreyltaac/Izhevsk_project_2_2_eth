module TX_RX_phy(
		input							clk_low_data,
		input							clk_h,
		input							rst,
		input 			[3:0]			ss_in,
		input 			[2:0]			m_in,
		input			[23:0]			thr_lvl,

		input							s_ax_ibit,
		input							s_ax_ival,
		output							s_ax_oreq,
		output			[14:0]			n_sps,			
		output			[14:0]			n_sps_true,		
		output			[4:0]			m_ax_obit_soft,
		output							m_ax_oval_soft,
		output							corr_pr_detect,
		
		input			[1:0]			db_index,
		output			[15:0]			db_sub_i,
		output			[15:0]			db_sub_q
		);


localparam MaxOrderModulat 	= 6  ;
localparam fft_depth		= 12 ;
localparam pBMAX			= 12 ;
localparam pDAT_W			= 12 ;
localparam pLLR_W			= 5  ;

//----------------------------------------------------------------------//
//							Блок управления								
//----------------------------------------------------------------------//

wire [2:0]		m_control_rx, m_control_tx;
wire [3:0]		ss_control_rx, ss_control_tx;

wire			mapper_osof;
wire			demapper_osof;

wire			del_rst;

control
control_sub(
		.clk			(clk_h)			,
		.rst			(~rst)			,
		.sof_tx			(mapper_osof)	,
		.sof_rx			(demapper_osof)	,
		.index_M		(m_in)			,
		.index_SS		(ss_in)			,
		.oindex_M_rx	(m_control_rx)	,
		.oindex_SS_rx	(ss_control_rx)	,
		.oindex_M_tx	(m_control_tx)	,
		.oindex_SS_tx	(ss_control_tx)	,
		.del_rst		(del_rst));


//----------------------------------------------------------------------//
//							Блок параллелизации							
//----------------------------------------------------------------------//

wire							s2p_oval;
wire [MaxOrderModulat-1:0]		s2p_obit;
wire							s2p_ireq;


series2parallel #(MaxOrderModulat)
series2parallel_sub(
		.clk        (clk_h)				, 
		.rst        (~del_rst)				,
		.ireq       (s2p_ireq)			,
		.ibit       (s_ax_ibit)			,
		.ival       (s_ax_ival)			,
		.modOrder   (m_control_tx)		,
		.oreq       (s_ax_oreq)			, 
		.oval       (s2p_oval)			,
		.obit       (s2p_obit)			);


//----------------------------------------------------------------------//
//							Маппер										
//----------------------------------------------------------------------//

wire [MaxOrderModulat-1:0]	mapper_obit;
wire [2:0]					mapper_index_M;
wire [1:0]					mapper_index;
wire						mapper_oval;
wire						mapper_osop;
wire						mapper_oeop;


mapper  #(MaxOrderModulat)
mapper_sub(
		.clk				(clk_low_data)		,
		.clk_h				(clk_h)				,
		.rst				(~del_rst)				,
		.ival				(s2p_oval)			,
		.ibit				(s2p_obit)			,
		.ready_frame		(1'd1)				,
		.enable				(1'd1)				,
		.index_ss			(ss_control_tx)		,  
		.index_M_in			(m_control_tx)		,
		.index_M_out		(mapper_index_M)	,
		.index				(mapper_index)		,
		.oreq				(s2p_ireq)			,
		.oval				(mapper_oval)		,
		.osop				(mapper_osop)		,
		.oeop				(mapper_oeop)		,
		.osof				(mapper_osof)		,
		.obit				(mapper_obit)		);


//----------------------------------------------------------------------//
//							Модулятор									
//----------------------------------------------------------------------//

wire [fft_depth-1:0]		mod_i;
wire [fft_depth-1:0]		mod_q;
wire [1:0]					modul_index;
wire						mod_oval;
wire						mod_oeop;
wire						mod_osop;

modulator #(MaxOrderModulat, fft_depth)
modulator_sub(
		.clk				(clk_low_data)		,
		.rst				(~del_rst)				,
		.ival				(mapper_oval)		,
		.isop				(mapper_osop)		,
		.ieop				(mapper_oeop)		,
		.bits				(mapper_obit)		,
		.index_M			(mapper_index_M)	,
		.index_subc			(mapper_index)		, 
		.sub_i				(mod_i)				,
		.sub_q				(mod_q)				,
		.oval				(mod_oval)			,
		.oeop				(mod_oeop)			,
		.osop				(mod_osop)			,
		.oindex_subc		(modul_index)		);


// ---------------------------------------------------------------------//
//							Скремблер поднесущих							
// ---------------------------------------------------------------------//

wire [fft_depth-1:0]    scramb_subc_i;
wire [fft_depth-1:0]    scramb_subc_q;
wire                    scramb_subc_oval;
wire                    scramb_subc_osop;
wire                    scramb_subc_oeop;



scramb_subcarier #(fft_depth)
scramb_subcarier_sub(
		.clk				(clk_low_data)		,
		.rst				(~del_rst)				,
		.isubc_i			(mod_i)				,
		.isubc_q			(mod_q)				,
		.iindex_subc		(modul_index)		,
		.isop				(mod_osop)			,
		.ival				(mod_oval)			,
		.ieop				(mod_oeop)			,
		.osubc_i			(scramb_subc_i)		,
		.osubc_q			(scramb_subc_q)		,
		.oeop				(scramb_subc_oeop)	,
		.oindex_subc		()					,
		.osop				(scramb_subc_osop)	,
		.oval				(scramb_subc_oval)	);

//----------------------------------------------------------------------//
//							ОБПФ
//----------------------------------------------------------------------//

wire signed [fft_depth-1:0]	ifft_subc_i;
wire signed [fft_depth-1:0]	ifft_subc_q;
wire signed [fft_depth-1:0]	ifft_norm_subc_i;
wire signed [fft_depth-1:0]	ifft_norm_subc_q;
wire					ifft_subc_oval;
wire					ifft_subc_osop;
wire		[4:0]		exp_ifft;

ifft #(fft_depth)
ifft_sub(
		.clk				(clk_low_data)		,
		.rst				(rst)				,
		.sub_i				(scramb_subc_i)		,
		.sub_q				(scramb_subc_q)		,
		.ival				(scramb_subc_oval)	,
		.ieop				(scramb_subc_oeop)	,
		.config_fft			(8'd0)				,
		.osub_i				(ifft_subc_i)		,
		.osub_q				(ifft_subc_q)		,
		.oexp				(exp_ifft)					,
		.oval				(ifft_subc_oval)	,
		.osop				(ifft_subc_osop)	);


assign ifft_norm_subc_i = exp_ifft == 5'd7 ? ifft_subc_i : ifft_subc_i / 2;
assign ifft_norm_subc_q = exp_ifft == 5'd7 ? ifft_subc_q : ifft_subc_q / 2;


//----------------------------------------------------------------------//
//							ЦП
//----------------------------------------------------------------------//

wire [fft_depth-1:0]	addcp_subc_i;
wire [fft_depth-1:0]	addcp_subc_q;
wire					addcp_subc_osop;							
								
add_cp #(fft_depth, 1024, 32)
add_cp(
		.clk				(clk_low_data)		,
		.rst				(~del_rst)				,
		.isop				(ifft_subc_osop)	,
		.ival				(ifft_subc_oval)	,
		.in_real_data		(ifft_subc_i)		,
		.in_imag_data		(ifft_subc_q)		,
		.osop				(addcp_subc_osop)	,
		.out_real_data		(addcp_subc_i)		,
		.out_imag_data		(addcp_subc_q)		);


// int file;

// initial begin
// 	file = $fopen("D:\\FPGA\\My_Models\\Matlab\\output.txt", "w");
// end



// always @(posedge clk_low_data) begin
// 	if(ifft_subc_oval)
// 		$fwrite(file, "%d %d \n", $signed(ifft_subc_i),  $signed(ifft_subc_q));
// end

//----------------------------------------------------------------------//
//							КОРРЕЛЯТОР
//----------------------------------------------------------------------//

(* mark_debug = "true" *) wire 					corr_sop;
wire 					corr_oval;
wire [fft_depth-1:0]	corr_subc_i;
wire [fft_depth-1:0]	corr_subc_q;

xcorr_main #("D:\\FPGA\\My_Models\\FPGA\\input_data\\preamb_corr.txt")
xcorr_main_sub(
	.clk		(clk_low_data),
	.rst		(~rst),
	.data_i		(addcp_subc_i),
	.data_q		(addcp_subc_q),
	.ival		(),
	.thr_lvl	(thr_lvl),
	.addr_shft	(14'd8519),
	.odata_i	(corr_subc_i),
	.odata_q	(corr_subc_q),
	.osop		(corr_sop),
	.oval		(),
	.corr_dtct	(corr_pr_detect)
);


count_sop_dtct
count_sop_dtct_sub(
	.clk			(clk_low_data),
	.rst			(~rst),
	.sop			(corr_sop),
	.n_sps			(n_sps),
	.n_sps_true		(n_sps_true)
);
//----------------------------------------------------------------------//
//							Удаление ЦП
//----------------------------------------------------------------------//

wire [fft_depth-1:0]	remove_subc_i;
wire [fft_depth-1:0]	remove_subc_q;
wire					remove_subc_osop;
wire					remove_subc_oval;	
wire					remove_subc_oeop;	


interlayer_rmcp#(12, 1024, 32)
interlayer_rmcp_sub(
	.clk			(clk_low_data),
	.rst			(~del_rst),
	.isop			(corr_sop),  
	.in_real_data	(corr_subc_i),
	.in_imag_data	(corr_subc_q),
	.osop			(remove_subc_osop),
	.oval			(remove_subc_oval),
	.out_real_data	(remove_subc_i),
	.out_imag_data	(remove_subc_q)	
);

//----------------------------------------------------------------------//
//							БПФ
//----------------------------------------------------------------------//

wire [fft_depth-1:0]    fft_subc_i;
wire [fft_depth-1:0]    fft_subc_q;
wire                    fft_subc_oval;
wire                    fft_subc_osop;

ifft
fft_sub(
		.clk			(clk_low_data)		,
		.rst			(rst)				,
		.sub_i			(remove_subc_i)		,
		.sub_q			(remove_subc_q)		,
		.ival			(remove_subc_oval)	,
		.config_fft		(8'd1)				,
		.osub_i			(fft_subc_i)		,
		.osub_q			(fft_subc_q)		,
		.oexp			()					,
		.oval			(fft_subc_oval)		,
		.osop			(fft_subc_osop)		);


//----------------------------------------------------------------------//
//							Демаппер
//----------------------------------------------------------------------//

wire signed [fft_depth-1:0]     demap_subc_i;
wire signed [fft_depth-1:0]     demap_subc_q;
wire [1:0]                      demapper_index_subc;
wire [2:0]                      demapper_index_m;
wire [3:0]                      demapper_index_ss;
wire                            demapper_oval;
wire                            demapper_osop;


demapper #(MaxOrderModulat, fft_depth)
demapper (
		.clk            (clk_low_data)			,
		.rst            (~del_rst)				,
		.ival           (fft_subc_oval)			,
		.isop           (fft_subc_osop)			,
		.subc_i         (fft_subc_i)			,
		.subc_q         (fft_subc_q)			,
		.enable         (1)						,
		.index_ss       (ss_control_rx)			,
		.index_M_in     (m_control_rx)			,
		.index_M_out    (demapper_index_m)		,
		.index_SS_out   (demapper_index_ss)		,
		.oindex_subc    (demapper_index_subc)	,
		.osubc_i        (demap_subc_i)			,
		.osubc_q        (demap_subc_q)			,
		.osop           (demapper_osop)			,
		.osof			(demapper_osof)			,
		.oval           (demapper_oval)			);


// ---------------------------------------------------------------------//
//							Скремблер поднесущих
// ---------------------------------------------------------------------//

wire [fft_depth-1:0]    descramb_subc_i;
wire [fft_depth-1:0]    descramb_subc_q;
wire [1:0]              descramb_index_subc;
wire [2:0]              descramb_index_m;
wire [3:0]              descramb_index_ss;
wire                    descramb_subc_oval;
wire                    descramb_subc_osop;


scramb_subcarier #(fft_depth)
descramb_subcarier_sub(
		.clk            (clk_low_data)			,
		.rst            (~del_rst)					,
		.isubc_i        (demap_subc_i)			,
		.isubc_q        (demap_subc_q)			,
		.iindex_subc    (demapper_index_subc)	,
		.index_M_in     (demapper_index_m)		,
		.index_SS_in    (demapper_index_ss)		,
		.isop           (demapper_osop)			,
		.ival           (demapper_oval)			,
		.osubc_i        (descramb_subc_i)		,
		.osubc_q        (descramb_subc_q)		,
		.oindex_subc    (descramb_index_subc)	,
		.index_M_out    (descramb_index_m)		,
		.index_SS_out   (descramb_index_ss)		,
		.osop           (descramb_subc_osop)	,
		.oval           (descramb_subc_oval)	);



//----------------------------------------------------------------------//
//							Эквалайзер
//----------------------------------------------------------------------//

wire signed [fft_depth-1:0]     eq_subc_i;
wire signed [fft_depth-1:0]     eq_subc_q;
wire [2:0]                      eq_index_m;
wire [3:0]                      eq_index_ss;
wire                            eq_oval;

equalizer
equalizer_sub(
		.clk            (clk_low_data)			,
		.rst            (~del_rst)					,
		.ival           (descramb_subc_oval)	,
		.isop           (descramb_subc_osop)	,
		.index          (descramb_index_subc)	,
		.index_M_in     (descramb_index_m)		,
		.index_SS_in    (descramb_index_ss)		,
		.enable         (1'd1)					,
		.sub_i          (descramb_subc_i)		,
		.sub_q          (descramb_subc_q)		,
		.oval           (eq_oval)				,
		.osop           ()						,
		.oindex         ()						,
		.index_M_out    (eq_index_m)			,
		.index_SS_out   (eq_index_ss)			,
		.osub_i         (eq_subc_i)				,	
		.osub_q         (eq_subc_q)				);


//----------------------------------------------------------------------//
//							Демодуляция SS
//----------------------------------------------------------------------//

wire signed [fft_depth-1:0]     demap_ss_subc_i;
wire signed [fft_depth-1:0]     demap_ss_subc_q;
wire [2:0]                      demap_SS_index_m;
wire [3:0]                      demap_SS_index_ss;
wire                            demap_ss_val;

demapper_ss
demapper_ss_sub(
		.clk            (clk_low_data),
		.rst            (~del_rst),
		.index_SS_in    (eq_index_ss),
		.index_M_in     (eq_index_m),
		.ival           (eq_oval),
		.subc_i         (eq_subc_i),
		.subc_q         (eq_subc_q),
		.index_SS_out   (demap_SS_index_ss),
		.index_M_out    (demap_SS_index_m),
		.oval           (demap_ss_val),
		.osubc_i        (demap_ss_subc_i),
		.osubc_q        (demap_ss_subc_q)
);


// //----------------------------------------------------------------------//
// //							Жесткое демодулирование
// //----------------------------------------------------------------------//

// wire		[5:0]		HARD_demod_bits;
// wire					demod_val;


// hard_demod
// hard_demod_sub(
// 		.clk			(clk_low_data)		,
// 		.rst			(~rst)				,
// 		.ival			(demap_ss_val)		,
// 		.sub_i			(demap_ss_subc_i)	,
// 		.sub_q			(demap_ss_subc_q)	,
// 		.index_M		(demap_SS_index_m)	,
// 		.bits			(HARD_demod_bits)	, 
// 		.oval			(demod_val)			);


//----------------------------------------------------------------------//
//							Мягкое демодулирование
//----------------------------------------------------------------------//
wire signed [pLLR_W-1 : 0] 	oLLR    		[0 : 11] ;
wire signed [pLLR_W-1 : 0] 	oLLR_cut   		[0 : 5] ;
wire						oLLR_val;
wire		[3:0]			oLLR_index_m;
wire 		[3:0] 			iLLR_index_m;

assign  iLLR_index_m = {1'd0,demap_SS_index_m};

llr_even_qam_demapper
  #(
		.pBMAX		( pBMAX  ) ,
		.pDAT_W		( pDAT_W ) ,
		.pLLR_W		( pLLR_W )
  )
llr_even_qam_demapper_sub
(
		.iclk		(clk_low_data)		,
		.ireset		(~del_rst)				,
		.iclkena	(1'd1)				,
		.ival		(demap_ss_val)		,
		.isop		(1'd0)				,
		.iqam		(iLLR_index_m)		,
		.idat_re	(demap_ss_subc_i)	,
		.idat_im	(demap_ss_subc_q)	,
		.oval		(oLLR_val)			,
		.osop		()					,
		.oqam		(oLLR_index_m)		,
		.oLLR		(oLLR)				);

//----------------------------------------------------------------------//
//							Блок сериализации
//----------------------------------------------------------------------//

assign oLLR_cut = oLLR[0:5];

parallel2series #(6)
parallel2series_soft(
		.clk_h		(clk_h)				, 
		.rst		(~del_rst)			,
		.ival		(oLLR_val)			,
		.modOrder	(oLLR_index_m)		,
		.ibit		(oLLR_cut)			,
		.oval		(m_ax_oval_soft)	,
		.obit       (m_ax_obit_soft)	);


//----------------------------------------------------------------------//
//							Блок отладки
//----------------------------------------------------------------------//


/*
debug
debug_sub(
	.clk		(clk_h),
	.sub_i_0	(scramb_subc_i),
	.sub_q_0	(scramb_subc_q),
	.sub_i_1	(ifft_subc_i),
	.sub_q_1	(ifft_subc_q),
	.sub_i_2	(remove_subc_i),
	.sub_q_2	(remove_subc_q),
	.sub_i_3	(fft_subc_i),
	.sub_q_3	(fft_subc_q),
	.index		(db_index),
	.osub_i		(db_sub_i),
	.osub_q		(db_sub_q)
);
*/
endmodule