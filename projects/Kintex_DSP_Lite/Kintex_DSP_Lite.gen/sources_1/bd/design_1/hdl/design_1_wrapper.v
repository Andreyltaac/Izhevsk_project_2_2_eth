//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Fri Jan 27 12:40:26 2023
//Host        : TOR00094 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (AXI_RX_CLK_OUT,
    AXI_RX_DATA_OUT,
    AXI_TX_CLK_IN,
    AXI_TX_DATA_IN,
    FPGA_REF_40MHZ,
    LED1,
    LED2,
    LED3,
    PIN_0,
    PIN_1,
    PIN_2,
    ad9361_1_P0_N,
    ad9361_1_P0_P,
    ad9361_1_P1_N,
    ad9361_1_P1_P,
    ad9361_2_P0_N,
    ad9361_2_P0_P,
    ad9361_2_P1_N,
    ad9361_2_P1_P,
    ad9361_3_P0_N,
    ad9361_3_P0_P,
    ad9361_3_P1_N,
    ad9361_3_P1_P,
    ad9361_DCLK_1_N,
    ad9361_DCLK_1_P,
    ad9361_DCLK_2_N,
    ad9361_DCLK_2_P,
    ad9361_DCLK_3_N,
    ad9361_DCLK_3_P,
    ad9361_EN_1,
    ad9361_EN_2,
    ad9361_EN_3,
    ad9361_EN_AGC_1,
    ad9361_EN_AGC_2,
    ad9361_EN_AGC_3,
    ad9361_FB_CLK_1_N,
    ad9361_FB_CLK_1_P,
    ad9361_FB_CLK_2_N,
    ad9361_FB_CLK_2_P,
    ad9361_FB_CLK_3_N,
    ad9361_FB_CLK_3_P,
    ad9361_RESET_1,
    ad9361_RESET_2,
    ad9361_RESET_3,
    ad9361_RX_FRAME1_N,
    ad9361_RX_FRAME1_P,
    ad9361_RX_FRAME2_N,
    ad9361_RX_FRAME2_P,
    ad9361_RX_FRAME3_N,
    ad9361_RX_FRAME3_P,
    ad9361_SPI_CLK_1,
    ad9361_SPI_CLK_2,
    ad9361_SPI_CLK_3,
    ad9361_SPI_CS_1,
    ad9361_SPI_CS_2,
    ad9361_SPI_CS_3,
    ad9361_SPI_DI_1,
    ad9361_SPI_DI_2,
    ad9361_SPI_DI_3,
    ad9361_SPI_DO_1,
    ad9361_SPI_DO_2,
    ad9361_SPI_DO_3,
    ad9361_TXNRX_1,
    ad9361_TXNRX_2,
    ad9361_TXNRX_3,
    ad9361_TX_FRAME1_N,
    ad9361_TX_FRAME1_P,
    ad9361_TX_FRAME2_N,
    ad9361_TX_FRAME2_P,
    ad9361_TX_FRAME3_N,
    ad9361_TX_FRAME3_P,
    ad9364_DCLK_N,
    ad9364_DCLK_P,
    ad9364_EN,
    ad9364_EN_AGC,
    ad9364_FB_CLK_N,
    ad9364_FB_CLK_P,
    ad9364_P0_N,
    ad9364_P0_P,
    ad9364_P1_N,
    ad9364_P1_P,
    ad9364_RESET,
    ad9364_RX_FRAME_N,
    ad9364_RX_FRAME_P,
    ad9364_SPI_CLK,
    ad9364_SPI_CS,
    ad9364_SPI_DI,
    ad9364_SPI_DO,
    ad9364_TXNRX,
    ad9364_TX_FRAME_N,
    ad9364_TX_FRAME_P,
    fpga_28v_en_link1,
    fpga_28v_en_link2,
    fpga_28v_en_service1,
    fpga_28v_en_service2,
    fpga_28v_en_service3,
    fpga_28v_en_service4,
    fpga_5v_en_link,
    som_28v_en_link1,
    som_28v_en_link2,
    som_28v_en_service1,
    som_28v_en_service2,
    som_28v_en_service3,
    som_28v_en_service4,
    som_5v_en_link,
    spi_cs_n_0,
    spi_cs_n_1,
    spi_miso_0,
    spi_miso_1,
    spi_mosi_0,
    spi_mosi_1,
    spi_sclk_0,
    spi_sclk_1);
  output AXI_RX_CLK_OUT;
  output [16:0]AXI_RX_DATA_OUT;
  input AXI_TX_CLK_IN;
  input [16:0]AXI_TX_DATA_IN;
  input FPGA_REF_40MHZ;
  output [0:0]LED1;
  output [0:0]LED2;
  output [0:0]LED3;
  output PIN_0;
  output PIN_1;
  output PIN_2;
  output [5:0]ad9361_1_P0_N;
  output [5:0]ad9361_1_P0_P;
  input [5:0]ad9361_1_P1_N;
  input [5:0]ad9361_1_P1_P;
  output [5:0]ad9361_2_P0_N;
  output [5:0]ad9361_2_P0_P;
  input [5:0]ad9361_2_P1_N;
  input [5:0]ad9361_2_P1_P;
  output [5:0]ad9361_3_P0_N;
  output [5:0]ad9361_3_P0_P;
  input [5:0]ad9361_3_P1_N;
  input [5:0]ad9361_3_P1_P;
  input ad9361_DCLK_1_N;
  input ad9361_DCLK_1_P;
  input ad9361_DCLK_2_N;
  input ad9361_DCLK_2_P;
  input ad9361_DCLK_3_N;
  input ad9361_DCLK_3_P;
  output [0:0]ad9361_EN_1;
  output [0:0]ad9361_EN_2;
  output ad9361_EN_3;
  output [0:0]ad9361_EN_AGC_1;
  output [0:0]ad9361_EN_AGC_2;
  output [0:0]ad9361_EN_AGC_3;
  output ad9361_FB_CLK_1_N;
  output ad9361_FB_CLK_1_P;
  output ad9361_FB_CLK_2_N;
  output ad9361_FB_CLK_2_P;
  output ad9361_FB_CLK_3_N;
  output ad9361_FB_CLK_3_P;
  output [0:0]ad9361_RESET_1;
  output [0:0]ad9361_RESET_2;
  output [0:0]ad9361_RESET_3;
  input ad9361_RX_FRAME1_N;
  input ad9361_RX_FRAME1_P;
  input ad9361_RX_FRAME2_N;
  input ad9361_RX_FRAME2_P;
  input ad9361_RX_FRAME3_N;
  input ad9361_RX_FRAME3_P;
  output ad9361_SPI_CLK_1;
  output ad9361_SPI_CLK_2;
  output ad9361_SPI_CLK_3;
  output [0:0]ad9361_SPI_CS_1;
  output [0:0]ad9361_SPI_CS_2;
  output [0:0]ad9361_SPI_CS_3;
  output ad9361_SPI_DI_1;
  output ad9361_SPI_DI_2;
  output ad9361_SPI_DI_3;
  input ad9361_SPI_DO_1;
  input ad9361_SPI_DO_2;
  input ad9361_SPI_DO_3;
  output [0:0]ad9361_TXNRX_1;
  output [0:0]ad9361_TXNRX_2;
  output ad9361_TXNRX_3;
  output ad9361_TX_FRAME1_N;
  output ad9361_TX_FRAME1_P;
  output ad9361_TX_FRAME2_N;
  output ad9361_TX_FRAME2_P;
  output ad9361_TX_FRAME3_N;
  output ad9361_TX_FRAME3_P;
  input ad9364_DCLK_N;
  input ad9364_DCLK_P;
  output ad9364_EN;
  output [0:0]ad9364_EN_AGC;
  output ad9364_FB_CLK_N;
  output ad9364_FB_CLK_P;
  output [5:0]ad9364_P0_N;
  output [5:0]ad9364_P0_P;
  input [5:0]ad9364_P1_N;
  input [5:0]ad9364_P1_P;
  output [0:0]ad9364_RESET;
  input ad9364_RX_FRAME_N;
  input ad9364_RX_FRAME_P;
  output ad9364_SPI_CLK;
  output [0:0]ad9364_SPI_CS;
  output ad9364_SPI_DI;
  input ad9364_SPI_DO;
  output ad9364_TXNRX;
  output ad9364_TX_FRAME_N;
  output ad9364_TX_FRAME_P;
  output fpga_28v_en_link1;
  output fpga_28v_en_link2;
  output fpga_28v_en_service1;
  output fpga_28v_en_service2;
  output fpga_28v_en_service3;
  output fpga_28v_en_service4;
  output fpga_5v_en_link;
  input som_28v_en_link1;
  input som_28v_en_link2;
  input som_28v_en_service1;
  input som_28v_en_service2;
  input som_28v_en_service3;
  input som_28v_en_service4;
  input som_5v_en_link;
  output spi_cs_n_0;
  output spi_cs_n_1;
  input spi_miso_0;
  input spi_miso_1;
  output spi_mosi_0;
  output spi_mosi_1;
  output spi_sclk_0;
  output spi_sclk_1;

  wire AXI_RX_CLK_OUT;
  wire [16:0]AXI_RX_DATA_OUT;
  wire AXI_TX_CLK_IN;
  wire [16:0]AXI_TX_DATA_IN;
  wire FPGA_REF_40MHZ;
  wire [0:0]LED1;
  wire [0:0]LED2;
  wire [0:0]LED3;
  wire PIN_0;
  wire PIN_1;
  wire PIN_2;
  wire [5:0]ad9361_1_P0_N;
  wire [5:0]ad9361_1_P0_P;
  wire [5:0]ad9361_1_P1_N;
  wire [5:0]ad9361_1_P1_P;
  wire [5:0]ad9361_2_P0_N;
  wire [5:0]ad9361_2_P0_P;
  wire [5:0]ad9361_2_P1_N;
  wire [5:0]ad9361_2_P1_P;
  wire [5:0]ad9361_3_P0_N;
  wire [5:0]ad9361_3_P0_P;
  wire [5:0]ad9361_3_P1_N;
  wire [5:0]ad9361_3_P1_P;
  wire ad9361_DCLK_1_N;
  wire ad9361_DCLK_1_P;
  wire ad9361_DCLK_2_N;
  wire ad9361_DCLK_2_P;
  wire ad9361_DCLK_3_N;
  wire ad9361_DCLK_3_P;
  wire [0:0]ad9361_EN_1;
  wire [0:0]ad9361_EN_2;
  wire ad9361_EN_3;
  wire [0:0]ad9361_EN_AGC_1;
  wire [0:0]ad9361_EN_AGC_2;
  wire [0:0]ad9361_EN_AGC_3;
  wire ad9361_FB_CLK_1_N;
  wire ad9361_FB_CLK_1_P;
  wire ad9361_FB_CLK_2_N;
  wire ad9361_FB_CLK_2_P;
  wire ad9361_FB_CLK_3_N;
  wire ad9361_FB_CLK_3_P;
  wire [0:0]ad9361_RESET_1;
  wire [0:0]ad9361_RESET_2;
  wire [0:0]ad9361_RESET_3;
  wire ad9361_RX_FRAME1_N;
  wire ad9361_RX_FRAME1_P;
  wire ad9361_RX_FRAME2_N;
  wire ad9361_RX_FRAME2_P;
  wire ad9361_RX_FRAME3_N;
  wire ad9361_RX_FRAME3_P;
  wire ad9361_SPI_CLK_1;
  wire ad9361_SPI_CLK_2;
  wire ad9361_SPI_CLK_3;
  wire [0:0]ad9361_SPI_CS_1;
  wire [0:0]ad9361_SPI_CS_2;
  wire [0:0]ad9361_SPI_CS_3;
  wire ad9361_SPI_DI_1;
  wire ad9361_SPI_DI_2;
  wire ad9361_SPI_DI_3;
  wire ad9361_SPI_DO_1;
  wire ad9361_SPI_DO_2;
  wire ad9361_SPI_DO_3;
  wire [0:0]ad9361_TXNRX_1;
  wire [0:0]ad9361_TXNRX_2;
  wire ad9361_TXNRX_3;
  wire ad9361_TX_FRAME1_N;
  wire ad9361_TX_FRAME1_P;
  wire ad9361_TX_FRAME2_N;
  wire ad9361_TX_FRAME2_P;
  wire ad9361_TX_FRAME3_N;
  wire ad9361_TX_FRAME3_P;
  wire ad9364_DCLK_N;
  wire ad9364_DCLK_P;
  wire ad9364_EN;
  wire [0:0]ad9364_EN_AGC;
  wire ad9364_FB_CLK_N;
  wire ad9364_FB_CLK_P;
  wire [5:0]ad9364_P0_N;
  wire [5:0]ad9364_P0_P;
  wire [5:0]ad9364_P1_N;
  wire [5:0]ad9364_P1_P;
  wire [0:0]ad9364_RESET;
  wire ad9364_RX_FRAME_N;
  wire ad9364_RX_FRAME_P;
  wire ad9364_SPI_CLK;
  wire [0:0]ad9364_SPI_CS;
  wire ad9364_SPI_DI;
  wire ad9364_SPI_DO;
  wire ad9364_TXNRX;
  wire ad9364_TX_FRAME_N;
  wire ad9364_TX_FRAME_P;
  wire fpga_28v_en_link1;
  wire fpga_28v_en_link2;
  wire fpga_28v_en_service1;
  wire fpga_28v_en_service2;
  wire fpga_28v_en_service3;
  wire fpga_28v_en_service4;
  wire fpga_5v_en_link;
  wire som_28v_en_link1;
  wire som_28v_en_link2;
  wire som_28v_en_service1;
  wire som_28v_en_service2;
  wire som_28v_en_service3;
  wire som_28v_en_service4;
  wire som_5v_en_link;
  wire spi_cs_n_0;
  wire spi_cs_n_1;
  wire spi_miso_0;
  wire spi_miso_1;
  wire spi_mosi_0;
  wire spi_mosi_1;
  wire spi_sclk_0;
  wire spi_sclk_1;

  design_1 design_1_i
       (.AXI_RX_CLK_OUT(AXI_RX_CLK_OUT),
        .AXI_RX_DATA_OUT(AXI_RX_DATA_OUT),
        .AXI_TX_CLK_IN(AXI_TX_CLK_IN),
        .AXI_TX_DATA_IN(AXI_TX_DATA_IN),
        .FPGA_REF_40MHZ(FPGA_REF_40MHZ),
        .LED1(LED1),
        .LED2(LED2),
        .LED3(LED3),
        .PIN_0(PIN_0),
        .PIN_1(PIN_1),
        .PIN_2(PIN_2),
        .ad9361_1_P0_N(ad9361_1_P0_N),
        .ad9361_1_P0_P(ad9361_1_P0_P),
        .ad9361_1_P1_N(ad9361_1_P1_N),
        .ad9361_1_P1_P(ad9361_1_P1_P),
        .ad9361_2_P0_N(ad9361_2_P0_N),
        .ad9361_2_P0_P(ad9361_2_P0_P),
        .ad9361_2_P1_N(ad9361_2_P1_N),
        .ad9361_2_P1_P(ad9361_2_P1_P),
        .ad9361_3_P0_N(ad9361_3_P0_N),
        .ad9361_3_P0_P(ad9361_3_P0_P),
        .ad9361_3_P1_N(ad9361_3_P1_N),
        .ad9361_3_P1_P(ad9361_3_P1_P),
        .ad9361_DCLK_1_N(ad9361_DCLK_1_N),
        .ad9361_DCLK_1_P(ad9361_DCLK_1_P),
        .ad9361_DCLK_2_N(ad9361_DCLK_2_N),
        .ad9361_DCLK_2_P(ad9361_DCLK_2_P),
        .ad9361_DCLK_3_N(ad9361_DCLK_3_N),
        .ad9361_DCLK_3_P(ad9361_DCLK_3_P),
        .ad9361_EN_1(ad9361_EN_1),
        .ad9361_EN_2(ad9361_EN_2),
        .ad9361_EN_3(ad9361_EN_3),
        .ad9361_EN_AGC_1(ad9361_EN_AGC_1),
        .ad9361_EN_AGC_2(ad9361_EN_AGC_2),
        .ad9361_EN_AGC_3(ad9361_EN_AGC_3),
        .ad9361_FB_CLK_1_N(ad9361_FB_CLK_1_N),
        .ad9361_FB_CLK_1_P(ad9361_FB_CLK_1_P),
        .ad9361_FB_CLK_2_N(ad9361_FB_CLK_2_N),
        .ad9361_FB_CLK_2_P(ad9361_FB_CLK_2_P),
        .ad9361_FB_CLK_3_N(ad9361_FB_CLK_3_N),
        .ad9361_FB_CLK_3_P(ad9361_FB_CLK_3_P),
        .ad9361_RESET_1(ad9361_RESET_1),
        .ad9361_RESET_2(ad9361_RESET_2),
        .ad9361_RESET_3(ad9361_RESET_3),
        .ad9361_RX_FRAME1_N(ad9361_RX_FRAME1_N),
        .ad9361_RX_FRAME1_P(ad9361_RX_FRAME1_P),
        .ad9361_RX_FRAME2_N(ad9361_RX_FRAME2_N),
        .ad9361_RX_FRAME2_P(ad9361_RX_FRAME2_P),
        .ad9361_RX_FRAME3_N(ad9361_RX_FRAME3_N),
        .ad9361_RX_FRAME3_P(ad9361_RX_FRAME3_P),
        .ad9361_SPI_CLK_1(ad9361_SPI_CLK_1),
        .ad9361_SPI_CLK_2(ad9361_SPI_CLK_2),
        .ad9361_SPI_CLK_3(ad9361_SPI_CLK_3),
        .ad9361_SPI_CS_1(ad9361_SPI_CS_1),
        .ad9361_SPI_CS_2(ad9361_SPI_CS_2),
        .ad9361_SPI_CS_3(ad9361_SPI_CS_3),
        .ad9361_SPI_DI_1(ad9361_SPI_DI_1),
        .ad9361_SPI_DI_2(ad9361_SPI_DI_2),
        .ad9361_SPI_DI_3(ad9361_SPI_DI_3),
        .ad9361_SPI_DO_1(ad9361_SPI_DO_1),
        .ad9361_SPI_DO_2(ad9361_SPI_DO_2),
        .ad9361_SPI_DO_3(ad9361_SPI_DO_3),
        .ad9361_TXNRX_1(ad9361_TXNRX_1),
        .ad9361_TXNRX_2(ad9361_TXNRX_2),
        .ad9361_TXNRX_3(ad9361_TXNRX_3),
        .ad9361_TX_FRAME1_N(ad9361_TX_FRAME1_N),
        .ad9361_TX_FRAME1_P(ad9361_TX_FRAME1_P),
        .ad9361_TX_FRAME2_N(ad9361_TX_FRAME2_N),
        .ad9361_TX_FRAME2_P(ad9361_TX_FRAME2_P),
        .ad9361_TX_FRAME3_N(ad9361_TX_FRAME3_N),
        .ad9361_TX_FRAME3_P(ad9361_TX_FRAME3_P),
        .ad9364_DCLK_N(ad9364_DCLK_N),
        .ad9364_DCLK_P(ad9364_DCLK_P),
        .ad9364_EN(ad9364_EN),
        .ad9364_EN_AGC(ad9364_EN_AGC),
        .ad9364_FB_CLK_N(ad9364_FB_CLK_N),
        .ad9364_FB_CLK_P(ad9364_FB_CLK_P),
        .ad9364_P0_N(ad9364_P0_N),
        .ad9364_P0_P(ad9364_P0_P),
        .ad9364_P1_N(ad9364_P1_N),
        .ad9364_P1_P(ad9364_P1_P),
        .ad9364_RESET(ad9364_RESET),
        .ad9364_RX_FRAME_N(ad9364_RX_FRAME_N),
        .ad9364_RX_FRAME_P(ad9364_RX_FRAME_P),
        .ad9364_SPI_CLK(ad9364_SPI_CLK),
        .ad9364_SPI_CS(ad9364_SPI_CS),
        .ad9364_SPI_DI(ad9364_SPI_DI),
        .ad9364_SPI_DO(ad9364_SPI_DO),
        .ad9364_TXNRX(ad9364_TXNRX),
        .ad9364_TX_FRAME_N(ad9364_TX_FRAME_N),
        .ad9364_TX_FRAME_P(ad9364_TX_FRAME_P),
        .fpga_28v_en_link1(fpga_28v_en_link1),
        .fpga_28v_en_link2(fpga_28v_en_link2),
        .fpga_28v_en_service1(fpga_28v_en_service1),
        .fpga_28v_en_service2(fpga_28v_en_service2),
        .fpga_28v_en_service3(fpga_28v_en_service3),
        .fpga_28v_en_service4(fpga_28v_en_service4),
        .fpga_5v_en_link(fpga_5v_en_link),
        .som_28v_en_link1(som_28v_en_link1),
        .som_28v_en_link2(som_28v_en_link2),
        .som_28v_en_service1(som_28v_en_service1),
        .som_28v_en_service2(som_28v_en_service2),
        .som_28v_en_service3(som_28v_en_service3),
        .som_28v_en_service4(som_28v_en_service4),
        .som_5v_en_link(som_5v_en_link),
        .spi_cs_n_0(spi_cs_n_0),
        .spi_cs_n_1(spi_cs_n_1),
        .spi_miso_0(spi_miso_0),
        .spi_miso_1(spi_miso_1),
        .spi_mosi_0(spi_mosi_0),
        .spi_mosi_1(spi_mosi_1),
        .spi_sclk_0(spi_sclk_0),
        .spi_sclk_1(spi_sclk_1));
endmodule
