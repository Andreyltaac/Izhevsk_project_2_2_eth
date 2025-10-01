`include "include/parameters.vh"
module RX_phy(
		input							clk_low_data,
		input							clk_h,
		input							rst,
		input 			[3:0]			ss_in,
		input 			[2:0]			m_in,
		input           [2:0]           bw_in,
		input			[1:0]			fr_sync_ctrl,
		input			[23:0]			thr_lvl,
		input 			[13:0]			addr_shft,

		output			[14:0]			n_sps,	
		output			[4:0]			m_ax_obit_soft,
		output							m_ax_oval_soft,
		output							corr_pr_detect,
		output                          ocorr_dtct,
		output			[23:0]			thr_lvl_auto,
		output			[23:0]			delta_ph,

		input			[15:0]			isub_i,
		input			[15:0]			isub_q);

localparam MaxOrderModulat 	= 6  ;
localparam fft_depth		= 12 ;
localparam pBMAX			= 12 ;
localparam pDAT_W			= 12 ;
localparam pLLR_W			= 5  ;


//----------------------------------------------------------------------//
//							Блок управления								
//----------------------------------------------------------------------//

wire [2:0]		m_control_rx, m_control_tx;

(* mark_debug = "true" *) wire [2:0]      bw_control_rx;
wire [3:0]		ss_control_rx, ss_control_tx;

wire			demapper_osof;

wire			del_rst;

control
control_sub(
		.clk			(clk_low_data)	,
		.rst			(~rst)			,
		.sof_tx			()	,
		.sof_rx			(demapper_osof)	,
		.index_M		(m_in)			,
		.index_SS		(ss_in)			,
		.index_BW       (bw_in),
		.oindex_M_rx	(m_control_rx)	,
		.oindex_SS_rx	(ss_control_rx)	,
	    .oindex_BW_rx	(bw_control_rx)	,
		.oindex_M_tx	()	,
		.oindex_SS_tx	()	,
		.oindex_BW_tx	()	,
		.del_rst		(del_rst));

//----------------------------------------------------------------------//
//							FFT Shift
//----------------------------------------------------------------------//

wire signed [fft_depth-1:0]	fftshft_subc_i;
wire signed [fft_depth-1:0]	fftshft_subc_q;



fftshift #(12)
fftshift_sub(
	.clk		(clk_low_data),
	.rst		(~del_rst),
	.sub_i		(isub_i[15:4]),
	.sub_q		(isub_q[15:4]),
	.osub_i		(fftshft_subc_i),
	.osub_q		(fftshft_subc_q)
);

//assign debug_i = isub_i;
//assign debug_q = isub_q;

//----------------------------------------------------------------------//
//							КОРРЕЛЯТОР
//----------------------------------------------------------------------//

wire 					corr_sop;
wire 					filt_osop;
wire					filt_wind_sop;
wire 					corr_oval;
wire signed [5:0]		delay_sop;

wire [fft_depth-1:0]	corr_subc_i;
wire [fft_depth-1:0]	corr_subc_q;

wire [17:0]				xcorr_peak_i,xcorr_peak_q;
wire [47:0]				xcorr_peaks;
wire [31:0]				freq_idata, freq_odata;

xcorr_main #(file_cor_pream)
xcorr_main_sub(
	.clk		(clk_low_data),
	.rst		(~del_rst),
	.data_i		(fftshft_subc_i),
	.data_q		(fftshft_subc_q),
	.ival		(),
	.thr_lvl	(thr_lvl_auto),
	.index_bw   (bw_control_rx),
	.addr_shft	(addr_shft), // 8502 + wnd_size 14'd8517
	.odata_i	(corr_subc_i),
	.odata_q	(corr_subc_q),
	.peak_i		(xcorr_peak_i),
	.peak_q		(xcorr_peak_q),
	.osop		(corr_sop),
	.oval		(),
	.corr_dtct	(ocorr_dtct)
);



count_sop_dtct
count_sop_dtct_sub(
	.clk			(clk_low_data),
	.rst			(~rst),
	.sop			(corr_sop),
	.n_sps			(n_sps),
	.thr_lvl		(thr_lvl),
	.thr_lvl_auto	(thr_lvl_auto)
);

filter_sop#(50, 1024, 32)
filter_sop_sub(
	.clk		(clk_low_data),
	.rst		(~del_rst),
	.isop		(corr_sop),
	.n_sps		(n_sps),
	.osop		(filt_osop),
	.delay_sop	(delay_sop),
	.found_sync	(corr_pr_detect),
	.sop_frame	(filt_wind_sop)
);

wire fr_sync_osop;
wire [fft_depth-1:0]	fr_corr_i, fr_corr_q;

fr_sync
#(
	.pDAT_W		(12),
	.pDAT_Num	(1024),
	.pCP_Len	(32),
	.pSB_Num	(50)
)
fr_sync_sub
(
	.clk				(clk_low_data),
	.rst				(~del_rst),	
	.fr_sync_ctrl		(fr_sync_ctrl),
	.index_bw           (bw_control_rx),
	.fr_sync_isop		(corr_sop && filt_wind_sop ),
	.idata_i			(corr_subc_i),
	.idata_q			(corr_subc_q),
	.idata_corr_i		(xcorr_peak_i),
	.idata_corr_q		(xcorr_peak_q),
	.fr_sync_oval		(),
	.fr_sync_osop		(fr_sync_osop),
	.odata_i			(fr_corr_i),
	.odata_q			(fr_corr_q),
	.delta_ph			(delta_ph)
);


//----------------------------------------------------------------------//
//							Удаление ЦП
//----------------------------------------------------------------------//

wire [fft_depth-1:0]								remove_subc_i;
wire [fft_depth-1:0]								remove_subc_q;
(* mark_debug = "true" *) wire [6:0]				rmcp_frame_count;

(* mark_debug = "true" *) wire [6:0]				fft_frame_count;
wire												remove_subc_osop;
wire												remove_subc_oval;	
wire												remove_subc_oeop;	


interlayer_rmcp#(12, 1024, 32)
interlayer_rmcp_sub(
	.clk			(clk_low_data),
	.rst			(~del_rst),
	.isop			(fr_sync_osop),  
	.in_real_data	(fr_corr_i),
	.in_imag_data	(fr_corr_q),
	.delay_sop		(0),
	.osop			(remove_subc_osop),
	.oval			(remove_subc_oval),
	.out_real_data	(remove_subc_i),
	.out_imag_data	(remove_subc_q),
	.count_frame	(rmcp_frame_count)
);


control_index_symb
control_index_symb_sub(
	.clk				(clk_low_data),
	.rst				(~del_rst),
	.frame_count_in		(rmcp_frame_count),
	.rmsp_sop			(remove_subc_osop),
	.fft_sop			(fft_subc_osop),
	.frame_count_out	(fft_frame_count)
);

//----------------------------------------------------------------------//
//							БПФ
//----------------------------------------------------------------------//

wire [fft_depth-1:0]    fft_subc_i;
wire [fft_depth-1:0]    fft_subc_q;
wire [4:0]    			fft_oexp;
wire                    fft_subc_oval;
wire                    fft_subc_oeop;
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
		.oexp			(fft_oexp)			,
		.oval			(fft_subc_oval)		,
		.osop			(fft_subc_osop)		,
		.oeop			(fft_subc_oeop));
	


//----------------------------------------------------------------------//
//							Демаппер
//----------------------------------------------------------------------//

(* mark_debug = "true" *) wire signed [fft_depth-1:0]     demap_subc_i;
(* mark_debug = "true" *) wire signed [fft_depth-1:0]     demap_subc_q;
(* mark_debug = "true" *) wire [1:0]                      demapper_index_subc;
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
	    .index_bw       (bw_control_rx)         ,
		.frame_counter	(fft_frame_count),
		.index_M_out    (demapper_index_m)		,
		.index_SS_out   (demapper_index_ss)		,
		.index_bw_out   ()                      ,
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
		.rst            (~del_rst)				,
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
		.rst            (~del_rst)				,
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
		.rst		(~del_rst)				,
		.ival		(oLLR_val)			,
		.modOrder	(oLLR_index_m)		,
		.ibit		(oLLR_cut)			,
		.oval		(m_ax_oval_soft)	,
		.obit       (m_ax_obit_soft)	);



/////////
/////////

// debug
// debug_sub
// (
// 	.clk			(clk_low_data),
// 	.sub_i_0		(demap_subc_i),
// 	.sub_q_0		(demap_subc_q),
// 	.sub_i_1		(eq_subc_i),
// 	.sub_q_1		(eq_subc_q),
// 	.sub_i_2		(),
// 	.sub_q_2		(),
// 	.sub_i_3		(),
// 	.sub_q_3		(),
// 	.index			(index_db),
// 	.osub_i			(debug_i),
// 	.osub_q			(debug_q)
// );
endmodule