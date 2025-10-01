`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TUSUR
// Engineer: Dmitriyev Edgar
// 
// Create Date: 27.01.2025 11:43:36
// Design Name: FEC2DeFEC
// Module Name: FEC
// Project Name: Modem2025
// Target Devices: xc7z020 
// Tool Versions: Vivado 2019.1
// Description: -
// 
// Dependencies: -
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FEC(
    input                   clk,
    input                   rst,
    // input interface
    input   [7:0]           idat,
    input                   ival,
    output  logic           ordy,
    output                  oreq,
    // output interface
    input                   irdy,
	input					ireq,
    output  logic           osop,
    output  logic           oval,
    output  logic           odat,
    output  logic           pack_rdy


    );
    
    localparam BYTBLOCK_DATA = 240;
	localparam CRCLEN = 2;
    localparam BYTBLOCK_CODE = 288;  
    localparam PACKGAP  = 10;

/* __________________________________________________________________
                        P-to-S  converter (8x1)    
*/ 
    logic P2S_oreq;
    logic P2S_oval;
    logic P2S_ireq;
    logic P2S_odat;
    logic P2S_osop;

    P2S_conv_8x1   sub0_P2S_conv_8x1(
        .iclk   (clk),
        .irst   (rst),
    
        .oreq   (P2S_oreq),
        .isop   (pack_sop),
        .ival   (ival&ordy),
        .idat   (idat),
    
        .oval   (P2S_oval),
        .osop   (P2S_osop),
        .ireq   (P2S_ireq),
        .odat   (P2S_odat)   
    );

    assign P2S_ireq = itnerl_oreq;


/* __________________________________________________________________
                        Scrambler    
*/ 
    logic scr_isop;
    logic scr_osop;
    logic scr_oval;
    logic scr_odat;
    logic scr_ival;
    logic scr_idat;

    scrambler   sub0_scrambler(
        .iclk   (clk),
        .ireset (rst),
    
        .isop   (scr_isop),
        .ival   (scr_ival),
        .idata  (scr_idat),
    
        .oval   (scr_oval),
        .osop   (scr_osop),
        .odata  (scr_odat)   
    );

    assign scr_ival = P2S_oval;
    assign scr_idat = P2S_odat;
    assign scr_isop = P2S_osop;

/* __________________________________________________________________
                        CRC encoder    
*/ 
    logic   CRC_isop;
    logic   CRC_ival;
    logic   CRC_idat;
    logic   CRC_odat;
    logic   CRC_oval;
    logic   CRC_osop;

    assign  CRC_isop = scr_osop;
    assign  CRC_ival = scr_oval;
    assign  CRC_idat = scr_odat;

    coder_CRC sub0_coder_CRC(
        .clk        (clk),
        .rst        (rst),
    
        .ival       (CRC_ival),
        .isop       (CRC_isop),
        .idat       (CRC_idat),
    
        .odat       (CRC_odat),
        .oval       (CRC_oval),
        .osop       (CRC_osop)
    );

/* __________________________________________________________________
                         S-to-P converter (1x4)    
*/  
    logic           S2P_oreq;
    logic           S2P_ival;
    logic           S2P_idat;
    logic           S2P_oval;
    logic           S2P_ireq;
    logic  [3:0]    S2P_odat;
    logic           S2P_osop;
    logic           S2P_isop;

    S2P_conv_1x4   sub0_S2P_conv_1x4(
        .iclk   (clk),
        .irst   (rst),
    
        .oreq   (S2P_oreq),
        .ival   (S2P_ival),
        .idat   (S2P_idat),
        .isop   (S2P_isop),
    
        .oval   (S2P_oval),
        .ireq   (S2P_ireq),
        .osop   (S2P_osop),
        .odat   (S2P_odat)   
    );

    assign S2P_ival = CRC_oval;
    assign S2P_idat = CRC_odat;
    assign S2P_isop = CRC_osop;

    logic   [8:0]   ldpc_block_cnt;
    logic   [8:0]   tail_counter;
    logic           tail_trig;
    logic           raidy_ldpc;
    logic           val_ldpc;

    always @ (posedge clk or negedge rst) begin
        if (~rst) begin
            ldpc_block_cnt <= '0;
            tail_trig <= '0; 
        end
        else begin
            if (S2P_osop) begin
                ldpc_block_cnt = '0;        
            end
            else if (S2P_oval) begin
                ldpc_block_cnt = ldpc_block_cnt +1;
            end

            if (pack_last) begin
                tail_trig <= 1;
            end
            else if (tail_counter== 9'd384) begin
                tail_trig <= 0;
            end

            if (S2P_osop) begin
                tail_counter <= '0;
            end
            else if (tail_trig&raidy_ldpc) begin
                tail_counter = tail_counter + 1;
            end
        end
    end     

    assign val_ldpc  = (tail_counter[1:0]=='1);   
    assign pack_last = S2P_oval&(ldpc_block_cnt == 9'd478);
    assign raidy_ldpc = 1;
    assign eof_ldpc = val_ldpc&(tail_counter == 9'd383);

/* __________________________________________________________________
                         LDPC encoder    
*/ 
    parameter int pCODE  =  5 ;
    parameter int pN     = 2304 ;
    parameter int pDAT_W =  4 ;
    parameter int pTAG_W =  4 ;


    logic                ldpc_enc__iclk     ;
    logic                ldpc_enc__ireset   ;
    logic                ldpc_enc__iclkena  ;
    logic                ldpc_enc__isop     ;
    logic                ldpc_enc__ieop     ;
    logic                ldpc_enc__ieof     ;
    logic                ldpc_enc__ival     ;
    logic [pTAG_W-1 : 0] ldpc_enc__itag     ;
    logic [pDAT_W-1 : 0] ldpc_enc__idat     ;
    
    logic                ldpc_enc__ordy     ;
    logic                ldpc_enc__osop     ;
    logic                ldpc_enc__oeop     ;
    logic                ldpc_enc__oeof     ;
    logic                ldpc_enc__oval     ;
    logic [pTAG_W-1 : 0] ldpc_enc__otag     ;
    logic [pDAT_W-1 : 0] ldpc_enc__odat     ;

    ldpc_enc
    #(
      .pCODE  ( pCODE  ) ,
      .pN     ( pN     ) ,
      .pDAT_W ( pDAT_W ) ,
      .pTAG_W ( pTAG_W )
    )
    ldpc_enc
    (
      .iclk    ( ldpc_enc__iclk    ) ,
      .ireset  ( ldpc_enc__ireset  ) ,
      .iclkena ( ldpc_enc__iclkena ) ,
      .isop    ( ldpc_enc__isop    ) ,
      .ieop    ( ldpc_enc__ieop    ) ,
      .ieof    ( ldpc_enc__ieof    ) ,
      .ival    ( ldpc_enc__ival    ) ,
      .itag    ( ldpc_enc__itag    ) ,
      .idat    ( ldpc_enc__idat    ) ,

      .ordy    ( ldpc_enc__ordy    ) ,
      .osop    ( ldpc_enc__osop    ) ,
      .oeop    ( ldpc_enc__oeop    ) ,
      .oeof    ( ldpc_enc__oeof    ) ,
      .oval    ( ldpc_enc__oval    ) ,
      .otag    ( ldpc_enc__otag    ) ,
      .odat    ( ldpc_enc__odat    )
    );


      assign ldpc_enc__iclk    = clk ;
      assign ldpc_enc__ireset  = ~rst ;
      assign ldpc_enc__iclkena = 1 ;
      assign ldpc_enc__isop    = S2P_osop ;
      assign ldpc_enc__ieop    = pack_last;
      assign ldpc_enc__ieof    = eof_ldpc ;
      assign ldpc_enc__ival    = S2P_oval||val_ldpc ;
      assign ldpc_enc__itag    = '0 ;
      assign ldpc_enc__idat    = S2P_odat ;
/* __________________________________________________________________
                        P-to-S  converter (4x1)    
*/ 
    logic           P2S1_oreq;
    logic           P2S1_oval;
    logic           P2S1_ireq;
    logic           P2S1_odat;
    logic           P2S1_osop;
    logic   [3:0]   P2S1_idat;
    logic           P2S1_ival;

    P2S_conv_4x1   sub1_P2S_conv_4x1(
        .iclk   (clk),
        .irst   (rst),
    
        .oreq   (P2S1_oreq),
        .isop   (P2S1_isop),
        .ival   (P2S1_ival),
        .idat   (P2S1_idat),
    
        .oval   (P2S1_oval),
        .osop   (P2S1_osop),
        .ireq   (P2S1_ireq),
        .odat   (P2S1_odat)   
    );

    assign P2S1_ireq = itnerl_oreq;  
    assign P2S1_isop = ldpc_enc__osop;
    assign P2S1_ival = ldpc_enc__oval;
    assign P2S1_idat = ldpc_enc__odat;

/* __________________________________________________________________
                        Interleaver    
*/ 
    logic   itnerl_isop; 
    logic   itnerl_ival; 
    logic   itnerl_idat; 
    logic   itnerl_oreq; 
    logic   itnerl_ireq; 
    logic   itnerl_osop; 
    logic   itnerl_oval; 
    logic   itnerl_odat; 
    logic   itnerl_emty;

    interleaver sub0_interliver(
        .iclk       (clk),
        .irst       (rst),
        .isop       (itnerl_isop),
        .ival       (itnerl_ival),
        .idat       (itnerl_idat),
        .oreq       (itnerl_oreq),

        .ireq       (itnerl_ireq),
        .emty       (itnerl_emty),
        .osop       (itnerl_osop),
        .oval       (itnerl_oval),
        .odat       (itnerl_odat)
    );

    assign  itnerl_isop = P2S1_osop; 
    assign  itnerl_ival = P2S1_oval; 
    assign  itnerl_idat = P2S1_odat; 
    assign  itnerl_ireq = ireq; 



/////////////////////////////////////////////////////////////////////////
    assign ordy = itnerl_oreq&~GAP_trig;

    logic   [10:0]  pack_counter;
    logic           pack_sop;
    logic           GAP_trig;
    always @ (posedge clk or negedge rst) begin
        if (~ rst) begin
            pack_counter <= '0;
            GAP_trig     <= '0;
        end
        else if (pack_counter==(BYTBLOCK_CODE-1+PACKGAP)) begin
            pack_counter <= '0;
            GAP_trig     <= '0;
        end            
        else if (P2S_oreq&&ival) begin
            pack_counter <= pack_counter + 1'b1;
            if (pack_counter==(BYTBLOCK_DATA-1-CRCLEN))
                GAP_trig <= 1;
        end
    end

    assign oreq     = P2S_oreq&ordy; 
    assign pack_sop = (P2S_oreq&ival&pack_counter==0)? 1:0;
    assign odat     = itnerl_odat;
    assign oval     = itnerl_oval;
    assign osop     = itnerl_osop;
    assign pack_rdy = 1;




endmodule
