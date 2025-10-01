module TX_phy(
		input							clk_low_data,
		input							clk_h,
		input							rst,
		input 			[3:0]			ss_in,
		input 			[2:0]			m_in,

		input							s_ax_ibit,
		input							s_ax_ival,
		output							s_ax_oreq,

		output 			[15:0]			db_sub_i,
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


wire			del_rst;

control
control_sub(
		.clk			(clk_h)	,
		.rst			(~rst)			,
		.sof_tx			(mapper_osof)	,
		.sof_rx			()	,
		.index_M		(m_in)			,
		.index_SS		(ss_in)			,
		.oindex_M_rx	()	,
		.oindex_SS_rx	()	,
		.oindex_M_tx	(m_control_tx)	,
		.oindex_SS_tx	(ss_control_tx)	,
		.del_rst		(del_rst));


//----------------------------------------------------------------------//
//							Блок параллелизации							
//----------------------------------------------------------------------//

wire							s2p_oval;
wire [MaxOrderModulat-1:0]	s2p_obit;
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
wire											ifft_subc_oval;
wire											ifft_subc_osop;
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
		.oexp				(exp_ifft)			,
		.oval				(ifft_subc_oval)	,
		.osop				(ifft_subc_osop)	);





assign ifft_norm_subc_i = exp_ifft == 5'd7 ? ifft_subc_i : ifft_subc_i / 2;
assign ifft_norm_subc_q = exp_ifft == 5'd7 ? ifft_subc_q : ifft_subc_q / 2;

// assign ifft_norm_subc_i = ifft_subc_i / 2;
// assign ifft_norm_subc_q = ifft_subc_q / 2;

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
		.in_real_data		(ifft_norm_subc_i)		,
		.in_imag_data		(ifft_norm_subc_q)		,
		.osop				(addcp_subc_osop)	,
		.out_real_data		(addcp_subc_i)		,
		.out_imag_data		(addcp_subc_q)		);

//----------------------------------------------------------------------//
//							FFT Shift
//----------------------------------------------------------------------//

wire [fft_depth-1:0]	fftshft_subc_i;
wire [fft_depth-1:0]	fftshft_subc_q;


fftshift #(12)
fftshift_sub(
	.clk		(clk_low_data),
	.rst		(~del_rst),
	.sub_i		(addcp_subc_i),
	.sub_q		(addcp_subc_q),
	.osub_i		(fftshft_subc_i),
	.osub_q		(fftshft_subc_q)
);


assign db_sub_i = {{4{fftshft_subc_i[11]}},fftshft_subc_i};
assign db_sub_q = {{4{fftshft_subc_q[11]}},fftshft_subc_q};



endmodule 