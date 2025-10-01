`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2025 11:28:43
// Design Name: 
// Module Name: DeFEC
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DeFEC(
    input								clk,
    input								rst,

    // input interface
    input					[4:0]		idat,
	input								ival,
	output  logic						ordy,

    // output interface
    input								irdy,
    output  logic						oval,
    output  logic			[7:0]		odat,
	output  logic                       err_dtct, 
	output	logic						decrc_oerr,
	output  logic                       decrc_verr
    );

//---------------------------------------------------------------------------------

logic           [4:0]   finder_idat;
logic                   finder_ival;
logic                   finder_osop;
logic                   finder_oval;
logic           [4:0]   finder_odat;

pack_finder sub0_pack_finder(
    .iclk           (clk),
    .irst           (rst),
    .idat           (finder_idat),
    .ival           (finder_ival),
    .osop           (finder_osop),
    .oval           (finder_oval),
    .odat           (finder_odat)
    );

assign  finder_idat = idat;
assign  finder_ival = ival; 

//------------------------------------------------------------------------------
logic          deInterleaver_isop;
logic          deInterleaver_ival;
logic  [4:0]   deInterleaver_idat;
logic          deInterleaver_osop;
logic          deInterleaver_oval;
logic          deInterleaver_oeop;
logic          deInterleaver_oeof;
logic  [4:0]   deInterleaver_odat;

deInterleaver sub0_deInterleaver(
    .iclk         (clk),
    .irst         (rst),
    .isop         (deInterleaver_isop),
    .ival         (deInterleaver_ival),
    .idat         (deInterleaver_idat),
    .osop         (deInterleaver_osop),
    .oval         (deInterleaver_oval),
    .oeop         (deInterleaver_oeop),
    .oeof         (deInterleaver_oeof),
    .odat         (deInterleaver_odat)
    );

assign deInterleaver_isop = finder_osop;
assign deInterleaver_ival = finder_oval;
assign deInterleaver_idat = finder_odat;

//------------------------------------------------------------------------------
logic								LLR_mux_ival			 ;
logic	 signed	[4:0]	LLR_mux_ibit 			 ;
logic							  LLR_mux_oval			 ;
logic	  [4:0]	LLR_mux_obit	[8]  ;
logic							  LLR_mux_isop       ;
logic							  LLR_mux_ieop       ;
logic							  LLR_mux_ieof       ;
logic							  LLR_mux_osop       ;
logic							  LLR_mux_oeop       ;
logic							  LLR_mux_oeof       ; 	  	   

LLR_mux sub0_LLR_mux(
        .clk_h			(clk	), 
        .rst			(~rst  ),
        .ival			(LLR_mux_ival	  ),
        .ibit 			(LLR_mux_ibit 	),
        .isop       	(LLR_mux_isop 	),
        .ieop       	(LLR_mux_ieop 	),
        .ieof       	(LLR_mux_ieof 	),
        .oval			(LLR_mux_oval	  ),
        .obit		    (LLR_mux_obit	  ),
        .osop       	(LLR_mux_osop 	),
        .oeop       	(LLR_mux_oeop 	),
        .oeof       	(LLR_mux_oeof 	)         
);

assign LLR_mux_ival = deInterleaver_oval; 
assign LLR_mux_ibit = deInterleaver_odat;
assign LLR_mux_isop = deInterleaver_osop;
assign LLR_mux_ieop = deInterleaver_oeop;
assign LLR_mux_ieof = deInterleaver_oeof;



//-------------------------------------------------------------------------------
logic signed [4:0] LLR_temp [8];

assign LLR_temp[0] = LLR_mux_obit[3];
assign LLR_temp[1] = LLR_mux_obit[2];
assign LLR_temp[2] = LLR_mux_obit[1];
assign LLR_temp[3] = LLR_mux_obit[0];
assign LLR_temp[4] = LLR_mux_obit[7];
assign LLR_temp[5] = LLR_mux_obit[6];
assign LLR_temp[6] = LLR_mux_obit[5];
assign LLR_temp[7] = LLR_mux_obit[4];



//--------------------------------------------------------------------------------



  localparam pCODE          = 5;

//localparam pN             = 576 + 96*7;
  localparam pN             = 2304;

  localparam pDAT_W         = 4; // encoder bitwidth 2/4/8
  localparam pTAG_W         = 4;

  localparam pLLR_NUM       = 8;  // decoder "bitwidth" 2/4/6/8/12/24 for Wimax
  localparam pLLR_BY_CYCLE  = pLLR_NUM;

  localparam int cDAT_W = 5;
  localparam pODAT_W        = pLLR_BY_CYCLE;

  localparam pNORM_VNODE    = 1;
  localparam pNORM_CNODE    = 1;


  logic               [7 : 0] dec__iNiter   ;
  logic                       dec__ifmode   ;

  logic                       dec__isop     ;
  logic                       dec__ieop     ;
  logic                       dec__ieof     ;
  logic                       dec__ival     ;
  logic        [pTAG_W-1 : 0] dec__itag;

  logic                       dec__obusy    ;
  logic                       dec__ordy     ;

  logic                       dec__osop     ;
  logic                       dec__oeop     ;
  logic                       dec__oval     ;
  logic       [pODAT_W-1 : 0] dec__odat     ;
  logic        [pTAG_W-1 : 0] dec__otag     ;
  (* mark_debug = "true" *) logic              [15 : 0] dec__oerr     ;
  logic                       dec__odecfail ;
  logic signed          [4:0] dec__iLLR [8] ;




  ldpc_dec
  #(
    .pCODE          ( pCODE       ) ,
    .pN             ( pN          ) ,
    //
    .pLLR_W         ( cDAT_W      ) ,
    .pLLR_BY_CYCLE  ( pLLR_NUM    ) ,
    //
    .pNODE_W        ( cDAT_W + 0  ) ,
    //
    .pTAG_W         ( pTAG_W      ) ,
    //
    .pNORM_VNODE    ( pNORM_VNODE ) ,
    .pNORM_CNODE    ( pNORM_CNODE )
  )
  dec
  (
    .iclk     ( clk           ) ,
    .ireset   ( ~rst          ) ,
    .iclkena  ( iclkena       ) ,
    //
    .iNiter   ( dec__iNiter   ) ,
    .ifmode   ( dec__ifmode   ) ,
    //
    .isop     ( dec__isop     ) ,
    .ieop     ( dec__ieop     ) ,
    .ival     ( dec__ival     ) ,
    .itag     ( dec__itag     ) ,
    .iLLR     ( dec__iLLR     ) ,
    //
    .obusy    ( dec__obusy    ) ,
    .ordy     ( dec__ordy     ) ,
    //
    .osop     ( dec__osop     ) ,
    .oeop     ( dec__oeop     ) ,
    .oval     ( dec__oval     ) ,
    .otag     ( dec__otag     ) ,
    .odat     ( dec__odat     ) ,
    //
    .odecfail ( dec__odecfail ) ,
    .oerr     ( dec__oerr     )
  );

  assign dec__isop = LLR_mux_osop;
  assign dec__ival = LLR_mux_oval;
  assign dec__ieop = LLR_mux_oeof;
  assign dec__iLLR = LLR_temp;
  assign dec__itag = '0;
  assign dec__ifmode = '1;
  assign iclkena  = '1;
  assign dec__iNiter = 10;

//--------------------------------------------------------------------------------------
//
//-------------------------------------------------------------------------------------
logic [7:0] s_axis_tdata;
logic [7:0] m_axis_tdata; 



axis_data_fifo_4 your_instance_name (
  .s_axis_aresetn (s_axis_aresetn),  // input wire s_axis_aresetn
  .s_axis_aclk    (s_axis_aclk),        // input wire s_axis_aclk
  .s_axis_tvalid  (s_axis_tvalid),    // input wire s_axis_tvalid
  .s_axis_tready  (s_axis_tready),    // output wire s_axis_tready
  .s_axis_tdata   (s_axis_tdata),      // input wire [7 : 0] s_axis_tdata
  .m_axis_tvalid  (m_axis_tvalid),    // output wire m_axis_tvalid
  .m_axis_tready  (m_axis_tready),    // input wire m_axis_tready
  .m_axis_tdata   (m_axis_tdata)      // output wire [7 : 0] m_axis_tdata
);


assign s_axis_aresetn = rst;
assign s_axis_aclk    = clk;
assign s_axis_tvalid  = dec__oval;
assign s_axis_tdata   = dec__odat;
assign m_axis_tready  = par2ser_oreq;

//-------------------------------------------------------------------------------------------
//
//-------------------------------------------------------------------------------------------
  logic      				  par2ser_ival;
  logic         [7:0]	par2ser_ibit;
  logic							  par2ser_oval;
  logic               par2ser_obit;
  logic							  par2ser_oreq;


  parallel2series_FIFO sub0_parallel2series_FIFO(
    .clk_h        (clk), 
    .rst          (~rst),
    .ival         (par2ser_ival    ),
    .ibit         (par2ser_ibit    ),
    .oreq         (par2ser_oreq    ),
    .oval         (par2ser_oval    ),
    .obit         (par2ser_obit    )
  );       

  assign par2ser_ival     = m_axis_tvalid;
  assign par2ser_ibit     = m_axis_tdata;

//--------------------------------------------------------------------------------------
//
//-------------------------------------------------------------------------------------
    logic       decrc_ival;
    logic       decrc_idat;
    logic       decrc_odat;
    logic       decrc_oval;
    logic       decrc_osop;
    logic       decrc_oeop;
    //(* mark_debug = "true" *) logic       decrc_oerr;
    //logic       decrc_verr;

    assign decrc_ival = par2ser_oval; // idat[7] - sop
    assign decrc_idat = par2ser_obit;

    decoder_CRC sub_decoder_CRC(
    .clk          (clk),
    .rst          (rst),

    .ival         (decrc_ival),
    .data_in      (decrc_idat),

    .decod_data   (decrc_odat),
    .oval_data    (decrc_oval),
    .osop         (decrc_osop),
    .oeop         (decrc_oeop),
    .errors       (decrc_oerr),
    .err_val      (decrc_verr)
    );



always @(posedge clk or negedge rst) begin
 	if(~rst)
 		err_dtct <= '0;
 	else if(decrc_verr && decrc_oerr)
 		err_dtct <= '1;
 	else if(decrc_verr && ~decrc_oerr)
		err_dtct <= '0;
 end

    logic   descr_isop;
    logic   descr_ival;
    logic   descr_idat;
    logic   descr_oval;
    logic   descr_osop;
    logic   descr_odat;

    assign descr_isop = decrc_osop;
    assign descr_ival = decrc_oval;
    assign descr_idat = decrc_odat;

    descrambler sub_descrambler (
      .iclk      (clk),
      .ireset    (rst),
    
      .isop      (descr_isop),
      .ival      (descr_ival),
      .idat      (descr_idat),

      .oval      (descr_oval),
      .osop      (descr_osop),
      .odat      (descr_odat)
    );


    logic           P2S_oreq;
    logic           P2S_oval;
    logic           P2S_ireq;
    logic           P2S_ival;
    logic           P2S_idat;
    logic   [7:0]   P2S_odat;

    assign P2S_ireq = '1;
    assign P2S_ival = descr_oval;
    assign P2S_idat = descr_odat;

    S2P_conv_1x8   sub0_S2P_conv_1x8(
    .iclk   (clk),
    .irst   (rst),
  
    .oreq   (P2S_oreq),
    .ival   (P2S_ival),
    .idat   (P2S_idat),
  
    .oval   (P2S_oval),
    .ireq   (P2S_ireq),
    .odat   (P2S_odat)   
    );

    assign ordy = P2S_oreq;
	assign odat = P2S_odat;
	assign oval = P2S_oval;



endmodule
