//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Fri Jan 27 12:40:25 2023
//Host        : TOR00094 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module AD9361_1_imp_OOB3I
   (ad9361_1_P0_N,
    ad9361_1_P0_P,
    ad9361_1_P1_N,
    ad9361_1_P1_P,
    ad9361_DCLK_1_N,
    ad9361_DCLK_1_P,
    ad9361_EN_1,
    ad9361_FB_CLK_1_N,
    ad9361_FB_CLK_1_P,
    ad9361_RX_FRAME1_N,
    ad9361_RX_FRAME1_P,
    ad9361_TXNRX_1,
    ad9361_TX_FRAME1_N,
    ad9361_TX_FRAME1_P,
    adc_valid_i0,
    delay_clk,
    din_data_10,
    din_data_11,
    din_data_2,
    din_data_3,
    dout_clk,
    dout_data_0,
    dout_data_1,
    dout_data_2,
    dout_data_3,
    dout_ovf,
    dout_rstn,
    s_axi_aclk,
    s_axi_araddr,
    s_axi_aresetn,
    s_axi_arprot,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    up_enable,
    up_txnrx);
  output [5:0]ad9361_1_P0_N;
  output [5:0]ad9361_1_P0_P;
  input [5:0]ad9361_1_P1_N;
  input [5:0]ad9361_1_P1_P;
  input ad9361_DCLK_1_N;
  input ad9361_DCLK_1_P;
  output ad9361_EN_1;
  output ad9361_FB_CLK_1_N;
  output ad9361_FB_CLK_1_P;
  input ad9361_RX_FRAME1_N;
  input ad9361_RX_FRAME1_P;
  output ad9361_TXNRX_1;
  output ad9361_TX_FRAME1_N;
  output ad9361_TX_FRAME1_P;
  output adc_valid_i0;
  input delay_clk;
  input [15:0]din_data_10;
  input [15:0]din_data_11;
  input [15:0]din_data_2;
  input [15:0]din_data_3;
  input dout_clk;
  output [15:0]dout_data_0;
  output [15:0]dout_data_1;
  output [15:0]dout_data_2;
  output [15:0]dout_data_3;
  input dout_ovf;
  input dout_rstn;
  input s_axi_aclk;
  input [31:0]s_axi_araddr;
  input s_axi_aresetn;
  input [2:0]s_axi_arprot;
  output s_axi_arready;
  input s_axi_arvalid;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output s_axi_wready;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  input up_enable;
  input up_txnrx;

  wire [31:0]Conn1_ARADDR;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [0:0]LOGIC_1_dout;
  wire [15:0]RAshift16_4_up_0_output_bus;
  wire [15:0]RAshift16_4_up_1_output_bus;
  wire [15:0]RAshift16_4_up_2_output_bus;
  wire [15:0]RAshift16_4_up_3_output_bus;
  wire [0:0]TDD_SYNC1_dout;
  wire [5:0]ad9361_1_P1_N_1;
  wire [5:0]ad9361_1_P1_P_1;
  wire ad9361_DCLK_1_N_1;
  wire ad9361_DCLK_1_P_1;
  wire ad9361_RX_FRAME1_N_1;
  wire ad9361_RX_FRAME1_P_1;
  wire [15:0]adc_fifo_ad9361_1_dout_data_0;
  wire [15:0]adc_fifo_ad9361_1_dout_data_1;
  wire [15:0]adc_fifo_ad9361_1_dout_data_2;
  wire [15:0]adc_fifo_ad9361_1_dout_data_3;
  wire [15:0]axi_ad9361_1_adc_data_i0;
  wire [15:0]axi_ad9361_1_adc_data_i1;
  wire [15:0]axi_ad9361_1_adc_data_q0;
  wire [15:0]axi_ad9361_1_adc_data_q1;
  wire axi_ad9361_1_adc_enable_i0;
  wire axi_ad9361_1_adc_enable_i1;
  wire axi_ad9361_1_adc_enable_q0;
  wire axi_ad9361_1_adc_enable_q1;
  wire axi_ad9361_1_adc_valid_i0;
  wire axi_ad9361_1_adc_valid_i1;
  wire axi_ad9361_1_adc_valid_q0;
  wire axi_ad9361_1_adc_valid_q1;
  wire axi_ad9361_1_dac_enable_i0;
  wire axi_ad9361_1_dac_enable_i1;
  wire axi_ad9361_1_dac_enable_q0;
  wire axi_ad9361_1_dac_enable_q1;
  wire axi_ad9361_1_dac_sync_out;
  wire axi_ad9361_1_dac_valid_i0;
  wire axi_ad9361_1_dac_valid_i1;
  wire axi_ad9361_1_dac_valid_q0;
  wire axi_ad9361_1_dac_valid_q1;
  wire axi_ad9361_1_enable;
  wire axi_ad9361_1_l_clk;
  wire axi_ad9361_1_rst;
  wire axi_ad9361_1_tx_clk_out_n;
  wire axi_ad9361_1_tx_clk_out_p;
  wire [5:0]axi_ad9361_1_tx_data_out_n;
  wire [5:0]axi_ad9361_1_tx_data_out_p;
  wire axi_ad9361_1_tx_frame_out_n;
  wire axi_ad9361_1_tx_frame_out_p;
  wire axi_ad9361_1_txnrx;
  wire [15:0]dac_fifo_ad9361_0_dout_data_0;
  wire [15:0]dac_fifo_ad9361_0_dout_data_1;
  wire [15:0]dac_fifo_ad9361_0_dout_data_2;
  wire [15:0]dac_fifo_ad9361_0_dout_data_3;
  wire delay_clk_1;
  wire [15:0]din_data_10_1;
  wire [15:0]din_data_11_1;
  wire [15:0]din_data_2_1;
  wire [15:0]din_data_3_1;
  wire dout_clk_1;
  wire dout_ovf_1;
  wire dout_rstn_1;
  wire s_axi_aclk_1;
  wire s_axi_aresetn_1;
  wire up_enable_1;
  wire up_txnrx_1;

  assign Conn1_ARADDR = s_axi_araddr[31:0];
  assign Conn1_ARPROT = s_axi_arprot[2:0];
  assign Conn1_ARVALID = s_axi_arvalid;
  assign Conn1_AWADDR = s_axi_awaddr[31:0];
  assign Conn1_AWPROT = s_axi_awprot[2:0];
  assign Conn1_AWVALID = s_axi_awvalid;
  assign Conn1_BREADY = s_axi_bready;
  assign Conn1_RREADY = s_axi_rready;
  assign Conn1_WDATA = s_axi_wdata[31:0];
  assign Conn1_WSTRB = s_axi_wstrb[3:0];
  assign Conn1_WVALID = s_axi_wvalid;
  assign ad9361_1_P0_N[5:0] = axi_ad9361_1_tx_data_out_n;
  assign ad9361_1_P0_P[5:0] = axi_ad9361_1_tx_data_out_p;
  assign ad9361_1_P1_N_1 = ad9361_1_P1_N[5:0];
  assign ad9361_1_P1_P_1 = ad9361_1_P1_P[5:0];
  assign ad9361_DCLK_1_N_1 = ad9361_DCLK_1_N;
  assign ad9361_DCLK_1_P_1 = ad9361_DCLK_1_P;
  assign ad9361_EN_1 = axi_ad9361_1_enable;
  assign ad9361_FB_CLK_1_N = axi_ad9361_1_tx_clk_out_n;
  assign ad9361_FB_CLK_1_P = axi_ad9361_1_tx_clk_out_p;
  assign ad9361_RX_FRAME1_N_1 = ad9361_RX_FRAME1_N;
  assign ad9361_RX_FRAME1_P_1 = ad9361_RX_FRAME1_P;
  assign ad9361_TXNRX_1 = axi_ad9361_1_txnrx;
  assign ad9361_TX_FRAME1_N = axi_ad9361_1_tx_frame_out_n;
  assign ad9361_TX_FRAME1_P = axi_ad9361_1_tx_frame_out_p;
  assign adc_valid_i0 = axi_ad9361_1_adc_valid_i0;
  assign delay_clk_1 = delay_clk;
  assign din_data_10_1 = din_data_10[15:0];
  assign din_data_11_1 = din_data_11[15:0];
  assign din_data_2_1 = din_data_2[15:0];
  assign din_data_3_1 = din_data_3[15:0];
  assign dout_clk_1 = dout_clk;
  assign dout_data_0[15:0] = RAshift16_4_up_0_output_bus;
  assign dout_data_1[15:0] = RAshift16_4_up_1_output_bus;
  assign dout_data_2[15:0] = RAshift16_4_up_2_output_bus;
  assign dout_data_3[15:0] = RAshift16_4_up_3_output_bus;
  assign dout_ovf_1 = dout_ovf;
  assign dout_rstn_1 = dout_rstn;
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  assign s_axi_arready = Conn1_ARREADY;
  assign s_axi_awready = Conn1_AWREADY;
  assign s_axi_bresp[1:0] = Conn1_BRESP;
  assign s_axi_bvalid = Conn1_BVALID;
  assign s_axi_rdata[31:0] = Conn1_RDATA;
  assign s_axi_rresp[1:0] = Conn1_RRESP;
  assign s_axi_rvalid = Conn1_RVALID;
  assign s_axi_wready = Conn1_WREADY;
  assign up_enable_1 = up_enable;
  assign up_txnrx_1 = up_txnrx;
  design_1_LOGIC_1_1 LOGIC_1
       (.dout(LOGIC_1_dout));
  design_1_RAshift16_4_up_0_0 RAshift16_4_up_0
       (.input_bus(adc_fifo_ad9361_1_dout_data_0),
        .output_bus(RAshift16_4_up_0_output_bus));
  design_1_RAshift16_4_up_1_0 RAshift16_4_up_1
       (.input_bus(adc_fifo_ad9361_1_dout_data_1),
        .output_bus(RAshift16_4_up_1_output_bus));
  design_1_RAshift16_4_up_2_0 RAshift16_4_up_2
       (.input_bus(adc_fifo_ad9361_1_dout_data_2),
        .output_bus(RAshift16_4_up_2_output_bus));
  design_1_RAshift16_4_up_3_0 RAshift16_4_up_3
       (.input_bus(adc_fifo_ad9361_1_dout_data_3),
        .output_bus(RAshift16_4_up_3_output_bus));
  design_1_TDD_SYNC1_0 TDD_SYNC1
       (.dout(TDD_SYNC1_dout));
  design_1_adc_fifo_ad9361_1_0 adc_fifo_ad9361_1
       (.din_clk(axi_ad9361_1_l_clk),
        .din_data_0(axi_ad9361_1_adc_data_i0),
        .din_data_1(axi_ad9361_1_adc_data_q0),
        .din_data_2(axi_ad9361_1_adc_data_i1),
        .din_data_3(axi_ad9361_1_adc_data_q1),
        .din_enable_0(axi_ad9361_1_adc_enable_i0),
        .din_enable_1(axi_ad9361_1_adc_enable_q0),
        .din_enable_2(axi_ad9361_1_adc_enable_i1),
        .din_enable_3(axi_ad9361_1_adc_enable_q1),
        .din_rst(axi_ad9361_1_rst),
        .din_valid_0(axi_ad9361_1_adc_valid_i0),
        .din_valid_1(axi_ad9361_1_adc_valid_q0),
        .din_valid_2(axi_ad9361_1_adc_valid_i1),
        .din_valid_3(axi_ad9361_1_adc_valid_q1),
        .dout_clk(dout_clk_1),
        .dout_data_0(adc_fifo_ad9361_1_dout_data_0),
        .dout_data_1(adc_fifo_ad9361_1_dout_data_1),
        .dout_data_2(adc_fifo_ad9361_1_dout_data_2),
        .dout_data_3(adc_fifo_ad9361_1_dout_data_3),
        .dout_ovf(dout_ovf_1),
        .dout_rstn(dout_rstn_1));
  design_1_axi_ad9361_1_0 axi_ad9361_1
       (.adc_data_i0(axi_ad9361_1_adc_data_i0),
        .adc_data_i1(axi_ad9361_1_adc_data_i1),
        .adc_data_q0(axi_ad9361_1_adc_data_q0),
        .adc_data_q1(axi_ad9361_1_adc_data_q1),
        .adc_dovf(1'b0),
        .adc_enable_i0(axi_ad9361_1_adc_enable_i0),
        .adc_enable_i1(axi_ad9361_1_adc_enable_i1),
        .adc_enable_q0(axi_ad9361_1_adc_enable_q0),
        .adc_enable_q1(axi_ad9361_1_adc_enable_q1),
        .adc_valid_i0(axi_ad9361_1_adc_valid_i0),
        .adc_valid_i1(axi_ad9361_1_adc_valid_i1),
        .adc_valid_q0(axi_ad9361_1_adc_valid_q0),
        .adc_valid_q1(axi_ad9361_1_adc_valid_q1),
        .clk(axi_ad9361_1_l_clk),
        .dac_data_i0(dac_fifo_ad9361_0_dout_data_0),
        .dac_data_i1(dac_fifo_ad9361_0_dout_data_2),
        .dac_data_q0(dac_fifo_ad9361_0_dout_data_1),
        .dac_data_q1(dac_fifo_ad9361_0_dout_data_3),
        .dac_dunf(1'b0),
        .dac_enable_i0(axi_ad9361_1_dac_enable_i0),
        .dac_enable_i1(axi_ad9361_1_dac_enable_i1),
        .dac_enable_q0(axi_ad9361_1_dac_enable_q0),
        .dac_enable_q1(axi_ad9361_1_dac_enable_q1),
        .dac_sync_in(axi_ad9361_1_dac_sync_out),
        .dac_sync_out(axi_ad9361_1_dac_sync_out),
        .dac_valid_i0(axi_ad9361_1_dac_valid_i0),
        .dac_valid_i1(axi_ad9361_1_dac_valid_i1),
        .dac_valid_q0(axi_ad9361_1_dac_valid_q0),
        .dac_valid_q1(axi_ad9361_1_dac_valid_q1),
        .delay_clk(delay_clk_1),
        .enable(axi_ad9361_1_enable),
        .gps_pps(1'b0),
        .l_clk(axi_ad9361_1_l_clk),
        .rst(axi_ad9361_1_rst),
        .rx_clk_in_n(ad9361_DCLK_1_N_1),
        .rx_clk_in_p(ad9361_DCLK_1_P_1),
        .rx_data_in_n(ad9361_1_P1_N_1),
        .rx_data_in_p(ad9361_1_P1_P_1),
        .rx_frame_in_n(ad9361_RX_FRAME1_N_1),
        .rx_frame_in_p(ad9361_RX_FRAME1_P_1),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(Conn1_ARADDR[15:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arprot(Conn1_ARPROT),
        .s_axi_arready(Conn1_ARREADY),
        .s_axi_arvalid(Conn1_ARVALID),
        .s_axi_awaddr(Conn1_AWADDR[15:0]),
        .s_axi_awprot(Conn1_AWPROT),
        .s_axi_awready(Conn1_AWREADY),
        .s_axi_awvalid(Conn1_AWVALID),
        .s_axi_bready(Conn1_BREADY),
        .s_axi_bresp(Conn1_BRESP),
        .s_axi_bvalid(Conn1_BVALID),
        .s_axi_rdata(Conn1_RDATA),
        .s_axi_rready(Conn1_RREADY),
        .s_axi_rresp(Conn1_RRESP),
        .s_axi_rvalid(Conn1_RVALID),
        .s_axi_wdata(Conn1_WDATA),
        .s_axi_wready(Conn1_WREADY),
        .s_axi_wstrb(Conn1_WSTRB),
        .s_axi_wvalid(Conn1_WVALID),
        .tdd_sync(TDD_SYNC1_dout),
        .tx_clk_out_n(axi_ad9361_1_tx_clk_out_n),
        .tx_clk_out_p(axi_ad9361_1_tx_clk_out_p),
        .tx_data_out_n(axi_ad9361_1_tx_data_out_n),
        .tx_data_out_p(axi_ad9361_1_tx_data_out_p),
        .tx_frame_out_n(axi_ad9361_1_tx_frame_out_n),
        .tx_frame_out_p(axi_ad9361_1_tx_frame_out_p),
        .txnrx(axi_ad9361_1_txnrx),
        .up_adc_gpio_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .up_dac_gpio_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .up_enable(up_enable_1),
        .up_txnrx(up_txnrx_1));
  design_1_dac_fifo_ad9361_1_0 dac_fifo_ad9361_1
       (.din_clk(dout_clk_1),
        .din_data_0(din_data_2_1),
        .din_data_1(din_data_3_1),
        .din_data_2(din_data_10_1),
        .din_data_3(din_data_11_1),
        .din_rstn(dout_rstn_1),
        .din_unf(1'b0),
        .din_valid_in_0(LOGIC_1_dout),
        .din_valid_in_1(LOGIC_1_dout),
        .din_valid_in_2(LOGIC_1_dout),
        .din_valid_in_3(LOGIC_1_dout),
        .dout_clk(axi_ad9361_1_l_clk),
        .dout_data_0(dac_fifo_ad9361_0_dout_data_0),
        .dout_data_1(dac_fifo_ad9361_0_dout_data_1),
        .dout_data_2(dac_fifo_ad9361_0_dout_data_2),
        .dout_data_3(dac_fifo_ad9361_0_dout_data_3),
        .dout_enable_0(axi_ad9361_1_dac_enable_i0),
        .dout_enable_1(axi_ad9361_1_dac_enable_q0),
        .dout_enable_2(axi_ad9361_1_dac_enable_i1),
        .dout_enable_3(axi_ad9361_1_dac_enable_q1),
        .dout_rst(axi_ad9361_1_rst),
        .dout_valid_0(axi_ad9361_1_dac_valid_i0),
        .dout_valid_1(axi_ad9361_1_dac_valid_q0),
        .dout_valid_2(axi_ad9361_1_dac_valid_i1),
        .dout_valid_3(axi_ad9361_1_dac_valid_q1));
endmodule

module AD9361_2_imp_GMWOOB
   (ad9361_2_P0_N,
    ad9361_2_P0_P,
    ad9361_2_P1_N,
    ad9361_2_P1_P,
    ad9361_DCLK_2_N,
    ad9361_DCLK_2_P,
    ad9361_EN_2,
    ad9361_FB_CLK_2_N,
    ad9361_FB_CLK_2_P,
    ad9361_RX_FRAME2_N,
    ad9361_RX_FRAME2_P,
    ad9361_TXNRX_2,
    ad9361_TX_FRAME2_N,
    ad9361_TX_FRAME2_P,
    adc_valid_i0,
    delay_clk,
    din_clk,
    din_data_0,
    din_data_1,
    din_data_4,
    din_data_5,
    din_rstn,
    dout_data_4,
    dout_data_5,
    dout_data_6,
    dout_data_7,
    s_axi_aclk,
    s_axi_araddr,
    s_axi_aresetn,
    s_axi_arprot,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    up_enable,
    up_txnrx);
  output [5:0]ad9361_2_P0_N;
  output [5:0]ad9361_2_P0_P;
  input [5:0]ad9361_2_P1_N;
  input [5:0]ad9361_2_P1_P;
  input ad9361_DCLK_2_N;
  input ad9361_DCLK_2_P;
  output ad9361_EN_2;
  output ad9361_FB_CLK_2_N;
  output ad9361_FB_CLK_2_P;
  input ad9361_RX_FRAME2_N;
  input ad9361_RX_FRAME2_P;
  output ad9361_TXNRX_2;
  output ad9361_TX_FRAME2_N;
  output ad9361_TX_FRAME2_P;
  output adc_valid_i0;
  input delay_clk;
  input din_clk;
  input [15:0]din_data_0;
  input [15:0]din_data_1;
  input [15:0]din_data_4;
  input [15:0]din_data_5;
  input din_rstn;
  output [15:0]dout_data_4;
  output [15:0]dout_data_5;
  output [15:0]dout_data_6;
  output [15:0]dout_data_7;
  input s_axi_aclk;
  input [31:0]s_axi_araddr;
  input s_axi_aresetn;
  input [2:0]s_axi_arprot;
  output s_axi_arready;
  input s_axi_arvalid;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output s_axi_wready;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  input up_enable;
  input up_txnrx;

  wire [31:0]Conn1_ARADDR;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [15:0]RAshift16_4_up_0_output_bus;
  wire [15:0]RAshift16_4_up_1_output_bus;
  wire [15:0]RAshift16_4_up_2_output_bus;
  wire [15:0]RAshift16_4_up_3_output_bus;
  wire [0:0]TDD_SYNC2_dout;
  wire [5:0]ad9361_2_P1_N_1;
  wire [5:0]ad9361_2_P1_P_1;
  wire ad9361_DCLK_2_N_1;
  wire ad9361_DCLK_2_P_1;
  wire ad9361_RX_FRAME2_N_1;
  wire ad9361_RX_FRAME2_P_1;
  wire [15:0]adc_fifo_ad9361_2_dout_data_0;
  wire [15:0]adc_fifo_ad9361_2_dout_data_1;
  wire [15:0]adc_fifo_ad9361_2_dout_data_2;
  wire [15:0]adc_fifo_ad9361_2_dout_data_3;
  wire [15:0]axi_ad9361_2_adc_data_i0;
  wire [15:0]axi_ad9361_2_adc_data_i1;
  wire [15:0]axi_ad9361_2_adc_data_q0;
  wire [15:0]axi_ad9361_2_adc_data_q1;
  wire axi_ad9361_2_adc_enable_i0;
  wire axi_ad9361_2_adc_enable_i1;
  wire axi_ad9361_2_adc_enable_q0;
  wire axi_ad9361_2_adc_enable_q1;
  wire axi_ad9361_2_adc_valid_i0;
  wire axi_ad9361_2_adc_valid_i1;
  wire axi_ad9361_2_adc_valid_q0;
  wire axi_ad9361_2_adc_valid_q1;
  wire axi_ad9361_2_dac_enable_i0;
  wire axi_ad9361_2_dac_enable_i1;
  wire axi_ad9361_2_dac_enable_q0;
  wire axi_ad9361_2_dac_enable_q1;
  wire axi_ad9361_2_dac_sync_out;
  wire axi_ad9361_2_dac_valid_i0;
  wire axi_ad9361_2_dac_valid_i1;
  wire axi_ad9361_2_dac_valid_q0;
  wire axi_ad9361_2_dac_valid_q1;
  wire axi_ad9361_2_enable;
  wire axi_ad9361_2_tx_clk_out_n;
  wire axi_ad9361_2_tx_clk_out_p;
  wire [5:0]axi_ad9361_2_tx_data_out_n;
  wire [5:0]axi_ad9361_2_tx_data_out_p;
  wire axi_ad9361_2_tx_frame_out_n;
  wire axi_ad9361_2_tx_frame_out_p;
  wire axi_ad9361_2_txnrx;
  wire [15:0]dac_fifo_ad9361_1_dout_data_0;
  wire [15:0]dac_fifo_ad9361_1_dout_data_1;
  wire [15:0]dac_fifo_ad9361_1_dout_data_2;
  wire [15:0]dac_fifo_ad9361_1_dout_data_3;
  wire delay_clk_1;
  wire din_clk_1;
  wire [15:0]din_data_0_1;
  wire [15:0]din_data_1_1;
  wire [15:0]din_data_4_1;
  wire [15:0]din_data_5_1;
  wire din_rstn_1;
  wire [0:0]din_valid_in_1_1;
  wire dout_clk_1;
  wire dout_rst_1;
  wire s_axi_aclk_1;
  wire s_axi_aresetn_1;
  wire up_enable_1;
  wire up_txnrx_1;

  assign Conn1_ARADDR = s_axi_araddr[31:0];
  assign Conn1_ARPROT = s_axi_arprot[2:0];
  assign Conn1_ARVALID = s_axi_arvalid;
  assign Conn1_AWADDR = s_axi_awaddr[31:0];
  assign Conn1_AWPROT = s_axi_awprot[2:0];
  assign Conn1_AWVALID = s_axi_awvalid;
  assign Conn1_BREADY = s_axi_bready;
  assign Conn1_RREADY = s_axi_rready;
  assign Conn1_WDATA = s_axi_wdata[31:0];
  assign Conn1_WSTRB = s_axi_wstrb[3:0];
  assign Conn1_WVALID = s_axi_wvalid;
  assign ad9361_2_P0_N[5:0] = axi_ad9361_2_tx_data_out_n;
  assign ad9361_2_P0_P[5:0] = axi_ad9361_2_tx_data_out_p;
  assign ad9361_2_P1_N_1 = ad9361_2_P1_N[5:0];
  assign ad9361_2_P1_P_1 = ad9361_2_P1_P[5:0];
  assign ad9361_DCLK_2_N_1 = ad9361_DCLK_2_N;
  assign ad9361_DCLK_2_P_1 = ad9361_DCLK_2_P;
  assign ad9361_EN_2 = axi_ad9361_2_enable;
  assign ad9361_FB_CLK_2_N = axi_ad9361_2_tx_clk_out_n;
  assign ad9361_FB_CLK_2_P = axi_ad9361_2_tx_clk_out_p;
  assign ad9361_RX_FRAME2_N_1 = ad9361_RX_FRAME2_N;
  assign ad9361_RX_FRAME2_P_1 = ad9361_RX_FRAME2_P;
  assign ad9361_TXNRX_2 = axi_ad9361_2_txnrx;
  assign ad9361_TX_FRAME2_N = axi_ad9361_2_tx_frame_out_n;
  assign ad9361_TX_FRAME2_P = axi_ad9361_2_tx_frame_out_p;
  assign adc_valid_i0 = axi_ad9361_2_adc_valid_i0;
  assign delay_clk_1 = delay_clk;
  assign din_clk_1 = din_clk;
  assign din_data_0_1 = din_data_0[15:0];
  assign din_data_1_1 = din_data_1[15:0];
  assign din_data_4_1 = din_data_4[15:0];
  assign din_data_5_1 = din_data_5[15:0];
  assign din_rstn_1 = din_rstn;
  assign dout_data_4[15:0] = RAshift16_4_up_2_output_bus;
  assign dout_data_5[15:0] = RAshift16_4_up_3_output_bus;
  assign dout_data_6[15:0] = RAshift16_4_up_0_output_bus;
  assign dout_data_7[15:0] = RAshift16_4_up_1_output_bus;
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  assign s_axi_arready = Conn1_ARREADY;
  assign s_axi_awready = Conn1_AWREADY;
  assign s_axi_bresp[1:0] = Conn1_BRESP;
  assign s_axi_bvalid = Conn1_BVALID;
  assign s_axi_rdata[31:0] = Conn1_RDATA;
  assign s_axi_rresp[1:0] = Conn1_RRESP;
  assign s_axi_rvalid = Conn1_RVALID;
  assign s_axi_wready = Conn1_WREADY;
  assign up_enable_1 = up_enable;
  assign up_txnrx_1 = up_txnrx;
  design_1_LOGIC_1_2 LOGIC_1
       (.dout(din_valid_in_1_1));
  design_1_RAshift16_4_up_0_1 RAshift16_4_up_0
       (.input_bus(adc_fifo_ad9361_2_dout_data_0),
        .output_bus(RAshift16_4_up_0_output_bus));
  design_1_RAshift16_4_up_1_1 RAshift16_4_up_1
       (.input_bus(adc_fifo_ad9361_2_dout_data_1),
        .output_bus(RAshift16_4_up_1_output_bus));
  design_1_RAshift16_4_up_2_1 RAshift16_4_up_2
       (.input_bus(adc_fifo_ad9361_2_dout_data_2),
        .output_bus(RAshift16_4_up_2_output_bus));
  design_1_RAshift16_4_up_3_1 RAshift16_4_up_3
       (.input_bus(adc_fifo_ad9361_2_dout_data_3),
        .output_bus(RAshift16_4_up_3_output_bus));
  design_1_TDD_SYNC2_0 TDD_SYNC2
       (.dout(TDD_SYNC2_dout));
  design_1_adc_fifo_ad9361_2_0 adc_fifo_ad9361_2
       (.din_clk(dout_clk_1),
        .din_data_0(axi_ad9361_2_adc_data_i0),
        .din_data_1(axi_ad9361_2_adc_data_q0),
        .din_data_2(axi_ad9361_2_adc_data_i1),
        .din_data_3(axi_ad9361_2_adc_data_q1),
        .din_enable_0(axi_ad9361_2_adc_enable_i0),
        .din_enable_1(axi_ad9361_2_adc_enable_q0),
        .din_enable_2(axi_ad9361_2_adc_enable_i1),
        .din_enable_3(axi_ad9361_2_adc_enable_q1),
        .din_rst(dout_rst_1),
        .din_valid_0(axi_ad9361_2_adc_valid_i0),
        .din_valid_1(axi_ad9361_2_adc_valid_q0),
        .din_valid_2(axi_ad9361_2_adc_valid_i1),
        .din_valid_3(axi_ad9361_2_adc_valid_q1),
        .dout_clk(din_clk_1),
        .dout_data_0(adc_fifo_ad9361_2_dout_data_0),
        .dout_data_1(adc_fifo_ad9361_2_dout_data_1),
        .dout_data_2(adc_fifo_ad9361_2_dout_data_2),
        .dout_data_3(adc_fifo_ad9361_2_dout_data_3),
        .dout_ovf(1'b0),
        .dout_rstn(din_rstn_1));
  design_1_axi_ad9361_2_0 axi_ad9361_2
       (.adc_data_i0(axi_ad9361_2_adc_data_i0),
        .adc_data_i1(axi_ad9361_2_adc_data_i1),
        .adc_data_q0(axi_ad9361_2_adc_data_q0),
        .adc_data_q1(axi_ad9361_2_adc_data_q1),
        .adc_dovf(1'b0),
        .adc_enable_i0(axi_ad9361_2_adc_enable_i0),
        .adc_enable_i1(axi_ad9361_2_adc_enable_i1),
        .adc_enable_q0(axi_ad9361_2_adc_enable_q0),
        .adc_enable_q1(axi_ad9361_2_adc_enable_q1),
        .adc_valid_i0(axi_ad9361_2_adc_valid_i0),
        .adc_valid_i1(axi_ad9361_2_adc_valid_i1),
        .adc_valid_q0(axi_ad9361_2_adc_valid_q0),
        .adc_valid_q1(axi_ad9361_2_adc_valid_q1),
        .clk(dout_clk_1),
        .dac_data_i0(dac_fifo_ad9361_1_dout_data_0),
        .dac_data_i1(dac_fifo_ad9361_1_dout_data_2),
        .dac_data_q0(dac_fifo_ad9361_1_dout_data_1),
        .dac_data_q1(dac_fifo_ad9361_1_dout_data_3),
        .dac_dunf(1'b0),
        .dac_enable_i0(axi_ad9361_2_dac_enable_i0),
        .dac_enable_i1(axi_ad9361_2_dac_enable_i1),
        .dac_enable_q0(axi_ad9361_2_dac_enable_q0),
        .dac_enable_q1(axi_ad9361_2_dac_enable_q1),
        .dac_sync_in(axi_ad9361_2_dac_sync_out),
        .dac_sync_out(axi_ad9361_2_dac_sync_out),
        .dac_valid_i0(axi_ad9361_2_dac_valid_i0),
        .dac_valid_i1(axi_ad9361_2_dac_valid_i1),
        .dac_valid_q0(axi_ad9361_2_dac_valid_q0),
        .dac_valid_q1(axi_ad9361_2_dac_valid_q1),
        .delay_clk(delay_clk_1),
        .enable(axi_ad9361_2_enable),
        .gps_pps(1'b0),
        .l_clk(dout_clk_1),
        .rst(dout_rst_1),
        .rx_clk_in_n(ad9361_DCLK_2_N_1),
        .rx_clk_in_p(ad9361_DCLK_2_P_1),
        .rx_data_in_n(ad9361_2_P1_N_1),
        .rx_data_in_p(ad9361_2_P1_P_1),
        .rx_frame_in_n(ad9361_RX_FRAME2_N_1),
        .rx_frame_in_p(ad9361_RX_FRAME2_P_1),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(Conn1_ARADDR[15:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arprot(Conn1_ARPROT),
        .s_axi_arready(Conn1_ARREADY),
        .s_axi_arvalid(Conn1_ARVALID),
        .s_axi_awaddr(Conn1_AWADDR[15:0]),
        .s_axi_awprot(Conn1_AWPROT),
        .s_axi_awready(Conn1_AWREADY),
        .s_axi_awvalid(Conn1_AWVALID),
        .s_axi_bready(Conn1_BREADY),
        .s_axi_bresp(Conn1_BRESP),
        .s_axi_bvalid(Conn1_BVALID),
        .s_axi_rdata(Conn1_RDATA),
        .s_axi_rready(Conn1_RREADY),
        .s_axi_rresp(Conn1_RRESP),
        .s_axi_rvalid(Conn1_RVALID),
        .s_axi_wdata(Conn1_WDATA),
        .s_axi_wready(Conn1_WREADY),
        .s_axi_wstrb(Conn1_WSTRB),
        .s_axi_wvalid(Conn1_WVALID),
        .tdd_sync(TDD_SYNC2_dout),
        .tx_clk_out_n(axi_ad9361_2_tx_clk_out_n),
        .tx_clk_out_p(axi_ad9361_2_tx_clk_out_p),
        .tx_data_out_n(axi_ad9361_2_tx_data_out_n),
        .tx_data_out_p(axi_ad9361_2_tx_data_out_p),
        .tx_frame_out_n(axi_ad9361_2_tx_frame_out_n),
        .tx_frame_out_p(axi_ad9361_2_tx_frame_out_p),
        .txnrx(axi_ad9361_2_txnrx),
        .up_adc_gpio_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .up_dac_gpio_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .up_enable(up_enable_1),
        .up_txnrx(up_txnrx_1));
  design_1_dac_fifo_ad9361_2_0 dac_fifo_ad9361_2
       (.din_clk(din_clk_1),
        .din_data_0(din_data_4_1),
        .din_data_1(din_data_5_1),
        .din_data_2(din_data_0_1),
        .din_data_3(din_data_1_1),
        .din_rstn(din_rstn_1),
        .din_unf(1'b0),
        .din_valid_in_0(din_valid_in_1_1),
        .din_valid_in_1(din_valid_in_1_1),
        .din_valid_in_2(din_valid_in_1_1),
        .din_valid_in_3(din_valid_in_1_1),
        .dout_clk(dout_clk_1),
        .dout_data_0(dac_fifo_ad9361_1_dout_data_0),
        .dout_data_1(dac_fifo_ad9361_1_dout_data_1),
        .dout_data_2(dac_fifo_ad9361_1_dout_data_2),
        .dout_data_3(dac_fifo_ad9361_1_dout_data_3),
        .dout_enable_0(axi_ad9361_2_dac_enable_i0),
        .dout_enable_1(axi_ad9361_2_dac_enable_q0),
        .dout_enable_2(axi_ad9361_2_dac_enable_i1),
        .dout_enable_3(axi_ad9361_2_dac_enable_q1),
        .dout_rst(dout_rst_1),
        .dout_valid_0(axi_ad9361_2_dac_valid_i0),
        .dout_valid_1(axi_ad9361_2_dac_valid_q0),
        .dout_valid_2(axi_ad9361_2_dac_valid_i1),
        .dout_valid_3(axi_ad9361_2_dac_valid_q1));
endmodule

module AD9361_3_imp_CD210O
   (ad9361_3_P0_N,
    ad9361_3_P0_P,
    ad9361_3_P1_N,
    ad9361_3_P1_P,
    ad9361_DCLK_3_N,
    ad9361_DCLK_3_P,
    ad9361_EN_3,
    ad9361_FB_CLK_3_N,
    ad9361_FB_CLK_3_P,
    ad9361_RX_FRAME3_N,
    ad9361_RX_FRAME3_P,
    ad9361_TXNRX_3,
    ad9361_TX_FRAME3_N,
    ad9361_TX_FRAME3_P,
    delay_clk,
    din_clk,
    din_data_6,
    din_data_7,
    din_data_8,
    din_data_9,
    din_rstn,
    dout_data_10,
    dout_data_11,
    dout_data_8,
    dout_data_9,
    s_axi_aclk,
    s_axi_araddr,
    s_axi_aresetn,
    s_axi_arprot,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    up_enable,
    up_txnrx);
  output [5:0]ad9361_3_P0_N;
  output [5:0]ad9361_3_P0_P;
  input [5:0]ad9361_3_P1_N;
  input [5:0]ad9361_3_P1_P;
  input ad9361_DCLK_3_N;
  input ad9361_DCLK_3_P;
  output ad9361_EN_3;
  output ad9361_FB_CLK_3_N;
  output ad9361_FB_CLK_3_P;
  input ad9361_RX_FRAME3_N;
  input ad9361_RX_FRAME3_P;
  output ad9361_TXNRX_3;
  output ad9361_TX_FRAME3_N;
  output ad9361_TX_FRAME3_P;
  input delay_clk;
  input din_clk;
  input [15:0]din_data_6;
  input [15:0]din_data_7;
  input [15:0]din_data_8;
  input [15:0]din_data_9;
  input din_rstn;
  output [15:0]dout_data_10;
  output [15:0]dout_data_11;
  output [15:0]dout_data_8;
  output [15:0]dout_data_9;
  input s_axi_aclk;
  input [31:0]s_axi_araddr;
  input s_axi_aresetn;
  input [2:0]s_axi_arprot;
  output s_axi_arready;
  input s_axi_arvalid;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output s_axi_wready;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  input up_enable;
  input up_txnrx;

  wire [31:0]Conn1_ARADDR;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [15:0]RAshift16_4_up_0_output_bus;
  wire [15:0]RAshift16_4_up_1_output_bus;
  wire [15:0]RAshift16_4_up_2_output_bus;
  wire [15:0]RAshift16_4_up_3_output_bus;
  wire [0:0]TDD_SYNC3_dout;
  wire [0:0]TDD_SYNC4_dout;
  wire [5:0]ad9361_3_P1_N_1;
  wire [5:0]ad9361_3_P1_P_1;
  wire ad9361_DCLK_3_N_1;
  wire ad9361_DCLK_3_P_1;
  wire ad9361_RX_FRAME3_N_1;
  wire ad9361_RX_FRAME3_P_1;
  wire [15:0]adc_fifo_ad9361_3_dout_data_0;
  wire [15:0]adc_fifo_ad9361_3_dout_data_1;
  wire [15:0]adc_fifo_ad9361_3_dout_data_2;
  wire [15:0]adc_fifo_ad9361_3_dout_data_3;
  wire [15:0]axi_ad9361_3_adc_data_i0;
  wire [15:0]axi_ad9361_3_adc_data_i1;
  wire [15:0]axi_ad9361_3_adc_data_q0;
  wire [15:0]axi_ad9361_3_adc_data_q1;
  wire axi_ad9361_3_adc_enable_i0;
  wire axi_ad9361_3_adc_enable_i1;
  wire axi_ad9361_3_adc_enable_q0;
  wire axi_ad9361_3_adc_enable_q1;
  wire axi_ad9361_3_adc_valid_i0;
  wire axi_ad9361_3_adc_valid_i1;
  wire axi_ad9361_3_adc_valid_q0;
  wire axi_ad9361_3_adc_valid_q1;
  wire axi_ad9361_3_dac_enable_i0;
  wire axi_ad9361_3_dac_enable_i1;
  wire axi_ad9361_3_dac_enable_q0;
  wire axi_ad9361_3_dac_enable_q1;
  wire axi_ad9361_3_dac_sync_out;
  wire axi_ad9361_3_dac_valid_i0;
  wire axi_ad9361_3_dac_valid_i1;
  wire axi_ad9361_3_dac_valid_q0;
  wire axi_ad9361_3_dac_valid_q1;
  wire axi_ad9361_3_enable;
  wire axi_ad9361_3_tx_clk_out_n;
  wire axi_ad9361_3_tx_clk_out_p;
  wire [5:0]axi_ad9361_3_tx_data_out_n;
  wire [5:0]axi_ad9361_3_tx_data_out_p;
  wire axi_ad9361_3_tx_frame_out_n;
  wire axi_ad9361_3_tx_frame_out_p;
  wire axi_ad9361_3_txnrx;
  wire [15:0]dac_fifo_ad9361_2_dout_data_0;
  wire [15:0]dac_fifo_ad9361_2_dout_data_1;
  wire [15:0]dac_fifo_ad9361_2_dout_data_2;
  wire [15:0]dac_fifo_ad9361_2_dout_data_3;
  wire delay_clk_1;
  wire din_clk_1;
  wire [15:0]din_data_6_1;
  wire [15:0]din_data_7_1;
  wire [15:0]din_data_8_1;
  wire [15:0]din_data_9_1;
  wire din_rstn_1;
  wire dout_clk_1;
  wire dout_rst_1;
  wire s_axi_aclk_1;
  wire s_axi_aresetn_1;
  wire up_enable_1;
  wire up_txnrx_1;

  assign Conn1_ARADDR = s_axi_araddr[31:0];
  assign Conn1_ARPROT = s_axi_arprot[2:0];
  assign Conn1_ARVALID = s_axi_arvalid;
  assign Conn1_AWADDR = s_axi_awaddr[31:0];
  assign Conn1_AWPROT = s_axi_awprot[2:0];
  assign Conn1_AWVALID = s_axi_awvalid;
  assign Conn1_BREADY = s_axi_bready;
  assign Conn1_RREADY = s_axi_rready;
  assign Conn1_WDATA = s_axi_wdata[31:0];
  assign Conn1_WSTRB = s_axi_wstrb[3:0];
  assign Conn1_WVALID = s_axi_wvalid;
  assign ad9361_3_P0_N[5:0] = axi_ad9361_3_tx_data_out_n;
  assign ad9361_3_P0_P[5:0] = axi_ad9361_3_tx_data_out_p;
  assign ad9361_3_P1_N_1 = ad9361_3_P1_N[5:0];
  assign ad9361_3_P1_P_1 = ad9361_3_P1_P[5:0];
  assign ad9361_DCLK_3_N_1 = ad9361_DCLK_3_N;
  assign ad9361_DCLK_3_P_1 = ad9361_DCLK_3_P;
  assign ad9361_EN_3 = axi_ad9361_3_enable;
  assign ad9361_FB_CLK_3_N = axi_ad9361_3_tx_clk_out_n;
  assign ad9361_FB_CLK_3_P = axi_ad9361_3_tx_clk_out_p;
  assign ad9361_RX_FRAME3_N_1 = ad9361_RX_FRAME3_N;
  assign ad9361_RX_FRAME3_P_1 = ad9361_RX_FRAME3_P;
  assign ad9361_TXNRX_3 = axi_ad9361_3_txnrx;
  assign ad9361_TX_FRAME3_N = axi_ad9361_3_tx_frame_out_n;
  assign ad9361_TX_FRAME3_P = axi_ad9361_3_tx_frame_out_p;
  assign delay_clk_1 = delay_clk;
  assign din_clk_1 = din_clk;
  assign din_data_6_1 = din_data_6[15:0];
  assign din_data_7_1 = din_data_7[15:0];
  assign din_data_8_1 = din_data_8[15:0];
  assign din_data_9_1 = din_data_9[15:0];
  assign din_rstn_1 = din_rstn;
  assign dout_data_10[15:0] = RAshift16_4_up_0_output_bus;
  assign dout_data_11[15:0] = RAshift16_4_up_1_output_bus;
  assign dout_data_8[15:0] = RAshift16_4_up_2_output_bus;
  assign dout_data_9[15:0] = RAshift16_4_up_3_output_bus;
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  assign s_axi_arready = Conn1_ARREADY;
  assign s_axi_awready = Conn1_AWREADY;
  assign s_axi_bresp[1:0] = Conn1_BRESP;
  assign s_axi_bvalid = Conn1_BVALID;
  assign s_axi_rdata[31:0] = Conn1_RDATA;
  assign s_axi_rresp[1:0] = Conn1_RRESP;
  assign s_axi_rvalid = Conn1_RVALID;
  assign s_axi_wready = Conn1_WREADY;
  assign up_enable_1 = up_enable;
  assign up_txnrx_1 = up_txnrx;
  design_1_LOGIC_1_3 LOGIC_1
       (.dout(TDD_SYNC4_dout));
  design_1_RAshift16_4_up_0_2 RAshift16_4_up_0
       (.input_bus(adc_fifo_ad9361_3_dout_data_0),
        .output_bus(RAshift16_4_up_0_output_bus));
  design_1_RAshift16_4_up_1_2 RAshift16_4_up_1
       (.input_bus(adc_fifo_ad9361_3_dout_data_1),
        .output_bus(RAshift16_4_up_1_output_bus));
  design_1_RAshift16_4_up_2_2 RAshift16_4_up_2
       (.input_bus(adc_fifo_ad9361_3_dout_data_2),
        .output_bus(RAshift16_4_up_2_output_bus));
  design_1_RAshift16_4_up_3_2 RAshift16_4_up_3
       (.input_bus(adc_fifo_ad9361_3_dout_data_3),
        .output_bus(RAshift16_4_up_3_output_bus));
  design_1_TDD_SYNC3_0 TDD_SYNC3
       (.dout(TDD_SYNC3_dout));
  design_1_adc_fifo_ad9361_3_0 adc_fifo_ad9361_3
       (.din_clk(dout_clk_1),
        .din_data_0(axi_ad9361_3_adc_data_i0),
        .din_data_1(axi_ad9361_3_adc_data_q0),
        .din_data_2(axi_ad9361_3_adc_data_i1),
        .din_data_3(axi_ad9361_3_adc_data_q1),
        .din_enable_0(axi_ad9361_3_adc_enable_i0),
        .din_enable_1(axi_ad9361_3_adc_enable_q0),
        .din_enable_2(axi_ad9361_3_adc_enable_i1),
        .din_enable_3(axi_ad9361_3_adc_enable_q1),
        .din_rst(dout_rst_1),
        .din_valid_0(axi_ad9361_3_adc_valid_i0),
        .din_valid_1(axi_ad9361_3_adc_valid_q0),
        .din_valid_2(axi_ad9361_3_adc_valid_i1),
        .din_valid_3(axi_ad9361_3_adc_valid_q1),
        .dout_clk(din_clk_1),
        .dout_data_0(adc_fifo_ad9361_3_dout_data_0),
        .dout_data_1(adc_fifo_ad9361_3_dout_data_1),
        .dout_data_2(adc_fifo_ad9361_3_dout_data_2),
        .dout_data_3(adc_fifo_ad9361_3_dout_data_3),
        .dout_ovf(1'b0),
        .dout_rstn(din_rstn_1));
  design_1_axi_ad9361_3_0 axi_ad9361_3
       (.adc_data_i0(axi_ad9361_3_adc_data_i0),
        .adc_data_i1(axi_ad9361_3_adc_data_i1),
        .adc_data_q0(axi_ad9361_3_adc_data_q0),
        .adc_data_q1(axi_ad9361_3_adc_data_q1),
        .adc_dovf(1'b0),
        .adc_enable_i0(axi_ad9361_3_adc_enable_i0),
        .adc_enable_i1(axi_ad9361_3_adc_enable_i1),
        .adc_enable_q0(axi_ad9361_3_adc_enable_q0),
        .adc_enable_q1(axi_ad9361_3_adc_enable_q1),
        .adc_valid_i0(axi_ad9361_3_adc_valid_i0),
        .adc_valid_i1(axi_ad9361_3_adc_valid_i1),
        .adc_valid_q0(axi_ad9361_3_adc_valid_q0),
        .adc_valid_q1(axi_ad9361_3_adc_valid_q1),
        .clk(dout_clk_1),
        .dac_data_i0(dac_fifo_ad9361_2_dout_data_0),
        .dac_data_i1(dac_fifo_ad9361_2_dout_data_2),
        .dac_data_q0(dac_fifo_ad9361_2_dout_data_1),
        .dac_data_q1(dac_fifo_ad9361_2_dout_data_3),
        .dac_dunf(1'b0),
        .dac_enable_i0(axi_ad9361_3_dac_enable_i0),
        .dac_enable_i1(axi_ad9361_3_dac_enable_i1),
        .dac_enable_q0(axi_ad9361_3_dac_enable_q0),
        .dac_enable_q1(axi_ad9361_3_dac_enable_q1),
        .dac_sync_in(axi_ad9361_3_dac_sync_out),
        .dac_sync_out(axi_ad9361_3_dac_sync_out),
        .dac_valid_i0(axi_ad9361_3_dac_valid_i0),
        .dac_valid_i1(axi_ad9361_3_dac_valid_i1),
        .dac_valid_q0(axi_ad9361_3_dac_valid_q0),
        .dac_valid_q1(axi_ad9361_3_dac_valid_q1),
        .delay_clk(delay_clk_1),
        .enable(axi_ad9361_3_enable),
        .gps_pps(1'b0),
        .l_clk(dout_clk_1),
        .rst(dout_rst_1),
        .rx_clk_in_n(ad9361_DCLK_3_N_1),
        .rx_clk_in_p(ad9361_DCLK_3_P_1),
        .rx_data_in_n(ad9361_3_P1_N_1),
        .rx_data_in_p(ad9361_3_P1_P_1),
        .rx_frame_in_n(ad9361_RX_FRAME3_N_1),
        .rx_frame_in_p(ad9361_RX_FRAME3_P_1),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(Conn1_ARADDR[15:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arprot(Conn1_ARPROT),
        .s_axi_arready(Conn1_ARREADY),
        .s_axi_arvalid(Conn1_ARVALID),
        .s_axi_awaddr(Conn1_AWADDR[15:0]),
        .s_axi_awprot(Conn1_AWPROT),
        .s_axi_awready(Conn1_AWREADY),
        .s_axi_awvalid(Conn1_AWVALID),
        .s_axi_bready(Conn1_BREADY),
        .s_axi_bresp(Conn1_BRESP),
        .s_axi_bvalid(Conn1_BVALID),
        .s_axi_rdata(Conn1_RDATA),
        .s_axi_rready(Conn1_RREADY),
        .s_axi_rresp(Conn1_RRESP),
        .s_axi_rvalid(Conn1_RVALID),
        .s_axi_wdata(Conn1_WDATA),
        .s_axi_wready(Conn1_WREADY),
        .s_axi_wstrb(Conn1_WSTRB),
        .s_axi_wvalid(Conn1_WVALID),
        .tdd_sync(TDD_SYNC3_dout),
        .tx_clk_out_n(axi_ad9361_3_tx_clk_out_n),
        .tx_clk_out_p(axi_ad9361_3_tx_clk_out_p),
        .tx_data_out_n(axi_ad9361_3_tx_data_out_n),
        .tx_data_out_p(axi_ad9361_3_tx_data_out_p),
        .tx_frame_out_n(axi_ad9361_3_tx_frame_out_n),
        .tx_frame_out_p(axi_ad9361_3_tx_frame_out_p),
        .txnrx(axi_ad9361_3_txnrx),
        .up_adc_gpio_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .up_dac_gpio_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .up_enable(up_enable_1),
        .up_txnrx(up_txnrx_1));
  design_1_dac_fifo_ad9361_3_0 dac_fifo_ad9361_3
       (.din_clk(din_clk_1),
        .din_data_0(din_data_8_1),
        .din_data_1(din_data_9_1),
        .din_data_2(din_data_6_1),
        .din_data_3(din_data_7_1),
        .din_rstn(din_rstn_1),
        .din_unf(TDD_SYNC4_dout),
        .din_valid_in_0(TDD_SYNC4_dout),
        .din_valid_in_1(TDD_SYNC4_dout),
        .din_valid_in_2(TDD_SYNC4_dout),
        .din_valid_in_3(TDD_SYNC4_dout),
        .dout_clk(dout_clk_1),
        .dout_data_0(dac_fifo_ad9361_2_dout_data_0),
        .dout_data_1(dac_fifo_ad9361_2_dout_data_1),
        .dout_data_2(dac_fifo_ad9361_2_dout_data_2),
        .dout_data_3(dac_fifo_ad9361_2_dout_data_3),
        .dout_enable_0(axi_ad9361_3_dac_enable_i0),
        .dout_enable_1(axi_ad9361_3_dac_enable_q0),
        .dout_enable_2(axi_ad9361_3_dac_enable_i1),
        .dout_enable_3(axi_ad9361_3_dac_enable_q1),
        .dout_rst(dout_rst_1),
        .dout_valid_0(axi_ad9361_3_dac_valid_i0),
        .dout_valid_1(axi_ad9361_3_dac_valid_q0),
        .dout_valid_2(axi_ad9361_3_dac_valid_i1),
        .dout_valid_3(axi_ad9361_3_dac_valid_q1));
endmodule

module AD9361_CTRL_imp_9MHREM
   (FPGA_REF_40MHZ,
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
    ad9361_FB_CLK_1_N,
    ad9361_FB_CLK_1_P,
    ad9361_FB_CLK_2_N,
    ad9361_FB_CLK_2_P,
    ad9361_FB_CLK_3_N,
    ad9361_FB_CLK_3_P,
    ad9361_RX_FRAME1_N,
    ad9361_RX_FRAME1_P,
    ad9361_RX_FRAME2_N,
    ad9361_RX_FRAME2_P,
    ad9361_RX_FRAME3_N,
    ad9361_RX_FRAME3_P,
    ad9361_TXNRX_1,
    ad9361_TXNRX_2,
    ad9361_TXNRX_3,
    ad9361_TX_FRAME1_N,
    ad9361_TX_FRAME1_P,
    ad9361_TX_FRAME2_N,
    ad9361_TX_FRAME2_P,
    ad9361_TX_FRAME3_N,
    ad9361_TX_FRAME3_P,
    adc_valid_i0,
    adc_valid_i1,
    clk_out1,
    data_rate,
    delay_clk,
    din_data_0,
    din_data_1,
    din_data_10,
    din_data_11,
    din_data_2,
    din_data_3,
    din_data_4,
    din_data_5,
    din_data_6,
    din_data_7,
    din_data_8,
    din_data_9,
    dout,
    dout_data_0,
    dout_data_1,
    dout_data_10,
    dout_data_11,
    dout_data_2,
    dout_data_3,
    dout_data_4,
    dout_data_5,
    dout_data_6,
    dout_data_7,
    dout_data_8,
    dout_data_9,
    ext_reset_in,
    peripheral_aresetn1,
    peripheral_reset,
    s_axi1_araddr,
    s_axi1_arprot,
    s_axi1_arready,
    s_axi1_arvalid,
    s_axi1_awaddr,
    s_axi1_awprot,
    s_axi1_awready,
    s_axi1_awvalid,
    s_axi1_bready,
    s_axi1_bresp,
    s_axi1_bvalid,
    s_axi1_rdata,
    s_axi1_rready,
    s_axi1_rresp,
    s_axi1_rvalid,
    s_axi1_wdata,
    s_axi1_wready,
    s_axi1_wstrb,
    s_axi1_wvalid,
    s_axi2_araddr,
    s_axi2_arprot,
    s_axi2_arready,
    s_axi2_arvalid,
    s_axi2_awaddr,
    s_axi2_awprot,
    s_axi2_awready,
    s_axi2_awvalid,
    s_axi2_bready,
    s_axi2_bresp,
    s_axi2_bvalid,
    s_axi2_rdata,
    s_axi2_rready,
    s_axi2_rresp,
    s_axi2_rvalid,
    s_axi2_wdata,
    s_axi2_wready,
    s_axi2_wstrb,
    s_axi2_wvalid,
    s_axi_aclk,
    s_axi_araddr,
    s_axi_aresetn,
    s_axi_arprot,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid);
  input FPGA_REF_40MHZ;
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
  output ad9361_EN_1;
  output ad9361_EN_2;
  output ad9361_EN_3;
  output ad9361_FB_CLK_1_N;
  output ad9361_FB_CLK_1_P;
  output ad9361_FB_CLK_2_N;
  output ad9361_FB_CLK_2_P;
  output ad9361_FB_CLK_3_N;
  output ad9361_FB_CLK_3_P;
  input ad9361_RX_FRAME1_N;
  input ad9361_RX_FRAME1_P;
  input ad9361_RX_FRAME2_N;
  input ad9361_RX_FRAME2_P;
  input ad9361_RX_FRAME3_N;
  input ad9361_RX_FRAME3_P;
  output ad9361_TXNRX_1;
  output ad9361_TXNRX_2;
  output ad9361_TXNRX_3;
  output ad9361_TX_FRAME1_N;
  output ad9361_TX_FRAME1_P;
  output ad9361_TX_FRAME2_N;
  output ad9361_TX_FRAME2_P;
  output ad9361_TX_FRAME3_N;
  output ad9361_TX_FRAME3_P;
  output adc_valid_i0;
  output adc_valid_i1;
  output [0:0]clk_out1;
  output [0:0]data_rate;
  input delay_clk;
  input [15:0]din_data_0;
  input [15:0]din_data_1;
  input [15:0]din_data_10;
  input [15:0]din_data_11;
  input [15:0]din_data_2;
  input [15:0]din_data_3;
  input [15:0]din_data_4;
  input [15:0]din_data_5;
  input [15:0]din_data_6;
  input [15:0]din_data_7;
  input [15:0]din_data_8;
  input [15:0]din_data_9;
  output [0:0]dout;
  output [15:0]dout_data_0;
  output [15:0]dout_data_1;
  output [15:0]dout_data_10;
  output [15:0]dout_data_11;
  output [15:0]dout_data_2;
  output [15:0]dout_data_3;
  output [15:0]dout_data_4;
  output [15:0]dout_data_5;
  output [15:0]dout_data_6;
  output [15:0]dout_data_7;
  output [15:0]dout_data_8;
  output [15:0]dout_data_9;
  input ext_reset_in;
  output [0:0]peripheral_aresetn1;
  output [0:0]peripheral_reset;
  input [31:0]s_axi1_araddr;
  input [2:0]s_axi1_arprot;
  output s_axi1_arready;
  input s_axi1_arvalid;
  input [31:0]s_axi1_awaddr;
  input [2:0]s_axi1_awprot;
  output s_axi1_awready;
  input s_axi1_awvalid;
  input s_axi1_bready;
  output [1:0]s_axi1_bresp;
  output s_axi1_bvalid;
  output [31:0]s_axi1_rdata;
  input s_axi1_rready;
  output [1:0]s_axi1_rresp;
  output s_axi1_rvalid;
  input [31:0]s_axi1_wdata;
  output s_axi1_wready;
  input [3:0]s_axi1_wstrb;
  input s_axi1_wvalid;
  input [31:0]s_axi2_araddr;
  input [2:0]s_axi2_arprot;
  output s_axi2_arready;
  input s_axi2_arvalid;
  input [31:0]s_axi2_awaddr;
  input [2:0]s_axi2_awprot;
  output s_axi2_awready;
  input s_axi2_awvalid;
  input s_axi2_bready;
  output [1:0]s_axi2_bresp;
  output s_axi2_bvalid;
  output [31:0]s_axi2_rdata;
  input s_axi2_rready;
  output [1:0]s_axi2_rresp;
  output s_axi2_rvalid;
  input [31:0]s_axi2_wdata;
  output s_axi2_wready;
  input [3:0]s_axi2_wstrb;
  input s_axi2_wvalid;
  input s_axi_aclk;
  input [31:0]s_axi_araddr;
  input s_axi_aresetn;
  input [2:0]s_axi_arprot;
  output s_axi_arready;
  input s_axi_arvalid;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output s_axi_wready;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;

  wire [5:0]AD9361_1_ad9361_1_P0_N;
  wire [5:0]AD9361_1_ad9361_1_P0_P;
  wire AD9361_1_ad9361_EN_1;
  wire AD9361_1_ad9361_FB_CLK_1_N;
  wire AD9361_1_ad9361_FB_CLK_1_P;
  wire AD9361_1_ad9361_TXNRX_1;
  wire AD9361_1_ad9361_TX_FRAME1_N;
  wire AD9361_1_ad9361_TX_FRAME1_P;
  wire AD9361_1_adc_valid_i0;
  wire [15:0]AD9361_1_dout_data_0;
  wire [15:0]AD9361_1_dout_data_1;
  wire [15:0]AD9361_1_dout_data_2;
  wire [15:0]AD9361_1_dout_data_3;
  wire [5:0]AD9361_2_ad9361_2_P0_N;
  wire [5:0]AD9361_2_ad9361_2_P0_P;
  wire AD9361_2_ad9361_EN_2;
  wire AD9361_2_ad9361_FB_CLK_2_N;
  wire AD9361_2_ad9361_FB_CLK_2_P;
  wire AD9361_2_ad9361_TXNRX_2;
  wire AD9361_2_ad9361_TX_FRAME2_N;
  wire AD9361_2_ad9361_TX_FRAME2_P;
  wire AD9361_2_adc_valid_i0;
  wire [15:0]AD9361_2_dout_data_4;
  wire [15:0]AD9361_2_dout_data_5;
  wire [15:0]AD9361_2_dout_data_6;
  wire [15:0]AD9361_2_dout_data_7;
  wire [5:0]AD9361_3_ad9361_3_P0_N;
  wire [5:0]AD9361_3_ad9361_3_P0_P;
  wire AD9361_3_ad9361_EN_3;
  wire AD9361_3_ad9361_FB_CLK_3_N;
  wire AD9361_3_ad9361_FB_CLK_3_P;
  wire AD9361_3_ad9361_TXNRX_3;
  wire AD9361_3_ad9361_TX_FRAME3_N;
  wire AD9361_3_ad9361_TX_FRAME3_P;
  wire [15:0]AD9361_3_dout_data_10;
  wire [15:0]AD9361_3_dout_data_11;
  wire [15:0]AD9361_3_dout_data_8;
  wire [15:0]AD9361_3_dout_data_9;
  wire [31:0]Conn1_ARADDR;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [31:0]Conn2_ARADDR;
  wire [2:0]Conn2_ARPROT;
  wire Conn2_ARREADY;
  wire Conn2_ARVALID;
  wire [31:0]Conn2_AWADDR;
  wire [2:0]Conn2_AWPROT;
  wire Conn2_AWREADY;
  wire Conn2_AWVALID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [31:0]Conn2_RDATA;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [31:0]Conn2_WDATA;
  wire Conn2_WREADY;
  wire [3:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire [31:0]Conn3_ARADDR;
  wire [2:0]Conn3_ARPROT;
  wire Conn3_ARREADY;
  wire Conn3_ARVALID;
  wire [31:0]Conn3_AWADDR;
  wire [2:0]Conn3_AWPROT;
  wire Conn3_AWREADY;
  wire Conn3_AWVALID;
  wire Conn3_BREADY;
  wire [1:0]Conn3_BRESP;
  wire Conn3_BVALID;
  wire [31:0]Conn3_RDATA;
  wire Conn3_RREADY;
  wire [1:0]Conn3_RRESP;
  wire Conn3_RVALID;
  wire [31:0]Conn3_WDATA;
  wire Conn3_WREADY;
  wire [3:0]Conn3_WSTRB;
  wire Conn3_WVALID;
  wire FPGA_REF_40MHZ_1;
  wire [5:0]ad9361_1_P1_N_1;
  wire [5:0]ad9361_1_P1_P_1;
  wire [5:0]ad9361_2_P1_N_1;
  wire [5:0]ad9361_2_P1_P_1;
  wire [5:0]ad9361_3_P1_N_1;
  wire [5:0]ad9361_3_P1_P_1;
  wire ad9361_DCLK_1_N_1;
  wire ad9361_DCLK_1_P_1;
  wire ad9361_DCLK_2_N_1;
  wire ad9361_DCLK_2_P_1;
  wire ad9361_DCLK_3_N_1;
  wire ad9361_DCLK_3_P_1;
  wire ad9361_RX_FRAME1_N_1;
  wire ad9361_RX_FRAME1_P_1;
  wire ad9361_RX_FRAME2_N_1;
  wire ad9361_RX_FRAME2_P_1;
  wire ad9361_RX_FRAME3_N_1;
  wire ad9361_RX_FRAME3_P_1;
  wire [0:0]ad9361_clk_clk_out;
  wire [0:0]ad9361_clk_clk_out1;
  wire [0:0]ad9361_clk_data_rate;
  wire [0:0]ad9361_clk_peripheral_reset;
  wire delay_clk_1;
  wire [15:0]din_data_0_1;
  wire [15:0]din_data_10_1;
  wire [15:0]din_data_11_1;
  wire [15:0]din_data_1_1;
  wire [15:0]din_data_2_1;
  wire [15:0]din_data_3_1;
  wire [15:0]din_data_4_1;
  wire [15:0]din_data_5_1;
  wire [15:0]din_data_6_1;
  wire [15:0]din_data_7_1;
  wire [15:0]din_data_8_1;
  wire [15:0]din_data_9_1;
  wire [0:0]din_rstn_1;
  wire [0:0]din_rstn_2;
  wire ext_reset_in_1;
  wire s_axi_aclk_1;
  wire s_axi_aresetn_1;
  wire [0:0]up_txnrx_1;

  assign Conn1_ARADDR = s_axi_araddr[31:0];
  assign Conn1_ARPROT = s_axi_arprot[2:0];
  assign Conn1_ARVALID = s_axi_arvalid;
  assign Conn1_AWADDR = s_axi_awaddr[31:0];
  assign Conn1_AWPROT = s_axi_awprot[2:0];
  assign Conn1_AWVALID = s_axi_awvalid;
  assign Conn1_BREADY = s_axi_bready;
  assign Conn1_RREADY = s_axi_rready;
  assign Conn1_WDATA = s_axi_wdata[31:0];
  assign Conn1_WSTRB = s_axi_wstrb[3:0];
  assign Conn1_WVALID = s_axi_wvalid;
  assign Conn2_ARADDR = s_axi1_araddr[31:0];
  assign Conn2_ARPROT = s_axi1_arprot[2:0];
  assign Conn2_ARVALID = s_axi1_arvalid;
  assign Conn2_AWADDR = s_axi1_awaddr[31:0];
  assign Conn2_AWPROT = s_axi1_awprot[2:0];
  assign Conn2_AWVALID = s_axi1_awvalid;
  assign Conn2_BREADY = s_axi1_bready;
  assign Conn2_RREADY = s_axi1_rready;
  assign Conn2_WDATA = s_axi1_wdata[31:0];
  assign Conn2_WSTRB = s_axi1_wstrb[3:0];
  assign Conn2_WVALID = s_axi1_wvalid;
  assign Conn3_ARADDR = s_axi2_araddr[31:0];
  assign Conn3_ARPROT = s_axi2_arprot[2:0];
  assign Conn3_ARVALID = s_axi2_arvalid;
  assign Conn3_AWADDR = s_axi2_awaddr[31:0];
  assign Conn3_AWPROT = s_axi2_awprot[2:0];
  assign Conn3_AWVALID = s_axi2_awvalid;
  assign Conn3_BREADY = s_axi2_bready;
  assign Conn3_RREADY = s_axi2_rready;
  assign Conn3_WDATA = s_axi2_wdata[31:0];
  assign Conn3_WSTRB = s_axi2_wstrb[3:0];
  assign Conn3_WVALID = s_axi2_wvalid;
  assign FPGA_REF_40MHZ_1 = FPGA_REF_40MHZ;
  assign ad9361_1_P0_N[5:0] = AD9361_1_ad9361_1_P0_N;
  assign ad9361_1_P0_P[5:0] = AD9361_1_ad9361_1_P0_P;
  assign ad9361_1_P1_N_1 = ad9361_1_P1_N[5:0];
  assign ad9361_1_P1_P_1 = ad9361_1_P1_P[5:0];
  assign ad9361_2_P0_N[5:0] = AD9361_2_ad9361_2_P0_N;
  assign ad9361_2_P0_P[5:0] = AD9361_2_ad9361_2_P0_P;
  assign ad9361_2_P1_N_1 = ad9361_2_P1_N[5:0];
  assign ad9361_2_P1_P_1 = ad9361_2_P1_P[5:0];
  assign ad9361_3_P0_N[5:0] = AD9361_3_ad9361_3_P0_N;
  assign ad9361_3_P0_P[5:0] = AD9361_3_ad9361_3_P0_P;
  assign ad9361_3_P1_N_1 = ad9361_3_P1_N[5:0];
  assign ad9361_3_P1_P_1 = ad9361_3_P1_P[5:0];
  assign ad9361_DCLK_1_N_1 = ad9361_DCLK_1_N;
  assign ad9361_DCLK_1_P_1 = ad9361_DCLK_1_P;
  assign ad9361_DCLK_2_N_1 = ad9361_DCLK_2_N;
  assign ad9361_DCLK_2_P_1 = ad9361_DCLK_2_P;
  assign ad9361_DCLK_3_N_1 = ad9361_DCLK_3_N;
  assign ad9361_DCLK_3_P_1 = ad9361_DCLK_3_P;
  assign ad9361_EN_1 = AD9361_1_ad9361_EN_1;
  assign ad9361_EN_2 = AD9361_2_ad9361_EN_2;
  assign ad9361_EN_3 = AD9361_3_ad9361_EN_3;
  assign ad9361_FB_CLK_1_N = AD9361_1_ad9361_FB_CLK_1_N;
  assign ad9361_FB_CLK_1_P = AD9361_1_ad9361_FB_CLK_1_P;
  assign ad9361_FB_CLK_2_N = AD9361_2_ad9361_FB_CLK_2_N;
  assign ad9361_FB_CLK_2_P = AD9361_2_ad9361_FB_CLK_2_P;
  assign ad9361_FB_CLK_3_N = AD9361_3_ad9361_FB_CLK_3_N;
  assign ad9361_FB_CLK_3_P = AD9361_3_ad9361_FB_CLK_3_P;
  assign ad9361_RX_FRAME1_N_1 = ad9361_RX_FRAME1_N;
  assign ad9361_RX_FRAME1_P_1 = ad9361_RX_FRAME1_P;
  assign ad9361_RX_FRAME2_N_1 = ad9361_RX_FRAME2_N;
  assign ad9361_RX_FRAME2_P_1 = ad9361_RX_FRAME2_P;
  assign ad9361_RX_FRAME3_N_1 = ad9361_RX_FRAME3_N;
  assign ad9361_RX_FRAME3_P_1 = ad9361_RX_FRAME3_P;
  assign ad9361_TXNRX_1 = AD9361_1_ad9361_TXNRX_1;
  assign ad9361_TXNRX_2 = AD9361_2_ad9361_TXNRX_2;
  assign ad9361_TXNRX_3 = AD9361_3_ad9361_TXNRX_3;
  assign ad9361_TX_FRAME1_N = AD9361_1_ad9361_TX_FRAME1_N;
  assign ad9361_TX_FRAME1_P = AD9361_1_ad9361_TX_FRAME1_P;
  assign ad9361_TX_FRAME2_N = AD9361_2_ad9361_TX_FRAME2_N;
  assign ad9361_TX_FRAME2_P = AD9361_2_ad9361_TX_FRAME2_P;
  assign ad9361_TX_FRAME3_N = AD9361_3_ad9361_TX_FRAME3_N;
  assign ad9361_TX_FRAME3_P = AD9361_3_ad9361_TX_FRAME3_P;
  assign adc_valid_i0 = AD9361_1_adc_valid_i0;
  assign adc_valid_i1 = AD9361_2_adc_valid_i0;
  assign clk_out1[0] = ad9361_clk_clk_out1;
  assign data_rate[0] = ad9361_clk_data_rate;
  assign delay_clk_1 = delay_clk;
  assign din_data_0_1 = din_data_0[15:0];
  assign din_data_10_1 = din_data_10[15:0];
  assign din_data_11_1 = din_data_11[15:0];
  assign din_data_1_1 = din_data_1[15:0];
  assign din_data_2_1 = din_data_2[15:0];
  assign din_data_3_1 = din_data_3[15:0];
  assign din_data_4_1 = din_data_4[15:0];
  assign din_data_5_1 = din_data_5[15:0];
  assign din_data_6_1 = din_data_6[15:0];
  assign din_data_7_1 = din_data_7[15:0];
  assign din_data_8_1 = din_data_8[15:0];
  assign din_data_9_1 = din_data_9[15:0];
  assign dout[0] = up_txnrx_1;
  assign dout_data_0[15:0] = AD9361_1_dout_data_0;
  assign dout_data_1[15:0] = AD9361_1_dout_data_1;
  assign dout_data_10[15:0] = AD9361_3_dout_data_10;
  assign dout_data_11[15:0] = AD9361_3_dout_data_11;
  assign dout_data_2[15:0] = AD9361_1_dout_data_2;
  assign dout_data_3[15:0] = AD9361_1_dout_data_3;
  assign dout_data_4[15:0] = AD9361_2_dout_data_4;
  assign dout_data_5[15:0] = AD9361_2_dout_data_5;
  assign dout_data_6[15:0] = AD9361_2_dout_data_6;
  assign dout_data_7[15:0] = AD9361_2_dout_data_7;
  assign dout_data_8[15:0] = AD9361_3_dout_data_8;
  assign dout_data_9[15:0] = AD9361_3_dout_data_9;
  assign ext_reset_in_1 = ext_reset_in;
  assign peripheral_aresetn1[0] = din_rstn_2;
  assign peripheral_reset[0] = ad9361_clk_peripheral_reset;
  assign s_axi1_arready = Conn2_ARREADY;
  assign s_axi1_awready = Conn2_AWREADY;
  assign s_axi1_bresp[1:0] = Conn2_BRESP;
  assign s_axi1_bvalid = Conn2_BVALID;
  assign s_axi1_rdata[31:0] = Conn2_RDATA;
  assign s_axi1_rresp[1:0] = Conn2_RRESP;
  assign s_axi1_rvalid = Conn2_RVALID;
  assign s_axi1_wready = Conn2_WREADY;
  assign s_axi2_arready = Conn3_ARREADY;
  assign s_axi2_awready = Conn3_AWREADY;
  assign s_axi2_bresp[1:0] = Conn3_BRESP;
  assign s_axi2_bvalid = Conn3_BVALID;
  assign s_axi2_rdata[31:0] = Conn3_RDATA;
  assign s_axi2_rresp[1:0] = Conn3_RRESP;
  assign s_axi2_rvalid = Conn3_RVALID;
  assign s_axi2_wready = Conn3_WREADY;
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  assign s_axi_arready = Conn1_ARREADY;
  assign s_axi_awready = Conn1_AWREADY;
  assign s_axi_bresp[1:0] = Conn1_BRESP;
  assign s_axi_bvalid = Conn1_BVALID;
  assign s_axi_rdata[31:0] = Conn1_RDATA;
  assign s_axi_rresp[1:0] = Conn1_RRESP;
  assign s_axi_rvalid = Conn1_RVALID;
  assign s_axi_wready = Conn1_WREADY;
  AD9361_1_imp_OOB3I AD9361_1
       (.ad9361_1_P0_N(AD9361_1_ad9361_1_P0_N),
        .ad9361_1_P0_P(AD9361_1_ad9361_1_P0_P),
        .ad9361_1_P1_N(ad9361_1_P1_N_1),
        .ad9361_1_P1_P(ad9361_1_P1_P_1),
        .ad9361_DCLK_1_N(ad9361_DCLK_1_N_1),
        .ad9361_DCLK_1_P(ad9361_DCLK_1_P_1),
        .ad9361_EN_1(AD9361_1_ad9361_EN_1),
        .ad9361_FB_CLK_1_N(AD9361_1_ad9361_FB_CLK_1_N),
        .ad9361_FB_CLK_1_P(AD9361_1_ad9361_FB_CLK_1_P),
        .ad9361_RX_FRAME1_N(ad9361_RX_FRAME1_N_1),
        .ad9361_RX_FRAME1_P(ad9361_RX_FRAME1_P_1),
        .ad9361_TXNRX_1(AD9361_1_ad9361_TXNRX_1),
        .ad9361_TX_FRAME1_N(AD9361_1_ad9361_TX_FRAME1_N),
        .ad9361_TX_FRAME1_P(AD9361_1_ad9361_TX_FRAME1_P),
        .adc_valid_i0(AD9361_1_adc_valid_i0),
        .delay_clk(delay_clk_1),
        .din_data_10(din_data_10_1),
        .din_data_11(din_data_11_1),
        .din_data_2(din_data_2_1),
        .din_data_3(din_data_3_1),
        .dout_clk(ad9361_clk_clk_out),
        .dout_data_0(AD9361_1_dout_data_0),
        .dout_data_1(AD9361_1_dout_data_1),
        .dout_data_2(AD9361_1_dout_data_2),
        .dout_data_3(AD9361_1_dout_data_3),
        .dout_ovf(1'b0),
        .dout_rstn(din_rstn_1),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(Conn2_ARADDR),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arprot(Conn2_ARPROT),
        .s_axi_arready(Conn2_ARREADY),
        .s_axi_arvalid(Conn2_ARVALID),
        .s_axi_awaddr(Conn2_AWADDR),
        .s_axi_awprot(Conn2_AWPROT),
        .s_axi_awready(Conn2_AWREADY),
        .s_axi_awvalid(Conn2_AWVALID),
        .s_axi_bready(Conn2_BREADY),
        .s_axi_bresp(Conn2_BRESP),
        .s_axi_bvalid(Conn2_BVALID),
        .s_axi_rdata(Conn2_RDATA),
        .s_axi_rready(Conn2_RREADY),
        .s_axi_rresp(Conn2_RRESP),
        .s_axi_rvalid(Conn2_RVALID),
        .s_axi_wdata(Conn2_WDATA),
        .s_axi_wready(Conn2_WREADY),
        .s_axi_wstrb(Conn2_WSTRB),
        .s_axi_wvalid(Conn2_WVALID),
        .up_enable(up_txnrx_1),
        .up_txnrx(up_txnrx_1));
  AD9361_2_imp_GMWOOB AD9361_2
       (.ad9361_2_P0_N(AD9361_2_ad9361_2_P0_N),
        .ad9361_2_P0_P(AD9361_2_ad9361_2_P0_P),
        .ad9361_2_P1_N(ad9361_2_P1_N_1),
        .ad9361_2_P1_P(ad9361_2_P1_P_1),
        .ad9361_DCLK_2_N(ad9361_DCLK_2_N_1),
        .ad9361_DCLK_2_P(ad9361_DCLK_2_P_1),
        .ad9361_EN_2(AD9361_2_ad9361_EN_2),
        .ad9361_FB_CLK_2_N(AD9361_2_ad9361_FB_CLK_2_N),
        .ad9361_FB_CLK_2_P(AD9361_2_ad9361_FB_CLK_2_P),
        .ad9361_RX_FRAME2_N(ad9361_RX_FRAME2_N_1),
        .ad9361_RX_FRAME2_P(ad9361_RX_FRAME2_P_1),
        .ad9361_TXNRX_2(AD9361_2_ad9361_TXNRX_2),
        .ad9361_TX_FRAME2_N(AD9361_2_ad9361_TX_FRAME2_N),
        .ad9361_TX_FRAME2_P(AD9361_2_ad9361_TX_FRAME2_P),
        .adc_valid_i0(AD9361_2_adc_valid_i0),
        .delay_clk(delay_clk_1),
        .din_clk(ad9361_clk_clk_out1),
        .din_data_0(din_data_0_1),
        .din_data_1(din_data_1_1),
        .din_data_4(din_data_4_1),
        .din_data_5(din_data_5_1),
        .din_rstn(din_rstn_2),
        .dout_data_4(AD9361_2_dout_data_4),
        .dout_data_5(AD9361_2_dout_data_5),
        .dout_data_6(AD9361_2_dout_data_6),
        .dout_data_7(AD9361_2_dout_data_7),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(Conn3_ARADDR),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arprot(Conn3_ARPROT),
        .s_axi_arready(Conn3_ARREADY),
        .s_axi_arvalid(Conn3_ARVALID),
        .s_axi_awaddr(Conn3_AWADDR),
        .s_axi_awprot(Conn3_AWPROT),
        .s_axi_awready(Conn3_AWREADY),
        .s_axi_awvalid(Conn3_AWVALID),
        .s_axi_bready(Conn3_BREADY),
        .s_axi_bresp(Conn3_BRESP),
        .s_axi_bvalid(Conn3_BVALID),
        .s_axi_rdata(Conn3_RDATA),
        .s_axi_rready(Conn3_RREADY),
        .s_axi_rresp(Conn3_RRESP),
        .s_axi_rvalid(Conn3_RVALID),
        .s_axi_wdata(Conn3_WDATA),
        .s_axi_wready(Conn3_WREADY),
        .s_axi_wstrb(Conn3_WSTRB),
        .s_axi_wvalid(Conn3_WVALID),
        .up_enable(up_txnrx_1),
        .up_txnrx(up_txnrx_1));
  AD9361_3_imp_CD210O AD9361_3
       (.ad9361_3_P0_N(AD9361_3_ad9361_3_P0_N),
        .ad9361_3_P0_P(AD9361_3_ad9361_3_P0_P),
        .ad9361_3_P1_N(ad9361_3_P1_N_1),
        .ad9361_3_P1_P(ad9361_3_P1_P_1),
        .ad9361_DCLK_3_N(ad9361_DCLK_3_N_1),
        .ad9361_DCLK_3_P(ad9361_DCLK_3_P_1),
        .ad9361_EN_3(AD9361_3_ad9361_EN_3),
        .ad9361_FB_CLK_3_N(AD9361_3_ad9361_FB_CLK_3_N),
        .ad9361_FB_CLK_3_P(AD9361_3_ad9361_FB_CLK_3_P),
        .ad9361_RX_FRAME3_N(ad9361_RX_FRAME3_N_1),
        .ad9361_RX_FRAME3_P(ad9361_RX_FRAME3_P_1),
        .ad9361_TXNRX_3(AD9361_3_ad9361_TXNRX_3),
        .ad9361_TX_FRAME3_N(AD9361_3_ad9361_TX_FRAME3_N),
        .ad9361_TX_FRAME3_P(AD9361_3_ad9361_TX_FRAME3_P),
        .delay_clk(delay_clk_1),
        .din_clk(ad9361_clk_clk_out),
        .din_data_6(din_data_6_1),
        .din_data_7(din_data_7_1),
        .din_data_8(din_data_8_1),
        .din_data_9(din_data_9_1),
        .din_rstn(din_rstn_1),
        .dout_data_10(AD9361_3_dout_data_10),
        .dout_data_11(AD9361_3_dout_data_11),
        .dout_data_8(AD9361_3_dout_data_8),
        .dout_data_9(AD9361_3_dout_data_9),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(Conn1_ARADDR),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arprot(Conn1_ARPROT),
        .s_axi_arready(Conn1_ARREADY),
        .s_axi_arvalid(Conn1_ARVALID),
        .s_axi_awaddr(Conn1_AWADDR),
        .s_axi_awprot(Conn1_AWPROT),
        .s_axi_awready(Conn1_AWREADY),
        .s_axi_awvalid(Conn1_AWVALID),
        .s_axi_bready(Conn1_BREADY),
        .s_axi_bresp(Conn1_BRESP),
        .s_axi_bvalid(Conn1_BVALID),
        .s_axi_rdata(Conn1_RDATA),
        .s_axi_rready(Conn1_RREADY),
        .s_axi_rresp(Conn1_RRESP),
        .s_axi_rvalid(Conn1_RVALID),
        .s_axi_wdata(Conn1_WDATA),
        .s_axi_wready(Conn1_WREADY),
        .s_axi_wstrb(Conn1_WSTRB),
        .s_axi_wvalid(Conn1_WVALID),
        .up_enable(up_txnrx_1),
        .up_txnrx(up_txnrx_1));
  ad9361_clk_imp_1I4OLDI ad9361_clk
       (.FPGA_REF_40MHZ(FPGA_REF_40MHZ_1),
        .clk_out(ad9361_clk_clk_out),
        .clk_out1(ad9361_clk_clk_out1),
        .ext_reset_in(ext_reset_in_1),
        .peripheral_aresetn(din_rstn_1),
        .peripheral_aresetn1(din_rstn_2),
        .peripheral_reset(ad9361_clk_peripheral_reset),
        .sample_rate_30(ad9361_clk_data_rate));
  design_1_const_0_0 const_0
       (.dout(up_txnrx_1));
endmodule

module AD9364_imp_16ETD7A
   (ad9361_FB_CLK_P,
    ad9364_DCLK_N,
    ad9364_DCLK_P,
    ad9364_EN,
    ad9364_FB_CLK_N,
    ad9364_P0_N,
    ad9364_P0_P,
    ad9364_P1_N,
    ad9364_P1_P,
    ad9364_TXNRX,
    ad9364_TX_FRAME_N,
    ad9364_TX_FRAME_N1,
    ad9364_TX_FRAME_P,
    ad9364_TX_FRAME_P1,
    delay_clk,
    dout,
    dout_clk,
    ext_reset_in,
    s_axi_aclk,
    s_axi_araddr,
    s_axi_aresetn,
    s_axi_arprot,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    up_enable,
    up_txnrx);
  output ad9361_FB_CLK_P;
  input ad9364_DCLK_N;
  input ad9364_DCLK_P;
  output ad9364_EN;
  output ad9364_FB_CLK_N;
  output [5:0]ad9364_P0_N;
  output [5:0]ad9364_P0_P;
  input [5:0]ad9364_P1_N;
  input [5:0]ad9364_P1_P;
  output ad9364_TXNRX;
  input ad9364_TX_FRAME_N;
  output ad9364_TX_FRAME_N1;
  input ad9364_TX_FRAME_P;
  output ad9364_TX_FRAME_P1;
  input delay_clk;
  output [31:0]dout;
  input dout_clk;
  input ext_reset_in;
  input s_axi_aclk;
  input [31:0]s_axi_araddr;
  input s_axi_aresetn;
  input [2:0]s_axi_arprot;
  output s_axi_arready;
  input s_axi_arvalid;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output s_axi_wready;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  input up_enable;
  input up_txnrx;

  wire [31:0]Conn1_ARADDR;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [0:0]Net;
  wire [0:0]TDD_SYNC4_dout;
  wire ad9364_DCLK_N_1;
  wire ad9364_DCLK_P_1;
  wire [5:0]ad9364_P1_N_1;
  wire [5:0]ad9364_P1_P_1;
  wire ad9364_TX_FRAME_N_1;
  wire ad9364_TX_FRAME_P_1;
  wire [15:0]axi_ad9364_adc_data_i0;
  wire [15:0]axi_ad9364_adc_data_q0;
  wire axi_ad9364_adc_enable_i0;
  wire axi_ad9364_adc_enable_q0;
  wire axi_ad9364_adc_valid_i0;
  wire axi_ad9364_adc_valid_q0;
  wire axi_ad9364_dac_enable_i0;
  wire axi_ad9364_dac_enable_q0;
  wire axi_ad9364_dac_sync_out;
  wire axi_ad9364_dac_valid_i0;
  wire axi_ad9364_dac_valid_q0;
  wire axi_ad9364_enable;
  wire axi_ad9364_l_clk;
  wire axi_ad9364_tx_clk_out_n;
  wire axi_ad9364_tx_clk_out_p;
  wire [5:0]axi_ad9364_tx_data_out_n;
  wire [5:0]axi_ad9364_tx_data_out_p;
  wire axi_ad9364_tx_frame_out_n;
  wire axi_ad9364_tx_frame_out_p;
  wire axi_ad9364_txnrx;
  wire [15:0]dac_fifo_ad9364_0_dout_data_0;
  wire [15:0]dac_fifo_ad9364_0_dout_data_1;
  wire delay_clk_1;
  wire din_rst_1;
  wire dout_clk_1;
  wire [0:0]dout_rstn_1;
  wire ext_reset_in_1;
  wire s_axi_aclk_1;
  wire s_axi_aresetn_1;
  wire up_enable_1;
  wire up_txnrx_1;
  wire [15:0]zero_sample_dout;

  assign Conn1_ARADDR = s_axi_araddr[31:0];
  assign Conn1_ARPROT = s_axi_arprot[2:0];
  assign Conn1_ARVALID = s_axi_arvalid;
  assign Conn1_AWADDR = s_axi_awaddr[31:0];
  assign Conn1_AWPROT = s_axi_awprot[2:0];
  assign Conn1_AWVALID = s_axi_awvalid;
  assign Conn1_BREADY = s_axi_bready;
  assign Conn1_RREADY = s_axi_rready;
  assign Conn1_WDATA = s_axi_wdata[31:0];
  assign Conn1_WSTRB = s_axi_wstrb[3:0];
  assign Conn1_WVALID = s_axi_wvalid;
  assign ad9361_FB_CLK_P = axi_ad9364_tx_clk_out_p;
  assign ad9364_DCLK_N_1 = ad9364_DCLK_N;
  assign ad9364_DCLK_P_1 = ad9364_DCLK_P;
  assign ad9364_EN = axi_ad9364_enable;
  assign ad9364_FB_CLK_N = axi_ad9364_tx_clk_out_n;
  assign ad9364_P0_N[5:0] = axi_ad9364_tx_data_out_n;
  assign ad9364_P0_P[5:0] = axi_ad9364_tx_data_out_p;
  assign ad9364_P1_N_1 = ad9364_P1_N[5:0];
  assign ad9364_P1_P_1 = ad9364_P1_P[5:0];
  assign ad9364_TXNRX = axi_ad9364_txnrx;
  assign ad9364_TX_FRAME_N1 = axi_ad9364_tx_frame_out_n;
  assign ad9364_TX_FRAME_N_1 = ad9364_TX_FRAME_N;
  assign ad9364_TX_FRAME_P1 = axi_ad9364_tx_frame_out_p;
  assign ad9364_TX_FRAME_P_1 = ad9364_TX_FRAME_P;
  assign delay_clk_1 = delay_clk;
  assign dout_clk_1 = dout_clk;
  assign ext_reset_in_1 = ext_reset_in;
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  assign s_axi_arready = Conn1_ARREADY;
  assign s_axi_awready = Conn1_AWREADY;
  assign s_axi_bresp[1:0] = Conn1_BRESP;
  assign s_axi_bvalid = Conn1_BVALID;
  assign s_axi_rdata[31:0] = Conn1_RDATA;
  assign s_axi_rresp[1:0] = Conn1_RRESP;
  assign s_axi_rvalid = Conn1_RVALID;
  assign s_axi_wready = Conn1_WREADY;
  assign up_enable_1 = up_enable;
  assign up_txnrx_1 = up_txnrx;
  design_1_LOGIC_1_0 LOGIC_1
       (.dout(Net));
  design_1_TDD_SYNC4_0 TDD_SYNC4
       (.dout(TDD_SYNC4_dout));
  design_1_adc_fifo_ad9364_0_0 adc_fifo_ad9364_0
       (.din_clk(axi_ad9364_l_clk),
        .din_data_0(axi_ad9364_adc_data_i0),
        .din_data_1(axi_ad9364_adc_data_q0),
        .din_enable_0(axi_ad9364_adc_enable_i0),
        .din_enable_1(axi_ad9364_adc_enable_q0),
        .din_rst(din_rst_1),
        .din_valid_0(axi_ad9364_adc_valid_i0),
        .din_valid_1(axi_ad9364_adc_valid_q0),
        .dout_clk(dout_clk_1),
        .dout_ovf(1'b0),
        .dout_rstn(dout_rstn_1));
  design_1_axi_ad9364_0 axi_ad9364
       (.adc_data_i0(axi_ad9364_adc_data_i0),
        .adc_data_q0(axi_ad9364_adc_data_q0),
        .adc_dovf(1'b0),
        .adc_enable_i0(axi_ad9364_adc_enable_i0),
        .adc_enable_q0(axi_ad9364_adc_enable_q0),
        .adc_valid_i0(axi_ad9364_adc_valid_i0),
        .adc_valid_q0(axi_ad9364_adc_valid_q0),
        .clk(axi_ad9364_l_clk),
        .dac_data_i0(dac_fifo_ad9364_0_dout_data_0),
        .dac_data_i1(dac_fifo_ad9364_0_dout_data_0),
        .dac_data_q0(dac_fifo_ad9364_0_dout_data_1),
        .dac_data_q1(dac_fifo_ad9364_0_dout_data_1),
        .dac_dunf(dac_fifo_ad9364_0_dout_data_1[0]),
        .dac_enable_i0(axi_ad9364_dac_enable_i0),
        .dac_enable_q0(axi_ad9364_dac_enable_q0),
        .dac_sync_in(axi_ad9364_dac_sync_out),
        .dac_sync_out(axi_ad9364_dac_sync_out),
        .dac_valid_i0(axi_ad9364_dac_valid_i0),
        .dac_valid_q0(axi_ad9364_dac_valid_q0),
        .delay_clk(delay_clk_1),
        .enable(axi_ad9364_enable),
        .gps_pps(1'b0),
        .l_clk(axi_ad9364_l_clk),
        .rst(din_rst_1),
        .rx_clk_in_n(ad9364_DCLK_N_1),
        .rx_clk_in_p(ad9364_DCLK_P_1),
        .rx_data_in_n(ad9364_P1_N_1),
        .rx_data_in_p(ad9364_P1_P_1),
        .rx_frame_in_n(ad9364_TX_FRAME_N_1),
        .rx_frame_in_p(ad9364_TX_FRAME_P_1),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(Conn1_ARADDR[15:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arprot(Conn1_ARPROT),
        .s_axi_arready(Conn1_ARREADY),
        .s_axi_arvalid(Conn1_ARVALID),
        .s_axi_awaddr(Conn1_AWADDR[15:0]),
        .s_axi_awprot(Conn1_AWPROT),
        .s_axi_awready(Conn1_AWREADY),
        .s_axi_awvalid(Conn1_AWVALID),
        .s_axi_bready(Conn1_BREADY),
        .s_axi_bresp(Conn1_BRESP),
        .s_axi_bvalid(Conn1_BVALID),
        .s_axi_rdata(Conn1_RDATA),
        .s_axi_rready(Conn1_RREADY),
        .s_axi_rresp(Conn1_RRESP),
        .s_axi_rvalid(Conn1_RVALID),
        .s_axi_wdata(Conn1_WDATA),
        .s_axi_wready(Conn1_WREADY),
        .s_axi_wstrb(Conn1_WSTRB),
        .s_axi_wvalid(Conn1_WVALID),
        .tdd_sync(TDD_SYNC4_dout),
        .tx_clk_out_n(axi_ad9364_tx_clk_out_n),
        .tx_clk_out_p(axi_ad9364_tx_clk_out_p),
        .tx_data_out_n(axi_ad9364_tx_data_out_n),
        .tx_data_out_p(axi_ad9364_tx_data_out_p),
        .tx_frame_out_n(axi_ad9364_tx_frame_out_n),
        .tx_frame_out_p(axi_ad9364_tx_frame_out_p),
        .txnrx(axi_ad9364_txnrx),
        .up_adc_gpio_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .up_dac_gpio_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .up_enable(up_enable_1),
        .up_txnrx(up_txnrx_1));
  design_1_dac_fifo_ad9364_0_0 dac_fifo_ad9364_0
       (.din_clk(dout_clk_1),
        .din_data_0(zero_sample_dout),
        .din_data_1(zero_sample_dout),
        .din_rstn(dout_rstn_1),
        .din_unf(1'b0),
        .din_valid_in_0(Net),
        .din_valid_in_1(Net),
        .dout_clk(axi_ad9364_l_clk),
        .dout_data_0(dac_fifo_ad9364_0_dout_data_0),
        .dout_data_1(dac_fifo_ad9364_0_dout_data_1),
        .dout_enable_0(axi_ad9364_dac_enable_i0),
        .dout_enable_1(axi_ad9364_dac_enable_q0),
        .dout_rst(din_rst_1),
        .dout_valid_0(axi_ad9364_dac_valid_i0),
        .dout_valid_1(axi_ad9364_dac_valid_q0));
  design_1_divclk_64_rst1_0 divclk_64_rst1
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(dout_rstn_1),
        .slowest_sync_clk(dout_clk_1));
  design_1_zero_sample_0 zero_sample
       (.dout(zero_sample_dout));
endmodule

module AXI_Peripheral_imp_1PLQHVD
   (AXI_RX_CLK_OUT,
    AXI_RX_DATA_OUT,
    AXI_TX_CLK_IN,
    AXI_TX_DATA_IN,
    In0,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_AXI_araddr,
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awprot,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_AXI_araddr,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_AXI_araddr,
    M07_AXI_arprot,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awprot,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_AXI_araddr,
    M08_AXI_arprot,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awprot,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_AXI_araddr,
    M09_AXI_arprot,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awprot,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wvalid,
    M10_AXI_araddr,
    M10_AXI_arprot,
    M10_AXI_arready,
    M10_AXI_arvalid,
    M10_AXI_awaddr,
    M10_AXI_awprot,
    M10_AXI_awready,
    M10_AXI_awvalid,
    M10_AXI_bready,
    M10_AXI_bresp,
    M10_AXI_bvalid,
    M10_AXI_rdata,
    M10_AXI_rready,
    M10_AXI_rresp,
    M10_AXI_rvalid,
    M10_AXI_wdata,
    M10_AXI_wready,
    M10_AXI_wstrb,
    M10_AXI_wvalid,
    M12_AXI_araddr,
    M12_AXI_arready,
    M12_AXI_arvalid,
    M12_AXI_awaddr,
    M12_AXI_awready,
    M12_AXI_awvalid,
    M12_AXI_bready,
    M12_AXI_bresp,
    M12_AXI_bvalid,
    M12_AXI_rdata,
    M12_AXI_rready,
    M12_AXI_rresp,
    M12_AXI_rvalid,
    M12_AXI_wdata,
    M12_AXI_wready,
    M12_AXI_wstrb,
    M12_AXI_wvalid,
    M14_AXI_araddr,
    M14_AXI_arprot,
    M14_AXI_arready,
    M14_AXI_arvalid,
    M14_AXI_awaddr,
    M14_AXI_awprot,
    M14_AXI_awready,
    M14_AXI_awvalid,
    M14_AXI_bready,
    M14_AXI_bresp,
    M14_AXI_bvalid,
    M14_AXI_rdata,
    M14_AXI_rready,
    M14_AXI_rresp,
    M14_AXI_rvalid,
    M14_AXI_wdata,
    M14_AXI_wready,
    M14_AXI_wstrb,
    M14_AXI_wvalid,
    S00_ARESETN,
    fifo_wr_clk,
    fifo_wr_data_0,
    fifo_wr_data_1,
    fifo_wr_xfer_req,
    idelay_ref_clk,
    m_aclk,
    packed_fifo_wr_sync,
    reset);
  output AXI_RX_CLK_OUT;
  output [16:0]AXI_RX_DATA_OUT;
  input AXI_TX_CLK_IN;
  input [16:0]AXI_TX_DATA_IN;
  input [0:0]In0;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  output [31:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  output [31:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  output [31:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  output [31:0]M04_AXI_araddr;
  output [2:0]M04_AXI_arprot;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  output [2:0]M04_AXI_awprot;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  output M05_AXI_araddr;
  output M05_AXI_arprot;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output M05_AXI_awaddr;
  output M05_AXI_awprot;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input M05_AXI_bresp;
  input M05_AXI_bvalid;
  input M05_AXI_rdata;
  output M05_AXI_rready;
  input M05_AXI_rresp;
  input M05_AXI_rvalid;
  output M05_AXI_wdata;
  input M05_AXI_wready;
  output M05_AXI_wstrb;
  output M05_AXI_wvalid;
  output [31:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  output M07_AXI_araddr;
  output M07_AXI_arprot;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output M07_AXI_awaddr;
  output M07_AXI_awprot;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input M07_AXI_bresp;
  input M07_AXI_bvalid;
  input M07_AXI_rdata;
  output M07_AXI_rready;
  input M07_AXI_rresp;
  input M07_AXI_rvalid;
  output M07_AXI_wdata;
  input M07_AXI_wready;
  output M07_AXI_wstrb;
  output M07_AXI_wvalid;
  output M08_AXI_araddr;
  output M08_AXI_arprot;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output M08_AXI_awaddr;
  output M08_AXI_awprot;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input M08_AXI_bresp;
  input M08_AXI_bvalid;
  input M08_AXI_rdata;
  output M08_AXI_rready;
  input M08_AXI_rresp;
  input M08_AXI_rvalid;
  output M08_AXI_wdata;
  input M08_AXI_wready;
  output M08_AXI_wstrb;
  output M08_AXI_wvalid;
  output M09_AXI_araddr;
  output M09_AXI_arprot;
  input M09_AXI_arready;
  output M09_AXI_arvalid;
  output M09_AXI_awaddr;
  output M09_AXI_awprot;
  input M09_AXI_awready;
  output M09_AXI_awvalid;
  output M09_AXI_bready;
  input M09_AXI_bresp;
  input M09_AXI_bvalid;
  input M09_AXI_rdata;
  output M09_AXI_rready;
  input M09_AXI_rresp;
  input M09_AXI_rvalid;
  output M09_AXI_wdata;
  input M09_AXI_wready;
  output M09_AXI_wstrb;
  output M09_AXI_wvalid;
  output [31:0]M10_AXI_araddr;
  output [2:0]M10_AXI_arprot;
  input M10_AXI_arready;
  output M10_AXI_arvalid;
  output [31:0]M10_AXI_awaddr;
  output [2:0]M10_AXI_awprot;
  input M10_AXI_awready;
  output M10_AXI_awvalid;
  output M10_AXI_bready;
  input [1:0]M10_AXI_bresp;
  input M10_AXI_bvalid;
  input [31:0]M10_AXI_rdata;
  output M10_AXI_rready;
  input [1:0]M10_AXI_rresp;
  input M10_AXI_rvalid;
  output [31:0]M10_AXI_wdata;
  input M10_AXI_wready;
  output [3:0]M10_AXI_wstrb;
  output M10_AXI_wvalid;
  output [31:0]M12_AXI_araddr;
  input M12_AXI_arready;
  output M12_AXI_arvalid;
  output [31:0]M12_AXI_awaddr;
  input M12_AXI_awready;
  output M12_AXI_awvalid;
  output M12_AXI_bready;
  input [1:0]M12_AXI_bresp;
  input M12_AXI_bvalid;
  input [31:0]M12_AXI_rdata;
  output M12_AXI_rready;
  input [1:0]M12_AXI_rresp;
  input M12_AXI_rvalid;
  output [31:0]M12_AXI_wdata;
  input M12_AXI_wready;
  output [3:0]M12_AXI_wstrb;
  output M12_AXI_wvalid;
  output [31:0]M14_AXI_araddr;
  output [2:0]M14_AXI_arprot;
  input M14_AXI_arready;
  output M14_AXI_arvalid;
  output [31:0]M14_AXI_awaddr;
  output [2:0]M14_AXI_awprot;
  input M14_AXI_awready;
  output M14_AXI_awvalid;
  output M14_AXI_bready;
  input [1:0]M14_AXI_bresp;
  input M14_AXI_bvalid;
  input [31:0]M14_AXI_rdata;
  output M14_AXI_rready;
  input [1:0]M14_AXI_rresp;
  input M14_AXI_rvalid;
  output [31:0]M14_AXI_wdata;
  input M14_AXI_wready;
  output [3:0]M14_AXI_wstrb;
  output M14_AXI_wvalid;
  input S00_ARESETN;
  input fifo_wr_clk;
  input [15:0]fifo_wr_data_0;
  input [15:0]fifo_wr_data_1;
  output fifo_wr_xfer_req;
  input idelay_ref_clk;
  input m_aclk;
  output packed_fifo_wr_sync;
  input reset;

  wire AXI_C2C_axi_c2c_selio_tx_clk_out;
  wire [16:0]AXI_C2C_axi_c2c_selio_tx_data_out;
  wire [31:0]AXI_C2C_axi_periph_M00_AXI_ARADDR;
  wire [2:0]AXI_C2C_axi_periph_M00_AXI_ARPROT;
  wire AXI_C2C_axi_periph_M00_AXI_ARREADY;
  wire AXI_C2C_axi_periph_M00_AXI_ARVALID;
  wire [31:0]AXI_C2C_axi_periph_M00_AXI_AWADDR;
  wire [2:0]AXI_C2C_axi_periph_M00_AXI_AWPROT;
  wire AXI_C2C_axi_periph_M00_AXI_AWREADY;
  wire AXI_C2C_axi_periph_M00_AXI_AWVALID;
  wire AXI_C2C_axi_periph_M00_AXI_BREADY;
  wire [1:0]AXI_C2C_axi_periph_M00_AXI_BRESP;
  wire AXI_C2C_axi_periph_M00_AXI_BVALID;
  wire [31:0]AXI_C2C_axi_periph_M00_AXI_RDATA;
  wire AXI_C2C_axi_periph_M00_AXI_RREADY;
  wire [1:0]AXI_C2C_axi_periph_M00_AXI_RRESP;
  wire AXI_C2C_axi_periph_M00_AXI_RVALID;
  wire [31:0]AXI_C2C_axi_periph_M00_AXI_WDATA;
  wire AXI_C2C_axi_periph_M00_AXI_WREADY;
  wire [3:0]AXI_C2C_axi_periph_M00_AXI_WSTRB;
  wire AXI_C2C_axi_periph_M00_AXI_WVALID;
  wire [31:0]AXI_C2C_axi_periph_M01_AXI_ARADDR;
  wire [2:0]AXI_C2C_axi_periph_M01_AXI_ARPROT;
  wire AXI_C2C_axi_periph_M01_AXI_ARREADY;
  wire AXI_C2C_axi_periph_M01_AXI_ARVALID;
  wire [31:0]AXI_C2C_axi_periph_M01_AXI_AWADDR;
  wire [2:0]AXI_C2C_axi_periph_M01_AXI_AWPROT;
  wire AXI_C2C_axi_periph_M01_AXI_AWREADY;
  wire AXI_C2C_axi_periph_M01_AXI_AWVALID;
  wire AXI_C2C_axi_periph_M01_AXI_BREADY;
  wire [1:0]AXI_C2C_axi_periph_M01_AXI_BRESP;
  wire AXI_C2C_axi_periph_M01_AXI_BVALID;
  wire [31:0]AXI_C2C_axi_periph_M01_AXI_RDATA;
  wire AXI_C2C_axi_periph_M01_AXI_RREADY;
  wire [1:0]AXI_C2C_axi_periph_M01_AXI_RRESP;
  wire AXI_C2C_axi_periph_M01_AXI_RVALID;
  wire [31:0]AXI_C2C_axi_periph_M01_AXI_WDATA;
  wire AXI_C2C_axi_periph_M01_AXI_WREADY;
  wire [3:0]AXI_C2C_axi_periph_M01_AXI_WSTRB;
  wire AXI_C2C_axi_periph_M01_AXI_WVALID;
  wire [31:0]AXI_C2C_axi_periph_M02_AXI_ARADDR;
  wire [2:0]AXI_C2C_axi_periph_M02_AXI_ARPROT;
  wire AXI_C2C_axi_periph_M02_AXI_ARREADY;
  wire AXI_C2C_axi_periph_M02_AXI_ARVALID;
  wire [31:0]AXI_C2C_axi_periph_M02_AXI_AWADDR;
  wire [2:0]AXI_C2C_axi_periph_M02_AXI_AWPROT;
  wire AXI_C2C_axi_periph_M02_AXI_AWREADY;
  wire AXI_C2C_axi_periph_M02_AXI_AWVALID;
  wire AXI_C2C_axi_periph_M02_AXI_BREADY;
  wire [1:0]AXI_C2C_axi_periph_M02_AXI_BRESP;
  wire AXI_C2C_axi_periph_M02_AXI_BVALID;
  wire [31:0]AXI_C2C_axi_periph_M02_AXI_RDATA;
  wire AXI_C2C_axi_periph_M02_AXI_RREADY;
  wire [1:0]AXI_C2C_axi_periph_M02_AXI_RRESP;
  wire AXI_C2C_axi_periph_M02_AXI_RVALID;
  wire [31:0]AXI_C2C_axi_periph_M02_AXI_WDATA;
  wire AXI_C2C_axi_periph_M02_AXI_WREADY;
  wire [3:0]AXI_C2C_axi_periph_M02_AXI_WSTRB;
  wire AXI_C2C_axi_periph_M02_AXI_WVALID;
  wire [31:0]AXI_C2C_axi_periph_M03_AXI_ARADDR;
  wire [2:0]AXI_C2C_axi_periph_M03_AXI_ARPROT;
  wire AXI_C2C_axi_periph_M03_AXI_ARREADY;
  wire AXI_C2C_axi_periph_M03_AXI_ARVALID;
  wire [31:0]AXI_C2C_axi_periph_M03_AXI_AWADDR;
  wire [2:0]AXI_C2C_axi_periph_M03_AXI_AWPROT;
  wire AXI_C2C_axi_periph_M03_AXI_AWREADY;
  wire AXI_C2C_axi_periph_M03_AXI_AWVALID;
  wire AXI_C2C_axi_periph_M03_AXI_BREADY;
  wire [1:0]AXI_C2C_axi_periph_M03_AXI_BRESP;
  wire AXI_C2C_axi_periph_M03_AXI_BVALID;
  wire [31:0]AXI_C2C_axi_periph_M03_AXI_RDATA;
  wire AXI_C2C_axi_periph_M03_AXI_RREADY;
  wire [1:0]AXI_C2C_axi_periph_M03_AXI_RRESP;
  wire AXI_C2C_axi_periph_M03_AXI_RVALID;
  wire [31:0]AXI_C2C_axi_periph_M03_AXI_WDATA;
  wire AXI_C2C_axi_periph_M03_AXI_WREADY;
  wire [3:0]AXI_C2C_axi_periph_M03_AXI_WSTRB;
  wire AXI_C2C_axi_periph_M03_AXI_WVALID;
  wire [31:0]AXI_C2C_axi_periph_M04_AXI_ARADDR;
  wire [2:0]AXI_C2C_axi_periph_M04_AXI_ARPROT;
  wire AXI_C2C_axi_periph_M04_AXI_ARREADY;
  wire AXI_C2C_axi_periph_M04_AXI_ARVALID;
  wire [31:0]AXI_C2C_axi_periph_M04_AXI_AWADDR;
  wire [2:0]AXI_C2C_axi_periph_M04_AXI_AWPROT;
  wire AXI_C2C_axi_periph_M04_AXI_AWREADY;
  wire AXI_C2C_axi_periph_M04_AXI_AWVALID;
  wire AXI_C2C_axi_periph_M04_AXI_BREADY;
  wire [1:0]AXI_C2C_axi_periph_M04_AXI_BRESP;
  wire AXI_C2C_axi_periph_M04_AXI_BVALID;
  wire [31:0]AXI_C2C_axi_periph_M04_AXI_RDATA;
  wire AXI_C2C_axi_periph_M04_AXI_RREADY;
  wire [1:0]AXI_C2C_axi_periph_M04_AXI_RRESP;
  wire AXI_C2C_axi_periph_M04_AXI_RVALID;
  wire [31:0]AXI_C2C_axi_periph_M04_AXI_WDATA;
  wire AXI_C2C_axi_periph_M04_AXI_WREADY;
  wire [3:0]AXI_C2C_axi_periph_M04_AXI_WSTRB;
  wire AXI_C2C_axi_periph_M04_AXI_WVALID;
  wire [31:0]AXI_C2C_axi_periph_M06_AXI_ARADDR;
  wire [2:0]AXI_C2C_axi_periph_M06_AXI_ARPROT;
  wire AXI_C2C_axi_periph_M06_AXI_ARREADY;
  wire AXI_C2C_axi_periph_M06_AXI_ARVALID;
  wire [31:0]AXI_C2C_axi_periph_M06_AXI_AWADDR;
  wire [2:0]AXI_C2C_axi_periph_M06_AXI_AWPROT;
  wire AXI_C2C_axi_periph_M06_AXI_AWREADY;
  wire AXI_C2C_axi_periph_M06_AXI_AWVALID;
  wire AXI_C2C_axi_periph_M06_AXI_BREADY;
  wire [1:0]AXI_C2C_axi_periph_M06_AXI_BRESP;
  wire AXI_C2C_axi_periph_M06_AXI_BVALID;
  wire [31:0]AXI_C2C_axi_periph_M06_AXI_RDATA;
  wire AXI_C2C_axi_periph_M06_AXI_RREADY;
  wire [1:0]AXI_C2C_axi_periph_M06_AXI_RRESP;
  wire AXI_C2C_axi_periph_M06_AXI_RVALID;
  wire [31:0]AXI_C2C_axi_periph_M06_AXI_WDATA;
  wire AXI_C2C_axi_periph_M06_AXI_WREADY;
  wire [3:0]AXI_C2C_axi_periph_M06_AXI_WSTRB;
  wire AXI_C2C_axi_periph_M06_AXI_WVALID;
  wire [31:0]AXI_C2C_axi_periph_M11_AXI_ARADDR;
  wire AXI_C2C_axi_periph_M11_AXI_ARREADY;
  wire AXI_C2C_axi_periph_M11_AXI_ARVALID;
  wire [31:0]AXI_C2C_axi_periph_M11_AXI_AWADDR;
  wire AXI_C2C_axi_periph_M11_AXI_AWREADY;
  wire AXI_C2C_axi_periph_M11_AXI_AWVALID;
  wire AXI_C2C_axi_periph_M11_AXI_BREADY;
  wire [1:0]AXI_C2C_axi_periph_M11_AXI_BRESP;
  wire AXI_C2C_axi_periph_M11_AXI_BVALID;
  wire [31:0]AXI_C2C_axi_periph_M11_AXI_RDATA;
  wire AXI_C2C_axi_periph_M11_AXI_RREADY;
  wire [1:0]AXI_C2C_axi_periph_M11_AXI_RRESP;
  wire AXI_C2C_axi_periph_M11_AXI_RVALID;
  wire [31:0]AXI_C2C_axi_periph_M11_AXI_WDATA;
  wire AXI_C2C_axi_periph_M11_AXI_WREADY;
  wire [3:0]AXI_C2C_axi_periph_M11_AXI_WSTRB;
  wire AXI_C2C_axi_periph_M11_AXI_WVALID;
  wire [31:0]AXI_C2C_m_axi_lite_ARADDR;
  wire [1:0]AXI_C2C_m_axi_lite_ARPROT;
  wire [0:0]AXI_C2C_m_axi_lite_ARREADY;
  wire AXI_C2C_m_axi_lite_ARVALID;
  wire [31:0]AXI_C2C_m_axi_lite_AWADDR;
  wire [1:0]AXI_C2C_m_axi_lite_AWPROT;
  wire [0:0]AXI_C2C_m_axi_lite_AWREADY;
  wire AXI_C2C_m_axi_lite_AWVALID;
  wire AXI_C2C_m_axi_lite_BREADY;
  wire [1:0]AXI_C2C_m_axi_lite_BRESP;
  wire [0:0]AXI_C2C_m_axi_lite_BVALID;
  wire [31:0]AXI_C2C_m_axi_lite_RDATA;
  wire AXI_C2C_m_axi_lite_RREADY;
  wire [1:0]AXI_C2C_m_axi_lite_RRESP;
  wire [0:0]AXI_C2C_m_axi_lite_RVALID;
  wire [31:0]AXI_C2C_m_axi_lite_WDATA;
  wire [0:0]AXI_C2C_m_axi_lite_WREADY;
  wire [3:0]AXI_C2C_m_axi_lite_WSTRB;
  wire AXI_C2C_m_axi_lite_WVALID;
  wire AXI_DMA_fifo_wr_xfer_req;
  wire [29:0]AXI_DMA_m_dest_axi_AWADDR;
  wire [1:0]AXI_DMA_m_dest_axi_AWBURST;
  wire [7:0]AXI_DMA_m_dest_axi_AWLEN;
  wire AXI_DMA_m_dest_axi_AWREADY;
  wire [2:0]AXI_DMA_m_dest_axi_AWSIZE;
  wire AXI_DMA_m_dest_axi_AWVALID;
  wire AXI_DMA_m_dest_axi_BREADY;
  wire [1:0]AXI_DMA_m_dest_axi_BRESP;
  wire AXI_DMA_m_dest_axi_BVALID;
  wire [31:0]AXI_DMA_m_dest_axi_WDATA;
  wire AXI_DMA_m_dest_axi_WLAST;
  wire AXI_DMA_m_dest_axi_WREADY;
  wire [3:0]AXI_DMA_m_dest_axi_WSTRB;
  wire AXI_DMA_m_dest_axi_WVALID;
  wire AXI_TX_CLK_IN_1;
  wire [16:0]AXI_TX_DATA_IN_1;
  wire [3:0]Concat_dout;
  wire Conn1_ARADDR;
  wire Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire Conn1_AWADDR;
  wire Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire Conn1_BRESP;
  wire Conn1_BVALID;
  wire Conn1_RDATA;
  wire Conn1_RREADY;
  wire Conn1_RRESP;
  wire Conn1_RVALID;
  wire Conn1_WDATA;
  wire Conn1_WREADY;
  wire Conn1_WSTRB;
  wire Conn1_WVALID;
  wire Conn2_ARADDR;
  wire Conn2_ARPROT;
  wire Conn2_ARREADY;
  wire Conn2_ARVALID;
  wire Conn2_AWADDR;
  wire Conn2_AWPROT;
  wire Conn2_AWREADY;
  wire Conn2_AWVALID;
  wire Conn2_BREADY;
  wire Conn2_BRESP;
  wire Conn2_BVALID;
  wire Conn2_RDATA;
  wire Conn2_RREADY;
  wire Conn2_RRESP;
  wire Conn2_RVALID;
  wire Conn2_WDATA;
  wire Conn2_WREADY;
  wire Conn2_WSTRB;
  wire Conn2_WVALID;
  wire [31:0]Conn3_ARADDR;
  wire [2:0]Conn3_ARPROT;
  wire Conn3_ARREADY;
  wire Conn3_ARVALID;
  wire [31:0]Conn3_AWADDR;
  wire [2:0]Conn3_AWPROT;
  wire Conn3_AWREADY;
  wire Conn3_AWVALID;
  wire Conn3_BREADY;
  wire [1:0]Conn3_BRESP;
  wire Conn3_BVALID;
  wire [31:0]Conn3_RDATA;
  wire Conn3_RREADY;
  wire [1:0]Conn3_RRESP;
  wire Conn3_RVALID;
  wire [31:0]Conn3_WDATA;
  wire Conn3_WREADY;
  wire [3:0]Conn3_WSTRB;
  wire Conn3_WVALID;
  wire Conn4_ARADDR;
  wire Conn4_ARPROT;
  wire Conn4_ARREADY;
  wire Conn4_ARVALID;
  wire Conn4_AWADDR;
  wire Conn4_AWPROT;
  wire Conn4_AWREADY;
  wire Conn4_AWVALID;
  wire Conn4_BREADY;
  wire Conn4_BRESP;
  wire Conn4_BVALID;
  wire Conn4_RDATA;
  wire Conn4_RREADY;
  wire Conn4_RRESP;
  wire Conn4_RVALID;
  wire Conn4_WDATA;
  wire Conn4_WREADY;
  wire Conn4_WSTRB;
  wire Conn4_WVALID;
  wire Conn5_ARADDR;
  wire Conn5_ARPROT;
  wire Conn5_ARREADY;
  wire Conn5_ARVALID;
  wire Conn5_AWADDR;
  wire Conn5_AWPROT;
  wire Conn5_AWREADY;
  wire Conn5_AWVALID;
  wire Conn5_BREADY;
  wire Conn5_BRESP;
  wire Conn5_BVALID;
  wire Conn5_RDATA;
  wire Conn5_RREADY;
  wire Conn5_RRESP;
  wire Conn5_RVALID;
  wire Conn5_WDATA;
  wire Conn5_WREADY;
  wire Conn5_WSTRB;
  wire Conn5_WVALID;
  wire [31:0]Conn6_ARADDR;
  wire [2:0]Conn6_ARPROT;
  wire Conn6_ARREADY;
  wire Conn6_ARVALID;
  wire [31:0]Conn6_AWADDR;
  wire [2:0]Conn6_AWPROT;
  wire Conn6_AWREADY;
  wire Conn6_AWVALID;
  wire Conn6_BREADY;
  wire [1:0]Conn6_BRESP;
  wire Conn6_BVALID;
  wire [31:0]Conn6_RDATA;
  wire Conn6_RREADY;
  wire [1:0]Conn6_RRESP;
  wire Conn6_RVALID;
  wire [31:0]Conn6_WDATA;
  wire Conn6_WREADY;
  wire [3:0]Conn6_WSTRB;
  wire Conn6_WVALID;
  wire [31:0]Conn7_ARADDR;
  wire Conn7_ARREADY;
  wire Conn7_ARVALID;
  wire [31:0]Conn7_AWADDR;
  wire Conn7_AWREADY;
  wire Conn7_AWVALID;
  wire Conn7_BREADY;
  wire [1:0]Conn7_BRESP;
  wire Conn7_BVALID;
  wire [31:0]Conn7_RDATA;
  wire Conn7_RREADY;
  wire [1:0]Conn7_RRESP;
  wire Conn7_RVALID;
  wire [31:0]Conn7_WDATA;
  wire Conn7_WREADY;
  wire [3:0]Conn7_WSTRB;
  wire Conn7_WVALID;
  wire [0:0]GND_dout;
  wire [0:0]In0_1;
  wire M12_ARESETN_1;
  wire Net;
  wire [0:0]VCC_dout;
  wire axi_dmac_0_irq;
  wire fifo_wr_clk_1;
  wire [15:0]fifo_wr_data_0_1;
  wire [15:0]fifo_wr_data_1_1;
  wire idelay_ref_clk_1;
  wire [31:0]xlconcat_1_dout;

  assign AXI_C2C_axi_periph_M00_AXI_ARREADY = M02_AXI_arready;
  assign AXI_C2C_axi_periph_M00_AXI_AWREADY = M02_AXI_awready;
  assign AXI_C2C_axi_periph_M00_AXI_BRESP = M02_AXI_bresp[1:0];
  assign AXI_C2C_axi_periph_M00_AXI_BVALID = M02_AXI_bvalid;
  assign AXI_C2C_axi_periph_M00_AXI_RDATA = M02_AXI_rdata[31:0];
  assign AXI_C2C_axi_periph_M00_AXI_RRESP = M02_AXI_rresp[1:0];
  assign AXI_C2C_axi_periph_M00_AXI_RVALID = M02_AXI_rvalid;
  assign AXI_C2C_axi_periph_M00_AXI_WREADY = M02_AXI_wready;
  assign AXI_C2C_axi_periph_M01_AXI_ARREADY = M00_AXI_arready;
  assign AXI_C2C_axi_periph_M01_AXI_AWREADY = M00_AXI_awready;
  assign AXI_C2C_axi_periph_M01_AXI_BRESP = M00_AXI_bresp[1:0];
  assign AXI_C2C_axi_periph_M01_AXI_BVALID = M00_AXI_bvalid;
  assign AXI_C2C_axi_periph_M01_AXI_RDATA = M00_AXI_rdata[31:0];
  assign AXI_C2C_axi_periph_M01_AXI_RRESP = M00_AXI_rresp[1:0];
  assign AXI_C2C_axi_periph_M01_AXI_RVALID = M00_AXI_rvalid;
  assign AXI_C2C_axi_periph_M01_AXI_WREADY = M00_AXI_wready;
  assign AXI_C2C_axi_periph_M02_AXI_ARREADY = M01_AXI_arready;
  assign AXI_C2C_axi_periph_M02_AXI_AWREADY = M01_AXI_awready;
  assign AXI_C2C_axi_periph_M02_AXI_BRESP = M01_AXI_bresp[1:0];
  assign AXI_C2C_axi_periph_M02_AXI_BVALID = M01_AXI_bvalid;
  assign AXI_C2C_axi_periph_M02_AXI_RDATA = M01_AXI_rdata[31:0];
  assign AXI_C2C_axi_periph_M02_AXI_RRESP = M01_AXI_rresp[1:0];
  assign AXI_C2C_axi_periph_M02_AXI_RVALID = M01_AXI_rvalid;
  assign AXI_C2C_axi_periph_M02_AXI_WREADY = M01_AXI_wready;
  assign AXI_C2C_axi_periph_M03_AXI_ARREADY = M03_AXI_arready;
  assign AXI_C2C_axi_periph_M03_AXI_AWREADY = M03_AXI_awready;
  assign AXI_C2C_axi_periph_M03_AXI_BRESP = M03_AXI_bresp[1:0];
  assign AXI_C2C_axi_periph_M03_AXI_BVALID = M03_AXI_bvalid;
  assign AXI_C2C_axi_periph_M03_AXI_RDATA = M03_AXI_rdata[31:0];
  assign AXI_C2C_axi_periph_M03_AXI_RRESP = M03_AXI_rresp[1:0];
  assign AXI_C2C_axi_periph_M03_AXI_RVALID = M03_AXI_rvalid;
  assign AXI_C2C_axi_periph_M03_AXI_WREADY = M03_AXI_wready;
  assign AXI_C2C_axi_periph_M06_AXI_ARREADY = M04_AXI_arready;
  assign AXI_C2C_axi_periph_M06_AXI_AWREADY = M04_AXI_awready;
  assign AXI_C2C_axi_periph_M06_AXI_BRESP = M04_AXI_bresp[1:0];
  assign AXI_C2C_axi_periph_M06_AXI_BVALID = M04_AXI_bvalid;
  assign AXI_C2C_axi_periph_M06_AXI_RDATA = M04_AXI_rdata[31:0];
  assign AXI_C2C_axi_periph_M06_AXI_RRESP = M04_AXI_rresp[1:0];
  assign AXI_C2C_axi_periph_M06_AXI_RVALID = M04_AXI_rvalid;
  assign AXI_C2C_axi_periph_M06_AXI_WREADY = M04_AXI_wready;
  assign AXI_C2C_axi_periph_M11_AXI_ARREADY = M06_AXI_arready;
  assign AXI_C2C_axi_periph_M11_AXI_AWREADY = M06_AXI_awready;
  assign AXI_C2C_axi_periph_M11_AXI_BRESP = M06_AXI_bresp[1:0];
  assign AXI_C2C_axi_periph_M11_AXI_BVALID = M06_AXI_bvalid;
  assign AXI_C2C_axi_periph_M11_AXI_RDATA = M06_AXI_rdata[31:0];
  assign AXI_C2C_axi_periph_M11_AXI_RRESP = M06_AXI_rresp[1:0];
  assign AXI_C2C_axi_periph_M11_AXI_RVALID = M06_AXI_rvalid;
  assign AXI_C2C_axi_periph_M11_AXI_WREADY = M06_AXI_wready;
  assign AXI_RX_CLK_OUT = AXI_C2C_axi_c2c_selio_tx_clk_out;
  assign AXI_RX_DATA_OUT[16:0] = AXI_C2C_axi_c2c_selio_tx_data_out;
  assign AXI_TX_CLK_IN_1 = AXI_TX_CLK_IN;
  assign AXI_TX_DATA_IN_1 = AXI_TX_DATA_IN[16:0];
  assign Conn1_ARREADY = M05_AXI_arready;
  assign Conn1_AWREADY = M05_AXI_awready;
  assign Conn1_BRESP = M05_AXI_bresp;
  assign Conn1_BVALID = M05_AXI_bvalid;
  assign Conn1_RDATA = M05_AXI_rdata;
  assign Conn1_RRESP = M05_AXI_rresp;
  assign Conn1_RVALID = M05_AXI_rvalid;
  assign Conn1_WREADY = M05_AXI_wready;
  assign Conn2_ARREADY = M07_AXI_arready;
  assign Conn2_AWREADY = M07_AXI_awready;
  assign Conn2_BRESP = M07_AXI_bresp;
  assign Conn2_BVALID = M07_AXI_bvalid;
  assign Conn2_RDATA = M07_AXI_rdata;
  assign Conn2_RRESP = M07_AXI_rresp;
  assign Conn2_RVALID = M07_AXI_rvalid;
  assign Conn2_WREADY = M07_AXI_wready;
  assign Conn3_ARREADY = M14_AXI_arready;
  assign Conn3_AWREADY = M14_AXI_awready;
  assign Conn3_BRESP = M14_AXI_bresp[1:0];
  assign Conn3_BVALID = M14_AXI_bvalid;
  assign Conn3_RDATA = M14_AXI_rdata[31:0];
  assign Conn3_RRESP = M14_AXI_rresp[1:0];
  assign Conn3_RVALID = M14_AXI_rvalid;
  assign Conn3_WREADY = M14_AXI_wready;
  assign Conn4_ARREADY = M08_AXI_arready;
  assign Conn4_AWREADY = M08_AXI_awready;
  assign Conn4_BRESP = M08_AXI_bresp;
  assign Conn4_BVALID = M08_AXI_bvalid;
  assign Conn4_RDATA = M08_AXI_rdata;
  assign Conn4_RRESP = M08_AXI_rresp;
  assign Conn4_RVALID = M08_AXI_rvalid;
  assign Conn4_WREADY = M08_AXI_wready;
  assign Conn5_ARREADY = M09_AXI_arready;
  assign Conn5_AWREADY = M09_AXI_awready;
  assign Conn5_BRESP = M09_AXI_bresp;
  assign Conn5_BVALID = M09_AXI_bvalid;
  assign Conn5_RDATA = M09_AXI_rdata;
  assign Conn5_RRESP = M09_AXI_rresp;
  assign Conn5_RVALID = M09_AXI_rvalid;
  assign Conn5_WREADY = M09_AXI_wready;
  assign Conn6_ARREADY = M10_AXI_arready;
  assign Conn6_AWREADY = M10_AXI_awready;
  assign Conn6_BRESP = M10_AXI_bresp[1:0];
  assign Conn6_BVALID = M10_AXI_bvalid;
  assign Conn6_RDATA = M10_AXI_rdata[31:0];
  assign Conn6_RRESP = M10_AXI_rresp[1:0];
  assign Conn6_RVALID = M10_AXI_rvalid;
  assign Conn6_WREADY = M10_AXI_wready;
  assign Conn7_ARREADY = M12_AXI_arready;
  assign Conn7_AWREADY = M12_AXI_awready;
  assign Conn7_BRESP = M12_AXI_bresp[1:0];
  assign Conn7_BVALID = M12_AXI_bvalid;
  assign Conn7_RDATA = M12_AXI_rdata[31:0];
  assign Conn7_RRESP = M12_AXI_rresp[1:0];
  assign Conn7_RVALID = M12_AXI_rvalid;
  assign Conn7_WREADY = M12_AXI_wready;
  assign In0_1 = In0[0];
  assign M00_AXI_araddr[31:0] = AXI_C2C_axi_periph_M01_AXI_ARADDR;
  assign M00_AXI_arprot[2:0] = AXI_C2C_axi_periph_M01_AXI_ARPROT;
  assign M00_AXI_arvalid = AXI_C2C_axi_periph_M01_AXI_ARVALID;
  assign M00_AXI_awaddr[31:0] = AXI_C2C_axi_periph_M01_AXI_AWADDR;
  assign M00_AXI_awprot[2:0] = AXI_C2C_axi_periph_M01_AXI_AWPROT;
  assign M00_AXI_awvalid = AXI_C2C_axi_periph_M01_AXI_AWVALID;
  assign M00_AXI_bready = AXI_C2C_axi_periph_M01_AXI_BREADY;
  assign M00_AXI_rready = AXI_C2C_axi_periph_M01_AXI_RREADY;
  assign M00_AXI_wdata[31:0] = AXI_C2C_axi_periph_M01_AXI_WDATA;
  assign M00_AXI_wstrb[3:0] = AXI_C2C_axi_periph_M01_AXI_WSTRB;
  assign M00_AXI_wvalid = AXI_C2C_axi_periph_M01_AXI_WVALID;
  assign M01_AXI_araddr[31:0] = AXI_C2C_axi_periph_M02_AXI_ARADDR;
  assign M01_AXI_arprot[2:0] = AXI_C2C_axi_periph_M02_AXI_ARPROT;
  assign M01_AXI_arvalid = AXI_C2C_axi_periph_M02_AXI_ARVALID;
  assign M01_AXI_awaddr[31:0] = AXI_C2C_axi_periph_M02_AXI_AWADDR;
  assign M01_AXI_awprot[2:0] = AXI_C2C_axi_periph_M02_AXI_AWPROT;
  assign M01_AXI_awvalid = AXI_C2C_axi_periph_M02_AXI_AWVALID;
  assign M01_AXI_bready = AXI_C2C_axi_periph_M02_AXI_BREADY;
  assign M01_AXI_rready = AXI_C2C_axi_periph_M02_AXI_RREADY;
  assign M01_AXI_wdata[31:0] = AXI_C2C_axi_periph_M02_AXI_WDATA;
  assign M01_AXI_wstrb[3:0] = AXI_C2C_axi_periph_M02_AXI_WSTRB;
  assign M01_AXI_wvalid = AXI_C2C_axi_periph_M02_AXI_WVALID;
  assign M02_AXI_araddr[31:0] = AXI_C2C_axi_periph_M00_AXI_ARADDR;
  assign M02_AXI_arprot[2:0] = AXI_C2C_axi_periph_M00_AXI_ARPROT;
  assign M02_AXI_arvalid = AXI_C2C_axi_periph_M00_AXI_ARVALID;
  assign M02_AXI_awaddr[31:0] = AXI_C2C_axi_periph_M00_AXI_AWADDR;
  assign M02_AXI_awprot[2:0] = AXI_C2C_axi_periph_M00_AXI_AWPROT;
  assign M02_AXI_awvalid = AXI_C2C_axi_periph_M00_AXI_AWVALID;
  assign M02_AXI_bready = AXI_C2C_axi_periph_M00_AXI_BREADY;
  assign M02_AXI_rready = AXI_C2C_axi_periph_M00_AXI_RREADY;
  assign M02_AXI_wdata[31:0] = AXI_C2C_axi_periph_M00_AXI_WDATA;
  assign M02_AXI_wstrb[3:0] = AXI_C2C_axi_periph_M00_AXI_WSTRB;
  assign M02_AXI_wvalid = AXI_C2C_axi_periph_M00_AXI_WVALID;
  assign M03_AXI_araddr[31:0] = AXI_C2C_axi_periph_M03_AXI_ARADDR;
  assign M03_AXI_arprot[2:0] = AXI_C2C_axi_periph_M03_AXI_ARPROT;
  assign M03_AXI_arvalid = AXI_C2C_axi_periph_M03_AXI_ARVALID;
  assign M03_AXI_awaddr[31:0] = AXI_C2C_axi_periph_M03_AXI_AWADDR;
  assign M03_AXI_awprot[2:0] = AXI_C2C_axi_periph_M03_AXI_AWPROT;
  assign M03_AXI_awvalid = AXI_C2C_axi_periph_M03_AXI_AWVALID;
  assign M03_AXI_bready = AXI_C2C_axi_periph_M03_AXI_BREADY;
  assign M03_AXI_rready = AXI_C2C_axi_periph_M03_AXI_RREADY;
  assign M03_AXI_wdata[31:0] = AXI_C2C_axi_periph_M03_AXI_WDATA;
  assign M03_AXI_wstrb[3:0] = AXI_C2C_axi_periph_M03_AXI_WSTRB;
  assign M03_AXI_wvalid = AXI_C2C_axi_periph_M03_AXI_WVALID;
  assign M04_AXI_araddr[31:0] = AXI_C2C_axi_periph_M06_AXI_ARADDR;
  assign M04_AXI_arprot[2:0] = AXI_C2C_axi_periph_M06_AXI_ARPROT;
  assign M04_AXI_arvalid = AXI_C2C_axi_periph_M06_AXI_ARVALID;
  assign M04_AXI_awaddr[31:0] = AXI_C2C_axi_periph_M06_AXI_AWADDR;
  assign M04_AXI_awprot[2:0] = AXI_C2C_axi_periph_M06_AXI_AWPROT;
  assign M04_AXI_awvalid = AXI_C2C_axi_periph_M06_AXI_AWVALID;
  assign M04_AXI_bready = AXI_C2C_axi_periph_M06_AXI_BREADY;
  assign M04_AXI_rready = AXI_C2C_axi_periph_M06_AXI_RREADY;
  assign M04_AXI_wdata[31:0] = AXI_C2C_axi_periph_M06_AXI_WDATA;
  assign M04_AXI_wstrb[3:0] = AXI_C2C_axi_periph_M06_AXI_WSTRB;
  assign M04_AXI_wvalid = AXI_C2C_axi_periph_M06_AXI_WVALID;
  assign M05_AXI_araddr = Conn1_ARADDR;
  assign M05_AXI_arprot = Conn1_ARPROT;
  assign M05_AXI_arvalid = Conn1_ARVALID;
  assign M05_AXI_awaddr = Conn1_AWADDR;
  assign M05_AXI_awprot = Conn1_AWPROT;
  assign M05_AXI_awvalid = Conn1_AWVALID;
  assign M05_AXI_bready = Conn1_BREADY;
  assign M05_AXI_rready = Conn1_RREADY;
  assign M05_AXI_wdata = Conn1_WDATA;
  assign M05_AXI_wstrb = Conn1_WSTRB;
  assign M05_AXI_wvalid = Conn1_WVALID;
  assign M06_AXI_araddr[31:0] = AXI_C2C_axi_periph_M11_AXI_ARADDR;
  assign M06_AXI_arvalid = AXI_C2C_axi_periph_M11_AXI_ARVALID;
  assign M06_AXI_awaddr[31:0] = AXI_C2C_axi_periph_M11_AXI_AWADDR;
  assign M06_AXI_awvalid = AXI_C2C_axi_periph_M11_AXI_AWVALID;
  assign M06_AXI_bready = AXI_C2C_axi_periph_M11_AXI_BREADY;
  assign M06_AXI_rready = AXI_C2C_axi_periph_M11_AXI_RREADY;
  assign M06_AXI_wdata[31:0] = AXI_C2C_axi_periph_M11_AXI_WDATA;
  assign M06_AXI_wstrb[3:0] = AXI_C2C_axi_periph_M11_AXI_WSTRB;
  assign M06_AXI_wvalid = AXI_C2C_axi_periph_M11_AXI_WVALID;
  assign M07_AXI_araddr = Conn2_ARADDR;
  assign M07_AXI_arprot = Conn2_ARPROT;
  assign M07_AXI_arvalid = Conn2_ARVALID;
  assign M07_AXI_awaddr = Conn2_AWADDR;
  assign M07_AXI_awprot = Conn2_AWPROT;
  assign M07_AXI_awvalid = Conn2_AWVALID;
  assign M07_AXI_bready = Conn2_BREADY;
  assign M07_AXI_rready = Conn2_RREADY;
  assign M07_AXI_wdata = Conn2_WDATA;
  assign M07_AXI_wstrb = Conn2_WSTRB;
  assign M07_AXI_wvalid = Conn2_WVALID;
  assign M08_AXI_araddr = Conn4_ARADDR;
  assign M08_AXI_arprot = Conn4_ARPROT;
  assign M08_AXI_arvalid = Conn4_ARVALID;
  assign M08_AXI_awaddr = Conn4_AWADDR;
  assign M08_AXI_awprot = Conn4_AWPROT;
  assign M08_AXI_awvalid = Conn4_AWVALID;
  assign M08_AXI_bready = Conn4_BREADY;
  assign M08_AXI_rready = Conn4_RREADY;
  assign M08_AXI_wdata = Conn4_WDATA;
  assign M08_AXI_wstrb = Conn4_WSTRB;
  assign M08_AXI_wvalid = Conn4_WVALID;
  assign M09_AXI_araddr = Conn5_ARADDR;
  assign M09_AXI_arprot = Conn5_ARPROT;
  assign M09_AXI_arvalid = Conn5_ARVALID;
  assign M09_AXI_awaddr = Conn5_AWADDR;
  assign M09_AXI_awprot = Conn5_AWPROT;
  assign M09_AXI_awvalid = Conn5_AWVALID;
  assign M09_AXI_bready = Conn5_BREADY;
  assign M09_AXI_rready = Conn5_RREADY;
  assign M09_AXI_wdata = Conn5_WDATA;
  assign M09_AXI_wstrb = Conn5_WSTRB;
  assign M09_AXI_wvalid = Conn5_WVALID;
  assign M10_AXI_araddr[31:0] = Conn6_ARADDR;
  assign M10_AXI_arprot[2:0] = Conn6_ARPROT;
  assign M10_AXI_arvalid = Conn6_ARVALID;
  assign M10_AXI_awaddr[31:0] = Conn6_AWADDR;
  assign M10_AXI_awprot[2:0] = Conn6_AWPROT;
  assign M10_AXI_awvalid = Conn6_AWVALID;
  assign M10_AXI_bready = Conn6_BREADY;
  assign M10_AXI_rready = Conn6_RREADY;
  assign M10_AXI_wdata[31:0] = Conn6_WDATA;
  assign M10_AXI_wstrb[3:0] = Conn6_WSTRB;
  assign M10_AXI_wvalid = Conn6_WVALID;
  assign M12_ARESETN_1 = S00_ARESETN;
  assign M12_AXI_araddr[31:0] = Conn7_ARADDR;
  assign M12_AXI_arvalid = Conn7_ARVALID;
  assign M12_AXI_awaddr[31:0] = Conn7_AWADDR;
  assign M12_AXI_awvalid = Conn7_AWVALID;
  assign M12_AXI_bready = Conn7_BREADY;
  assign M12_AXI_rready = Conn7_RREADY;
  assign M12_AXI_wdata[31:0] = Conn7_WDATA;
  assign M12_AXI_wstrb[3:0] = Conn7_WSTRB;
  assign M12_AXI_wvalid = Conn7_WVALID;
  assign M14_AXI_araddr[31:0] = Conn3_ARADDR;
  assign M14_AXI_arprot[2:0] = Conn3_ARPROT;
  assign M14_AXI_arvalid = Conn3_ARVALID;
  assign M14_AXI_awaddr[31:0] = Conn3_AWADDR;
  assign M14_AXI_awprot[2:0] = Conn3_AWPROT;
  assign M14_AXI_awvalid = Conn3_AWVALID;
  assign M14_AXI_bready = Conn3_BREADY;
  assign M14_AXI_rready = Conn3_RREADY;
  assign M14_AXI_wdata[31:0] = Conn3_WDATA;
  assign M14_AXI_wstrb[3:0] = Conn3_WSTRB;
  assign M14_AXI_wvalid = Conn3_WVALID;
  assign Net = m_aclk;
  assign fifo_wr_clk_1 = fifo_wr_clk;
  assign fifo_wr_data_0_1 = fifo_wr_data_0[15:0];
  assign fifo_wr_data_1_1 = fifo_wr_data_1[15:0];
  assign fifo_wr_xfer_req = AXI_DMA_fifo_wr_xfer_req;
  assign idelay_ref_clk_1 = idelay_ref_clk;
  design_1_AXI_C2C_0 AXI_C2C
       (.axi_c2c_m2s_intr_in(Concat_dout),
        .axi_c2c_phy_clk(Net),
        .axi_c2c_selio_rx_clk_in(AXI_TX_CLK_IN_1),
        .axi_c2c_selio_rx_data_in(AXI_TX_DATA_IN_1),
        .axi_c2c_selio_tx_clk_out(AXI_C2C_axi_c2c_selio_tx_clk_out),
        .axi_c2c_selio_tx_data_out(AXI_C2C_axi_c2c_selio_tx_data_out),
        .idelay_ref_clk(idelay_ref_clk_1),
        .m_axi_lite_aclk(Net),
        .m_axi_lite_araddr(AXI_C2C_m_axi_lite_ARADDR),
        .m_axi_lite_arprot(AXI_C2C_m_axi_lite_ARPROT),
        .m_axi_lite_arready(AXI_C2C_m_axi_lite_ARREADY),
        .m_axi_lite_arvalid(AXI_C2C_m_axi_lite_ARVALID),
        .m_axi_lite_awaddr(AXI_C2C_m_axi_lite_AWADDR),
        .m_axi_lite_awprot(AXI_C2C_m_axi_lite_AWPROT),
        .m_axi_lite_awready(AXI_C2C_m_axi_lite_AWREADY),
        .m_axi_lite_awvalid(AXI_C2C_m_axi_lite_AWVALID),
        .m_axi_lite_bready(AXI_C2C_m_axi_lite_BREADY),
        .m_axi_lite_bresp(AXI_C2C_m_axi_lite_BRESP),
        .m_axi_lite_bvalid(AXI_C2C_m_axi_lite_BVALID),
        .m_axi_lite_rdata(AXI_C2C_m_axi_lite_RDATA),
        .m_axi_lite_rready(AXI_C2C_m_axi_lite_RREADY),
        .m_axi_lite_rresp(AXI_C2C_m_axi_lite_RRESP),
        .m_axi_lite_rvalid(AXI_C2C_m_axi_lite_RVALID),
        .m_axi_lite_wdata(AXI_C2C_m_axi_lite_WDATA),
        .m_axi_lite_wready(AXI_C2C_m_axi_lite_WREADY),
        .m_axi_lite_wstrb(AXI_C2C_m_axi_lite_WSTRB),
        .m_axi_lite_wvalid(AXI_C2C_m_axi_lite_WVALID),
        .s_aclk(Net),
        .s_aresetn(M12_ARESETN_1),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b1}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b1,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,AXI_DMA_m_dest_axi_AWADDR}),
        .s_axi_awburst(AXI_DMA_m_dest_axi_AWBURST),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen(AXI_DMA_m_dest_axi_AWLEN),
        .s_axi_awready(AXI_DMA_m_dest_axi_AWREADY),
        .s_axi_awsize(AXI_DMA_m_dest_axi_AWSIZE),
        .s_axi_awvalid(AXI_DMA_m_dest_axi_AWVALID),
        .s_axi_bready(AXI_DMA_m_dest_axi_BREADY),
        .s_axi_bresp(AXI_DMA_m_dest_axi_BRESP),
        .s_axi_bvalid(AXI_DMA_m_dest_axi_BVALID),
        .s_axi_rready(1'b0),
        .s_axi_wdata(AXI_DMA_m_dest_axi_WDATA),
        .s_axi_wlast(AXI_DMA_m_dest_axi_WLAST),
        .s_axi_wready(AXI_DMA_m_dest_axi_WREADY),
        .s_axi_wstrb(AXI_DMA_m_dest_axi_WSTRB),
        .s_axi_wvalid(AXI_DMA_m_dest_axi_WVALID));
  design_1_AXI_C2C_axi_periph_0 AXI_C2C_axi_periph
       (.ACLK(Net),
        .ARESETN(M12_ARESETN_1),
        .M00_ACLK(Net),
        .M00_ARESETN(M12_ARESETN_1),
        .M00_AXI_araddr(AXI_C2C_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arprot(AXI_C2C_axi_periph_M00_AXI_ARPROT),
        .M00_AXI_arready(AXI_C2C_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(AXI_C2C_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(AXI_C2C_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awprot(AXI_C2C_axi_periph_M00_AXI_AWPROT),
        .M00_AXI_awready(AXI_C2C_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(AXI_C2C_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(AXI_C2C_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(AXI_C2C_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(AXI_C2C_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(AXI_C2C_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(AXI_C2C_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(AXI_C2C_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(AXI_C2C_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(AXI_C2C_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(AXI_C2C_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(AXI_C2C_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(AXI_C2C_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(Net),
        .M01_ARESETN(M12_ARESETN_1),
        .M01_AXI_araddr(AXI_C2C_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arprot(AXI_C2C_axi_periph_M01_AXI_ARPROT),
        .M01_AXI_arready(AXI_C2C_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(AXI_C2C_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(AXI_C2C_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awprot(AXI_C2C_axi_periph_M01_AXI_AWPROT),
        .M01_AXI_awready(AXI_C2C_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(AXI_C2C_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(AXI_C2C_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(AXI_C2C_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(AXI_C2C_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(AXI_C2C_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(AXI_C2C_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(AXI_C2C_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(AXI_C2C_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(AXI_C2C_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(AXI_C2C_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(AXI_C2C_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(AXI_C2C_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(Net),
        .M02_ARESETN(M12_ARESETN_1),
        .M02_AXI_araddr(AXI_C2C_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arprot(AXI_C2C_axi_periph_M02_AXI_ARPROT),
        .M02_AXI_arready(AXI_C2C_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(AXI_C2C_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(AXI_C2C_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awprot(AXI_C2C_axi_periph_M02_AXI_AWPROT),
        .M02_AXI_awready(AXI_C2C_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(AXI_C2C_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(AXI_C2C_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(AXI_C2C_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(AXI_C2C_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(AXI_C2C_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rready(AXI_C2C_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(AXI_C2C_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(AXI_C2C_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(AXI_C2C_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wready(AXI_C2C_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wstrb(AXI_C2C_axi_periph_M02_AXI_WSTRB),
        .M02_AXI_wvalid(AXI_C2C_axi_periph_M02_AXI_WVALID),
        .M03_ACLK(Net),
        .M03_ARESETN(M12_ARESETN_1),
        .M03_AXI_araddr(AXI_C2C_axi_periph_M03_AXI_ARADDR),
        .M03_AXI_arprot(AXI_C2C_axi_periph_M03_AXI_ARPROT),
        .M03_AXI_arready(AXI_C2C_axi_periph_M03_AXI_ARREADY),
        .M03_AXI_arvalid(AXI_C2C_axi_periph_M03_AXI_ARVALID),
        .M03_AXI_awaddr(AXI_C2C_axi_periph_M03_AXI_AWADDR),
        .M03_AXI_awprot(AXI_C2C_axi_periph_M03_AXI_AWPROT),
        .M03_AXI_awready(AXI_C2C_axi_periph_M03_AXI_AWREADY),
        .M03_AXI_awvalid(AXI_C2C_axi_periph_M03_AXI_AWVALID),
        .M03_AXI_bready(AXI_C2C_axi_periph_M03_AXI_BREADY),
        .M03_AXI_bresp(AXI_C2C_axi_periph_M03_AXI_BRESP),
        .M03_AXI_bvalid(AXI_C2C_axi_periph_M03_AXI_BVALID),
        .M03_AXI_rdata(AXI_C2C_axi_periph_M03_AXI_RDATA),
        .M03_AXI_rready(AXI_C2C_axi_periph_M03_AXI_RREADY),
        .M03_AXI_rresp(AXI_C2C_axi_periph_M03_AXI_RRESP),
        .M03_AXI_rvalid(AXI_C2C_axi_periph_M03_AXI_RVALID),
        .M03_AXI_wdata(AXI_C2C_axi_periph_M03_AXI_WDATA),
        .M03_AXI_wready(AXI_C2C_axi_periph_M03_AXI_WREADY),
        .M03_AXI_wstrb(AXI_C2C_axi_periph_M03_AXI_WSTRB),
        .M03_AXI_wvalid(AXI_C2C_axi_periph_M03_AXI_WVALID),
        .M04_ACLK(Net),
        .M04_ARESETN(M12_ARESETN_1),
        .M04_AXI_araddr(AXI_C2C_axi_periph_M04_AXI_ARADDR),
        .M04_AXI_arprot(AXI_C2C_axi_periph_M04_AXI_ARPROT),
        .M04_AXI_arready(AXI_C2C_axi_periph_M04_AXI_ARREADY),
        .M04_AXI_arvalid(AXI_C2C_axi_periph_M04_AXI_ARVALID),
        .M04_AXI_awaddr(AXI_C2C_axi_periph_M04_AXI_AWADDR),
        .M04_AXI_awprot(AXI_C2C_axi_periph_M04_AXI_AWPROT),
        .M04_AXI_awready(AXI_C2C_axi_periph_M04_AXI_AWREADY),
        .M04_AXI_awvalid(AXI_C2C_axi_periph_M04_AXI_AWVALID),
        .M04_AXI_bready(AXI_C2C_axi_periph_M04_AXI_BREADY),
        .M04_AXI_bresp(AXI_C2C_axi_periph_M04_AXI_BRESP),
        .M04_AXI_bvalid(AXI_C2C_axi_periph_M04_AXI_BVALID),
        .M04_AXI_rdata(AXI_C2C_axi_periph_M04_AXI_RDATA),
        .M04_AXI_rready(AXI_C2C_axi_periph_M04_AXI_RREADY),
        .M04_AXI_rresp(AXI_C2C_axi_periph_M04_AXI_RRESP),
        .M04_AXI_rvalid(AXI_C2C_axi_periph_M04_AXI_RVALID),
        .M04_AXI_wdata(AXI_C2C_axi_periph_M04_AXI_WDATA),
        .M04_AXI_wready(AXI_C2C_axi_periph_M04_AXI_WREADY),
        .M04_AXI_wstrb(AXI_C2C_axi_periph_M04_AXI_WSTRB),
        .M04_AXI_wvalid(AXI_C2C_axi_periph_M04_AXI_WVALID),
        .M05_ACLK(Net),
        .M05_ARESETN(M12_ARESETN_1),
        .M05_AXI_araddr(Conn1_ARADDR),
        .M05_AXI_arprot(Conn1_ARPROT),
        .M05_AXI_arready(Conn1_ARREADY),
        .M05_AXI_arvalid(Conn1_ARVALID),
        .M05_AXI_awaddr(Conn1_AWADDR),
        .M05_AXI_awprot(Conn1_AWPROT),
        .M05_AXI_awready(Conn1_AWREADY),
        .M05_AXI_awvalid(Conn1_AWVALID),
        .M05_AXI_bready(Conn1_BREADY),
        .M05_AXI_bresp(Conn1_BRESP),
        .M05_AXI_bvalid(Conn1_BVALID),
        .M05_AXI_rdata(Conn1_RDATA),
        .M05_AXI_rready(Conn1_RREADY),
        .M05_AXI_rresp(Conn1_RRESP),
        .M05_AXI_rvalid(Conn1_RVALID),
        .M05_AXI_wdata(Conn1_WDATA),
        .M05_AXI_wready(Conn1_WREADY),
        .M05_AXI_wstrb(Conn1_WSTRB),
        .M05_AXI_wvalid(Conn1_WVALID),
        .M06_ACLK(Net),
        .M06_ARESETN(M12_ARESETN_1),
        .M06_AXI_araddr(AXI_C2C_axi_periph_M06_AXI_ARADDR),
        .M06_AXI_arprot(AXI_C2C_axi_periph_M06_AXI_ARPROT),
        .M06_AXI_arready(AXI_C2C_axi_periph_M06_AXI_ARREADY),
        .M06_AXI_arvalid(AXI_C2C_axi_periph_M06_AXI_ARVALID),
        .M06_AXI_awaddr(AXI_C2C_axi_periph_M06_AXI_AWADDR),
        .M06_AXI_awprot(AXI_C2C_axi_periph_M06_AXI_AWPROT),
        .M06_AXI_awready(AXI_C2C_axi_periph_M06_AXI_AWREADY),
        .M06_AXI_awvalid(AXI_C2C_axi_periph_M06_AXI_AWVALID),
        .M06_AXI_bready(AXI_C2C_axi_periph_M06_AXI_BREADY),
        .M06_AXI_bresp(AXI_C2C_axi_periph_M06_AXI_BRESP),
        .M06_AXI_bvalid(AXI_C2C_axi_periph_M06_AXI_BVALID),
        .M06_AXI_rdata(AXI_C2C_axi_periph_M06_AXI_RDATA),
        .M06_AXI_rready(AXI_C2C_axi_periph_M06_AXI_RREADY),
        .M06_AXI_rresp(AXI_C2C_axi_periph_M06_AXI_RRESP),
        .M06_AXI_rvalid(AXI_C2C_axi_periph_M06_AXI_RVALID),
        .M06_AXI_wdata(AXI_C2C_axi_periph_M06_AXI_WDATA),
        .M06_AXI_wready(AXI_C2C_axi_periph_M06_AXI_WREADY),
        .M06_AXI_wstrb(AXI_C2C_axi_periph_M06_AXI_WSTRB),
        .M06_AXI_wvalid(AXI_C2C_axi_periph_M06_AXI_WVALID),
        .M07_ACLK(Net),
        .M07_ARESETN(M12_ARESETN_1),
        .M07_AXI_araddr(Conn2_ARADDR),
        .M07_AXI_arprot(Conn2_ARPROT),
        .M07_AXI_arready(Conn2_ARREADY),
        .M07_AXI_arvalid(Conn2_ARVALID),
        .M07_AXI_awaddr(Conn2_AWADDR),
        .M07_AXI_awprot(Conn2_AWPROT),
        .M07_AXI_awready(Conn2_AWREADY),
        .M07_AXI_awvalid(Conn2_AWVALID),
        .M07_AXI_bready(Conn2_BREADY),
        .M07_AXI_bresp(Conn2_BRESP),
        .M07_AXI_bvalid(Conn2_BVALID),
        .M07_AXI_rdata(Conn2_RDATA),
        .M07_AXI_rready(Conn2_RREADY),
        .M07_AXI_rresp(Conn2_RRESP),
        .M07_AXI_rvalid(Conn2_RVALID),
        .M07_AXI_wdata(Conn2_WDATA),
        .M07_AXI_wready(Conn2_WREADY),
        .M07_AXI_wstrb(Conn2_WSTRB),
        .M07_AXI_wvalid(Conn2_WVALID),
        .M08_ACLK(Net),
        .M08_ARESETN(M12_ARESETN_1),
        .M08_AXI_araddr(Conn4_ARADDR),
        .M08_AXI_arprot(Conn4_ARPROT),
        .M08_AXI_arready(Conn4_ARREADY),
        .M08_AXI_arvalid(Conn4_ARVALID),
        .M08_AXI_awaddr(Conn4_AWADDR),
        .M08_AXI_awprot(Conn4_AWPROT),
        .M08_AXI_awready(Conn4_AWREADY),
        .M08_AXI_awvalid(Conn4_AWVALID),
        .M08_AXI_bready(Conn4_BREADY),
        .M08_AXI_bresp(Conn4_BRESP),
        .M08_AXI_bvalid(Conn4_BVALID),
        .M08_AXI_rdata(Conn4_RDATA),
        .M08_AXI_rready(Conn4_RREADY),
        .M08_AXI_rresp(Conn4_RRESP),
        .M08_AXI_rvalid(Conn4_RVALID),
        .M08_AXI_wdata(Conn4_WDATA),
        .M08_AXI_wready(Conn4_WREADY),
        .M08_AXI_wstrb(Conn4_WSTRB),
        .M08_AXI_wvalid(Conn4_WVALID),
        .M09_ACLK(Net),
        .M09_ARESETN(M12_ARESETN_1),
        .M09_AXI_araddr(Conn5_ARADDR),
        .M09_AXI_arprot(Conn5_ARPROT),
        .M09_AXI_arready(Conn5_ARREADY),
        .M09_AXI_arvalid(Conn5_ARVALID),
        .M09_AXI_awaddr(Conn5_AWADDR),
        .M09_AXI_awprot(Conn5_AWPROT),
        .M09_AXI_awready(Conn5_AWREADY),
        .M09_AXI_awvalid(Conn5_AWVALID),
        .M09_AXI_bready(Conn5_BREADY),
        .M09_AXI_bresp(Conn5_BRESP),
        .M09_AXI_bvalid(Conn5_BVALID),
        .M09_AXI_rdata(Conn5_RDATA),
        .M09_AXI_rready(Conn5_RREADY),
        .M09_AXI_rresp(Conn5_RRESP),
        .M09_AXI_rvalid(Conn5_RVALID),
        .M09_AXI_wdata(Conn5_WDATA),
        .M09_AXI_wready(Conn5_WREADY),
        .M09_AXI_wstrb(Conn5_WSTRB),
        .M09_AXI_wvalid(Conn5_WVALID),
        .M10_ACLK(Net),
        .M10_ARESETN(M12_ARESETN_1),
        .M10_AXI_araddr(Conn6_ARADDR),
        .M10_AXI_arprot(Conn6_ARPROT),
        .M10_AXI_arready(Conn6_ARREADY),
        .M10_AXI_arvalid(Conn6_ARVALID),
        .M10_AXI_awaddr(Conn6_AWADDR),
        .M10_AXI_awprot(Conn6_AWPROT),
        .M10_AXI_awready(Conn6_AWREADY),
        .M10_AXI_awvalid(Conn6_AWVALID),
        .M10_AXI_bready(Conn6_BREADY),
        .M10_AXI_bresp(Conn6_BRESP),
        .M10_AXI_bvalid(Conn6_BVALID),
        .M10_AXI_rdata(Conn6_RDATA),
        .M10_AXI_rready(Conn6_RREADY),
        .M10_AXI_rresp(Conn6_RRESP),
        .M10_AXI_rvalid(Conn6_RVALID),
        .M10_AXI_wdata(Conn6_WDATA),
        .M10_AXI_wready(Conn6_WREADY),
        .M10_AXI_wstrb(Conn6_WSTRB),
        .M10_AXI_wvalid(Conn6_WVALID),
        .M11_ACLK(Net),
        .M11_ARESETN(M12_ARESETN_1),
        .M11_AXI_araddr(AXI_C2C_axi_periph_M11_AXI_ARADDR),
        .M11_AXI_arready(AXI_C2C_axi_periph_M11_AXI_ARREADY),
        .M11_AXI_arvalid(AXI_C2C_axi_periph_M11_AXI_ARVALID),
        .M11_AXI_awaddr(AXI_C2C_axi_periph_M11_AXI_AWADDR),
        .M11_AXI_awready(AXI_C2C_axi_periph_M11_AXI_AWREADY),
        .M11_AXI_awvalid(AXI_C2C_axi_periph_M11_AXI_AWVALID),
        .M11_AXI_bready(AXI_C2C_axi_periph_M11_AXI_BREADY),
        .M11_AXI_bresp(AXI_C2C_axi_periph_M11_AXI_BRESP),
        .M11_AXI_bvalid(AXI_C2C_axi_periph_M11_AXI_BVALID),
        .M11_AXI_rdata(AXI_C2C_axi_periph_M11_AXI_RDATA),
        .M11_AXI_rready(AXI_C2C_axi_periph_M11_AXI_RREADY),
        .M11_AXI_rresp(AXI_C2C_axi_periph_M11_AXI_RRESP),
        .M11_AXI_rvalid(AXI_C2C_axi_periph_M11_AXI_RVALID),
        .M11_AXI_wdata(AXI_C2C_axi_periph_M11_AXI_WDATA),
        .M11_AXI_wready(AXI_C2C_axi_periph_M11_AXI_WREADY),
        .M11_AXI_wstrb(AXI_C2C_axi_periph_M11_AXI_WSTRB),
        .M11_AXI_wvalid(AXI_C2C_axi_periph_M11_AXI_WVALID),
        .M12_ACLK(Net),
        .M12_ARESETN(M12_ARESETN_1),
        .M12_AXI_araddr(Conn7_ARADDR),
        .M12_AXI_arready(Conn7_ARREADY),
        .M12_AXI_arvalid(Conn7_ARVALID),
        .M12_AXI_awaddr(Conn7_AWADDR),
        .M12_AXI_awready(Conn7_AWREADY),
        .M12_AXI_awvalid(Conn7_AWVALID),
        .M12_AXI_bready(Conn7_BREADY),
        .M12_AXI_bresp(Conn7_BRESP),
        .M12_AXI_bvalid(Conn7_BVALID),
        .M12_AXI_rdata(Conn7_RDATA),
        .M12_AXI_rready(Conn7_RREADY),
        .M12_AXI_rresp(Conn7_RRESP),
        .M12_AXI_rvalid(Conn7_RVALID),
        .M12_AXI_wdata(Conn7_WDATA),
        .M12_AXI_wready(Conn7_WREADY),
        .M12_AXI_wstrb(Conn7_WSTRB),
        .M12_AXI_wvalid(Conn7_WVALID),
        .M13_ACLK(Net),
        .M13_ARESETN(M12_ARESETN_1),
        .M13_AXI_arready(1'b0),
        .M13_AXI_awready(1'b0),
        .M13_AXI_bresp(1'b0),
        .M13_AXI_bvalid(1'b0),
        .M13_AXI_rdata(1'b0),
        .M13_AXI_rresp(1'b0),
        .M13_AXI_rvalid(1'b0),
        .M13_AXI_wready(1'b0),
        .M14_ACLK(Net),
        .M14_ARESETN(M12_ARESETN_1),
        .M14_AXI_araddr(Conn3_ARADDR),
        .M14_AXI_arprot(Conn3_ARPROT),
        .M14_AXI_arready(Conn3_ARREADY),
        .M14_AXI_arvalid(Conn3_ARVALID),
        .M14_AXI_awaddr(Conn3_AWADDR),
        .M14_AXI_awprot(Conn3_AWPROT),
        .M14_AXI_awready(Conn3_AWREADY),
        .M14_AXI_awvalid(Conn3_AWVALID),
        .M14_AXI_bready(Conn3_BREADY),
        .M14_AXI_bresp(Conn3_BRESP),
        .M14_AXI_bvalid(Conn3_BVALID),
        .M14_AXI_rdata(Conn3_RDATA),
        .M14_AXI_rready(Conn3_RREADY),
        .M14_AXI_rresp(Conn3_RRESP),
        .M14_AXI_rvalid(Conn3_RVALID),
        .M14_AXI_wdata(Conn3_WDATA),
        .M14_AXI_wready(Conn3_WREADY),
        .M14_AXI_wstrb(Conn3_WSTRB),
        .M14_AXI_wvalid(Conn3_WVALID),
        .M15_ACLK(Net),
        .M15_ARESETN(M12_ARESETN_1),
        .M15_AXI_arready(1'b0),
        .M15_AXI_awready(1'b0),
        .M15_AXI_bresp(1'b0),
        .M15_AXI_bvalid(1'b0),
        .M15_AXI_rdata(1'b0),
        .M15_AXI_rresp(1'b0),
        .M15_AXI_rvalid(1'b0),
        .M15_AXI_wready(1'b0),
        .S00_ACLK(Net),
        .S00_ARESETN(M12_ARESETN_1),
        .S00_AXI_araddr(AXI_C2C_m_axi_lite_ARADDR),
        .S00_AXI_arprot(AXI_C2C_m_axi_lite_ARPROT),
        .S00_AXI_arready(AXI_C2C_m_axi_lite_ARREADY),
        .S00_AXI_arvalid(AXI_C2C_m_axi_lite_ARVALID),
        .S00_AXI_awaddr(AXI_C2C_m_axi_lite_AWADDR),
        .S00_AXI_awprot(AXI_C2C_m_axi_lite_AWPROT),
        .S00_AXI_awready(AXI_C2C_m_axi_lite_AWREADY),
        .S00_AXI_awvalid(AXI_C2C_m_axi_lite_AWVALID),
        .S00_AXI_bready(AXI_C2C_m_axi_lite_BREADY),
        .S00_AXI_bresp(AXI_C2C_m_axi_lite_BRESP),
        .S00_AXI_bvalid(AXI_C2C_m_axi_lite_BVALID),
        .S00_AXI_rdata(AXI_C2C_m_axi_lite_RDATA),
        .S00_AXI_rready(AXI_C2C_m_axi_lite_RREADY),
        .S00_AXI_rresp(AXI_C2C_m_axi_lite_RRESP),
        .S00_AXI_rvalid(AXI_C2C_m_axi_lite_RVALID),
        .S00_AXI_wdata(AXI_C2C_m_axi_lite_WDATA),
        .S00_AXI_wready(AXI_C2C_m_axi_lite_WREADY),
        .S00_AXI_wstrb(AXI_C2C_m_axi_lite_WSTRB),
        .S00_AXI_wvalid(AXI_C2C_m_axi_lite_WVALID));
  design_1_AXI_DMA_0 AXI_DMA
       (.fifo_wr_clk(fifo_wr_clk_1),
        .fifo_wr_din(xlconcat_1_dout),
        .fifo_wr_en(VCC_dout),
        .fifo_wr_sync(VCC_dout),
        .fifo_wr_xfer_req(AXI_DMA_fifo_wr_xfer_req),
        .irq(axi_dmac_0_irq),
        .m_dest_axi_aclk(Net),
        .m_dest_axi_aresetn(M12_ARESETN_1),
        .m_dest_axi_awaddr(AXI_DMA_m_dest_axi_AWADDR),
        .m_dest_axi_awburst(AXI_DMA_m_dest_axi_AWBURST),
        .m_dest_axi_awlen(AXI_DMA_m_dest_axi_AWLEN),
        .m_dest_axi_awready(AXI_DMA_m_dest_axi_AWREADY),
        .m_dest_axi_awsize(AXI_DMA_m_dest_axi_AWSIZE),
        .m_dest_axi_awvalid(AXI_DMA_m_dest_axi_AWVALID),
        .m_dest_axi_bready(AXI_DMA_m_dest_axi_BREADY),
        .m_dest_axi_bresp(AXI_DMA_m_dest_axi_BRESP),
        .m_dest_axi_bvalid(AXI_DMA_m_dest_axi_BVALID),
        .m_dest_axi_wdata(AXI_DMA_m_dest_axi_WDATA),
        .m_dest_axi_wlast(AXI_DMA_m_dest_axi_WLAST),
        .m_dest_axi_wready(AXI_DMA_m_dest_axi_WREADY),
        .m_dest_axi_wstrb(AXI_DMA_m_dest_axi_WSTRB),
        .m_dest_axi_wvalid(AXI_DMA_m_dest_axi_WVALID),
        .s_axi_aclk(Net),
        .s_axi_araddr(AXI_C2C_axi_periph_M04_AXI_ARADDR[10:0]),
        .s_axi_aresetn(M12_ARESETN_1),
        .s_axi_arprot(AXI_C2C_axi_periph_M04_AXI_ARPROT),
        .s_axi_arready(AXI_C2C_axi_periph_M04_AXI_ARREADY),
        .s_axi_arvalid(AXI_C2C_axi_periph_M04_AXI_ARVALID),
        .s_axi_awaddr(AXI_C2C_axi_periph_M04_AXI_AWADDR[10:0]),
        .s_axi_awprot(AXI_C2C_axi_periph_M04_AXI_AWPROT),
        .s_axi_awready(AXI_C2C_axi_periph_M04_AXI_AWREADY),
        .s_axi_awvalid(AXI_C2C_axi_periph_M04_AXI_AWVALID),
        .s_axi_bready(AXI_C2C_axi_periph_M04_AXI_BREADY),
        .s_axi_bresp(AXI_C2C_axi_periph_M04_AXI_BRESP),
        .s_axi_bvalid(AXI_C2C_axi_periph_M04_AXI_BVALID),
        .s_axi_rdata(AXI_C2C_axi_periph_M04_AXI_RDATA),
        .s_axi_rready(AXI_C2C_axi_periph_M04_AXI_RREADY),
        .s_axi_rresp(AXI_C2C_axi_periph_M04_AXI_RRESP),
        .s_axi_rvalid(AXI_C2C_axi_periph_M04_AXI_RVALID),
        .s_axi_wdata(AXI_C2C_axi_periph_M04_AXI_WDATA),
        .s_axi_wready(AXI_C2C_axi_periph_M04_AXI_WREADY),
        .s_axi_wstrb(AXI_C2C_axi_periph_M04_AXI_WSTRB),
        .s_axi_wvalid(AXI_C2C_axi_periph_M04_AXI_WVALID));
  design_1_Concat_0 Concat
       (.In0(In0_1),
        .In1(axi_dmac_0_irq),
        .In2(GND_dout),
        .In3(GND_dout),
        .dout(Concat_dout));
  design_1_GND_0 GND
       (.dout(GND_dout));
  design_1_VCC_0 VCC
       (.dout(VCC_dout));
  design_1_xlconcat_1_0 xlconcat_1
       (.In0(fifo_wr_data_0_1),
        .In1(fifo_wr_data_1_1),
        .dout(xlconcat_1_dout));
endmodule

module CLK_AXI_imp_ROVM9
   (FPGA_REF_40MHZ,
    axi_periph_clk,
    delay_clk,
    out_ref,
    peripheral_aresetn,
    reset_n);
  input FPGA_REF_40MHZ;
  output axi_periph_clk;
  output delay_clk;
  output out_ref;
  output [0:0]peripheral_aresetn;
  output reset_n;

  wire FPGA_REF_40MHZ_1;
  wire FPGA_reset_0_reset_n;
  wire clk_wiz_0_axi_periph_clk;
  wire clk_wiz_0_delay_clk;
  wire clk_wiz_0_locked;
  wire ibuf_0_out_ref;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;

  assign FPGA_REF_40MHZ_1 = FPGA_REF_40MHZ;
  assign axi_periph_clk = clk_wiz_0_axi_periph_clk;
  assign delay_clk = clk_wiz_0_delay_clk;
  assign out_ref = ibuf_0_out_ref;
  assign peripheral_aresetn[0] = proc_sys_reset_0_peripheral_aresetn;
  assign reset_n = FPGA_reset_0_reset_n;
  design_1_AXI_reset_0 AXI_reset
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(FPGA_reset_0_reset_n),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_axi_periph_clk));
  design_1_CLK_COMMON_0 CLK_COMMON
       (.axi_periph_clk(clk_wiz_0_axi_periph_clk),
        .clk_in1(ibuf_0_out_ref),
        .delay_clk(clk_wiz_0_delay_clk),
        .locked(clk_wiz_0_locked));
  design_1_FPGA_reset_0 FPGA_reset
       (.clk(clk_wiz_0_axi_periph_clk),
        .locked(clk_wiz_0_locked),
        .reset_n(FPGA_reset_0_reset_n));
  design_1_ibuf_0_0 ibuf_0
       (.in_ref(FPGA_REF_40MHZ_1),
        .out_ref(ibuf_0_out_ref));
endmodule

module SPI_MOD_imp_NH4T3P
   (AXI_LITE_araddr,
    AXI_LITE_arready,
    AXI_LITE_arvalid,
    AXI_LITE_awaddr,
    AXI_LITE_awready,
    AXI_LITE_awvalid,
    AXI_LITE_bready,
    AXI_LITE_bresp,
    AXI_LITE_bvalid,
    AXI_LITE_rdata,
    AXI_LITE_rready,
    AXI_LITE_rresp,
    AXI_LITE_rvalid,
    AXI_LITE_wdata,
    AXI_LITE_wready,
    AXI_LITE_wstrb,
    AXI_LITE_wvalid,
    F1956_SPI_CLK,
    F1956_SPI_CS,
    F1956_SPI_DI,
    ad9361_SPI_CLK_1,
    ad9361_SPI_CS_1,
    ad9361_SPI_CS_2,
    ad9361_SPI_CS_3,
    ad9361_SPI_DI_1,
    ad9361_SPI_DO_1,
    ad9361_SPI_DO_2,
    ad9361_SPI_DO_3,
    ad9364_SPI_CS,
    ad9364_SPI_DO,
    ip2intc_irpt,
    s_axi4_aclk,
    s_axi4_aresetn);
  input [31:0]AXI_LITE_araddr;
  output AXI_LITE_arready;
  input AXI_LITE_arvalid;
  input [31:0]AXI_LITE_awaddr;
  output AXI_LITE_awready;
  input AXI_LITE_awvalid;
  input AXI_LITE_bready;
  output [1:0]AXI_LITE_bresp;
  output AXI_LITE_bvalid;
  output [31:0]AXI_LITE_rdata;
  input AXI_LITE_rready;
  output [1:0]AXI_LITE_rresp;
  output AXI_LITE_rvalid;
  input [31:0]AXI_LITE_wdata;
  output AXI_LITE_wready;
  input [3:0]AXI_LITE_wstrb;
  input AXI_LITE_wvalid;
  output F1956_SPI_CLK;
  output [0:0]F1956_SPI_CS;
  output F1956_SPI_DI;
  output ad9361_SPI_CLK_1;
  output [0:0]ad9361_SPI_CS_1;
  output [0:0]ad9361_SPI_CS_2;
  output [0:0]ad9361_SPI_CS_3;
  output ad9361_SPI_DI_1;
  input ad9361_SPI_DO_1;
  input ad9361_SPI_DO_2;
  input ad9361_SPI_DO_3;
  output [0:0]ad9364_SPI_CS;
  input ad9364_SPI_DO;
  output ip2intc_irpt;
  input s_axi4_aclk;
  input s_axi4_aresetn;

  wire [31:0]AXI_LITE_1_ARADDR;
  wire AXI_LITE_1_ARREADY;
  wire AXI_LITE_1_ARVALID;
  wire [31:0]AXI_LITE_1_AWADDR;
  wire AXI_LITE_1_AWREADY;
  wire AXI_LITE_1_AWVALID;
  wire AXI_LITE_1_BREADY;
  wire [1:0]AXI_LITE_1_BRESP;
  wire AXI_LITE_1_BVALID;
  wire [31:0]AXI_LITE_1_RDATA;
  wire AXI_LITE_1_RREADY;
  wire [1:0]AXI_LITE_1_RRESP;
  wire AXI_LITE_1_RVALID;
  wire [31:0]AXI_LITE_1_WDATA;
  wire AXI_LITE_1_WREADY;
  wire [3:0]AXI_LITE_1_WSTRB;
  wire AXI_LITE_1_WVALID;
  wire SPI_MUX_miso_out;
  wire ad9361_SPI_DO_1_1;
  wire ad9361_SPI_DO_2_1;
  wire ad9361_SPI_DO_3_1;
  wire ad9364_SPI_DO_1;
  wire axi_spi_io0_o;
  wire axi_spi_ip2intc_irpt;
  wire axi_spi_sck_o;
  wire [4:0]axi_spi_ss_o;
  wire [0:0]cs_0_Dout;
  wire [0:0]cs_1_Dout;
  wire [0:0]cs_2_Dout;
  wire [0:0]cs_3_Dout;
  wire [0:0]cs_4_Dout;
  wire on_off_f1956_clk_data_out;
  wire on_off_f1956_data_data_out;
  wire s_axi4_aclk_1;
  wire s_axi4_aresetn_1;

  assign AXI_LITE_1_ARADDR = AXI_LITE_araddr[31:0];
  assign AXI_LITE_1_ARVALID = AXI_LITE_arvalid;
  assign AXI_LITE_1_AWADDR = AXI_LITE_awaddr[31:0];
  assign AXI_LITE_1_AWVALID = AXI_LITE_awvalid;
  assign AXI_LITE_1_BREADY = AXI_LITE_bready;
  assign AXI_LITE_1_RREADY = AXI_LITE_rready;
  assign AXI_LITE_1_WDATA = AXI_LITE_wdata[31:0];
  assign AXI_LITE_1_WSTRB = AXI_LITE_wstrb[3:0];
  assign AXI_LITE_1_WVALID = AXI_LITE_wvalid;
  assign AXI_LITE_arready = AXI_LITE_1_ARREADY;
  assign AXI_LITE_awready = AXI_LITE_1_AWREADY;
  assign AXI_LITE_bresp[1:0] = AXI_LITE_1_BRESP;
  assign AXI_LITE_bvalid = AXI_LITE_1_BVALID;
  assign AXI_LITE_rdata[31:0] = AXI_LITE_1_RDATA;
  assign AXI_LITE_rresp[1:0] = AXI_LITE_1_RRESP;
  assign AXI_LITE_rvalid = AXI_LITE_1_RVALID;
  assign AXI_LITE_wready = AXI_LITE_1_WREADY;
  assign F1956_SPI_CLK = on_off_f1956_clk_data_out;
  assign F1956_SPI_CS[0] = cs_4_Dout;
  assign F1956_SPI_DI = on_off_f1956_data_data_out;
  assign ad9361_SPI_CLK_1 = axi_spi_sck_o;
  assign ad9361_SPI_CS_1[0] = cs_0_Dout;
  assign ad9361_SPI_CS_2[0] = cs_1_Dout;
  assign ad9361_SPI_CS_3[0] = cs_2_Dout;
  assign ad9361_SPI_DI_1 = axi_spi_io0_o;
  assign ad9361_SPI_DO_1_1 = ad9361_SPI_DO_1;
  assign ad9361_SPI_DO_2_1 = ad9361_SPI_DO_2;
  assign ad9361_SPI_DO_3_1 = ad9361_SPI_DO_3;
  assign ad9364_SPI_CS[0] = cs_3_Dout;
  assign ad9364_SPI_DO_1 = ad9364_SPI_DO;
  assign ip2intc_irpt = axi_spi_ip2intc_irpt;
  assign s_axi4_aclk_1 = s_axi4_aclk;
  assign s_axi4_aresetn_1 = s_axi4_aresetn;
  design_1_SPI_MUX_0 SPI_MUX
       (.code(axi_spi_ss_o),
        .miso_in_0(ad9361_SPI_DO_1_1),
        .miso_in_1(ad9361_SPI_DO_2_1),
        .miso_in_2(ad9361_SPI_DO_3_1),
        .miso_in_3(ad9364_SPI_DO_1),
        .miso_out(SPI_MUX_miso_out));
  design_1_axi_spi_0 axi_spi
       (.ext_spi_clk(s_axi4_aclk_1),
        .io0_i(1'b0),
        .io0_o(axi_spi_io0_o),
        .io1_i(SPI_MUX_miso_out),
        .ip2intc_irpt(axi_spi_ip2intc_irpt),
        .s_axi_aclk(s_axi4_aclk_1),
        .s_axi_araddr(AXI_LITE_1_ARADDR[6:0]),
        .s_axi_aresetn(s_axi4_aresetn_1),
        .s_axi_arready(AXI_LITE_1_ARREADY),
        .s_axi_arvalid(AXI_LITE_1_ARVALID),
        .s_axi_awaddr(AXI_LITE_1_AWADDR[6:0]),
        .s_axi_awready(AXI_LITE_1_AWREADY),
        .s_axi_awvalid(AXI_LITE_1_AWVALID),
        .s_axi_bready(AXI_LITE_1_BREADY),
        .s_axi_bresp(AXI_LITE_1_BRESP),
        .s_axi_bvalid(AXI_LITE_1_BVALID),
        .s_axi_rdata(AXI_LITE_1_RDATA),
        .s_axi_rready(AXI_LITE_1_RREADY),
        .s_axi_rresp(AXI_LITE_1_RRESP),
        .s_axi_rvalid(AXI_LITE_1_RVALID),
        .s_axi_wdata(AXI_LITE_1_WDATA),
        .s_axi_wready(AXI_LITE_1_WREADY),
        .s_axi_wstrb(AXI_LITE_1_WSTRB),
        .s_axi_wvalid(AXI_LITE_1_WVALID),
        .sck_i(1'b0),
        .sck_o(axi_spi_sck_o),
        .ss_i({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ss_o(axi_spi_ss_o));
  design_1_cs_0_0 cs_0
       (.Din(axi_spi_ss_o),
        .Dout(cs_0_Dout));
  design_1_cs_1_0 cs_1
       (.Din(axi_spi_ss_o),
        .Dout(cs_1_Dout));
  design_1_cs_2_0 cs_2
       (.Din(axi_spi_ss_o),
        .Dout(cs_2_Dout));
  design_1_cs_3_0 cs_3
       (.Din(axi_spi_ss_o),
        .Dout(cs_3_Dout));
  design_1_cs_4_0 cs_4
       (.Din(axi_spi_ss_o),
        .Dout(cs_4_Dout));
  design_1_on_off_f1956_clk_0 on_off_f1956_clk
       (.data_in(axi_spi_sck_o),
        .data_out(on_off_f1956_clk_data_out),
        .mode(cs_4_Dout));
  design_1_on_off_f1956_data_0 on_off_f1956_data
       (.data_in(axi_spi_io0_o),
        .data_out(on_off_f1956_data_data_out),
        .mode(cs_4_Dout));
endmodule

module ad9361_clk_imp_1I4OLDI
   (FPGA_REF_40MHZ,
    clk_out,
    clk_out1,
    ext_reset_in,
    peripheral_aresetn,
    peripheral_aresetn1,
    peripheral_reset,
    sample_rate_30);
  input FPGA_REF_40MHZ;
  output [0:0]clk_out;
  output [0:0]clk_out1;
  input ext_reset_in;
  output [0:0]peripheral_aresetn;
  output [0:0]peripheral_aresetn1;
  output [0:0]peripheral_reset;
  output [0:0]sample_rate_30;

  wire [0:0]DATA_rst_peripheral_reset;
  wire FPGA_REF_40MHZ_1;
  wire clk_DSP_data_rate;
  wire clk_DSP_locked;
  wire [0:0]divclk_61_rst_peripheral_aresetn;
  wire ext_reset_in_1;

  assign FPGA_REF_40MHZ_1 = FPGA_REF_40MHZ;
  assign clk_out[0] = clk_DSP_data_rate;
  assign clk_out1[0] = clk_DSP_data_rate;
  assign ext_reset_in_1 = ext_reset_in;
  assign peripheral_aresetn[0] = divclk_61_rst_peripheral_aresetn;
  assign peripheral_aresetn1[0] = divclk_61_rst_peripheral_aresetn;
  assign peripheral_reset[0] = DATA_rst_peripheral_reset;
  assign sample_rate_30[0] = clk_DSP_data_rate;
  design_1_DATA_rst_0 DATA_rst
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_DSP_locked),
        .ext_reset_in(ext_reset_in_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(divclk_61_rst_peripheral_aresetn),
        .peripheral_reset(DATA_rst_peripheral_reset),
        .slowest_sync_clk(clk_DSP_data_rate));
  design_1_clk_DSP_0 clk_DSP
       (.clk_in1(FPGA_REF_40MHZ_1),
        .locked(clk_DSP_locked),
        .sample_rate_30_72(clk_DSP_data_rate));
endmodule

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=91,numReposBlks=64,numNonXlnxBlks=14,numHierBlks=27,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=18,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=91,da_board_cnt=5,da_clkrst_cnt=25,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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

  wire [0:0]AD9361_CTRL_clk_out1;
  wire [15:0]AD9361_CTRL_dout_data_4;
  wire [15:0]AD9361_CTRL_dout_data_5;
  wire [0:0]AD9361_CTRL_peripheral_aresetn1;
  wire [0:0]AD9361_ctrl_data_rate;
  wire AD9364_ad9361_FB_CLK_P;
  wire AD9364_ad9364_EN;
  wire AD9364_ad9364_FB_CLK_N;
  wire [5:0]AD9364_ad9364_P0_N;
  wire [5:0]AD9364_ad9364_P0_P;
  wire AD9364_ad9364_TXNRX;
  wire AD9364_ad9364_TX_FRAME_N1;
  wire AD9364_ad9364_TX_FRAME_P1;
  wire AXI_Peripheral_AXI_RX_CLK_OUT;
  wire [16:0]AXI_Peripheral_AXI_RX_DATA_OUT;
  wire [31:0]AXI_Peripheral_M00_AXI_ARADDR;
  wire [2:0]AXI_Peripheral_M00_AXI_ARPROT;
  wire AXI_Peripheral_M00_AXI_ARREADY;
  wire AXI_Peripheral_M00_AXI_ARVALID;
  wire [31:0]AXI_Peripheral_M00_AXI_AWADDR;
  wire [2:0]AXI_Peripheral_M00_AXI_AWPROT;
  wire AXI_Peripheral_M00_AXI_AWREADY;
  wire AXI_Peripheral_M00_AXI_AWVALID;
  wire AXI_Peripheral_M00_AXI_BREADY;
  wire [1:0]AXI_Peripheral_M00_AXI_BRESP;
  wire AXI_Peripheral_M00_AXI_BVALID;
  wire [31:0]AXI_Peripheral_M00_AXI_RDATA;
  wire AXI_Peripheral_M00_AXI_RREADY;
  wire [1:0]AXI_Peripheral_M00_AXI_RRESP;
  wire AXI_Peripheral_M00_AXI_RVALID;
  wire [31:0]AXI_Peripheral_M00_AXI_WDATA;
  wire AXI_Peripheral_M00_AXI_WREADY;
  wire [3:0]AXI_Peripheral_M00_AXI_WSTRB;
  wire AXI_Peripheral_M00_AXI_WVALID;
  wire [31:0]AXI_Peripheral_M01_AXI_ARADDR;
  wire [2:0]AXI_Peripheral_M01_AXI_ARPROT;
  wire AXI_Peripheral_M01_AXI_ARREADY;
  wire AXI_Peripheral_M01_AXI_ARVALID;
  wire [31:0]AXI_Peripheral_M01_AXI_AWADDR;
  wire [2:0]AXI_Peripheral_M01_AXI_AWPROT;
  wire AXI_Peripheral_M01_AXI_AWREADY;
  wire AXI_Peripheral_M01_AXI_AWVALID;
  wire AXI_Peripheral_M01_AXI_BREADY;
  wire [1:0]AXI_Peripheral_M01_AXI_BRESP;
  wire AXI_Peripheral_M01_AXI_BVALID;
  wire [31:0]AXI_Peripheral_M01_AXI_RDATA;
  wire AXI_Peripheral_M01_AXI_RREADY;
  wire [1:0]AXI_Peripheral_M01_AXI_RRESP;
  wire AXI_Peripheral_M01_AXI_RVALID;
  wire [31:0]AXI_Peripheral_M01_AXI_WDATA;
  wire AXI_Peripheral_M01_AXI_WREADY;
  wire [3:0]AXI_Peripheral_M01_AXI_WSTRB;
  wire AXI_Peripheral_M01_AXI_WVALID;
  wire [31:0]AXI_Peripheral_M02_AXI_ARADDR;
  wire [2:0]AXI_Peripheral_M02_AXI_ARPROT;
  wire AXI_Peripheral_M02_AXI_ARREADY;
  wire AXI_Peripheral_M02_AXI_ARVALID;
  wire [31:0]AXI_Peripheral_M02_AXI_AWADDR;
  wire [2:0]AXI_Peripheral_M02_AXI_AWPROT;
  wire AXI_Peripheral_M02_AXI_AWREADY;
  wire AXI_Peripheral_M02_AXI_AWVALID;
  wire AXI_Peripheral_M02_AXI_BREADY;
  wire [1:0]AXI_Peripheral_M02_AXI_BRESP;
  wire AXI_Peripheral_M02_AXI_BVALID;
  wire [31:0]AXI_Peripheral_M02_AXI_RDATA;
  wire AXI_Peripheral_M02_AXI_RREADY;
  wire [1:0]AXI_Peripheral_M02_AXI_RRESP;
  wire AXI_Peripheral_M02_AXI_RVALID;
  wire [31:0]AXI_Peripheral_M02_AXI_WDATA;
  wire AXI_Peripheral_M02_AXI_WREADY;
  wire [3:0]AXI_Peripheral_M02_AXI_WSTRB;
  wire AXI_Peripheral_M02_AXI_WVALID;
  wire [31:0]AXI_Peripheral_M03_AXI_ARADDR;
  wire [2:0]AXI_Peripheral_M03_AXI_ARPROT;
  wire AXI_Peripheral_M03_AXI_ARREADY;
  wire AXI_Peripheral_M03_AXI_ARVALID;
  wire [31:0]AXI_Peripheral_M03_AXI_AWADDR;
  wire [2:0]AXI_Peripheral_M03_AXI_AWPROT;
  wire AXI_Peripheral_M03_AXI_AWREADY;
  wire AXI_Peripheral_M03_AXI_AWVALID;
  wire AXI_Peripheral_M03_AXI_BREADY;
  wire [1:0]AXI_Peripheral_M03_AXI_BRESP;
  wire AXI_Peripheral_M03_AXI_BVALID;
  wire [31:0]AXI_Peripheral_M03_AXI_RDATA;
  wire AXI_Peripheral_M03_AXI_RREADY;
  wire [1:0]AXI_Peripheral_M03_AXI_RRESP;
  wire AXI_Peripheral_M03_AXI_RVALID;
  wire [31:0]AXI_Peripheral_M03_AXI_WDATA;
  wire AXI_Peripheral_M03_AXI_WREADY;
  wire [3:0]AXI_Peripheral_M03_AXI_WSTRB;
  wire AXI_Peripheral_M03_AXI_WVALID;
  wire [31:0]AXI_Peripheral_M04_AXI_ARADDR;
  wire [2:0]AXI_Peripheral_M04_AXI_ARPROT;
  wire AXI_Peripheral_M04_AXI_ARREADY;
  wire AXI_Peripheral_M04_AXI_ARVALID;
  wire [31:0]AXI_Peripheral_M04_AXI_AWADDR;
  wire [2:0]AXI_Peripheral_M04_AXI_AWPROT;
  wire AXI_Peripheral_M04_AXI_AWREADY;
  wire AXI_Peripheral_M04_AXI_AWVALID;
  wire AXI_Peripheral_M04_AXI_BREADY;
  wire [1:0]AXI_Peripheral_M04_AXI_BRESP;
  wire AXI_Peripheral_M04_AXI_BVALID;
  wire [31:0]AXI_Peripheral_M04_AXI_RDATA;
  wire AXI_Peripheral_M04_AXI_RREADY;
  wire [1:0]AXI_Peripheral_M04_AXI_RRESP;
  wire AXI_Peripheral_M04_AXI_RVALID;
  wire [31:0]AXI_Peripheral_M04_AXI_WDATA;
  wire AXI_Peripheral_M04_AXI_WREADY;
  wire [3:0]AXI_Peripheral_M04_AXI_WSTRB;
  wire AXI_Peripheral_M04_AXI_WVALID;
  wire [31:0]AXI_Peripheral_M06_AXI_ARADDR;
  wire AXI_Peripheral_M06_AXI_ARREADY;
  wire AXI_Peripheral_M06_AXI_ARVALID;
  wire [31:0]AXI_Peripheral_M06_AXI_AWADDR;
  wire AXI_Peripheral_M06_AXI_AWREADY;
  wire AXI_Peripheral_M06_AXI_AWVALID;
  wire AXI_Peripheral_M06_AXI_BREADY;
  wire [1:0]AXI_Peripheral_M06_AXI_BRESP;
  wire AXI_Peripheral_M06_AXI_BVALID;
  wire [31:0]AXI_Peripheral_M06_AXI_RDATA;
  wire AXI_Peripheral_M06_AXI_RREADY;
  wire [1:0]AXI_Peripheral_M06_AXI_RRESP;
  wire AXI_Peripheral_M06_AXI_RVALID;
  wire [31:0]AXI_Peripheral_M06_AXI_WDATA;
  wire AXI_Peripheral_M06_AXI_WREADY;
  wire [3:0]AXI_Peripheral_M06_AXI_WSTRB;
  wire AXI_Peripheral_M06_AXI_WVALID;
  wire [31:0]AXI_Peripheral_M10_AXI_ARADDR;
  wire [2:0]AXI_Peripheral_M10_AXI_ARPROT;
  wire AXI_Peripheral_M10_AXI_ARREADY;
  wire AXI_Peripheral_M10_AXI_ARVALID;
  wire [31:0]AXI_Peripheral_M10_AXI_AWADDR;
  wire [2:0]AXI_Peripheral_M10_AXI_AWPROT;
  wire AXI_Peripheral_M10_AXI_AWREADY;
  wire AXI_Peripheral_M10_AXI_AWVALID;
  wire AXI_Peripheral_M10_AXI_BREADY;
  wire [1:0]AXI_Peripheral_M10_AXI_BRESP;
  wire AXI_Peripheral_M10_AXI_BVALID;
  wire [31:0]AXI_Peripheral_M10_AXI_RDATA;
  wire AXI_Peripheral_M10_AXI_RREADY;
  wire [1:0]AXI_Peripheral_M10_AXI_RRESP;
  wire AXI_Peripheral_M10_AXI_RVALID;
  wire [31:0]AXI_Peripheral_M10_AXI_WDATA;
  wire AXI_Peripheral_M10_AXI_WREADY;
  wire [3:0]AXI_Peripheral_M10_AXI_WSTRB;
  wire AXI_Peripheral_M10_AXI_WVALID;
  wire [31:0]AXI_Peripheral_M12_AXI_ARADDR;
  wire AXI_Peripheral_M12_AXI_ARREADY;
  wire AXI_Peripheral_M12_AXI_ARVALID;
  wire [31:0]AXI_Peripheral_M12_AXI_AWADDR;
  wire AXI_Peripheral_M12_AXI_AWREADY;
  wire AXI_Peripheral_M12_AXI_AWVALID;
  wire AXI_Peripheral_M12_AXI_BREADY;
  wire [1:0]AXI_Peripheral_M12_AXI_BRESP;
  wire AXI_Peripheral_M12_AXI_BVALID;
  wire [31:0]AXI_Peripheral_M12_AXI_RDATA;
  wire AXI_Peripheral_M12_AXI_RREADY;
  wire [1:0]AXI_Peripheral_M12_AXI_RRESP;
  wire AXI_Peripheral_M12_AXI_RVALID;
  wire [31:0]AXI_Peripheral_M12_AXI_WDATA;
  wire AXI_Peripheral_M12_AXI_WREADY;
  wire [3:0]AXI_Peripheral_M12_AXI_WSTRB;
  wire AXI_Peripheral_M12_AXI_WVALID;
  wire [31:0]AXI_Peripheral_M14_AXI_ARADDR;
  wire [2:0]AXI_Peripheral_M14_AXI_ARPROT;
  wire AXI_Peripheral_M14_AXI_ARREADY;
  wire AXI_Peripheral_M14_AXI_ARVALID;
  wire [31:0]AXI_Peripheral_M14_AXI_AWADDR;
  wire [2:0]AXI_Peripheral_M14_AXI_AWPROT;
  wire AXI_Peripheral_M14_AXI_AWREADY;
  wire AXI_Peripheral_M14_AXI_AWVALID;
  wire AXI_Peripheral_M14_AXI_BREADY;
  wire [1:0]AXI_Peripheral_M14_AXI_BRESP;
  wire AXI_Peripheral_M14_AXI_BVALID;
  wire [31:0]AXI_Peripheral_M14_AXI_RDATA;
  wire AXI_Peripheral_M14_AXI_RREADY;
  wire [1:0]AXI_Peripheral_M14_AXI_RRESP;
  wire AXI_Peripheral_M14_AXI_RVALID;
  wire [31:0]AXI_Peripheral_M14_AXI_WDATA;
  wire AXI_Peripheral_M14_AXI_WREADY;
  wire [3:0]AXI_Peripheral_M14_AXI_WSTRB;
  wire AXI_Peripheral_M14_AXI_WVALID;
  wire AXI_Peripheral_fifo_wr_xfer_req;
  wire AXI_TX_CLK_IN_1;
  wire [16:0]AXI_TX_DATA_IN_1;
  wire Control_from_SOM_0_ad9361_1_en_agc;
  wire Control_from_SOM_0_ad9361_1_reset;
  wire Control_from_SOM_0_ad9361_2_en_agc;
  wire Control_from_SOM_0_ad9361_2_reset;
  wire Control_from_SOM_0_ad9361_3_en_agc;
  wire Control_from_SOM_0_ad9361_3_reset;
  wire Control_from_SOM_0_ad9364_en_agc;
  wire Control_from_SOM_0_ad9364_reset;
  wire Current_turning_off_0_fpga_en_28v_l1;
  wire Current_turning_off_0_fpga_en_28v_l2;
  wire Current_turning_off_0_fpga_en_28v_s1;
  wire Current_turning_off_0_fpga_en_28v_s2;
  wire Current_turning_off_0_fpga_en_28v_s3;
  wire Current_turning_off_0_fpga_en_28v_s4;
  wire Current_turning_off_0_fpga_en_5v_s;
  wire Current_turning_off_0_spi_cs_n_0;
  wire Current_turning_off_0_spi_cs_n_1;
  wire Current_turning_off_0_spi_mosi_0;
  wire Current_turning_off_0_spi_mosi_1;
  wire Current_turning_off_0_spi_sclk_0;
  wire Current_turning_off_0_spi_sclk_1;
  wire [5:0]DSP_ad9361_1_P0_N;
  wire [5:0]DSP_ad9361_1_P0_P;
  wire [5:0]DSP_ad9361_2_P0_N;
  wire [5:0]DSP_ad9361_2_P0_P;
  wire [5:0]DSP_ad9361_3_P0_N;
  wire [5:0]DSP_ad9361_3_P0_P;
  wire DSP_ad9361_EN_1;
  wire DSP_ad9361_EN_2;
  wire DSP_ad9361_EN_3;
  wire DSP_ad9361_FB_CLK_1_N;
  wire DSP_ad9361_FB_CLK_1_P;
  wire DSP_ad9361_FB_CLK_2_N;
  wire DSP_ad9361_FB_CLK_2_P;
  wire DSP_ad9361_FB_CLK_3_N;
  wire DSP_ad9361_FB_CLK_3_P;
  wire DSP_ad9361_TXNRX_1;
  wire DSP_ad9361_TXNRX_2;
  wire DSP_ad9361_TXNRX_3;
  wire DSP_ad9361_TX_FRAME1_N;
  wire DSP_ad9361_TX_FRAME1_P;
  wire DSP_ad9361_TX_FRAME2_N;
  wire DSP_ad9361_TX_FRAME2_P;
  wire DSP_ad9361_TX_FRAME3_N;
  wire DSP_ad9361_TX_FRAME3_P;
  wire [0:0]Decoder_SPI_0_num_cs_0;
  wire [0:0]Decoder_SPI_0_num_cs_1;
  wire [0:0]Decoder_SPI_0_num_cs_2;
  wire [0:0]Decoder_SPI_0_num_cs_3;
  wire FPGA_REF_40MHZ_1;
  wire IP_sync_0_LED_en;
  wire [11:0]IP_sync_0_sync_odat_im;
  wire [11:0]IP_sync_0_sync_odat_re;
  wire IP_sync_0_sync_osop;
  wire IP_sync_0_sync_osop_buff;
  wire IP_sync_0_sync_rdy_wr_buff;
  wire IP_sync_0_sync_str_frame;
  wire IP_sync_0_sync_trh_hold;
  wire IP_sync_0_sync_val_osop;
  wire IP_sync_0_sync_vrf_oval;
  wire Net;
  wire SPI_MOD_ip2intc_irpt;
  wire [5:0]ad9361_1_P1_N_1;
  wire [5:0]ad9361_1_P1_P_1;
  wire [5:0]ad9361_2_P1_N_1;
  wire [5:0]ad9361_2_P1_P_1;
  wire [5:0]ad9361_3_P1_N_1;
  wire [5:0]ad9361_3_P1_P_1;
  wire ad9361_DCLK_1_N_1;
  wire ad9361_DCLK_1_P_1;
  wire ad9361_DCLK_2_N_1;
  wire ad9361_DCLK_2_P_1;
  wire ad9361_DCLK_3_N_1;
  wire ad9361_DCLK_3_P_1;
  wire ad9361_RX_FRAME1_N_1;
  wire ad9361_RX_FRAME1_P_1;
  wire ad9361_RX_FRAME2_N_1;
  wire ad9361_RX_FRAME2_P_1;
  wire ad9361_RX_FRAME3_N_1;
  wire ad9361_RX_FRAME3_P_1;
  wire ad9361_SPI_DO_1_1;
  wire ad9361_SPI_DO_2_1;
  wire ad9361_SPI_DO_3_1;
  wire ad9361_spi_clk_4;
  wire ad9361_spi_mosi_1;
  wire ad9364_DCLK_N_1;
  wire ad9364_DCLK_P_1;
  wire [5:0]ad9364_P1_N_1;
  wire [5:0]ad9364_P1_P_1;
  wire ad9364_SPI_DO_1;
  wire ad9364_TX_FRAME_N_1;
  wire ad9364_TX_FRAME_P_1;
  wire clk_axi_reset_n;
  wire clk_wiz_0_axi_periph_clk;
  wire ibuf_0_out_ref;
  wire [15:0]mqc_t_0_odata_buff_0;
  wire [15:0]mqc_t_0_odata_buff_1;
  wire mqc_t_0_oready_buff;
  wire [0:0]reset_1;
  wire [0:0]rst_sys_ps7_100M_peripheral_aresetn;
  wire som_en_28v_l1_1;
  wire som_en_28v_l2_1;
  wire som_en_28v_s1_1;
  wire som_en_28v_s2_1;
  wire som_en_28v_s3_1;
  wire som_en_28v_s4_1;
  wire som_en_5v_s_1;
  wire spi_miso_0_1;
  wire spi_miso_1_1;
  wire sys_200m_clk;
  wire [0:0]up_txnrx_1;
  wire [31:0]xlconcat_1_dout;
  wire [31:0]xlconstant_0_dout;

  assign AXI_RX_CLK_OUT = AXI_Peripheral_AXI_RX_CLK_OUT;
  assign AXI_RX_DATA_OUT[16:0] = AXI_Peripheral_AXI_RX_DATA_OUT;
  assign AXI_TX_CLK_IN_1 = AXI_TX_CLK_IN;
  assign AXI_TX_DATA_IN_1 = AXI_TX_DATA_IN[16:0];
  assign FPGA_REF_40MHZ_1 = FPGA_REF_40MHZ;
  assign LED1[0] = IP_sync_0_LED_en;
  assign LED2[0] = IP_sync_0_sync_vrf_oval;
  assign LED3[0] = IP_sync_0_sync_trh_hold;
  assign PIN_0 = IP_sync_0_sync_osop;
  assign PIN_1 = IP_sync_0_sync_str_frame;
  assign PIN_2 = IP_sync_0_sync_val_osop;
  assign ad9361_1_P0_N[5:0] = DSP_ad9361_1_P0_N;
  assign ad9361_1_P0_P[5:0] = DSP_ad9361_1_P0_P;
  assign ad9361_1_P1_N_1 = ad9361_1_P1_N[5:0];
  assign ad9361_1_P1_P_1 = ad9361_1_P1_P[5:0];
  assign ad9361_2_P0_N[5:0] = DSP_ad9361_2_P0_N;
  assign ad9361_2_P0_P[5:0] = DSP_ad9361_2_P0_P;
  assign ad9361_2_P1_N_1 = ad9361_2_P1_N[5:0];
  assign ad9361_2_P1_P_1 = ad9361_2_P1_P[5:0];
  assign ad9361_3_P0_N[5:0] = DSP_ad9361_3_P0_N;
  assign ad9361_3_P0_P[5:0] = DSP_ad9361_3_P0_P;
  assign ad9361_3_P1_N_1 = ad9361_3_P1_N[5:0];
  assign ad9361_3_P1_P_1 = ad9361_3_P1_P[5:0];
  assign ad9361_DCLK_1_N_1 = ad9361_DCLK_1_N;
  assign ad9361_DCLK_1_P_1 = ad9361_DCLK_1_P;
  assign ad9361_DCLK_2_N_1 = ad9361_DCLK_2_N;
  assign ad9361_DCLK_2_P_1 = ad9361_DCLK_2_P;
  assign ad9361_DCLK_3_N_1 = ad9361_DCLK_3_N;
  assign ad9361_DCLK_3_P_1 = ad9361_DCLK_3_P;
  assign ad9361_EN_1[0] = DSP_ad9361_EN_1;
  assign ad9361_EN_2[0] = DSP_ad9361_EN_2;
  assign ad9361_EN_3 = DSP_ad9361_EN_3;
  assign ad9361_EN_AGC_1[0] = Control_from_SOM_0_ad9361_1_en_agc;
  assign ad9361_EN_AGC_2[0] = Control_from_SOM_0_ad9361_2_en_agc;
  assign ad9361_EN_AGC_3[0] = Control_from_SOM_0_ad9361_3_en_agc;
  assign ad9361_FB_CLK_1_N = DSP_ad9361_FB_CLK_1_N;
  assign ad9361_FB_CLK_1_P = DSP_ad9361_FB_CLK_1_P;
  assign ad9361_FB_CLK_2_N = DSP_ad9361_FB_CLK_2_N;
  assign ad9361_FB_CLK_2_P = DSP_ad9361_FB_CLK_2_P;
  assign ad9361_FB_CLK_3_N = DSP_ad9361_FB_CLK_3_N;
  assign ad9361_FB_CLK_3_P = DSP_ad9361_FB_CLK_3_P;
  assign ad9361_RESET_1[0] = Control_from_SOM_0_ad9361_1_reset;
  assign ad9361_RESET_2[0] = Control_from_SOM_0_ad9361_2_reset;
  assign ad9361_RESET_3[0] = Control_from_SOM_0_ad9361_3_reset;
  assign ad9361_RX_FRAME1_N_1 = ad9361_RX_FRAME1_N;
  assign ad9361_RX_FRAME1_P_1 = ad9361_RX_FRAME1_P;
  assign ad9361_RX_FRAME2_N_1 = ad9361_RX_FRAME2_N;
  assign ad9361_RX_FRAME2_P_1 = ad9361_RX_FRAME2_P;
  assign ad9361_RX_FRAME3_N_1 = ad9361_RX_FRAME3_N;
  assign ad9361_RX_FRAME3_P_1 = ad9361_RX_FRAME3_P;
  assign ad9361_SPI_CLK_1 = ad9361_spi_clk_4;
  assign ad9361_SPI_CLK_2 = ad9361_spi_clk_4;
  assign ad9361_SPI_CLK_3 = ad9361_spi_clk_4;
  assign ad9361_SPI_CS_1[0] = Decoder_SPI_0_num_cs_0;
  assign ad9361_SPI_CS_2[0] = Decoder_SPI_0_num_cs_1;
  assign ad9361_SPI_CS_3[0] = Decoder_SPI_0_num_cs_2;
  assign ad9361_SPI_DI_1 = ad9361_spi_mosi_1;
  assign ad9361_SPI_DI_2 = ad9361_spi_mosi_1;
  assign ad9361_SPI_DI_3 = ad9361_spi_mosi_1;
  assign ad9361_SPI_DO_1_1 = ad9361_SPI_DO_1;
  assign ad9361_SPI_DO_2_1 = ad9361_SPI_DO_2;
  assign ad9361_SPI_DO_3_1 = ad9361_SPI_DO_3;
  assign ad9361_TXNRX_1[0] = DSP_ad9361_TXNRX_1;
  assign ad9361_TXNRX_2[0] = DSP_ad9361_TXNRX_2;
  assign ad9361_TXNRX_3 = DSP_ad9361_TXNRX_3;
  assign ad9361_TX_FRAME1_N = DSP_ad9361_TX_FRAME1_N;
  assign ad9361_TX_FRAME1_P = DSP_ad9361_TX_FRAME1_P;
  assign ad9361_TX_FRAME2_N = DSP_ad9361_TX_FRAME2_N;
  assign ad9361_TX_FRAME2_P = DSP_ad9361_TX_FRAME2_P;
  assign ad9361_TX_FRAME3_N = DSP_ad9361_TX_FRAME3_N;
  assign ad9361_TX_FRAME3_P = DSP_ad9361_TX_FRAME3_P;
  assign ad9364_DCLK_N_1 = ad9364_DCLK_N;
  assign ad9364_DCLK_P_1 = ad9364_DCLK_P;
  assign ad9364_EN = AD9364_ad9364_EN;
  assign ad9364_EN_AGC[0] = Control_from_SOM_0_ad9364_en_agc;
  assign ad9364_FB_CLK_N = AD9364_ad9364_FB_CLK_N;
  assign ad9364_FB_CLK_P = AD9364_ad9361_FB_CLK_P;
  assign ad9364_P0_N[5:0] = AD9364_ad9364_P0_N;
  assign ad9364_P0_P[5:0] = AD9364_ad9364_P0_P;
  assign ad9364_P1_N_1 = ad9364_P1_N[5:0];
  assign ad9364_P1_P_1 = ad9364_P1_P[5:0];
  assign ad9364_RESET[0] = Control_from_SOM_0_ad9364_reset;
  assign ad9364_SPI_CLK = ad9361_spi_clk_4;
  assign ad9364_SPI_CS[0] = Decoder_SPI_0_num_cs_3;
  assign ad9364_SPI_DI = ad9361_spi_mosi_1;
  assign ad9364_SPI_DO_1 = ad9364_SPI_DO;
  assign ad9364_TXNRX = AD9364_ad9364_TXNRX;
  assign ad9364_TX_FRAME_N = AD9364_ad9364_TX_FRAME_N1;
  assign ad9364_TX_FRAME_N_1 = ad9364_RX_FRAME_N;
  assign ad9364_TX_FRAME_P = AD9364_ad9364_TX_FRAME_P1;
  assign ad9364_TX_FRAME_P_1 = ad9364_RX_FRAME_P;
  assign fpga_28v_en_link1 = Current_turning_off_0_fpga_en_28v_l1;
  assign fpga_28v_en_link2 = Current_turning_off_0_fpga_en_28v_l2;
  assign fpga_28v_en_service1 = Current_turning_off_0_fpga_en_28v_s1;
  assign fpga_28v_en_service2 = Current_turning_off_0_fpga_en_28v_s2;
  assign fpga_28v_en_service3 = Current_turning_off_0_fpga_en_28v_s3;
  assign fpga_28v_en_service4 = Current_turning_off_0_fpga_en_28v_s4;
  assign fpga_5v_en_link = Current_turning_off_0_fpga_en_5v_s;
  assign som_en_28v_l1_1 = som_28v_en_link1;
  assign som_en_28v_l2_1 = som_28v_en_link2;
  assign som_en_28v_s1_1 = som_28v_en_service1;
  assign som_en_28v_s2_1 = som_28v_en_service2;
  assign som_en_28v_s3_1 = som_28v_en_service3;
  assign som_en_28v_s4_1 = som_28v_en_service4;
  assign som_en_5v_s_1 = som_5v_en_link;
  assign spi_cs_n_0 = Current_turning_off_0_spi_cs_n_0;
  assign spi_cs_n_1 = Current_turning_off_0_spi_cs_n_1;
  assign spi_miso_0_1 = spi_miso_0;
  assign spi_miso_1_1 = spi_miso_1;
  assign spi_mosi_0 = Current_turning_off_0_spi_mosi_0;
  assign spi_mosi_1 = Current_turning_off_0_spi_mosi_1;
  assign spi_sclk_0 = Current_turning_off_0_spi_sclk_0;
  assign spi_sclk_1 = Current_turning_off_0_spi_sclk_1;
  AD9361_CTRL_imp_9MHREM AD9361_CTRL
       (.FPGA_REF_40MHZ(ibuf_0_out_ref),
        .ad9361_1_P0_N(DSP_ad9361_1_P0_N),
        .ad9361_1_P0_P(DSP_ad9361_1_P0_P),
        .ad9361_1_P1_N(ad9361_1_P1_N_1),
        .ad9361_1_P1_P(ad9361_1_P1_P_1),
        .ad9361_2_P0_N(DSP_ad9361_2_P0_N),
        .ad9361_2_P0_P(DSP_ad9361_2_P0_P),
        .ad9361_2_P1_N(ad9361_2_P1_N_1),
        .ad9361_2_P1_P(ad9361_2_P1_P_1),
        .ad9361_3_P0_N(DSP_ad9361_3_P0_N),
        .ad9361_3_P0_P(DSP_ad9361_3_P0_P),
        .ad9361_3_P1_N(ad9361_3_P1_N_1),
        .ad9361_3_P1_P(ad9361_3_P1_P_1),
        .ad9361_DCLK_1_N(ad9361_DCLK_1_N_1),
        .ad9361_DCLK_1_P(ad9361_DCLK_1_P_1),
        .ad9361_DCLK_2_N(ad9361_DCLK_2_N_1),
        .ad9361_DCLK_2_P(ad9361_DCLK_2_P_1),
        .ad9361_DCLK_3_N(ad9361_DCLK_3_N_1),
        .ad9361_DCLK_3_P(ad9361_DCLK_3_P_1),
        .ad9361_EN_1(DSP_ad9361_EN_1),
        .ad9361_EN_2(DSP_ad9361_EN_2),
        .ad9361_EN_3(DSP_ad9361_EN_3),
        .ad9361_FB_CLK_1_N(DSP_ad9361_FB_CLK_1_N),
        .ad9361_FB_CLK_1_P(DSP_ad9361_FB_CLK_1_P),
        .ad9361_FB_CLK_2_N(DSP_ad9361_FB_CLK_2_N),
        .ad9361_FB_CLK_2_P(DSP_ad9361_FB_CLK_2_P),
        .ad9361_FB_CLK_3_N(DSP_ad9361_FB_CLK_3_N),
        .ad9361_FB_CLK_3_P(DSP_ad9361_FB_CLK_3_P),
        .ad9361_RX_FRAME1_N(ad9361_RX_FRAME1_N_1),
        .ad9361_RX_FRAME1_P(ad9361_RX_FRAME1_P_1),
        .ad9361_RX_FRAME2_N(ad9361_RX_FRAME2_N_1),
        .ad9361_RX_FRAME2_P(ad9361_RX_FRAME2_P_1),
        .ad9361_RX_FRAME3_N(ad9361_RX_FRAME3_N_1),
        .ad9361_RX_FRAME3_P(ad9361_RX_FRAME3_P_1),
        .ad9361_TXNRX_1(DSP_ad9361_TXNRX_1),
        .ad9361_TXNRX_2(DSP_ad9361_TXNRX_2),
        .ad9361_TXNRX_3(DSP_ad9361_TXNRX_3),
        .ad9361_TX_FRAME1_N(DSP_ad9361_TX_FRAME1_N),
        .ad9361_TX_FRAME1_P(DSP_ad9361_TX_FRAME1_P),
        .ad9361_TX_FRAME2_N(DSP_ad9361_TX_FRAME2_N),
        .ad9361_TX_FRAME2_P(DSP_ad9361_TX_FRAME2_P),
        .ad9361_TX_FRAME3_N(DSP_ad9361_TX_FRAME3_N),
        .ad9361_TX_FRAME3_P(DSP_ad9361_TX_FRAME3_P),
        .clk_out1(AD9361_CTRL_clk_out1),
        .data_rate(AD9361_ctrl_data_rate),
        .delay_clk(sys_200m_clk),
        .din_data_0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .din_data_1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .din_data_10({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .din_data_11({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .din_data_2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .din_data_3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .din_data_4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .din_data_5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .din_data_6({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .din_data_7({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .din_data_8({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .din_data_9({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout(up_txnrx_1),
        .dout_data_4(AD9361_CTRL_dout_data_4),
        .dout_data_5(AD9361_CTRL_dout_data_5),
        .ext_reset_in(clk_axi_reset_n),
        .peripheral_aresetn1(AD9361_CTRL_peripheral_aresetn1),
        .peripheral_reset(reset_1),
        .s_axi1_araddr(AXI_Peripheral_M02_AXI_ARADDR),
        .s_axi1_arprot(AXI_Peripheral_M02_AXI_ARPROT),
        .s_axi1_arready(AXI_Peripheral_M02_AXI_ARREADY),
        .s_axi1_arvalid(AXI_Peripheral_M02_AXI_ARVALID),
        .s_axi1_awaddr(AXI_Peripheral_M02_AXI_AWADDR),
        .s_axi1_awprot(AXI_Peripheral_M02_AXI_AWPROT),
        .s_axi1_awready(AXI_Peripheral_M02_AXI_AWREADY),
        .s_axi1_awvalid(AXI_Peripheral_M02_AXI_AWVALID),
        .s_axi1_bready(AXI_Peripheral_M02_AXI_BREADY),
        .s_axi1_bresp(AXI_Peripheral_M02_AXI_BRESP),
        .s_axi1_bvalid(AXI_Peripheral_M02_AXI_BVALID),
        .s_axi1_rdata(AXI_Peripheral_M02_AXI_RDATA),
        .s_axi1_rready(AXI_Peripheral_M02_AXI_RREADY),
        .s_axi1_rresp(AXI_Peripheral_M02_AXI_RRESP),
        .s_axi1_rvalid(AXI_Peripheral_M02_AXI_RVALID),
        .s_axi1_wdata(AXI_Peripheral_M02_AXI_WDATA),
        .s_axi1_wready(AXI_Peripheral_M02_AXI_WREADY),
        .s_axi1_wstrb(AXI_Peripheral_M02_AXI_WSTRB),
        .s_axi1_wvalid(AXI_Peripheral_M02_AXI_WVALID),
        .s_axi2_araddr(AXI_Peripheral_M00_AXI_ARADDR),
        .s_axi2_arprot(AXI_Peripheral_M00_AXI_ARPROT),
        .s_axi2_arready(AXI_Peripheral_M00_AXI_ARREADY),
        .s_axi2_arvalid(AXI_Peripheral_M00_AXI_ARVALID),
        .s_axi2_awaddr(AXI_Peripheral_M00_AXI_AWADDR),
        .s_axi2_awprot(AXI_Peripheral_M00_AXI_AWPROT),
        .s_axi2_awready(AXI_Peripheral_M00_AXI_AWREADY),
        .s_axi2_awvalid(AXI_Peripheral_M00_AXI_AWVALID),
        .s_axi2_bready(AXI_Peripheral_M00_AXI_BREADY),
        .s_axi2_bresp(AXI_Peripheral_M00_AXI_BRESP),
        .s_axi2_bvalid(AXI_Peripheral_M00_AXI_BVALID),
        .s_axi2_rdata(AXI_Peripheral_M00_AXI_RDATA),
        .s_axi2_rready(AXI_Peripheral_M00_AXI_RREADY),
        .s_axi2_rresp(AXI_Peripheral_M00_AXI_RRESP),
        .s_axi2_rvalid(AXI_Peripheral_M00_AXI_RVALID),
        .s_axi2_wdata(AXI_Peripheral_M00_AXI_WDATA),
        .s_axi2_wready(AXI_Peripheral_M00_AXI_WREADY),
        .s_axi2_wstrb(AXI_Peripheral_M00_AXI_WSTRB),
        .s_axi2_wvalid(AXI_Peripheral_M00_AXI_WVALID),
        .s_axi_aclk(clk_wiz_0_axi_periph_clk),
        .s_axi_araddr(AXI_Peripheral_M01_AXI_ARADDR),
        .s_axi_aresetn(rst_sys_ps7_100M_peripheral_aresetn),
        .s_axi_arprot(AXI_Peripheral_M01_AXI_ARPROT),
        .s_axi_arready(AXI_Peripheral_M01_AXI_ARREADY),
        .s_axi_arvalid(AXI_Peripheral_M01_AXI_ARVALID),
        .s_axi_awaddr(AXI_Peripheral_M01_AXI_AWADDR),
        .s_axi_awprot(AXI_Peripheral_M01_AXI_AWPROT),
        .s_axi_awready(AXI_Peripheral_M01_AXI_AWREADY),
        .s_axi_awvalid(AXI_Peripheral_M01_AXI_AWVALID),
        .s_axi_bready(AXI_Peripheral_M01_AXI_BREADY),
        .s_axi_bresp(AXI_Peripheral_M01_AXI_BRESP),
        .s_axi_bvalid(AXI_Peripheral_M01_AXI_BVALID),
        .s_axi_rdata(AXI_Peripheral_M01_AXI_RDATA),
        .s_axi_rready(AXI_Peripheral_M01_AXI_RREADY),
        .s_axi_rresp(AXI_Peripheral_M01_AXI_RRESP),
        .s_axi_rvalid(AXI_Peripheral_M01_AXI_RVALID),
        .s_axi_wdata(AXI_Peripheral_M01_AXI_WDATA),
        .s_axi_wready(AXI_Peripheral_M01_AXI_WREADY),
        .s_axi_wstrb(AXI_Peripheral_M01_AXI_WSTRB),
        .s_axi_wvalid(AXI_Peripheral_M01_AXI_WVALID));
  AD9364_imp_16ETD7A AD9364
       (.ad9361_FB_CLK_P(AD9364_ad9361_FB_CLK_P),
        .ad9364_DCLK_N(ad9364_DCLK_N_1),
        .ad9364_DCLK_P(ad9364_DCLK_P_1),
        .ad9364_EN(AD9364_ad9364_EN),
        .ad9364_FB_CLK_N(AD9364_ad9364_FB_CLK_N),
        .ad9364_P0_N(AD9364_ad9364_P0_N),
        .ad9364_P0_P(AD9364_ad9364_P0_P),
        .ad9364_P1_N(ad9364_P1_N_1),
        .ad9364_P1_P(ad9364_P1_P_1),
        .ad9364_TXNRX(AD9364_ad9364_TXNRX),
        .ad9364_TX_FRAME_N(ad9364_TX_FRAME_N_1),
        .ad9364_TX_FRAME_N1(AD9364_ad9364_TX_FRAME_N1),
        .ad9364_TX_FRAME_P(ad9364_TX_FRAME_P_1),
        .ad9364_TX_FRAME_P1(AD9364_ad9364_TX_FRAME_P1),
        .delay_clk(sys_200m_clk),
        .dout_clk(AD9361_ctrl_data_rate),
        .ext_reset_in(clk_axi_reset_n),
        .s_axi_aclk(clk_wiz_0_axi_periph_clk),
        .s_axi_araddr(AXI_Peripheral_M03_AXI_ARADDR),
        .s_axi_aresetn(rst_sys_ps7_100M_peripheral_aresetn),
        .s_axi_arprot(AXI_Peripheral_M03_AXI_ARPROT),
        .s_axi_arready(AXI_Peripheral_M03_AXI_ARREADY),
        .s_axi_arvalid(AXI_Peripheral_M03_AXI_ARVALID),
        .s_axi_awaddr(AXI_Peripheral_M03_AXI_AWADDR),
        .s_axi_awprot(AXI_Peripheral_M03_AXI_AWPROT),
        .s_axi_awready(AXI_Peripheral_M03_AXI_AWREADY),
        .s_axi_awvalid(AXI_Peripheral_M03_AXI_AWVALID),
        .s_axi_bready(AXI_Peripheral_M03_AXI_BREADY),
        .s_axi_bresp(AXI_Peripheral_M03_AXI_BRESP),
        .s_axi_bvalid(AXI_Peripheral_M03_AXI_BVALID),
        .s_axi_rdata(AXI_Peripheral_M03_AXI_RDATA),
        .s_axi_rready(AXI_Peripheral_M03_AXI_RREADY),
        .s_axi_rresp(AXI_Peripheral_M03_AXI_RRESP),
        .s_axi_rvalid(AXI_Peripheral_M03_AXI_RVALID),
        .s_axi_wdata(AXI_Peripheral_M03_AXI_WDATA),
        .s_axi_wready(AXI_Peripheral_M03_AXI_WREADY),
        .s_axi_wstrb(AXI_Peripheral_M03_AXI_WSTRB),
        .s_axi_wvalid(AXI_Peripheral_M03_AXI_WVALID),
        .up_enable(up_txnrx_1),
        .up_txnrx(up_txnrx_1));
  AXI_Peripheral_imp_1PLQHVD AXI_Peripheral
       (.AXI_RX_CLK_OUT(AXI_Peripheral_AXI_RX_CLK_OUT),
        .AXI_RX_DATA_OUT(AXI_Peripheral_AXI_RX_DATA_OUT),
        .AXI_TX_CLK_IN(AXI_TX_CLK_IN_1),
        .AXI_TX_DATA_IN(AXI_TX_DATA_IN_1),
        .In0(SPI_MOD_ip2intc_irpt),
        .M00_AXI_araddr(AXI_Peripheral_M00_AXI_ARADDR),
        .M00_AXI_arprot(AXI_Peripheral_M00_AXI_ARPROT),
        .M00_AXI_arready(AXI_Peripheral_M00_AXI_ARREADY),
        .M00_AXI_arvalid(AXI_Peripheral_M00_AXI_ARVALID),
        .M00_AXI_awaddr(AXI_Peripheral_M00_AXI_AWADDR),
        .M00_AXI_awprot(AXI_Peripheral_M00_AXI_AWPROT),
        .M00_AXI_awready(AXI_Peripheral_M00_AXI_AWREADY),
        .M00_AXI_awvalid(AXI_Peripheral_M00_AXI_AWVALID),
        .M00_AXI_bready(AXI_Peripheral_M00_AXI_BREADY),
        .M00_AXI_bresp(AXI_Peripheral_M00_AXI_BRESP),
        .M00_AXI_bvalid(AXI_Peripheral_M00_AXI_BVALID),
        .M00_AXI_rdata(AXI_Peripheral_M00_AXI_RDATA),
        .M00_AXI_rready(AXI_Peripheral_M00_AXI_RREADY),
        .M00_AXI_rresp(AXI_Peripheral_M00_AXI_RRESP),
        .M00_AXI_rvalid(AXI_Peripheral_M00_AXI_RVALID),
        .M00_AXI_wdata(AXI_Peripheral_M00_AXI_WDATA),
        .M00_AXI_wready(AXI_Peripheral_M00_AXI_WREADY),
        .M00_AXI_wstrb(AXI_Peripheral_M00_AXI_WSTRB),
        .M00_AXI_wvalid(AXI_Peripheral_M00_AXI_WVALID),
        .M01_AXI_araddr(AXI_Peripheral_M01_AXI_ARADDR),
        .M01_AXI_arprot(AXI_Peripheral_M01_AXI_ARPROT),
        .M01_AXI_arready(AXI_Peripheral_M01_AXI_ARREADY),
        .M01_AXI_arvalid(AXI_Peripheral_M01_AXI_ARVALID),
        .M01_AXI_awaddr(AXI_Peripheral_M01_AXI_AWADDR),
        .M01_AXI_awprot(AXI_Peripheral_M01_AXI_AWPROT),
        .M01_AXI_awready(AXI_Peripheral_M01_AXI_AWREADY),
        .M01_AXI_awvalid(AXI_Peripheral_M01_AXI_AWVALID),
        .M01_AXI_bready(AXI_Peripheral_M01_AXI_BREADY),
        .M01_AXI_bresp(AXI_Peripheral_M01_AXI_BRESP),
        .M01_AXI_bvalid(AXI_Peripheral_M01_AXI_BVALID),
        .M01_AXI_rdata(AXI_Peripheral_M01_AXI_RDATA),
        .M01_AXI_rready(AXI_Peripheral_M01_AXI_RREADY),
        .M01_AXI_rresp(AXI_Peripheral_M01_AXI_RRESP),
        .M01_AXI_rvalid(AXI_Peripheral_M01_AXI_RVALID),
        .M01_AXI_wdata(AXI_Peripheral_M01_AXI_WDATA),
        .M01_AXI_wready(AXI_Peripheral_M01_AXI_WREADY),
        .M01_AXI_wstrb(AXI_Peripheral_M01_AXI_WSTRB),
        .M01_AXI_wvalid(AXI_Peripheral_M01_AXI_WVALID),
        .M02_AXI_araddr(AXI_Peripheral_M02_AXI_ARADDR),
        .M02_AXI_arprot(AXI_Peripheral_M02_AXI_ARPROT),
        .M02_AXI_arready(AXI_Peripheral_M02_AXI_ARREADY),
        .M02_AXI_arvalid(AXI_Peripheral_M02_AXI_ARVALID),
        .M02_AXI_awaddr(AXI_Peripheral_M02_AXI_AWADDR),
        .M02_AXI_awprot(AXI_Peripheral_M02_AXI_AWPROT),
        .M02_AXI_awready(AXI_Peripheral_M02_AXI_AWREADY),
        .M02_AXI_awvalid(AXI_Peripheral_M02_AXI_AWVALID),
        .M02_AXI_bready(AXI_Peripheral_M02_AXI_BREADY),
        .M02_AXI_bresp(AXI_Peripheral_M02_AXI_BRESP),
        .M02_AXI_bvalid(AXI_Peripheral_M02_AXI_BVALID),
        .M02_AXI_rdata(AXI_Peripheral_M02_AXI_RDATA),
        .M02_AXI_rready(AXI_Peripheral_M02_AXI_RREADY),
        .M02_AXI_rresp(AXI_Peripheral_M02_AXI_RRESP),
        .M02_AXI_rvalid(AXI_Peripheral_M02_AXI_RVALID),
        .M02_AXI_wdata(AXI_Peripheral_M02_AXI_WDATA),
        .M02_AXI_wready(AXI_Peripheral_M02_AXI_WREADY),
        .M02_AXI_wstrb(AXI_Peripheral_M02_AXI_WSTRB),
        .M02_AXI_wvalid(AXI_Peripheral_M02_AXI_WVALID),
        .M03_AXI_araddr(AXI_Peripheral_M03_AXI_ARADDR),
        .M03_AXI_arprot(AXI_Peripheral_M03_AXI_ARPROT),
        .M03_AXI_arready(AXI_Peripheral_M03_AXI_ARREADY),
        .M03_AXI_arvalid(AXI_Peripheral_M03_AXI_ARVALID),
        .M03_AXI_awaddr(AXI_Peripheral_M03_AXI_AWADDR),
        .M03_AXI_awprot(AXI_Peripheral_M03_AXI_AWPROT),
        .M03_AXI_awready(AXI_Peripheral_M03_AXI_AWREADY),
        .M03_AXI_awvalid(AXI_Peripheral_M03_AXI_AWVALID),
        .M03_AXI_bready(AXI_Peripheral_M03_AXI_BREADY),
        .M03_AXI_bresp(AXI_Peripheral_M03_AXI_BRESP),
        .M03_AXI_bvalid(AXI_Peripheral_M03_AXI_BVALID),
        .M03_AXI_rdata(AXI_Peripheral_M03_AXI_RDATA),
        .M03_AXI_rready(AXI_Peripheral_M03_AXI_RREADY),
        .M03_AXI_rresp(AXI_Peripheral_M03_AXI_RRESP),
        .M03_AXI_rvalid(AXI_Peripheral_M03_AXI_RVALID),
        .M03_AXI_wdata(AXI_Peripheral_M03_AXI_WDATA),
        .M03_AXI_wready(AXI_Peripheral_M03_AXI_WREADY),
        .M03_AXI_wstrb(AXI_Peripheral_M03_AXI_WSTRB),
        .M03_AXI_wvalid(AXI_Peripheral_M03_AXI_WVALID),
        .M04_AXI_araddr(AXI_Peripheral_M04_AXI_ARADDR),
        .M04_AXI_arprot(AXI_Peripheral_M04_AXI_ARPROT),
        .M04_AXI_arready(AXI_Peripheral_M04_AXI_ARREADY),
        .M04_AXI_arvalid(AXI_Peripheral_M04_AXI_ARVALID),
        .M04_AXI_awaddr(AXI_Peripheral_M04_AXI_AWADDR),
        .M04_AXI_awprot(AXI_Peripheral_M04_AXI_AWPROT),
        .M04_AXI_awready(AXI_Peripheral_M04_AXI_AWREADY),
        .M04_AXI_awvalid(AXI_Peripheral_M04_AXI_AWVALID),
        .M04_AXI_bready(AXI_Peripheral_M04_AXI_BREADY),
        .M04_AXI_bresp(AXI_Peripheral_M04_AXI_BRESP),
        .M04_AXI_bvalid(AXI_Peripheral_M04_AXI_BVALID),
        .M04_AXI_rdata(AXI_Peripheral_M04_AXI_RDATA),
        .M04_AXI_rready(AXI_Peripheral_M04_AXI_RREADY),
        .M04_AXI_rresp(AXI_Peripheral_M04_AXI_RRESP),
        .M04_AXI_rvalid(AXI_Peripheral_M04_AXI_RVALID),
        .M04_AXI_wdata(AXI_Peripheral_M04_AXI_WDATA),
        .M04_AXI_wready(AXI_Peripheral_M04_AXI_WREADY),
        .M04_AXI_wstrb(AXI_Peripheral_M04_AXI_WSTRB),
        .M04_AXI_wvalid(AXI_Peripheral_M04_AXI_WVALID),
        .M05_AXI_arready(1'b0),
        .M05_AXI_awready(1'b0),
        .M05_AXI_bresp(1'b0),
        .M05_AXI_bvalid(1'b0),
        .M05_AXI_rdata(1'b0),
        .M05_AXI_rresp(1'b0),
        .M05_AXI_rvalid(1'b0),
        .M05_AXI_wready(1'b0),
        .M06_AXI_araddr(AXI_Peripheral_M06_AXI_ARADDR),
        .M06_AXI_arready(AXI_Peripheral_M06_AXI_ARREADY),
        .M06_AXI_arvalid(AXI_Peripheral_M06_AXI_ARVALID),
        .M06_AXI_awaddr(AXI_Peripheral_M06_AXI_AWADDR),
        .M06_AXI_awready(AXI_Peripheral_M06_AXI_AWREADY),
        .M06_AXI_awvalid(AXI_Peripheral_M06_AXI_AWVALID),
        .M06_AXI_bready(AXI_Peripheral_M06_AXI_BREADY),
        .M06_AXI_bresp(AXI_Peripheral_M06_AXI_BRESP),
        .M06_AXI_bvalid(AXI_Peripheral_M06_AXI_BVALID),
        .M06_AXI_rdata(AXI_Peripheral_M06_AXI_RDATA),
        .M06_AXI_rready(AXI_Peripheral_M06_AXI_RREADY),
        .M06_AXI_rresp(AXI_Peripheral_M06_AXI_RRESP),
        .M06_AXI_rvalid(AXI_Peripheral_M06_AXI_RVALID),
        .M06_AXI_wdata(AXI_Peripheral_M06_AXI_WDATA),
        .M06_AXI_wready(AXI_Peripheral_M06_AXI_WREADY),
        .M06_AXI_wstrb(AXI_Peripheral_M06_AXI_WSTRB),
        .M06_AXI_wvalid(AXI_Peripheral_M06_AXI_WVALID),
        .M07_AXI_arready(1'b0),
        .M07_AXI_awready(1'b0),
        .M07_AXI_bresp(1'b0),
        .M07_AXI_bvalid(1'b0),
        .M07_AXI_rdata(1'b0),
        .M07_AXI_rresp(1'b0),
        .M07_AXI_rvalid(1'b0),
        .M07_AXI_wready(1'b0),
        .M08_AXI_arready(1'b0),
        .M08_AXI_awready(1'b0),
        .M08_AXI_bresp(1'b0),
        .M08_AXI_bvalid(1'b0),
        .M08_AXI_rdata(1'b0),
        .M08_AXI_rresp(1'b0),
        .M08_AXI_rvalid(1'b0),
        .M08_AXI_wready(1'b0),
        .M09_AXI_arready(1'b0),
        .M09_AXI_awready(1'b0),
        .M09_AXI_bresp(1'b0),
        .M09_AXI_bvalid(1'b0),
        .M09_AXI_rdata(1'b0),
        .M09_AXI_rresp(1'b0),
        .M09_AXI_rvalid(1'b0),
        .M09_AXI_wready(1'b0),
        .M10_AXI_araddr(AXI_Peripheral_M10_AXI_ARADDR),
        .M10_AXI_arprot(AXI_Peripheral_M10_AXI_ARPROT),
        .M10_AXI_arready(AXI_Peripheral_M10_AXI_ARREADY),
        .M10_AXI_arvalid(AXI_Peripheral_M10_AXI_ARVALID),
        .M10_AXI_awaddr(AXI_Peripheral_M10_AXI_AWADDR),
        .M10_AXI_awprot(AXI_Peripheral_M10_AXI_AWPROT),
        .M10_AXI_awready(AXI_Peripheral_M10_AXI_AWREADY),
        .M10_AXI_awvalid(AXI_Peripheral_M10_AXI_AWVALID),
        .M10_AXI_bready(AXI_Peripheral_M10_AXI_BREADY),
        .M10_AXI_bresp(AXI_Peripheral_M10_AXI_BRESP),
        .M10_AXI_bvalid(AXI_Peripheral_M10_AXI_BVALID),
        .M10_AXI_rdata(AXI_Peripheral_M10_AXI_RDATA),
        .M10_AXI_rready(AXI_Peripheral_M10_AXI_RREADY),
        .M10_AXI_rresp(AXI_Peripheral_M10_AXI_RRESP),
        .M10_AXI_rvalid(AXI_Peripheral_M10_AXI_RVALID),
        .M10_AXI_wdata(AXI_Peripheral_M10_AXI_WDATA),
        .M10_AXI_wready(AXI_Peripheral_M10_AXI_WREADY),
        .M10_AXI_wstrb(AXI_Peripheral_M10_AXI_WSTRB),
        .M10_AXI_wvalid(AXI_Peripheral_M10_AXI_WVALID),
        .M12_AXI_araddr(AXI_Peripheral_M12_AXI_ARADDR),
        .M12_AXI_arready(AXI_Peripheral_M12_AXI_ARREADY),
        .M12_AXI_arvalid(AXI_Peripheral_M12_AXI_ARVALID),
        .M12_AXI_awaddr(AXI_Peripheral_M12_AXI_AWADDR),
        .M12_AXI_awready(AXI_Peripheral_M12_AXI_AWREADY),
        .M12_AXI_awvalid(AXI_Peripheral_M12_AXI_AWVALID),
        .M12_AXI_bready(AXI_Peripheral_M12_AXI_BREADY),
        .M12_AXI_bresp(AXI_Peripheral_M12_AXI_BRESP),
        .M12_AXI_bvalid(AXI_Peripheral_M12_AXI_BVALID),
        .M12_AXI_rdata(AXI_Peripheral_M12_AXI_RDATA),
        .M12_AXI_rready(AXI_Peripheral_M12_AXI_RREADY),
        .M12_AXI_rresp(AXI_Peripheral_M12_AXI_RRESP),
        .M12_AXI_rvalid(AXI_Peripheral_M12_AXI_RVALID),
        .M12_AXI_wdata(AXI_Peripheral_M12_AXI_WDATA),
        .M12_AXI_wready(AXI_Peripheral_M12_AXI_WREADY),
        .M12_AXI_wstrb(AXI_Peripheral_M12_AXI_WSTRB),
        .M12_AXI_wvalid(AXI_Peripheral_M12_AXI_WVALID),
        .M14_AXI_araddr(AXI_Peripheral_M14_AXI_ARADDR),
        .M14_AXI_arprot(AXI_Peripheral_M14_AXI_ARPROT),
        .M14_AXI_arready(AXI_Peripheral_M14_AXI_ARREADY),
        .M14_AXI_arvalid(AXI_Peripheral_M14_AXI_ARVALID),
        .M14_AXI_awaddr(AXI_Peripheral_M14_AXI_AWADDR),
        .M14_AXI_awprot(AXI_Peripheral_M14_AXI_AWPROT),
        .M14_AXI_awready(AXI_Peripheral_M14_AXI_AWREADY),
        .M14_AXI_awvalid(AXI_Peripheral_M14_AXI_AWVALID),
        .M14_AXI_bready(AXI_Peripheral_M14_AXI_BREADY),
        .M14_AXI_bresp(AXI_Peripheral_M14_AXI_BRESP),
        .M14_AXI_bvalid(AXI_Peripheral_M14_AXI_BVALID),
        .M14_AXI_rdata(AXI_Peripheral_M14_AXI_RDATA),
        .M14_AXI_rready(AXI_Peripheral_M14_AXI_RREADY),
        .M14_AXI_rresp(AXI_Peripheral_M14_AXI_RRESP),
        .M14_AXI_rvalid(AXI_Peripheral_M14_AXI_RVALID),
        .M14_AXI_wdata(AXI_Peripheral_M14_AXI_WDATA),
        .M14_AXI_wready(AXI_Peripheral_M14_AXI_WREADY),
        .M14_AXI_wstrb(AXI_Peripheral_M14_AXI_WSTRB),
        .M14_AXI_wvalid(AXI_Peripheral_M14_AXI_WVALID),
        .S00_ARESETN(rst_sys_ps7_100M_peripheral_aresetn),
        .fifo_wr_clk(AD9361_ctrl_data_rate),
        .fifo_wr_data_0(mqc_t_0_odata_buff_0),
        .fifo_wr_data_1(mqc_t_0_odata_buff_1),
        .fifo_wr_xfer_req(AXI_Peripheral_fifo_wr_xfer_req),
        .idelay_ref_clk(sys_200m_clk),
        .m_aclk(clk_wiz_0_axi_periph_clk),
        .reset(reset_1));
  CLK_AXI_imp_ROVM9 CLK_AXI
       (.FPGA_REF_40MHZ(FPGA_REF_40MHZ_1),
        .axi_periph_clk(clk_wiz_0_axi_periph_clk),
        .delay_clk(sys_200m_clk),
        .out_ref(ibuf_0_out_ref),
        .peripheral_aresetn(rst_sys_ps7_100M_peripheral_aresetn),
        .reset_n(clk_axi_reset_n));
  design_1_Control_from_SOM_0_0 Control_from_SOM_0
       (.ad9361_1_en_agc(Control_from_SOM_0_ad9361_1_en_agc),
        .ad9361_1_reset(Control_from_SOM_0_ad9361_1_reset),
        .ad9361_2_en_agc(Control_from_SOM_0_ad9361_2_en_agc),
        .ad9361_2_reset(Control_from_SOM_0_ad9361_2_reset),
        .ad9361_3_en_agc(Control_from_SOM_0_ad9361_3_en_agc),
        .ad9361_3_reset(Control_from_SOM_0_ad9361_3_reset),
        .ad9364_en_agc(Control_from_SOM_0_ad9364_en_agc),
        .ad9364_reset(Control_from_SOM_0_ad9364_reset),
        .s00_axi_aclk(clk_wiz_0_axi_periph_clk),
        .s00_axi_araddr(AXI_Peripheral_M04_AXI_ARADDR[3:0]),
        .s00_axi_aresetn(rst_sys_ps7_100M_peripheral_aresetn),
        .s00_axi_arprot(AXI_Peripheral_M04_AXI_ARPROT),
        .s00_axi_arready(AXI_Peripheral_M04_AXI_ARREADY),
        .s00_axi_arvalid(AXI_Peripheral_M04_AXI_ARVALID),
        .s00_axi_awaddr(AXI_Peripheral_M04_AXI_AWADDR[3:0]),
        .s00_axi_awprot(AXI_Peripheral_M04_AXI_AWPROT),
        .s00_axi_awready(AXI_Peripheral_M04_AXI_AWREADY),
        .s00_axi_awvalid(AXI_Peripheral_M04_AXI_AWVALID),
        .s00_axi_bready(AXI_Peripheral_M04_AXI_BREADY),
        .s00_axi_bresp(AXI_Peripheral_M04_AXI_BRESP),
        .s00_axi_bvalid(AXI_Peripheral_M04_AXI_BVALID),
        .s00_axi_rdata(AXI_Peripheral_M04_AXI_RDATA),
        .s00_axi_rready(AXI_Peripheral_M04_AXI_RREADY),
        .s00_axi_rresp(AXI_Peripheral_M04_AXI_RRESP),
        .s00_axi_rvalid(AXI_Peripheral_M04_AXI_RVALID),
        .s00_axi_wdata(AXI_Peripheral_M04_AXI_WDATA),
        .s00_axi_wready(AXI_Peripheral_M04_AXI_WREADY),
        .s00_axi_wstrb(AXI_Peripheral_M04_AXI_WSTRB),
        .s00_axi_wvalid(AXI_Peripheral_M04_AXI_WVALID));
  design_1_Current_turning_off_0_0 Current_turning_off_0
       (.fpga_en_28v_l1(Current_turning_off_0_fpga_en_28v_l1),
        .fpga_en_28v_l2(Current_turning_off_0_fpga_en_28v_l2),
        .fpga_en_28v_s1(Current_turning_off_0_fpga_en_28v_s1),
        .fpga_en_28v_s2(Current_turning_off_0_fpga_en_28v_s2),
        .fpga_en_28v_s3(Current_turning_off_0_fpga_en_28v_s3),
        .fpga_en_28v_s4(Current_turning_off_0_fpga_en_28v_s4),
        .fpga_en_5v_s(Current_turning_off_0_fpga_en_5v_s),
        .s00_axi_aclk(clk_wiz_0_axi_periph_clk),
        .s00_axi_araddr(AXI_Peripheral_M14_AXI_ARADDR[5:0]),
        .s00_axi_aresetn(rst_sys_ps7_100M_peripheral_aresetn),
        .s00_axi_arprot(AXI_Peripheral_M14_AXI_ARPROT),
        .s00_axi_arready(AXI_Peripheral_M14_AXI_ARREADY),
        .s00_axi_arvalid(AXI_Peripheral_M14_AXI_ARVALID),
        .s00_axi_awaddr(AXI_Peripheral_M14_AXI_AWADDR[5:0]),
        .s00_axi_awprot(AXI_Peripheral_M14_AXI_AWPROT),
        .s00_axi_awready(AXI_Peripheral_M14_AXI_AWREADY),
        .s00_axi_awvalid(AXI_Peripheral_M14_AXI_AWVALID),
        .s00_axi_bready(AXI_Peripheral_M14_AXI_BREADY),
        .s00_axi_bresp(AXI_Peripheral_M14_AXI_BRESP),
        .s00_axi_bvalid(AXI_Peripheral_M14_AXI_BVALID),
        .s00_axi_rdata(AXI_Peripheral_M14_AXI_RDATA),
        .s00_axi_rready(AXI_Peripheral_M14_AXI_RREADY),
        .s00_axi_rresp(AXI_Peripheral_M14_AXI_RRESP),
        .s00_axi_rvalid(AXI_Peripheral_M14_AXI_RVALID),
        .s00_axi_wdata(AXI_Peripheral_M14_AXI_WDATA),
        .s00_axi_wready(AXI_Peripheral_M14_AXI_WREADY),
        .s00_axi_wstrb(AXI_Peripheral_M14_AXI_WSTRB),
        .s00_axi_wvalid(AXI_Peripheral_M14_AXI_WVALID),
        .som_en_28v_l1(som_en_28v_l1_1),
        .som_en_28v_l2(som_en_28v_l2_1),
        .som_en_28v_s1(som_en_28v_s1_1),
        .som_en_28v_s2(som_en_28v_s2_1),
        .som_en_28v_s3(som_en_28v_s3_1),
        .som_en_28v_s4(som_en_28v_s4_1),
        .som_en_5v_s(som_en_5v_s_1),
        .spi_cs_n_0(Current_turning_off_0_spi_cs_n_0),
        .spi_cs_n_1(Current_turning_off_0_spi_cs_n_1),
        .spi_miso_0(spi_miso_0_1),
        .spi_miso_1(spi_miso_1_1),
        .spi_mosi_0(Current_turning_off_0_spi_mosi_0),
        .spi_mosi_1(Current_turning_off_0_spi_mosi_1),
        .spi_sclk_0(Current_turning_off_0_spi_sclk_0),
        .spi_sclk_1(Current_turning_off_0_spi_sclk_1));
  design_1_IP_sync_0_3 IP_sync_0
       (.LED_en(IP_sync_0_LED_en),
        .ready_buff(mqc_t_0_oready_buff),
        .s00_axi_aclk(clk_wiz_0_axi_periph_clk),
        .s00_axi_araddr(AXI_Peripheral_M10_AXI_ARADDR[3:0]),
        .s00_axi_aresetn(rst_sys_ps7_100M_peripheral_aresetn),
        .s00_axi_arprot(AXI_Peripheral_M10_AXI_ARPROT),
        .s00_axi_arready(AXI_Peripheral_M10_AXI_ARREADY),
        .s00_axi_arvalid(AXI_Peripheral_M10_AXI_ARVALID),
        .s00_axi_awaddr(AXI_Peripheral_M10_AXI_AWADDR[3:0]),
        .s00_axi_awprot(AXI_Peripheral_M10_AXI_AWPROT),
        .s00_axi_awready(AXI_Peripheral_M10_AXI_AWREADY),
        .s00_axi_awvalid(AXI_Peripheral_M10_AXI_AWVALID),
        .s00_axi_bready(AXI_Peripheral_M10_AXI_BREADY),
        .s00_axi_bresp(AXI_Peripheral_M10_AXI_BRESP),
        .s00_axi_bvalid(AXI_Peripheral_M10_AXI_BVALID),
        .s00_axi_rdata(AXI_Peripheral_M10_AXI_RDATA),
        .s00_axi_rready(AXI_Peripheral_M10_AXI_RREADY),
        .s00_axi_rresp(AXI_Peripheral_M10_AXI_RRESP),
        .s00_axi_rvalid(AXI_Peripheral_M10_AXI_RVALID),
        .s00_axi_wdata(AXI_Peripheral_M10_AXI_WDATA),
        .s00_axi_wready(AXI_Peripheral_M10_AXI_WREADY),
        .s00_axi_wstrb(AXI_Peripheral_M10_AXI_WSTRB),
        .s00_axi_wvalid(AXI_Peripheral_M10_AXI_WVALID),
        .sync_iclk(Net),
        .sync_idat_im(AD9361_CTRL_dout_data_5),
        .sync_idat_re(AD9361_CTRL_dout_data_4),
        .sync_ireset(AD9361_CTRL_peripheral_aresetn1),
        .sync_odat_im(IP_sync_0_sync_odat_im),
        .sync_odat_re(IP_sync_0_sync_odat_re),
        .sync_osop(IP_sync_0_sync_osop),
        .sync_osop_buff(IP_sync_0_sync_osop_buff),
        .sync_rdy_wr_buff(IP_sync_0_sync_rdy_wr_buff),
        .sync_str_frame(IP_sync_0_sync_str_frame),
        .sync_trh_hold(IP_sync_0_sync_trh_hold),
        .sync_val_osop(IP_sync_0_sync_val_osop),
        .sync_vrf_oval(IP_sync_0_sync_vrf_oval));
  SPI_MOD_imp_NH4T3P SPI_MOD
       (.AXI_LITE_araddr(AXI_Peripheral_M06_AXI_ARADDR),
        .AXI_LITE_arready(AXI_Peripheral_M06_AXI_ARREADY),
        .AXI_LITE_arvalid(AXI_Peripheral_M06_AXI_ARVALID),
        .AXI_LITE_awaddr(AXI_Peripheral_M06_AXI_AWADDR),
        .AXI_LITE_awready(AXI_Peripheral_M06_AXI_AWREADY),
        .AXI_LITE_awvalid(AXI_Peripheral_M06_AXI_AWVALID),
        .AXI_LITE_bready(AXI_Peripheral_M06_AXI_BREADY),
        .AXI_LITE_bresp(AXI_Peripheral_M06_AXI_BRESP),
        .AXI_LITE_bvalid(AXI_Peripheral_M06_AXI_BVALID),
        .AXI_LITE_rdata(AXI_Peripheral_M06_AXI_RDATA),
        .AXI_LITE_rready(AXI_Peripheral_M06_AXI_RREADY),
        .AXI_LITE_rresp(AXI_Peripheral_M06_AXI_RRESP),
        .AXI_LITE_rvalid(AXI_Peripheral_M06_AXI_RVALID),
        .AXI_LITE_wdata(AXI_Peripheral_M06_AXI_WDATA),
        .AXI_LITE_wready(AXI_Peripheral_M06_AXI_WREADY),
        .AXI_LITE_wstrb(AXI_Peripheral_M06_AXI_WSTRB),
        .AXI_LITE_wvalid(AXI_Peripheral_M06_AXI_WVALID),
        .ad9361_SPI_CLK_1(ad9361_spi_clk_4),
        .ad9361_SPI_CS_1(Decoder_SPI_0_num_cs_0),
        .ad9361_SPI_CS_2(Decoder_SPI_0_num_cs_1),
        .ad9361_SPI_CS_3(Decoder_SPI_0_num_cs_2),
        .ad9361_SPI_DI_1(ad9361_spi_mosi_1),
        .ad9361_SPI_DO_1(ad9361_SPI_DO_1_1),
        .ad9361_SPI_DO_2(ad9361_SPI_DO_2_1),
        .ad9361_SPI_DO_3(ad9361_SPI_DO_3_1),
        .ad9364_SPI_CS(Decoder_SPI_0_num_cs_3),
        .ad9364_SPI_DO(ad9364_SPI_DO_1),
        .ip2intc_irpt(SPI_MOD_ip2intc_irpt),
        .s_axi4_aclk(clk_wiz_0_axi_periph_clk),
        .s_axi4_aresetn(rst_sys_ps7_100M_peripheral_aresetn));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(AD9361_CTRL_clk_out1),
        .clk_out1(Net),
        .s_axi_aclk(clk_wiz_0_axi_periph_clk),
        .s_axi_araddr(AXI_Peripheral_M12_AXI_ARADDR[10:0]),
        .s_axi_aresetn(rst_sys_ps7_100M_peripheral_aresetn),
        .s_axi_arready(AXI_Peripheral_M12_AXI_ARREADY),
        .s_axi_arvalid(AXI_Peripheral_M12_AXI_ARVALID),
        .s_axi_awaddr(AXI_Peripheral_M12_AXI_AWADDR[10:0]),
        .s_axi_awready(AXI_Peripheral_M12_AXI_AWREADY),
        .s_axi_awvalid(AXI_Peripheral_M12_AXI_AWVALID),
        .s_axi_bready(AXI_Peripheral_M12_AXI_BREADY),
        .s_axi_bresp(AXI_Peripheral_M12_AXI_BRESP),
        .s_axi_bvalid(AXI_Peripheral_M12_AXI_BVALID),
        .s_axi_rdata(AXI_Peripheral_M12_AXI_RDATA),
        .s_axi_rready(AXI_Peripheral_M12_AXI_RREADY),
        .s_axi_rresp(AXI_Peripheral_M12_AXI_RRESP),
        .s_axi_rvalid(AXI_Peripheral_M12_AXI_RVALID),
        .s_axi_wdata(AXI_Peripheral_M12_AXI_WDATA),
        .s_axi_wready(AXI_Peripheral_M12_AXI_WREADY),
        .s_axi_wstrb(AXI_Peripheral_M12_AXI_WSTRB),
        .s_axi_wvalid(AXI_Peripheral_M12_AXI_WVALID));
  design_1_mqc_t_0_0 mqc_t_0
       (.AD9364_Samples(xlconstant_0_dout),
        .DL_RX_LNK_8(xlconstant_0_dout),
        .DL_TX_LNK_9(xlconstant_0_dout),
        .Power_meter_1(xlconstant_0_dout),
        .Power_meter_2(xlconstant_0_dout),
        .Power_meter_3(xlconstant_0_dout),
        .Power_meter_4(xlconstant_0_dout),
        .Service_1_RX_0(xlconcat_1_dout),
        .Service_1_TX_4(xlconcat_1_dout),
        .Service_2_RX_1(xlconcat_1_dout),
        .Service_2_TX_5(xlconcat_1_dout),
        .Service_3_RX_2(xlconcat_1_dout),
        .Service_3_TX_6(xlconcat_1_dout),
        .Service_4_RX_3(xlconcat_1_dout),
        .Service_4_TX_7(xlconcat_1_dout),
        .UL_RX_LNK_10(xlconstant_0_dout),
        .UL_TX_LNK_11(xlconstant_0_dout),
        .iclk_dsp(AD9361_CTRL_clk_out1),
        .iclk_lte(Net),
        .idata_im(IP_sync_0_sync_odat_im),
        .idata_re(IP_sync_0_sync_odat_re),
        .iready_corr_wr(IP_sync_0_sync_rdy_wr_buff),
        .ireset(AD9361_CTRL_peripheral_aresetn1),
        .isig_tcorr(IP_sync_0_sync_osop_buff),
        .isync_cpack(AXI_Peripheral_fifo_wr_xfer_req),
        .odata_buff_0(mqc_t_0_odata_buff_0),
        .odata_buff_1(mqc_t_0_odata_buff_1),
        .oready_buff(mqc_t_0_oready_buff));
  design_1_xlconcat_1_1 xlconcat_1
       (.In0(AD9361_CTRL_dout_data_4),
        .In1(AD9361_CTRL_dout_data_5),
        .dout(xlconcat_1_dout));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

module design_1_AXI_C2C_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awprot,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arprot,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awprot,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arprot,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awprot,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arprot,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awprot,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_ACLK,
    M09_ARESETN,
    M09_AXI_araddr,
    M09_AXI_arprot,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awprot,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wvalid,
    M10_ACLK,
    M10_ARESETN,
    M10_AXI_araddr,
    M10_AXI_arprot,
    M10_AXI_arready,
    M10_AXI_arvalid,
    M10_AXI_awaddr,
    M10_AXI_awprot,
    M10_AXI_awready,
    M10_AXI_awvalid,
    M10_AXI_bready,
    M10_AXI_bresp,
    M10_AXI_bvalid,
    M10_AXI_rdata,
    M10_AXI_rready,
    M10_AXI_rresp,
    M10_AXI_rvalid,
    M10_AXI_wdata,
    M10_AXI_wready,
    M10_AXI_wstrb,
    M10_AXI_wvalid,
    M11_ACLK,
    M11_ARESETN,
    M11_AXI_araddr,
    M11_AXI_arready,
    M11_AXI_arvalid,
    M11_AXI_awaddr,
    M11_AXI_awready,
    M11_AXI_awvalid,
    M11_AXI_bready,
    M11_AXI_bresp,
    M11_AXI_bvalid,
    M11_AXI_rdata,
    M11_AXI_rready,
    M11_AXI_rresp,
    M11_AXI_rvalid,
    M11_AXI_wdata,
    M11_AXI_wready,
    M11_AXI_wstrb,
    M11_AXI_wvalid,
    M12_ACLK,
    M12_ARESETN,
    M12_AXI_araddr,
    M12_AXI_arready,
    M12_AXI_arvalid,
    M12_AXI_awaddr,
    M12_AXI_awready,
    M12_AXI_awvalid,
    M12_AXI_bready,
    M12_AXI_bresp,
    M12_AXI_bvalid,
    M12_AXI_rdata,
    M12_AXI_rready,
    M12_AXI_rresp,
    M12_AXI_rvalid,
    M12_AXI_wdata,
    M12_AXI_wready,
    M12_AXI_wstrb,
    M12_AXI_wvalid,
    M13_ACLK,
    M13_ARESETN,
    M13_AXI_araddr,
    M13_AXI_arprot,
    M13_AXI_arready,
    M13_AXI_arvalid,
    M13_AXI_awaddr,
    M13_AXI_awprot,
    M13_AXI_awready,
    M13_AXI_awvalid,
    M13_AXI_bready,
    M13_AXI_bresp,
    M13_AXI_bvalid,
    M13_AXI_rdata,
    M13_AXI_rready,
    M13_AXI_rresp,
    M13_AXI_rvalid,
    M13_AXI_wdata,
    M13_AXI_wready,
    M13_AXI_wstrb,
    M13_AXI_wvalid,
    M14_ACLK,
    M14_ARESETN,
    M14_AXI_araddr,
    M14_AXI_arprot,
    M14_AXI_arready,
    M14_AXI_arvalid,
    M14_AXI_awaddr,
    M14_AXI_awprot,
    M14_AXI_awready,
    M14_AXI_awvalid,
    M14_AXI_bready,
    M14_AXI_bresp,
    M14_AXI_bvalid,
    M14_AXI_rdata,
    M14_AXI_rready,
    M14_AXI_rresp,
    M14_AXI_rvalid,
    M14_AXI_wdata,
    M14_AXI_wready,
    M14_AXI_wstrb,
    M14_AXI_wvalid,
    M15_ACLK,
    M15_ARESETN,
    M15_AXI_araddr,
    M15_AXI_arprot,
    M15_AXI_arready,
    M15_AXI_arvalid,
    M15_AXI_awaddr,
    M15_AXI_awprot,
    M15_AXI_awready,
    M15_AXI_awvalid,
    M15_AXI_bready,
    M15_AXI_bresp,
    M15_AXI_bvalid,
    M15_AXI_rdata,
    M15_AXI_rready,
    M15_AXI_rresp,
    M15_AXI_rvalid,
    M15_AXI_wdata,
    M15_AXI_wready,
    M15_AXI_wstrb,
    M15_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  output [2:0]M04_AXI_arprot;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  output [2:0]M04_AXI_awprot;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output M05_AXI_araddr;
  output M05_AXI_arprot;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output M05_AXI_awaddr;
  output M05_AXI_awprot;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input M05_AXI_bresp;
  input M05_AXI_bvalid;
  input M05_AXI_rdata;
  output M05_AXI_rready;
  input M05_AXI_rresp;
  input M05_AXI_rvalid;
  output M05_AXI_wdata;
  input M05_AXI_wready;
  output M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [31:0]M06_AXI_araddr;
  output [2:0]M06_AXI_arprot;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  output [2:0]M06_AXI_awprot;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output M07_AXI_araddr;
  output M07_AXI_arprot;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output M07_AXI_awaddr;
  output M07_AXI_awprot;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input M07_AXI_bresp;
  input M07_AXI_bvalid;
  input M07_AXI_rdata;
  output M07_AXI_rready;
  input M07_AXI_rresp;
  input M07_AXI_rvalid;
  output M07_AXI_wdata;
  input M07_AXI_wready;
  output M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input M08_ACLK;
  input M08_ARESETN;
  output M08_AXI_araddr;
  output M08_AXI_arprot;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output M08_AXI_awaddr;
  output M08_AXI_awprot;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input M08_AXI_bresp;
  input M08_AXI_bvalid;
  input M08_AXI_rdata;
  output M08_AXI_rready;
  input M08_AXI_rresp;
  input M08_AXI_rvalid;
  output M08_AXI_wdata;
  input M08_AXI_wready;
  output M08_AXI_wstrb;
  output M08_AXI_wvalid;
  input M09_ACLK;
  input M09_ARESETN;
  output M09_AXI_araddr;
  output M09_AXI_arprot;
  input M09_AXI_arready;
  output M09_AXI_arvalid;
  output M09_AXI_awaddr;
  output M09_AXI_awprot;
  input M09_AXI_awready;
  output M09_AXI_awvalid;
  output M09_AXI_bready;
  input M09_AXI_bresp;
  input M09_AXI_bvalid;
  input M09_AXI_rdata;
  output M09_AXI_rready;
  input M09_AXI_rresp;
  input M09_AXI_rvalid;
  output M09_AXI_wdata;
  input M09_AXI_wready;
  output M09_AXI_wstrb;
  output M09_AXI_wvalid;
  input M10_ACLK;
  input M10_ARESETN;
  output [31:0]M10_AXI_araddr;
  output [2:0]M10_AXI_arprot;
  input M10_AXI_arready;
  output M10_AXI_arvalid;
  output [31:0]M10_AXI_awaddr;
  output [2:0]M10_AXI_awprot;
  input M10_AXI_awready;
  output M10_AXI_awvalid;
  output M10_AXI_bready;
  input [1:0]M10_AXI_bresp;
  input M10_AXI_bvalid;
  input [31:0]M10_AXI_rdata;
  output M10_AXI_rready;
  input [1:0]M10_AXI_rresp;
  input M10_AXI_rvalid;
  output [31:0]M10_AXI_wdata;
  input M10_AXI_wready;
  output [3:0]M10_AXI_wstrb;
  output M10_AXI_wvalid;
  input M11_ACLK;
  input M11_ARESETN;
  output [31:0]M11_AXI_araddr;
  input M11_AXI_arready;
  output M11_AXI_arvalid;
  output [31:0]M11_AXI_awaddr;
  input M11_AXI_awready;
  output M11_AXI_awvalid;
  output M11_AXI_bready;
  input [1:0]M11_AXI_bresp;
  input M11_AXI_bvalid;
  input [31:0]M11_AXI_rdata;
  output M11_AXI_rready;
  input [1:0]M11_AXI_rresp;
  input M11_AXI_rvalid;
  output [31:0]M11_AXI_wdata;
  input M11_AXI_wready;
  output [3:0]M11_AXI_wstrb;
  output M11_AXI_wvalid;
  input M12_ACLK;
  input M12_ARESETN;
  output [31:0]M12_AXI_araddr;
  input M12_AXI_arready;
  output M12_AXI_arvalid;
  output [31:0]M12_AXI_awaddr;
  input M12_AXI_awready;
  output M12_AXI_awvalid;
  output M12_AXI_bready;
  input [1:0]M12_AXI_bresp;
  input M12_AXI_bvalid;
  input [31:0]M12_AXI_rdata;
  output M12_AXI_rready;
  input [1:0]M12_AXI_rresp;
  input M12_AXI_rvalid;
  output [31:0]M12_AXI_wdata;
  input M12_AXI_wready;
  output [3:0]M12_AXI_wstrb;
  output M12_AXI_wvalid;
  input M13_ACLK;
  input M13_ARESETN;
  output M13_AXI_araddr;
  output M13_AXI_arprot;
  input M13_AXI_arready;
  output M13_AXI_arvalid;
  output M13_AXI_awaddr;
  output M13_AXI_awprot;
  input M13_AXI_awready;
  output M13_AXI_awvalid;
  output M13_AXI_bready;
  input M13_AXI_bresp;
  input M13_AXI_bvalid;
  input M13_AXI_rdata;
  output M13_AXI_rready;
  input M13_AXI_rresp;
  input M13_AXI_rvalid;
  output M13_AXI_wdata;
  input M13_AXI_wready;
  output M13_AXI_wstrb;
  output M13_AXI_wvalid;
  input M14_ACLK;
  input M14_ARESETN;
  output [31:0]M14_AXI_araddr;
  output [2:0]M14_AXI_arprot;
  input M14_AXI_arready;
  output M14_AXI_arvalid;
  output [31:0]M14_AXI_awaddr;
  output [2:0]M14_AXI_awprot;
  input M14_AXI_awready;
  output M14_AXI_awvalid;
  output M14_AXI_bready;
  input [1:0]M14_AXI_bresp;
  input M14_AXI_bvalid;
  input [31:0]M14_AXI_rdata;
  output M14_AXI_rready;
  input [1:0]M14_AXI_rresp;
  input M14_AXI_rvalid;
  output [31:0]M14_AXI_wdata;
  input M14_AXI_wready;
  output [3:0]M14_AXI_wstrb;
  output M14_AXI_wvalid;
  input M15_ACLK;
  input M15_ARESETN;
  output M15_AXI_araddr;
  output M15_AXI_arprot;
  input M15_AXI_arready;
  output M15_AXI_arvalid;
  output M15_AXI_awaddr;
  output M15_AXI_awprot;
  input M15_AXI_awready;
  output M15_AXI_awvalid;
  output M15_AXI_bready;
  input M15_AXI_bresp;
  input M15_AXI_bvalid;
  input M15_AXI_rdata;
  output M15_AXI_rready;
  input M15_AXI_rresp;
  input M15_AXI_rvalid;
  output M15_AXI_wdata;
  input M15_AXI_wready;
  output M15_AXI_wstrb;
  output M15_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire AXI_C2C_axi_periph_ACLK_net;
  wire AXI_C2C_axi_periph_ARESETN_net;
  wire [31:0]AXI_C2C_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]AXI_C2C_axi_periph_to_s00_couplers_ARPROT;
  wire [0:0]AXI_C2C_axi_periph_to_s00_couplers_ARREADY;
  wire [0:0]AXI_C2C_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]AXI_C2C_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]AXI_C2C_axi_periph_to_s00_couplers_AWPROT;
  wire [0:0]AXI_C2C_axi_periph_to_s00_couplers_AWREADY;
  wire [0:0]AXI_C2C_axi_periph_to_s00_couplers_AWVALID;
  wire [0:0]AXI_C2C_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]AXI_C2C_axi_periph_to_s00_couplers_BRESP;
  wire [0:0]AXI_C2C_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]AXI_C2C_axi_periph_to_s00_couplers_RDATA;
  wire [0:0]AXI_C2C_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]AXI_C2C_axi_periph_to_s00_couplers_RRESP;
  wire [0:0]AXI_C2C_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]AXI_C2C_axi_periph_to_s00_couplers_WDATA;
  wire [0:0]AXI_C2C_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]AXI_C2C_axi_periph_to_s00_couplers_WSTRB;
  wire [0:0]AXI_C2C_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_AXI_C2C_axi_periph_ARADDR;
  wire [2:0]m00_couplers_to_AXI_C2C_axi_periph_ARPROT;
  wire m00_couplers_to_AXI_C2C_axi_periph_ARREADY;
  wire m00_couplers_to_AXI_C2C_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_AXI_C2C_axi_periph_AWADDR;
  wire [2:0]m00_couplers_to_AXI_C2C_axi_periph_AWPROT;
  wire m00_couplers_to_AXI_C2C_axi_periph_AWREADY;
  wire m00_couplers_to_AXI_C2C_axi_periph_AWVALID;
  wire m00_couplers_to_AXI_C2C_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_AXI_C2C_axi_periph_BRESP;
  wire m00_couplers_to_AXI_C2C_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_AXI_C2C_axi_periph_RDATA;
  wire m00_couplers_to_AXI_C2C_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_AXI_C2C_axi_periph_RRESP;
  wire m00_couplers_to_AXI_C2C_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_AXI_C2C_axi_periph_WDATA;
  wire m00_couplers_to_AXI_C2C_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_AXI_C2C_axi_periph_WSTRB;
  wire m00_couplers_to_AXI_C2C_axi_periph_WVALID;
  wire [31:0]m01_couplers_to_AXI_C2C_axi_periph_ARADDR;
  wire [2:0]m01_couplers_to_AXI_C2C_axi_periph_ARPROT;
  wire m01_couplers_to_AXI_C2C_axi_periph_ARREADY;
  wire m01_couplers_to_AXI_C2C_axi_periph_ARVALID;
  wire [31:0]m01_couplers_to_AXI_C2C_axi_periph_AWADDR;
  wire [2:0]m01_couplers_to_AXI_C2C_axi_periph_AWPROT;
  wire m01_couplers_to_AXI_C2C_axi_periph_AWREADY;
  wire m01_couplers_to_AXI_C2C_axi_periph_AWVALID;
  wire m01_couplers_to_AXI_C2C_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_AXI_C2C_axi_periph_BRESP;
  wire m01_couplers_to_AXI_C2C_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_AXI_C2C_axi_periph_RDATA;
  wire m01_couplers_to_AXI_C2C_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_AXI_C2C_axi_periph_RRESP;
  wire m01_couplers_to_AXI_C2C_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_AXI_C2C_axi_periph_WDATA;
  wire m01_couplers_to_AXI_C2C_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_AXI_C2C_axi_periph_WSTRB;
  wire m01_couplers_to_AXI_C2C_axi_periph_WVALID;
  wire [31:0]m02_couplers_to_AXI_C2C_axi_periph_ARADDR;
  wire [2:0]m02_couplers_to_AXI_C2C_axi_periph_ARPROT;
  wire m02_couplers_to_AXI_C2C_axi_periph_ARREADY;
  wire m02_couplers_to_AXI_C2C_axi_periph_ARVALID;
  wire [31:0]m02_couplers_to_AXI_C2C_axi_periph_AWADDR;
  wire [2:0]m02_couplers_to_AXI_C2C_axi_periph_AWPROT;
  wire m02_couplers_to_AXI_C2C_axi_periph_AWREADY;
  wire m02_couplers_to_AXI_C2C_axi_periph_AWVALID;
  wire m02_couplers_to_AXI_C2C_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_AXI_C2C_axi_periph_BRESP;
  wire m02_couplers_to_AXI_C2C_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_AXI_C2C_axi_periph_RDATA;
  wire m02_couplers_to_AXI_C2C_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_AXI_C2C_axi_periph_RRESP;
  wire m02_couplers_to_AXI_C2C_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_AXI_C2C_axi_periph_WDATA;
  wire m02_couplers_to_AXI_C2C_axi_periph_WREADY;
  wire [3:0]m02_couplers_to_AXI_C2C_axi_periph_WSTRB;
  wire m02_couplers_to_AXI_C2C_axi_periph_WVALID;
  wire [31:0]m03_couplers_to_AXI_C2C_axi_periph_ARADDR;
  wire [2:0]m03_couplers_to_AXI_C2C_axi_periph_ARPROT;
  wire m03_couplers_to_AXI_C2C_axi_periph_ARREADY;
  wire m03_couplers_to_AXI_C2C_axi_periph_ARVALID;
  wire [31:0]m03_couplers_to_AXI_C2C_axi_periph_AWADDR;
  wire [2:0]m03_couplers_to_AXI_C2C_axi_periph_AWPROT;
  wire m03_couplers_to_AXI_C2C_axi_periph_AWREADY;
  wire m03_couplers_to_AXI_C2C_axi_periph_AWVALID;
  wire m03_couplers_to_AXI_C2C_axi_periph_BREADY;
  wire [1:0]m03_couplers_to_AXI_C2C_axi_periph_BRESP;
  wire m03_couplers_to_AXI_C2C_axi_periph_BVALID;
  wire [31:0]m03_couplers_to_AXI_C2C_axi_periph_RDATA;
  wire m03_couplers_to_AXI_C2C_axi_periph_RREADY;
  wire [1:0]m03_couplers_to_AXI_C2C_axi_periph_RRESP;
  wire m03_couplers_to_AXI_C2C_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_AXI_C2C_axi_periph_WDATA;
  wire m03_couplers_to_AXI_C2C_axi_periph_WREADY;
  wire [3:0]m03_couplers_to_AXI_C2C_axi_periph_WSTRB;
  wire m03_couplers_to_AXI_C2C_axi_periph_WVALID;
  wire [31:0]m04_couplers_to_AXI_C2C_axi_periph_ARADDR;
  wire [2:0]m04_couplers_to_AXI_C2C_axi_periph_ARPROT;
  wire m04_couplers_to_AXI_C2C_axi_periph_ARREADY;
  wire m04_couplers_to_AXI_C2C_axi_periph_ARVALID;
  wire [31:0]m04_couplers_to_AXI_C2C_axi_periph_AWADDR;
  wire [2:0]m04_couplers_to_AXI_C2C_axi_periph_AWPROT;
  wire m04_couplers_to_AXI_C2C_axi_periph_AWREADY;
  wire m04_couplers_to_AXI_C2C_axi_periph_AWVALID;
  wire m04_couplers_to_AXI_C2C_axi_periph_BREADY;
  wire [1:0]m04_couplers_to_AXI_C2C_axi_periph_BRESP;
  wire m04_couplers_to_AXI_C2C_axi_periph_BVALID;
  wire [31:0]m04_couplers_to_AXI_C2C_axi_periph_RDATA;
  wire m04_couplers_to_AXI_C2C_axi_periph_RREADY;
  wire [1:0]m04_couplers_to_AXI_C2C_axi_periph_RRESP;
  wire m04_couplers_to_AXI_C2C_axi_periph_RVALID;
  wire [31:0]m04_couplers_to_AXI_C2C_axi_periph_WDATA;
  wire m04_couplers_to_AXI_C2C_axi_periph_WREADY;
  wire [3:0]m04_couplers_to_AXI_C2C_axi_periph_WSTRB;
  wire m04_couplers_to_AXI_C2C_axi_periph_WVALID;
  wire m05_couplers_to_AXI_C2C_axi_periph_ARADDR;
  wire m05_couplers_to_AXI_C2C_axi_periph_ARPROT;
  wire m05_couplers_to_AXI_C2C_axi_periph_ARREADY;
  wire m05_couplers_to_AXI_C2C_axi_periph_ARVALID;
  wire m05_couplers_to_AXI_C2C_axi_periph_AWADDR;
  wire m05_couplers_to_AXI_C2C_axi_periph_AWPROT;
  wire m05_couplers_to_AXI_C2C_axi_periph_AWREADY;
  wire m05_couplers_to_AXI_C2C_axi_periph_AWVALID;
  wire m05_couplers_to_AXI_C2C_axi_periph_BREADY;
  wire m05_couplers_to_AXI_C2C_axi_periph_BRESP;
  wire m05_couplers_to_AXI_C2C_axi_periph_BVALID;
  wire m05_couplers_to_AXI_C2C_axi_periph_RDATA;
  wire m05_couplers_to_AXI_C2C_axi_periph_RREADY;
  wire m05_couplers_to_AXI_C2C_axi_periph_RRESP;
  wire m05_couplers_to_AXI_C2C_axi_periph_RVALID;
  wire m05_couplers_to_AXI_C2C_axi_periph_WDATA;
  wire m05_couplers_to_AXI_C2C_axi_periph_WREADY;
  wire m05_couplers_to_AXI_C2C_axi_periph_WSTRB;
  wire m05_couplers_to_AXI_C2C_axi_periph_WVALID;
  wire [31:0]m06_couplers_to_AXI_C2C_axi_periph_ARADDR;
  wire [2:0]m06_couplers_to_AXI_C2C_axi_periph_ARPROT;
  wire m06_couplers_to_AXI_C2C_axi_periph_ARREADY;
  wire m06_couplers_to_AXI_C2C_axi_periph_ARVALID;
  wire [31:0]m06_couplers_to_AXI_C2C_axi_periph_AWADDR;
  wire [2:0]m06_couplers_to_AXI_C2C_axi_periph_AWPROT;
  wire m06_couplers_to_AXI_C2C_axi_periph_AWREADY;
  wire m06_couplers_to_AXI_C2C_axi_periph_AWVALID;
  wire m06_couplers_to_AXI_C2C_axi_periph_BREADY;
  wire [1:0]m06_couplers_to_AXI_C2C_axi_periph_BRESP;
  wire m06_couplers_to_AXI_C2C_axi_periph_BVALID;
  wire [31:0]m06_couplers_to_AXI_C2C_axi_periph_RDATA;
  wire m06_couplers_to_AXI_C2C_axi_periph_RREADY;
  wire [1:0]m06_couplers_to_AXI_C2C_axi_periph_RRESP;
  wire m06_couplers_to_AXI_C2C_axi_periph_RVALID;
  wire [31:0]m06_couplers_to_AXI_C2C_axi_periph_WDATA;
  wire m06_couplers_to_AXI_C2C_axi_periph_WREADY;
  wire [3:0]m06_couplers_to_AXI_C2C_axi_periph_WSTRB;
  wire m06_couplers_to_AXI_C2C_axi_periph_WVALID;
  wire m07_couplers_to_AXI_C2C_axi_periph_ARADDR;
  wire m07_couplers_to_AXI_C2C_axi_periph_ARPROT;
  wire m07_couplers_to_AXI_C2C_axi_periph_ARREADY;
  wire m07_couplers_to_AXI_C2C_axi_periph_ARVALID;
  wire m07_couplers_to_AXI_C2C_axi_periph_AWADDR;
  wire m07_couplers_to_AXI_C2C_axi_periph_AWPROT;
  wire m07_couplers_to_AXI_C2C_axi_periph_AWREADY;
  wire m07_couplers_to_AXI_C2C_axi_periph_AWVALID;
  wire m07_couplers_to_AXI_C2C_axi_periph_BREADY;
  wire m07_couplers_to_AXI_C2C_axi_periph_BRESP;
  wire m07_couplers_to_AXI_C2C_axi_periph_BVALID;
  wire m07_couplers_to_AXI_C2C_axi_periph_RDATA;
  wire m07_couplers_to_AXI_C2C_axi_periph_RREADY;
  wire m07_couplers_to_AXI_C2C_axi_periph_RRESP;
  wire m07_couplers_to_AXI_C2C_axi_periph_RVALID;
  wire m07_couplers_to_AXI_C2C_axi_periph_WDATA;
  wire m07_couplers_to_AXI_C2C_axi_periph_WREADY;
  wire m07_couplers_to_AXI_C2C_axi_periph_WSTRB;
  wire m07_couplers_to_AXI_C2C_axi_periph_WVALID;
  wire m08_couplers_to_AXI_C2C_axi_periph_ARADDR;
  wire m08_couplers_to_AXI_C2C_axi_periph_ARPROT;
  wire m08_couplers_to_AXI_C2C_axi_periph_ARREADY;
  wire m08_couplers_to_AXI_C2C_axi_periph_ARVALID;
  wire m08_couplers_to_AXI_C2C_axi_periph_AWADDR;
  wire m08_couplers_to_AXI_C2C_axi_periph_AWPROT;
  wire m08_couplers_to_AXI_C2C_axi_periph_AWREADY;
  wire m08_couplers_to_AXI_C2C_axi_periph_AWVALID;
  wire m08_couplers_to_AXI_C2C_axi_periph_BREADY;
  wire m08_couplers_to_AXI_C2C_axi_periph_BRESP;
  wire m08_couplers_to_AXI_C2C_axi_periph_BVALID;
  wire m08_couplers_to_AXI_C2C_axi_periph_RDATA;
  wire m08_couplers_to_AXI_C2C_axi_periph_RREADY;
  wire m08_couplers_to_AXI_C2C_axi_periph_RRESP;
  wire m08_couplers_to_AXI_C2C_axi_periph_RVALID;
  wire m08_couplers_to_AXI_C2C_axi_periph_WDATA;
  wire m08_couplers_to_AXI_C2C_axi_periph_WREADY;
  wire m08_couplers_to_AXI_C2C_axi_periph_WSTRB;
  wire m08_couplers_to_AXI_C2C_axi_periph_WVALID;
  wire m09_couplers_to_AXI_C2C_axi_periph_ARADDR;
  wire m09_couplers_to_AXI_C2C_axi_periph_ARPROT;
  wire m09_couplers_to_AXI_C2C_axi_periph_ARREADY;
  wire m09_couplers_to_AXI_C2C_axi_periph_ARVALID;
  wire m09_couplers_to_AXI_C2C_axi_periph_AWADDR;
  wire m09_couplers_to_AXI_C2C_axi_periph_AWPROT;
  wire m09_couplers_to_AXI_C2C_axi_periph_AWREADY;
  wire m09_couplers_to_AXI_C2C_axi_periph_AWVALID;
  wire m09_couplers_to_AXI_C2C_axi_periph_BREADY;
  wire m09_couplers_to_AXI_C2C_axi_periph_BRESP;
  wire m09_couplers_to_AXI_C2C_axi_periph_BVALID;
  wire m09_couplers_to_AXI_C2C_axi_periph_RDATA;
  wire m09_couplers_to_AXI_C2C_axi_periph_RREADY;
  wire m09_couplers_to_AXI_C2C_axi_periph_RRESP;
  wire m09_couplers_to_AXI_C2C_axi_periph_RVALID;
  wire m09_couplers_to_AXI_C2C_axi_periph_WDATA;
  wire m09_couplers_to_AXI_C2C_axi_periph_WREADY;
  wire m09_couplers_to_AXI_C2C_axi_periph_WSTRB;
  wire m09_couplers_to_AXI_C2C_axi_periph_WVALID;
  wire [31:0]m10_couplers_to_AXI_C2C_axi_periph_ARADDR;
  wire [2:0]m10_couplers_to_AXI_C2C_axi_periph_ARPROT;
  wire m10_couplers_to_AXI_C2C_axi_periph_ARREADY;
  wire m10_couplers_to_AXI_C2C_axi_periph_ARVALID;
  wire [31:0]m10_couplers_to_AXI_C2C_axi_periph_AWADDR;
  wire [2:0]m10_couplers_to_AXI_C2C_axi_periph_AWPROT;
  wire m10_couplers_to_AXI_C2C_axi_periph_AWREADY;
  wire m10_couplers_to_AXI_C2C_axi_periph_AWVALID;
  wire m10_couplers_to_AXI_C2C_axi_periph_BREADY;
  wire [1:0]m10_couplers_to_AXI_C2C_axi_periph_BRESP;
  wire m10_couplers_to_AXI_C2C_axi_periph_BVALID;
  wire [31:0]m10_couplers_to_AXI_C2C_axi_periph_RDATA;
  wire m10_couplers_to_AXI_C2C_axi_periph_RREADY;
  wire [1:0]m10_couplers_to_AXI_C2C_axi_periph_RRESP;
  wire m10_couplers_to_AXI_C2C_axi_periph_RVALID;
  wire [31:0]m10_couplers_to_AXI_C2C_axi_periph_WDATA;
  wire m10_couplers_to_AXI_C2C_axi_periph_WREADY;
  wire [3:0]m10_couplers_to_AXI_C2C_axi_periph_WSTRB;
  wire m10_couplers_to_AXI_C2C_axi_periph_WVALID;
  wire [31:0]m11_couplers_to_AXI_C2C_axi_periph_ARADDR;
  wire m11_couplers_to_AXI_C2C_axi_periph_ARREADY;
  wire m11_couplers_to_AXI_C2C_axi_periph_ARVALID;
  wire [31:0]m11_couplers_to_AXI_C2C_axi_periph_AWADDR;
  wire m11_couplers_to_AXI_C2C_axi_periph_AWREADY;
  wire m11_couplers_to_AXI_C2C_axi_periph_AWVALID;
  wire m11_couplers_to_AXI_C2C_axi_periph_BREADY;
  wire [1:0]m11_couplers_to_AXI_C2C_axi_periph_BRESP;
  wire m11_couplers_to_AXI_C2C_axi_periph_BVALID;
  wire [31:0]m11_couplers_to_AXI_C2C_axi_periph_RDATA;
  wire m11_couplers_to_AXI_C2C_axi_periph_RREADY;
  wire [1:0]m11_couplers_to_AXI_C2C_axi_periph_RRESP;
  wire m11_couplers_to_AXI_C2C_axi_periph_RVALID;
  wire [31:0]m11_couplers_to_AXI_C2C_axi_periph_WDATA;
  wire m11_couplers_to_AXI_C2C_axi_periph_WREADY;
  wire [3:0]m11_couplers_to_AXI_C2C_axi_periph_WSTRB;
  wire m11_couplers_to_AXI_C2C_axi_periph_WVALID;
  wire [31:0]m12_couplers_to_AXI_C2C_axi_periph_ARADDR;
  wire m12_couplers_to_AXI_C2C_axi_periph_ARREADY;
  wire m12_couplers_to_AXI_C2C_axi_periph_ARVALID;
  wire [31:0]m12_couplers_to_AXI_C2C_axi_periph_AWADDR;
  wire m12_couplers_to_AXI_C2C_axi_periph_AWREADY;
  wire m12_couplers_to_AXI_C2C_axi_periph_AWVALID;
  wire m12_couplers_to_AXI_C2C_axi_periph_BREADY;
  wire [1:0]m12_couplers_to_AXI_C2C_axi_periph_BRESP;
  wire m12_couplers_to_AXI_C2C_axi_periph_BVALID;
  wire [31:0]m12_couplers_to_AXI_C2C_axi_periph_RDATA;
  wire m12_couplers_to_AXI_C2C_axi_periph_RREADY;
  wire [1:0]m12_couplers_to_AXI_C2C_axi_periph_RRESP;
  wire m12_couplers_to_AXI_C2C_axi_periph_RVALID;
  wire [31:0]m12_couplers_to_AXI_C2C_axi_periph_WDATA;
  wire m12_couplers_to_AXI_C2C_axi_periph_WREADY;
  wire [3:0]m12_couplers_to_AXI_C2C_axi_periph_WSTRB;
  wire m12_couplers_to_AXI_C2C_axi_periph_WVALID;
  wire m13_couplers_to_AXI_C2C_axi_periph_ARADDR;
  wire m13_couplers_to_AXI_C2C_axi_periph_ARPROT;
  wire m13_couplers_to_AXI_C2C_axi_periph_ARREADY;
  wire m13_couplers_to_AXI_C2C_axi_periph_ARVALID;
  wire m13_couplers_to_AXI_C2C_axi_periph_AWADDR;
  wire m13_couplers_to_AXI_C2C_axi_periph_AWPROT;
  wire m13_couplers_to_AXI_C2C_axi_periph_AWREADY;
  wire m13_couplers_to_AXI_C2C_axi_periph_AWVALID;
  wire m13_couplers_to_AXI_C2C_axi_periph_BREADY;
  wire m13_couplers_to_AXI_C2C_axi_periph_BRESP;
  wire m13_couplers_to_AXI_C2C_axi_periph_BVALID;
  wire m13_couplers_to_AXI_C2C_axi_periph_RDATA;
  wire m13_couplers_to_AXI_C2C_axi_periph_RREADY;
  wire m13_couplers_to_AXI_C2C_axi_periph_RRESP;
  wire m13_couplers_to_AXI_C2C_axi_periph_RVALID;
  wire m13_couplers_to_AXI_C2C_axi_periph_WDATA;
  wire m13_couplers_to_AXI_C2C_axi_periph_WREADY;
  wire m13_couplers_to_AXI_C2C_axi_periph_WSTRB;
  wire m13_couplers_to_AXI_C2C_axi_periph_WVALID;
  wire [31:0]m14_couplers_to_AXI_C2C_axi_periph_ARADDR;
  wire [2:0]m14_couplers_to_AXI_C2C_axi_periph_ARPROT;
  wire m14_couplers_to_AXI_C2C_axi_periph_ARREADY;
  wire m14_couplers_to_AXI_C2C_axi_periph_ARVALID;
  wire [31:0]m14_couplers_to_AXI_C2C_axi_periph_AWADDR;
  wire [2:0]m14_couplers_to_AXI_C2C_axi_periph_AWPROT;
  wire m14_couplers_to_AXI_C2C_axi_periph_AWREADY;
  wire m14_couplers_to_AXI_C2C_axi_periph_AWVALID;
  wire m14_couplers_to_AXI_C2C_axi_periph_BREADY;
  wire [1:0]m14_couplers_to_AXI_C2C_axi_periph_BRESP;
  wire m14_couplers_to_AXI_C2C_axi_periph_BVALID;
  wire [31:0]m14_couplers_to_AXI_C2C_axi_periph_RDATA;
  wire m14_couplers_to_AXI_C2C_axi_periph_RREADY;
  wire [1:0]m14_couplers_to_AXI_C2C_axi_periph_RRESP;
  wire m14_couplers_to_AXI_C2C_axi_periph_RVALID;
  wire [31:0]m14_couplers_to_AXI_C2C_axi_periph_WDATA;
  wire m14_couplers_to_AXI_C2C_axi_periph_WREADY;
  wire [3:0]m14_couplers_to_AXI_C2C_axi_periph_WSTRB;
  wire m14_couplers_to_AXI_C2C_axi_periph_WVALID;
  wire m15_couplers_to_AXI_C2C_axi_periph_ARADDR;
  wire m15_couplers_to_AXI_C2C_axi_periph_ARPROT;
  wire m15_couplers_to_AXI_C2C_axi_periph_ARREADY;
  wire m15_couplers_to_AXI_C2C_axi_periph_ARVALID;
  wire m15_couplers_to_AXI_C2C_axi_periph_AWADDR;
  wire m15_couplers_to_AXI_C2C_axi_periph_AWPROT;
  wire m15_couplers_to_AXI_C2C_axi_periph_AWREADY;
  wire m15_couplers_to_AXI_C2C_axi_periph_AWVALID;
  wire m15_couplers_to_AXI_C2C_axi_periph_BREADY;
  wire m15_couplers_to_AXI_C2C_axi_periph_BRESP;
  wire m15_couplers_to_AXI_C2C_axi_periph_BVALID;
  wire m15_couplers_to_AXI_C2C_axi_periph_RDATA;
  wire m15_couplers_to_AXI_C2C_axi_periph_RREADY;
  wire m15_couplers_to_AXI_C2C_axi_periph_RRESP;
  wire m15_couplers_to_AXI_C2C_axi_periph_RVALID;
  wire m15_couplers_to_AXI_C2C_axi_periph_WDATA;
  wire m15_couplers_to_AXI_C2C_axi_periph_WREADY;
  wire m15_couplers_to_AXI_C2C_axi_periph_WSTRB;
  wire m15_couplers_to_AXI_C2C_axi_periph_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [287:256]xbar_to_m08_couplers_ARADDR;
  wire [26:24]xbar_to_m08_couplers_ARPROT;
  wire xbar_to_m08_couplers_ARREADY;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [287:256]xbar_to_m08_couplers_AWADDR;
  wire [26:24]xbar_to_m08_couplers_AWPROT;
  wire xbar_to_m08_couplers_AWREADY;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire xbar_to_m08_couplers_BRESP;
  wire xbar_to_m08_couplers_BVALID;
  wire xbar_to_m08_couplers_RDATA;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire xbar_to_m08_couplers_RRESP;
  wire xbar_to_m08_couplers_RVALID;
  wire [287:256]xbar_to_m08_couplers_WDATA;
  wire xbar_to_m08_couplers_WREADY;
  wire [35:32]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;
  wire [319:288]xbar_to_m09_couplers_ARADDR;
  wire [29:27]xbar_to_m09_couplers_ARPROT;
  wire xbar_to_m09_couplers_ARREADY;
  wire [9:9]xbar_to_m09_couplers_ARVALID;
  wire [319:288]xbar_to_m09_couplers_AWADDR;
  wire [29:27]xbar_to_m09_couplers_AWPROT;
  wire xbar_to_m09_couplers_AWREADY;
  wire [9:9]xbar_to_m09_couplers_AWVALID;
  wire [9:9]xbar_to_m09_couplers_BREADY;
  wire xbar_to_m09_couplers_BRESP;
  wire xbar_to_m09_couplers_BVALID;
  wire xbar_to_m09_couplers_RDATA;
  wire [9:9]xbar_to_m09_couplers_RREADY;
  wire xbar_to_m09_couplers_RRESP;
  wire xbar_to_m09_couplers_RVALID;
  wire [319:288]xbar_to_m09_couplers_WDATA;
  wire xbar_to_m09_couplers_WREADY;
  wire [39:36]xbar_to_m09_couplers_WSTRB;
  wire [9:9]xbar_to_m09_couplers_WVALID;
  wire [351:320]xbar_to_m10_couplers_ARADDR;
  wire [32:30]xbar_to_m10_couplers_ARPROT;
  wire xbar_to_m10_couplers_ARREADY;
  wire [10:10]xbar_to_m10_couplers_ARVALID;
  wire [351:320]xbar_to_m10_couplers_AWADDR;
  wire [32:30]xbar_to_m10_couplers_AWPROT;
  wire xbar_to_m10_couplers_AWREADY;
  wire [10:10]xbar_to_m10_couplers_AWVALID;
  wire [10:10]xbar_to_m10_couplers_BREADY;
  wire [1:0]xbar_to_m10_couplers_BRESP;
  wire xbar_to_m10_couplers_BVALID;
  wire [31:0]xbar_to_m10_couplers_RDATA;
  wire [10:10]xbar_to_m10_couplers_RREADY;
  wire [1:0]xbar_to_m10_couplers_RRESP;
  wire xbar_to_m10_couplers_RVALID;
  wire [351:320]xbar_to_m10_couplers_WDATA;
  wire xbar_to_m10_couplers_WREADY;
  wire [43:40]xbar_to_m10_couplers_WSTRB;
  wire [10:10]xbar_to_m10_couplers_WVALID;
  wire [383:352]xbar_to_m11_couplers_ARADDR;
  wire xbar_to_m11_couplers_ARREADY;
  wire [11:11]xbar_to_m11_couplers_ARVALID;
  wire [383:352]xbar_to_m11_couplers_AWADDR;
  wire xbar_to_m11_couplers_AWREADY;
  wire [11:11]xbar_to_m11_couplers_AWVALID;
  wire [11:11]xbar_to_m11_couplers_BREADY;
  wire [1:0]xbar_to_m11_couplers_BRESP;
  wire xbar_to_m11_couplers_BVALID;
  wire [31:0]xbar_to_m11_couplers_RDATA;
  wire [11:11]xbar_to_m11_couplers_RREADY;
  wire [1:0]xbar_to_m11_couplers_RRESP;
  wire xbar_to_m11_couplers_RVALID;
  wire [383:352]xbar_to_m11_couplers_WDATA;
  wire xbar_to_m11_couplers_WREADY;
  wire [47:44]xbar_to_m11_couplers_WSTRB;
  wire [11:11]xbar_to_m11_couplers_WVALID;
  wire [415:384]xbar_to_m12_couplers_ARADDR;
  wire xbar_to_m12_couplers_ARREADY;
  wire [12:12]xbar_to_m12_couplers_ARVALID;
  wire [415:384]xbar_to_m12_couplers_AWADDR;
  wire xbar_to_m12_couplers_AWREADY;
  wire [12:12]xbar_to_m12_couplers_AWVALID;
  wire [12:12]xbar_to_m12_couplers_BREADY;
  wire [1:0]xbar_to_m12_couplers_BRESP;
  wire xbar_to_m12_couplers_BVALID;
  wire [31:0]xbar_to_m12_couplers_RDATA;
  wire [12:12]xbar_to_m12_couplers_RREADY;
  wire [1:0]xbar_to_m12_couplers_RRESP;
  wire xbar_to_m12_couplers_RVALID;
  wire [415:384]xbar_to_m12_couplers_WDATA;
  wire xbar_to_m12_couplers_WREADY;
  wire [51:48]xbar_to_m12_couplers_WSTRB;
  wire [12:12]xbar_to_m12_couplers_WVALID;
  wire [447:416]xbar_to_m13_couplers_ARADDR;
  wire [41:39]xbar_to_m13_couplers_ARPROT;
  wire xbar_to_m13_couplers_ARREADY;
  wire [13:13]xbar_to_m13_couplers_ARVALID;
  wire [447:416]xbar_to_m13_couplers_AWADDR;
  wire [41:39]xbar_to_m13_couplers_AWPROT;
  wire xbar_to_m13_couplers_AWREADY;
  wire [13:13]xbar_to_m13_couplers_AWVALID;
  wire [13:13]xbar_to_m13_couplers_BREADY;
  wire xbar_to_m13_couplers_BRESP;
  wire xbar_to_m13_couplers_BVALID;
  wire xbar_to_m13_couplers_RDATA;
  wire [13:13]xbar_to_m13_couplers_RREADY;
  wire xbar_to_m13_couplers_RRESP;
  wire xbar_to_m13_couplers_RVALID;
  wire [447:416]xbar_to_m13_couplers_WDATA;
  wire xbar_to_m13_couplers_WREADY;
  wire [55:52]xbar_to_m13_couplers_WSTRB;
  wire [13:13]xbar_to_m13_couplers_WVALID;
  wire [479:448]xbar_to_m14_couplers_ARADDR;
  wire [44:42]xbar_to_m14_couplers_ARPROT;
  wire xbar_to_m14_couplers_ARREADY;
  wire [14:14]xbar_to_m14_couplers_ARVALID;
  wire [479:448]xbar_to_m14_couplers_AWADDR;
  wire [44:42]xbar_to_m14_couplers_AWPROT;
  wire xbar_to_m14_couplers_AWREADY;
  wire [14:14]xbar_to_m14_couplers_AWVALID;
  wire [14:14]xbar_to_m14_couplers_BREADY;
  wire [1:0]xbar_to_m14_couplers_BRESP;
  wire xbar_to_m14_couplers_BVALID;
  wire [31:0]xbar_to_m14_couplers_RDATA;
  wire [14:14]xbar_to_m14_couplers_RREADY;
  wire [1:0]xbar_to_m14_couplers_RRESP;
  wire xbar_to_m14_couplers_RVALID;
  wire [479:448]xbar_to_m14_couplers_WDATA;
  wire xbar_to_m14_couplers_WREADY;
  wire [59:56]xbar_to_m14_couplers_WSTRB;
  wire [14:14]xbar_to_m14_couplers_WVALID;
  wire [511:480]xbar_to_m15_couplers_ARADDR;
  wire [47:45]xbar_to_m15_couplers_ARPROT;
  wire xbar_to_m15_couplers_ARREADY;
  wire [15:15]xbar_to_m15_couplers_ARVALID;
  wire [511:480]xbar_to_m15_couplers_AWADDR;
  wire [47:45]xbar_to_m15_couplers_AWPROT;
  wire xbar_to_m15_couplers_AWREADY;
  wire [15:15]xbar_to_m15_couplers_AWVALID;
  wire [15:15]xbar_to_m15_couplers_BREADY;
  wire xbar_to_m15_couplers_BRESP;
  wire xbar_to_m15_couplers_BVALID;
  wire xbar_to_m15_couplers_RDATA;
  wire [15:15]xbar_to_m15_couplers_RREADY;
  wire xbar_to_m15_couplers_RRESP;
  wire xbar_to_m15_couplers_RVALID;
  wire [511:480]xbar_to_m15_couplers_WDATA;
  wire xbar_to_m15_couplers_WREADY;
  wire [63:60]xbar_to_m15_couplers_WSTRB;
  wire [15:15]xbar_to_m15_couplers_WVALID;
  wire [47:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [47:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign AXI_C2C_axi_periph_ACLK_net = ACLK;
  assign AXI_C2C_axi_periph_ARESETN_net = ARESETN;
  assign AXI_C2C_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign AXI_C2C_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[1:0];
  assign AXI_C2C_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign AXI_C2C_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign AXI_C2C_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[1:0];
  assign AXI_C2C_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign AXI_C2C_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign AXI_C2C_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign AXI_C2C_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign AXI_C2C_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign AXI_C2C_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign M00_AXI_araddr[31:0] = m00_couplers_to_AXI_C2C_axi_periph_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_AXI_C2C_axi_periph_ARPROT;
  assign M00_AXI_arvalid = m00_couplers_to_AXI_C2C_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_AXI_C2C_axi_periph_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_AXI_C2C_axi_periph_AWPROT;
  assign M00_AXI_awvalid = m00_couplers_to_AXI_C2C_axi_periph_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_AXI_C2C_axi_periph_BREADY;
  assign M00_AXI_rready = m00_couplers_to_AXI_C2C_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_AXI_C2C_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_AXI_C2C_axi_periph_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_AXI_C2C_axi_periph_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_AXI_C2C_axi_periph_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_AXI_C2C_axi_periph_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_AXI_C2C_axi_periph_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_AXI_C2C_axi_periph_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_AXI_C2C_axi_periph_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_AXI_C2C_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_AXI_C2C_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_AXI_C2C_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_AXI_C2C_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_AXI_C2C_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_AXI_C2C_axi_periph_WVALID;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_AXI_C2C_axi_periph_ARADDR;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_AXI_C2C_axi_periph_ARPROT;
  assign M02_AXI_arvalid = m02_couplers_to_AXI_C2C_axi_periph_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_AXI_C2C_axi_periph_AWADDR;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_AXI_C2C_axi_periph_AWPROT;
  assign M02_AXI_awvalid = m02_couplers_to_AXI_C2C_axi_periph_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_AXI_C2C_axi_periph_BREADY;
  assign M02_AXI_rready = m02_couplers_to_AXI_C2C_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_AXI_C2C_axi_periph_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_AXI_C2C_axi_periph_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_AXI_C2C_axi_periph_WVALID;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_AXI_C2C_axi_periph_ARADDR;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_AXI_C2C_axi_periph_ARPROT;
  assign M03_AXI_arvalid = m03_couplers_to_AXI_C2C_axi_periph_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_AXI_C2C_axi_periph_AWADDR;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_AXI_C2C_axi_periph_AWPROT;
  assign M03_AXI_awvalid = m03_couplers_to_AXI_C2C_axi_periph_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_AXI_C2C_axi_periph_BREADY;
  assign M03_AXI_rready = m03_couplers_to_AXI_C2C_axi_periph_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_AXI_C2C_axi_periph_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_AXI_C2C_axi_periph_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_AXI_C2C_axi_periph_WVALID;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_AXI_C2C_axi_periph_ARADDR;
  assign M04_AXI_arprot[2:0] = m04_couplers_to_AXI_C2C_axi_periph_ARPROT;
  assign M04_AXI_arvalid = m04_couplers_to_AXI_C2C_axi_periph_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_AXI_C2C_axi_periph_AWADDR;
  assign M04_AXI_awprot[2:0] = m04_couplers_to_AXI_C2C_axi_periph_AWPROT;
  assign M04_AXI_awvalid = m04_couplers_to_AXI_C2C_axi_periph_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_AXI_C2C_axi_periph_BREADY;
  assign M04_AXI_rready = m04_couplers_to_AXI_C2C_axi_periph_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_AXI_C2C_axi_periph_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_AXI_C2C_axi_periph_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_AXI_C2C_axi_periph_WVALID;
  assign M05_AXI_araddr = m05_couplers_to_AXI_C2C_axi_periph_ARADDR;
  assign M05_AXI_arprot = m05_couplers_to_AXI_C2C_axi_periph_ARPROT;
  assign M05_AXI_arvalid = m05_couplers_to_AXI_C2C_axi_periph_ARVALID;
  assign M05_AXI_awaddr = m05_couplers_to_AXI_C2C_axi_periph_AWADDR;
  assign M05_AXI_awprot = m05_couplers_to_AXI_C2C_axi_periph_AWPROT;
  assign M05_AXI_awvalid = m05_couplers_to_AXI_C2C_axi_periph_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_AXI_C2C_axi_periph_BREADY;
  assign M05_AXI_rready = m05_couplers_to_AXI_C2C_axi_periph_RREADY;
  assign M05_AXI_wdata = m05_couplers_to_AXI_C2C_axi_periph_WDATA;
  assign M05_AXI_wstrb = m05_couplers_to_AXI_C2C_axi_periph_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_AXI_C2C_axi_periph_WVALID;
  assign M06_AXI_araddr[31:0] = m06_couplers_to_AXI_C2C_axi_periph_ARADDR;
  assign M06_AXI_arprot[2:0] = m06_couplers_to_AXI_C2C_axi_periph_ARPROT;
  assign M06_AXI_arvalid = m06_couplers_to_AXI_C2C_axi_periph_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_AXI_C2C_axi_periph_AWADDR;
  assign M06_AXI_awprot[2:0] = m06_couplers_to_AXI_C2C_axi_periph_AWPROT;
  assign M06_AXI_awvalid = m06_couplers_to_AXI_C2C_axi_periph_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_AXI_C2C_axi_periph_BREADY;
  assign M06_AXI_rready = m06_couplers_to_AXI_C2C_axi_periph_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_AXI_C2C_axi_periph_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_AXI_C2C_axi_periph_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_AXI_C2C_axi_periph_WVALID;
  assign M07_AXI_araddr = m07_couplers_to_AXI_C2C_axi_periph_ARADDR;
  assign M07_AXI_arprot = m07_couplers_to_AXI_C2C_axi_periph_ARPROT;
  assign M07_AXI_arvalid = m07_couplers_to_AXI_C2C_axi_periph_ARVALID;
  assign M07_AXI_awaddr = m07_couplers_to_AXI_C2C_axi_periph_AWADDR;
  assign M07_AXI_awprot = m07_couplers_to_AXI_C2C_axi_periph_AWPROT;
  assign M07_AXI_awvalid = m07_couplers_to_AXI_C2C_axi_periph_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_AXI_C2C_axi_periph_BREADY;
  assign M07_AXI_rready = m07_couplers_to_AXI_C2C_axi_periph_RREADY;
  assign M07_AXI_wdata = m07_couplers_to_AXI_C2C_axi_periph_WDATA;
  assign M07_AXI_wstrb = m07_couplers_to_AXI_C2C_axi_periph_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_AXI_C2C_axi_periph_WVALID;
  assign M08_AXI_araddr = m08_couplers_to_AXI_C2C_axi_periph_ARADDR;
  assign M08_AXI_arprot = m08_couplers_to_AXI_C2C_axi_periph_ARPROT;
  assign M08_AXI_arvalid = m08_couplers_to_AXI_C2C_axi_periph_ARVALID;
  assign M08_AXI_awaddr = m08_couplers_to_AXI_C2C_axi_periph_AWADDR;
  assign M08_AXI_awprot = m08_couplers_to_AXI_C2C_axi_periph_AWPROT;
  assign M08_AXI_awvalid = m08_couplers_to_AXI_C2C_axi_periph_AWVALID;
  assign M08_AXI_bready = m08_couplers_to_AXI_C2C_axi_periph_BREADY;
  assign M08_AXI_rready = m08_couplers_to_AXI_C2C_axi_periph_RREADY;
  assign M08_AXI_wdata = m08_couplers_to_AXI_C2C_axi_periph_WDATA;
  assign M08_AXI_wstrb = m08_couplers_to_AXI_C2C_axi_periph_WSTRB;
  assign M08_AXI_wvalid = m08_couplers_to_AXI_C2C_axi_periph_WVALID;
  assign M09_AXI_araddr = m09_couplers_to_AXI_C2C_axi_periph_ARADDR;
  assign M09_AXI_arprot = m09_couplers_to_AXI_C2C_axi_periph_ARPROT;
  assign M09_AXI_arvalid = m09_couplers_to_AXI_C2C_axi_periph_ARVALID;
  assign M09_AXI_awaddr = m09_couplers_to_AXI_C2C_axi_periph_AWADDR;
  assign M09_AXI_awprot = m09_couplers_to_AXI_C2C_axi_periph_AWPROT;
  assign M09_AXI_awvalid = m09_couplers_to_AXI_C2C_axi_periph_AWVALID;
  assign M09_AXI_bready = m09_couplers_to_AXI_C2C_axi_periph_BREADY;
  assign M09_AXI_rready = m09_couplers_to_AXI_C2C_axi_periph_RREADY;
  assign M09_AXI_wdata = m09_couplers_to_AXI_C2C_axi_periph_WDATA;
  assign M09_AXI_wstrb = m09_couplers_to_AXI_C2C_axi_periph_WSTRB;
  assign M09_AXI_wvalid = m09_couplers_to_AXI_C2C_axi_periph_WVALID;
  assign M10_AXI_araddr[31:0] = m10_couplers_to_AXI_C2C_axi_periph_ARADDR;
  assign M10_AXI_arprot[2:0] = m10_couplers_to_AXI_C2C_axi_periph_ARPROT;
  assign M10_AXI_arvalid = m10_couplers_to_AXI_C2C_axi_periph_ARVALID;
  assign M10_AXI_awaddr[31:0] = m10_couplers_to_AXI_C2C_axi_periph_AWADDR;
  assign M10_AXI_awprot[2:0] = m10_couplers_to_AXI_C2C_axi_periph_AWPROT;
  assign M10_AXI_awvalid = m10_couplers_to_AXI_C2C_axi_periph_AWVALID;
  assign M10_AXI_bready = m10_couplers_to_AXI_C2C_axi_periph_BREADY;
  assign M10_AXI_rready = m10_couplers_to_AXI_C2C_axi_periph_RREADY;
  assign M10_AXI_wdata[31:0] = m10_couplers_to_AXI_C2C_axi_periph_WDATA;
  assign M10_AXI_wstrb[3:0] = m10_couplers_to_AXI_C2C_axi_periph_WSTRB;
  assign M10_AXI_wvalid = m10_couplers_to_AXI_C2C_axi_periph_WVALID;
  assign M11_AXI_araddr[31:0] = m11_couplers_to_AXI_C2C_axi_periph_ARADDR;
  assign M11_AXI_arvalid = m11_couplers_to_AXI_C2C_axi_periph_ARVALID;
  assign M11_AXI_awaddr[31:0] = m11_couplers_to_AXI_C2C_axi_periph_AWADDR;
  assign M11_AXI_awvalid = m11_couplers_to_AXI_C2C_axi_periph_AWVALID;
  assign M11_AXI_bready = m11_couplers_to_AXI_C2C_axi_periph_BREADY;
  assign M11_AXI_rready = m11_couplers_to_AXI_C2C_axi_periph_RREADY;
  assign M11_AXI_wdata[31:0] = m11_couplers_to_AXI_C2C_axi_periph_WDATA;
  assign M11_AXI_wstrb[3:0] = m11_couplers_to_AXI_C2C_axi_periph_WSTRB;
  assign M11_AXI_wvalid = m11_couplers_to_AXI_C2C_axi_periph_WVALID;
  assign M12_AXI_araddr[31:0] = m12_couplers_to_AXI_C2C_axi_periph_ARADDR;
  assign M12_AXI_arvalid = m12_couplers_to_AXI_C2C_axi_periph_ARVALID;
  assign M12_AXI_awaddr[31:0] = m12_couplers_to_AXI_C2C_axi_periph_AWADDR;
  assign M12_AXI_awvalid = m12_couplers_to_AXI_C2C_axi_periph_AWVALID;
  assign M12_AXI_bready = m12_couplers_to_AXI_C2C_axi_periph_BREADY;
  assign M12_AXI_rready = m12_couplers_to_AXI_C2C_axi_periph_RREADY;
  assign M12_AXI_wdata[31:0] = m12_couplers_to_AXI_C2C_axi_periph_WDATA;
  assign M12_AXI_wstrb[3:0] = m12_couplers_to_AXI_C2C_axi_periph_WSTRB;
  assign M12_AXI_wvalid = m12_couplers_to_AXI_C2C_axi_periph_WVALID;
  assign M13_AXI_araddr = m13_couplers_to_AXI_C2C_axi_periph_ARADDR;
  assign M13_AXI_arprot = m13_couplers_to_AXI_C2C_axi_periph_ARPROT;
  assign M13_AXI_arvalid = m13_couplers_to_AXI_C2C_axi_periph_ARVALID;
  assign M13_AXI_awaddr = m13_couplers_to_AXI_C2C_axi_periph_AWADDR;
  assign M13_AXI_awprot = m13_couplers_to_AXI_C2C_axi_periph_AWPROT;
  assign M13_AXI_awvalid = m13_couplers_to_AXI_C2C_axi_periph_AWVALID;
  assign M13_AXI_bready = m13_couplers_to_AXI_C2C_axi_periph_BREADY;
  assign M13_AXI_rready = m13_couplers_to_AXI_C2C_axi_periph_RREADY;
  assign M13_AXI_wdata = m13_couplers_to_AXI_C2C_axi_periph_WDATA;
  assign M13_AXI_wstrb = m13_couplers_to_AXI_C2C_axi_periph_WSTRB;
  assign M13_AXI_wvalid = m13_couplers_to_AXI_C2C_axi_periph_WVALID;
  assign M14_AXI_araddr[31:0] = m14_couplers_to_AXI_C2C_axi_periph_ARADDR;
  assign M14_AXI_arprot[2:0] = m14_couplers_to_AXI_C2C_axi_periph_ARPROT;
  assign M14_AXI_arvalid = m14_couplers_to_AXI_C2C_axi_periph_ARVALID;
  assign M14_AXI_awaddr[31:0] = m14_couplers_to_AXI_C2C_axi_periph_AWADDR;
  assign M14_AXI_awprot[2:0] = m14_couplers_to_AXI_C2C_axi_periph_AWPROT;
  assign M14_AXI_awvalid = m14_couplers_to_AXI_C2C_axi_periph_AWVALID;
  assign M14_AXI_bready = m14_couplers_to_AXI_C2C_axi_periph_BREADY;
  assign M14_AXI_rready = m14_couplers_to_AXI_C2C_axi_periph_RREADY;
  assign M14_AXI_wdata[31:0] = m14_couplers_to_AXI_C2C_axi_periph_WDATA;
  assign M14_AXI_wstrb[3:0] = m14_couplers_to_AXI_C2C_axi_periph_WSTRB;
  assign M14_AXI_wvalid = m14_couplers_to_AXI_C2C_axi_periph_WVALID;
  assign M15_AXI_araddr = m15_couplers_to_AXI_C2C_axi_periph_ARADDR;
  assign M15_AXI_arprot = m15_couplers_to_AXI_C2C_axi_periph_ARPROT;
  assign M15_AXI_arvalid = m15_couplers_to_AXI_C2C_axi_periph_ARVALID;
  assign M15_AXI_awaddr = m15_couplers_to_AXI_C2C_axi_periph_AWADDR;
  assign M15_AXI_awprot = m15_couplers_to_AXI_C2C_axi_periph_AWPROT;
  assign M15_AXI_awvalid = m15_couplers_to_AXI_C2C_axi_periph_AWVALID;
  assign M15_AXI_bready = m15_couplers_to_AXI_C2C_axi_periph_BREADY;
  assign M15_AXI_rready = m15_couplers_to_AXI_C2C_axi_periph_RREADY;
  assign M15_AXI_wdata = m15_couplers_to_AXI_C2C_axi_periph_WDATA;
  assign M15_AXI_wstrb = m15_couplers_to_AXI_C2C_axi_periph_WSTRB;
  assign M15_AXI_wvalid = m15_couplers_to_AXI_C2C_axi_periph_WVALID;
  assign S00_AXI_arready[0] = AXI_C2C_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = AXI_C2C_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = AXI_C2C_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = AXI_C2C_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = AXI_C2C_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = AXI_C2C_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = AXI_C2C_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = AXI_C2C_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_AXI_C2C_axi_periph_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_AXI_C2C_axi_periph_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_AXI_C2C_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_AXI_C2C_axi_periph_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_AXI_C2C_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_AXI_C2C_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_AXI_C2C_axi_periph_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_AXI_C2C_axi_periph_WREADY = M00_AXI_wready;
  assign m01_couplers_to_AXI_C2C_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_AXI_C2C_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_AXI_C2C_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_AXI_C2C_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_AXI_C2C_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_AXI_C2C_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_AXI_C2C_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_AXI_C2C_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_AXI_C2C_axi_periph_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_AXI_C2C_axi_periph_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_AXI_C2C_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_AXI_C2C_axi_periph_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_AXI_C2C_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_AXI_C2C_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_AXI_C2C_axi_periph_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_AXI_C2C_axi_periph_WREADY = M02_AXI_wready;
  assign m03_couplers_to_AXI_C2C_axi_periph_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_AXI_C2C_axi_periph_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_AXI_C2C_axi_periph_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_AXI_C2C_axi_periph_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_AXI_C2C_axi_periph_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_AXI_C2C_axi_periph_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_AXI_C2C_axi_periph_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_AXI_C2C_axi_periph_WREADY = M03_AXI_wready;
  assign m04_couplers_to_AXI_C2C_axi_periph_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_AXI_C2C_axi_periph_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_AXI_C2C_axi_periph_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_AXI_C2C_axi_periph_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_AXI_C2C_axi_periph_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_AXI_C2C_axi_periph_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_AXI_C2C_axi_periph_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_AXI_C2C_axi_periph_WREADY = M04_AXI_wready;
  assign m05_couplers_to_AXI_C2C_axi_periph_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_AXI_C2C_axi_periph_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_AXI_C2C_axi_periph_BRESP = M05_AXI_bresp;
  assign m05_couplers_to_AXI_C2C_axi_periph_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_AXI_C2C_axi_periph_RDATA = M05_AXI_rdata;
  assign m05_couplers_to_AXI_C2C_axi_periph_RRESP = M05_AXI_rresp;
  assign m05_couplers_to_AXI_C2C_axi_periph_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_AXI_C2C_axi_periph_WREADY = M05_AXI_wready;
  assign m06_couplers_to_AXI_C2C_axi_periph_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_AXI_C2C_axi_periph_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_AXI_C2C_axi_periph_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_AXI_C2C_axi_periph_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_AXI_C2C_axi_periph_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_AXI_C2C_axi_periph_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_AXI_C2C_axi_periph_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_AXI_C2C_axi_periph_WREADY = M06_AXI_wready;
  assign m07_couplers_to_AXI_C2C_axi_periph_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_AXI_C2C_axi_periph_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_AXI_C2C_axi_periph_BRESP = M07_AXI_bresp;
  assign m07_couplers_to_AXI_C2C_axi_periph_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_AXI_C2C_axi_periph_RDATA = M07_AXI_rdata;
  assign m07_couplers_to_AXI_C2C_axi_periph_RRESP = M07_AXI_rresp;
  assign m07_couplers_to_AXI_C2C_axi_periph_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_AXI_C2C_axi_periph_WREADY = M07_AXI_wready;
  assign m08_couplers_to_AXI_C2C_axi_periph_ARREADY = M08_AXI_arready;
  assign m08_couplers_to_AXI_C2C_axi_periph_AWREADY = M08_AXI_awready;
  assign m08_couplers_to_AXI_C2C_axi_periph_BRESP = M08_AXI_bresp;
  assign m08_couplers_to_AXI_C2C_axi_periph_BVALID = M08_AXI_bvalid;
  assign m08_couplers_to_AXI_C2C_axi_periph_RDATA = M08_AXI_rdata;
  assign m08_couplers_to_AXI_C2C_axi_periph_RRESP = M08_AXI_rresp;
  assign m08_couplers_to_AXI_C2C_axi_periph_RVALID = M08_AXI_rvalid;
  assign m08_couplers_to_AXI_C2C_axi_periph_WREADY = M08_AXI_wready;
  assign m09_couplers_to_AXI_C2C_axi_periph_ARREADY = M09_AXI_arready;
  assign m09_couplers_to_AXI_C2C_axi_periph_AWREADY = M09_AXI_awready;
  assign m09_couplers_to_AXI_C2C_axi_periph_BRESP = M09_AXI_bresp;
  assign m09_couplers_to_AXI_C2C_axi_periph_BVALID = M09_AXI_bvalid;
  assign m09_couplers_to_AXI_C2C_axi_periph_RDATA = M09_AXI_rdata;
  assign m09_couplers_to_AXI_C2C_axi_periph_RRESP = M09_AXI_rresp;
  assign m09_couplers_to_AXI_C2C_axi_periph_RVALID = M09_AXI_rvalid;
  assign m09_couplers_to_AXI_C2C_axi_periph_WREADY = M09_AXI_wready;
  assign m10_couplers_to_AXI_C2C_axi_periph_ARREADY = M10_AXI_arready;
  assign m10_couplers_to_AXI_C2C_axi_periph_AWREADY = M10_AXI_awready;
  assign m10_couplers_to_AXI_C2C_axi_periph_BRESP = M10_AXI_bresp[1:0];
  assign m10_couplers_to_AXI_C2C_axi_periph_BVALID = M10_AXI_bvalid;
  assign m10_couplers_to_AXI_C2C_axi_periph_RDATA = M10_AXI_rdata[31:0];
  assign m10_couplers_to_AXI_C2C_axi_periph_RRESP = M10_AXI_rresp[1:0];
  assign m10_couplers_to_AXI_C2C_axi_periph_RVALID = M10_AXI_rvalid;
  assign m10_couplers_to_AXI_C2C_axi_periph_WREADY = M10_AXI_wready;
  assign m11_couplers_to_AXI_C2C_axi_periph_ARREADY = M11_AXI_arready;
  assign m11_couplers_to_AXI_C2C_axi_periph_AWREADY = M11_AXI_awready;
  assign m11_couplers_to_AXI_C2C_axi_periph_BRESP = M11_AXI_bresp[1:0];
  assign m11_couplers_to_AXI_C2C_axi_periph_BVALID = M11_AXI_bvalid;
  assign m11_couplers_to_AXI_C2C_axi_periph_RDATA = M11_AXI_rdata[31:0];
  assign m11_couplers_to_AXI_C2C_axi_periph_RRESP = M11_AXI_rresp[1:0];
  assign m11_couplers_to_AXI_C2C_axi_periph_RVALID = M11_AXI_rvalid;
  assign m11_couplers_to_AXI_C2C_axi_periph_WREADY = M11_AXI_wready;
  assign m12_couplers_to_AXI_C2C_axi_periph_ARREADY = M12_AXI_arready;
  assign m12_couplers_to_AXI_C2C_axi_periph_AWREADY = M12_AXI_awready;
  assign m12_couplers_to_AXI_C2C_axi_periph_BRESP = M12_AXI_bresp[1:0];
  assign m12_couplers_to_AXI_C2C_axi_periph_BVALID = M12_AXI_bvalid;
  assign m12_couplers_to_AXI_C2C_axi_periph_RDATA = M12_AXI_rdata[31:0];
  assign m12_couplers_to_AXI_C2C_axi_periph_RRESP = M12_AXI_rresp[1:0];
  assign m12_couplers_to_AXI_C2C_axi_periph_RVALID = M12_AXI_rvalid;
  assign m12_couplers_to_AXI_C2C_axi_periph_WREADY = M12_AXI_wready;
  assign m13_couplers_to_AXI_C2C_axi_periph_ARREADY = M13_AXI_arready;
  assign m13_couplers_to_AXI_C2C_axi_periph_AWREADY = M13_AXI_awready;
  assign m13_couplers_to_AXI_C2C_axi_periph_BRESP = M13_AXI_bresp;
  assign m13_couplers_to_AXI_C2C_axi_periph_BVALID = M13_AXI_bvalid;
  assign m13_couplers_to_AXI_C2C_axi_periph_RDATA = M13_AXI_rdata;
  assign m13_couplers_to_AXI_C2C_axi_periph_RRESP = M13_AXI_rresp;
  assign m13_couplers_to_AXI_C2C_axi_periph_RVALID = M13_AXI_rvalid;
  assign m13_couplers_to_AXI_C2C_axi_periph_WREADY = M13_AXI_wready;
  assign m14_couplers_to_AXI_C2C_axi_periph_ARREADY = M14_AXI_arready;
  assign m14_couplers_to_AXI_C2C_axi_periph_AWREADY = M14_AXI_awready;
  assign m14_couplers_to_AXI_C2C_axi_periph_BRESP = M14_AXI_bresp[1:0];
  assign m14_couplers_to_AXI_C2C_axi_periph_BVALID = M14_AXI_bvalid;
  assign m14_couplers_to_AXI_C2C_axi_periph_RDATA = M14_AXI_rdata[31:0];
  assign m14_couplers_to_AXI_C2C_axi_periph_RRESP = M14_AXI_rresp[1:0];
  assign m14_couplers_to_AXI_C2C_axi_periph_RVALID = M14_AXI_rvalid;
  assign m14_couplers_to_AXI_C2C_axi_periph_WREADY = M14_AXI_wready;
  assign m15_couplers_to_AXI_C2C_axi_periph_ARREADY = M15_AXI_arready;
  assign m15_couplers_to_AXI_C2C_axi_periph_AWREADY = M15_AXI_awready;
  assign m15_couplers_to_AXI_C2C_axi_periph_BRESP = M15_AXI_bresp;
  assign m15_couplers_to_AXI_C2C_axi_periph_BVALID = M15_AXI_bvalid;
  assign m15_couplers_to_AXI_C2C_axi_periph_RDATA = M15_AXI_rdata;
  assign m15_couplers_to_AXI_C2C_axi_periph_RRESP = M15_AXI_rresp;
  assign m15_couplers_to_AXI_C2C_axi_periph_RVALID = M15_AXI_rvalid;
  assign m15_couplers_to_AXI_C2C_axi_periph_WREADY = M15_AXI_wready;
  m00_couplers_imp_ZROMIB m00_couplers
       (.M_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .M_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_AXI_C2C_axi_periph_ARADDR),
        .M_AXI_arprot(m00_couplers_to_AXI_C2C_axi_periph_ARPROT),
        .M_AXI_arready(m00_couplers_to_AXI_C2C_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_AXI_C2C_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_AXI_C2C_axi_periph_AWADDR),
        .M_AXI_awprot(m00_couplers_to_AXI_C2C_axi_periph_AWPROT),
        .M_AXI_awready(m00_couplers_to_AXI_C2C_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_AXI_C2C_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_AXI_C2C_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_AXI_C2C_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_AXI_C2C_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_AXI_C2C_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_AXI_C2C_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_AXI_C2C_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_AXI_C2C_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_AXI_C2C_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_AXI_C2C_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_AXI_C2C_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_AXI_C2C_axi_periph_WVALID),
        .S_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .S_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_V0232Q m01_couplers
       (.M_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .M_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_AXI_C2C_axi_periph_ARADDR),
        .M_AXI_arprot(m01_couplers_to_AXI_C2C_axi_periph_ARPROT),
        .M_AXI_arready(m01_couplers_to_AXI_C2C_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_AXI_C2C_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_AXI_C2C_axi_periph_AWADDR),
        .M_AXI_awprot(m01_couplers_to_AXI_C2C_axi_periph_AWPROT),
        .M_AXI_awready(m01_couplers_to_AXI_C2C_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_AXI_C2C_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_AXI_C2C_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_AXI_C2C_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_AXI_C2C_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_AXI_C2C_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_AXI_C2C_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_AXI_C2C_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_AXI_C2C_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_AXI_C2C_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_AXI_C2C_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_AXI_C2C_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_AXI_C2C_axi_periph_WVALID),
        .S_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .S_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_10YWEWG m02_couplers
       (.M_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .M_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_AXI_C2C_axi_periph_ARADDR),
        .M_AXI_arprot(m02_couplers_to_AXI_C2C_axi_periph_ARPROT),
        .M_AXI_arready(m02_couplers_to_AXI_C2C_axi_periph_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_AXI_C2C_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_AXI_C2C_axi_periph_AWADDR),
        .M_AXI_awprot(m02_couplers_to_AXI_C2C_axi_periph_AWPROT),
        .M_AXI_awready(m02_couplers_to_AXI_C2C_axi_periph_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_AXI_C2C_axi_periph_AWVALID),
        .M_AXI_bready(m02_couplers_to_AXI_C2C_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_AXI_C2C_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_AXI_C2C_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_AXI_C2C_axi_periph_RDATA),
        .M_AXI_rready(m02_couplers_to_AXI_C2C_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_AXI_C2C_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_AXI_C2C_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_AXI_C2C_axi_periph_WDATA),
        .M_AXI_wready(m02_couplers_to_AXI_C2C_axi_periph_WREADY),
        .M_AXI_wstrb(m02_couplers_to_AXI_C2C_axi_periph_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_AXI_C2C_axi_periph_WVALID),
        .S_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .S_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_TJ55SH m03_couplers
       (.M_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .M_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_AXI_C2C_axi_periph_ARADDR),
        .M_AXI_arprot(m03_couplers_to_AXI_C2C_axi_periph_ARPROT),
        .M_AXI_arready(m03_couplers_to_AXI_C2C_axi_periph_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_AXI_C2C_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_AXI_C2C_axi_periph_AWADDR),
        .M_AXI_awprot(m03_couplers_to_AXI_C2C_axi_periph_AWPROT),
        .M_AXI_awready(m03_couplers_to_AXI_C2C_axi_periph_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_AXI_C2C_axi_periph_AWVALID),
        .M_AXI_bready(m03_couplers_to_AXI_C2C_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_AXI_C2C_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_AXI_C2C_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_AXI_C2C_axi_periph_RDATA),
        .M_AXI_rready(m03_couplers_to_AXI_C2C_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_AXI_C2C_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_AXI_C2C_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_AXI_C2C_axi_periph_WDATA),
        .M_AXI_wready(m03_couplers_to_AXI_C2C_axi_periph_WREADY),
        .M_AXI_wstrb(m03_couplers_to_AXI_C2C_axi_periph_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_AXI_C2C_axi_periph_WVALID),
        .S_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .S_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_12MZ6K5 m04_couplers
       (.M_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .M_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_AXI_C2C_axi_periph_ARADDR),
        .M_AXI_arprot(m04_couplers_to_AXI_C2C_axi_periph_ARPROT),
        .M_AXI_arready(m04_couplers_to_AXI_C2C_axi_periph_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_AXI_C2C_axi_periph_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_AXI_C2C_axi_periph_AWADDR),
        .M_AXI_awprot(m04_couplers_to_AXI_C2C_axi_periph_AWPROT),
        .M_AXI_awready(m04_couplers_to_AXI_C2C_axi_periph_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_AXI_C2C_axi_periph_AWVALID),
        .M_AXI_bready(m04_couplers_to_AXI_C2C_axi_periph_BREADY),
        .M_AXI_bresp(m04_couplers_to_AXI_C2C_axi_periph_BRESP),
        .M_AXI_bvalid(m04_couplers_to_AXI_C2C_axi_periph_BVALID),
        .M_AXI_rdata(m04_couplers_to_AXI_C2C_axi_periph_RDATA),
        .M_AXI_rready(m04_couplers_to_AXI_C2C_axi_periph_RREADY),
        .M_AXI_rresp(m04_couplers_to_AXI_C2C_axi_periph_RRESP),
        .M_AXI_rvalid(m04_couplers_to_AXI_C2C_axi_periph_RVALID),
        .M_AXI_wdata(m04_couplers_to_AXI_C2C_axi_periph_WDATA),
        .M_AXI_wready(m04_couplers_to_AXI_C2C_axi_periph_WREADY),
        .M_AXI_wstrb(m04_couplers_to_AXI_C2C_axi_periph_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_AXI_C2C_axi_periph_WVALID),
        .S_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .S_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_RRMVBO m05_couplers
       (.M_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .M_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .M_AXI_araddr(m05_couplers_to_AXI_C2C_axi_periph_ARADDR),
        .M_AXI_arprot(m05_couplers_to_AXI_C2C_axi_periph_ARPROT),
        .M_AXI_arready(m05_couplers_to_AXI_C2C_axi_periph_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_AXI_C2C_axi_periph_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_AXI_C2C_axi_periph_AWADDR),
        .M_AXI_awprot(m05_couplers_to_AXI_C2C_axi_periph_AWPROT),
        .M_AXI_awready(m05_couplers_to_AXI_C2C_axi_periph_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_AXI_C2C_axi_periph_AWVALID),
        .M_AXI_bready(m05_couplers_to_AXI_C2C_axi_periph_BREADY),
        .M_AXI_bresp(m05_couplers_to_AXI_C2C_axi_periph_BRESP),
        .M_AXI_bvalid(m05_couplers_to_AXI_C2C_axi_periph_BVALID),
        .M_AXI_rdata(m05_couplers_to_AXI_C2C_axi_periph_RDATA),
        .M_AXI_rready(m05_couplers_to_AXI_C2C_axi_periph_RREADY),
        .M_AXI_rresp(m05_couplers_to_AXI_C2C_axi_periph_RRESP),
        .M_AXI_rvalid(m05_couplers_to_AXI_C2C_axi_periph_RVALID),
        .M_AXI_wdata(m05_couplers_to_AXI_C2C_axi_periph_WDATA),
        .M_AXI_wready(m05_couplers_to_AXI_C2C_axi_periph_WREADY),
        .M_AXI_wstrb(m05_couplers_to_AXI_C2C_axi_periph_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_AXI_C2C_axi_periph_WVALID),
        .S_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .S_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR[160]),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT[15]),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR[160]),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT[15]),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA[160]),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB[20]),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_13K8392 m06_couplers
       (.M_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .M_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .M_AXI_araddr(m06_couplers_to_AXI_C2C_axi_periph_ARADDR),
        .M_AXI_arprot(m06_couplers_to_AXI_C2C_axi_periph_ARPROT),
        .M_AXI_arready(m06_couplers_to_AXI_C2C_axi_periph_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_AXI_C2C_axi_periph_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_AXI_C2C_axi_periph_AWADDR),
        .M_AXI_awprot(m06_couplers_to_AXI_C2C_axi_periph_AWPROT),
        .M_AXI_awready(m06_couplers_to_AXI_C2C_axi_periph_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_AXI_C2C_axi_periph_AWVALID),
        .M_AXI_bready(m06_couplers_to_AXI_C2C_axi_periph_BREADY),
        .M_AXI_bresp(m06_couplers_to_AXI_C2C_axi_periph_BRESP),
        .M_AXI_bvalid(m06_couplers_to_AXI_C2C_axi_periph_BVALID),
        .M_AXI_rdata(m06_couplers_to_AXI_C2C_axi_periph_RDATA),
        .M_AXI_rready(m06_couplers_to_AXI_C2C_axi_periph_RREADY),
        .M_AXI_rresp(m06_couplers_to_AXI_C2C_axi_periph_RRESP),
        .M_AXI_rvalid(m06_couplers_to_AXI_C2C_axi_periph_RVALID),
        .M_AXI_wdata(m06_couplers_to_AXI_C2C_axi_periph_WDATA),
        .M_AXI_wready(m06_couplers_to_AXI_C2C_axi_periph_WREADY),
        .M_AXI_wstrb(m06_couplers_to_AXI_C2C_axi_periph_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_AXI_C2C_axi_periph_WVALID),
        .S_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .S_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_R4PEAF m07_couplers
       (.M_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .M_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .M_AXI_araddr(m07_couplers_to_AXI_C2C_axi_periph_ARADDR),
        .M_AXI_arprot(m07_couplers_to_AXI_C2C_axi_periph_ARPROT),
        .M_AXI_arready(m07_couplers_to_AXI_C2C_axi_periph_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_AXI_C2C_axi_periph_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_AXI_C2C_axi_periph_AWADDR),
        .M_AXI_awprot(m07_couplers_to_AXI_C2C_axi_periph_AWPROT),
        .M_AXI_awready(m07_couplers_to_AXI_C2C_axi_periph_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_AXI_C2C_axi_periph_AWVALID),
        .M_AXI_bready(m07_couplers_to_AXI_C2C_axi_periph_BREADY),
        .M_AXI_bresp(m07_couplers_to_AXI_C2C_axi_periph_BRESP),
        .M_AXI_bvalid(m07_couplers_to_AXI_C2C_axi_periph_BVALID),
        .M_AXI_rdata(m07_couplers_to_AXI_C2C_axi_periph_RDATA),
        .M_AXI_rready(m07_couplers_to_AXI_C2C_axi_periph_RREADY),
        .M_AXI_rresp(m07_couplers_to_AXI_C2C_axi_periph_RRESP),
        .M_AXI_rvalid(m07_couplers_to_AXI_C2C_axi_periph_RVALID),
        .M_AXI_wdata(m07_couplers_to_AXI_C2C_axi_periph_WDATA),
        .M_AXI_wready(m07_couplers_to_AXI_C2C_axi_periph_WREADY),
        .M_AXI_wstrb(m07_couplers_to_AXI_C2C_axi_periph_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_AXI_C2C_axi_periph_WVALID),
        .S_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .S_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR[224]),
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT[21]),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR[224]),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT[21]),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA[224]),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB[28]),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  m08_couplers_imp_163HI4F m08_couplers
       (.M_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .M_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .M_AXI_araddr(m08_couplers_to_AXI_C2C_axi_periph_ARADDR),
        .M_AXI_arprot(m08_couplers_to_AXI_C2C_axi_periph_ARPROT),
        .M_AXI_arready(m08_couplers_to_AXI_C2C_axi_periph_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_AXI_C2C_axi_periph_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_AXI_C2C_axi_periph_AWADDR),
        .M_AXI_awprot(m08_couplers_to_AXI_C2C_axi_periph_AWPROT),
        .M_AXI_awready(m08_couplers_to_AXI_C2C_axi_periph_AWREADY),
        .M_AXI_awvalid(m08_couplers_to_AXI_C2C_axi_periph_AWVALID),
        .M_AXI_bready(m08_couplers_to_AXI_C2C_axi_periph_BREADY),
        .M_AXI_bresp(m08_couplers_to_AXI_C2C_axi_periph_BRESP),
        .M_AXI_bvalid(m08_couplers_to_AXI_C2C_axi_periph_BVALID),
        .M_AXI_rdata(m08_couplers_to_AXI_C2C_axi_periph_RDATA),
        .M_AXI_rready(m08_couplers_to_AXI_C2C_axi_periph_RREADY),
        .M_AXI_rresp(m08_couplers_to_AXI_C2C_axi_periph_RRESP),
        .M_AXI_rvalid(m08_couplers_to_AXI_C2C_axi_periph_RVALID),
        .M_AXI_wdata(m08_couplers_to_AXI_C2C_axi_periph_WDATA),
        .M_AXI_wready(m08_couplers_to_AXI_C2C_axi_periph_WREADY),
        .M_AXI_wstrb(m08_couplers_to_AXI_C2C_axi_periph_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_AXI_C2C_axi_periph_WVALID),
        .S_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .S_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR[256]),
        .S_AXI_arprot(xbar_to_m08_couplers_ARPROT[24]),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR[256]),
        .S_AXI_awprot(xbar_to_m08_couplers_AWPROT[24]),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA[256]),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB[32]),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
  m09_couplers_imp_XJTBFI m09_couplers
       (.M_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .M_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .M_AXI_araddr(m09_couplers_to_AXI_C2C_axi_periph_ARADDR),
        .M_AXI_arprot(m09_couplers_to_AXI_C2C_axi_periph_ARPROT),
        .M_AXI_arready(m09_couplers_to_AXI_C2C_axi_periph_ARREADY),
        .M_AXI_arvalid(m09_couplers_to_AXI_C2C_axi_periph_ARVALID),
        .M_AXI_awaddr(m09_couplers_to_AXI_C2C_axi_periph_AWADDR),
        .M_AXI_awprot(m09_couplers_to_AXI_C2C_axi_periph_AWPROT),
        .M_AXI_awready(m09_couplers_to_AXI_C2C_axi_periph_AWREADY),
        .M_AXI_awvalid(m09_couplers_to_AXI_C2C_axi_periph_AWVALID),
        .M_AXI_bready(m09_couplers_to_AXI_C2C_axi_periph_BREADY),
        .M_AXI_bresp(m09_couplers_to_AXI_C2C_axi_periph_BRESP),
        .M_AXI_bvalid(m09_couplers_to_AXI_C2C_axi_periph_BVALID),
        .M_AXI_rdata(m09_couplers_to_AXI_C2C_axi_periph_RDATA),
        .M_AXI_rready(m09_couplers_to_AXI_C2C_axi_periph_RREADY),
        .M_AXI_rresp(m09_couplers_to_AXI_C2C_axi_periph_RRESP),
        .M_AXI_rvalid(m09_couplers_to_AXI_C2C_axi_periph_RVALID),
        .M_AXI_wdata(m09_couplers_to_AXI_C2C_axi_periph_WDATA),
        .M_AXI_wready(m09_couplers_to_AXI_C2C_axi_periph_WREADY),
        .M_AXI_wstrb(m09_couplers_to_AXI_C2C_axi_periph_WSTRB),
        .M_AXI_wvalid(m09_couplers_to_AXI_C2C_axi_periph_WVALID),
        .S_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .S_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m09_couplers_ARADDR[288]),
        .S_AXI_arprot(xbar_to_m09_couplers_ARPROT[27]),
        .S_AXI_arready(xbar_to_m09_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m09_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m09_couplers_AWADDR[288]),
        .S_AXI_awprot(xbar_to_m09_couplers_AWPROT[27]),
        .S_AXI_awready(xbar_to_m09_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m09_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m09_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m09_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m09_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m09_couplers_RDATA),
        .S_AXI_rready(xbar_to_m09_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m09_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m09_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m09_couplers_WDATA[288]),
        .S_AXI_wready(xbar_to_m09_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m09_couplers_WSTRB[36]),
        .S_AXI_wvalid(xbar_to_m09_couplers_WVALID));
  m10_couplers_imp_O5GQEJ m10_couplers
       (.M_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .M_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .M_AXI_araddr(m10_couplers_to_AXI_C2C_axi_periph_ARADDR),
        .M_AXI_arprot(m10_couplers_to_AXI_C2C_axi_periph_ARPROT),
        .M_AXI_arready(m10_couplers_to_AXI_C2C_axi_periph_ARREADY),
        .M_AXI_arvalid(m10_couplers_to_AXI_C2C_axi_periph_ARVALID),
        .M_AXI_awaddr(m10_couplers_to_AXI_C2C_axi_periph_AWADDR),
        .M_AXI_awprot(m10_couplers_to_AXI_C2C_axi_periph_AWPROT),
        .M_AXI_awready(m10_couplers_to_AXI_C2C_axi_periph_AWREADY),
        .M_AXI_awvalid(m10_couplers_to_AXI_C2C_axi_periph_AWVALID),
        .M_AXI_bready(m10_couplers_to_AXI_C2C_axi_periph_BREADY),
        .M_AXI_bresp(m10_couplers_to_AXI_C2C_axi_periph_BRESP),
        .M_AXI_bvalid(m10_couplers_to_AXI_C2C_axi_periph_BVALID),
        .M_AXI_rdata(m10_couplers_to_AXI_C2C_axi_periph_RDATA),
        .M_AXI_rready(m10_couplers_to_AXI_C2C_axi_periph_RREADY),
        .M_AXI_rresp(m10_couplers_to_AXI_C2C_axi_periph_RRESP),
        .M_AXI_rvalid(m10_couplers_to_AXI_C2C_axi_periph_RVALID),
        .M_AXI_wdata(m10_couplers_to_AXI_C2C_axi_periph_WDATA),
        .M_AXI_wready(m10_couplers_to_AXI_C2C_axi_periph_WREADY),
        .M_AXI_wstrb(m10_couplers_to_AXI_C2C_axi_periph_WSTRB),
        .M_AXI_wvalid(m10_couplers_to_AXI_C2C_axi_periph_WVALID),
        .S_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .S_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m10_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m10_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m10_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m10_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m10_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m10_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m10_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m10_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m10_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m10_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m10_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m10_couplers_RDATA),
        .S_AXI_rready(xbar_to_m10_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m10_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m10_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m10_couplers_WDATA),
        .S_AXI_wready(xbar_to_m10_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m10_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m10_couplers_WVALID));
  m11_couplers_imp_1F5FHOQ m11_couplers
       (.M_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .M_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .M_AXI_araddr(m11_couplers_to_AXI_C2C_axi_periph_ARADDR),
        .M_AXI_arready(m11_couplers_to_AXI_C2C_axi_periph_ARREADY),
        .M_AXI_arvalid(m11_couplers_to_AXI_C2C_axi_periph_ARVALID),
        .M_AXI_awaddr(m11_couplers_to_AXI_C2C_axi_periph_AWADDR),
        .M_AXI_awready(m11_couplers_to_AXI_C2C_axi_periph_AWREADY),
        .M_AXI_awvalid(m11_couplers_to_AXI_C2C_axi_periph_AWVALID),
        .M_AXI_bready(m11_couplers_to_AXI_C2C_axi_periph_BREADY),
        .M_AXI_bresp(m11_couplers_to_AXI_C2C_axi_periph_BRESP),
        .M_AXI_bvalid(m11_couplers_to_AXI_C2C_axi_periph_BVALID),
        .M_AXI_rdata(m11_couplers_to_AXI_C2C_axi_periph_RDATA),
        .M_AXI_rready(m11_couplers_to_AXI_C2C_axi_periph_RREADY),
        .M_AXI_rresp(m11_couplers_to_AXI_C2C_axi_periph_RRESP),
        .M_AXI_rvalid(m11_couplers_to_AXI_C2C_axi_periph_RVALID),
        .M_AXI_wdata(m11_couplers_to_AXI_C2C_axi_periph_WDATA),
        .M_AXI_wready(m11_couplers_to_AXI_C2C_axi_periph_WREADY),
        .M_AXI_wstrb(m11_couplers_to_AXI_C2C_axi_periph_WSTRB),
        .M_AXI_wvalid(m11_couplers_to_AXI_C2C_axi_periph_WVALID),
        .S_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .S_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m11_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m11_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m11_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m11_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m11_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m11_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m11_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m11_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m11_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m11_couplers_RDATA),
        .S_AXI_rready(xbar_to_m11_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m11_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m11_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m11_couplers_WDATA),
        .S_AXI_wready(xbar_to_m11_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m11_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m11_couplers_WVALID));
  m12_couplers_imp_MZRZ1K m12_couplers
       (.M_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .M_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .M_AXI_araddr(m12_couplers_to_AXI_C2C_axi_periph_ARADDR),
        .M_AXI_arready(m12_couplers_to_AXI_C2C_axi_periph_ARREADY),
        .M_AXI_arvalid(m12_couplers_to_AXI_C2C_axi_periph_ARVALID),
        .M_AXI_awaddr(m12_couplers_to_AXI_C2C_axi_periph_AWADDR),
        .M_AXI_awready(m12_couplers_to_AXI_C2C_axi_periph_AWREADY),
        .M_AXI_awvalid(m12_couplers_to_AXI_C2C_axi_periph_AWVALID),
        .M_AXI_bready(m12_couplers_to_AXI_C2C_axi_periph_BREADY),
        .M_AXI_bresp(m12_couplers_to_AXI_C2C_axi_periph_BRESP),
        .M_AXI_bvalid(m12_couplers_to_AXI_C2C_axi_periph_BVALID),
        .M_AXI_rdata(m12_couplers_to_AXI_C2C_axi_periph_RDATA),
        .M_AXI_rready(m12_couplers_to_AXI_C2C_axi_periph_RREADY),
        .M_AXI_rresp(m12_couplers_to_AXI_C2C_axi_periph_RRESP),
        .M_AXI_rvalid(m12_couplers_to_AXI_C2C_axi_periph_RVALID),
        .M_AXI_wdata(m12_couplers_to_AXI_C2C_axi_periph_WDATA),
        .M_AXI_wready(m12_couplers_to_AXI_C2C_axi_periph_WREADY),
        .M_AXI_wstrb(m12_couplers_to_AXI_C2C_axi_periph_WSTRB),
        .M_AXI_wvalid(m12_couplers_to_AXI_C2C_axi_periph_WVALID),
        .S_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .S_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m12_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m12_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m12_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m12_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m12_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m12_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m12_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m12_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m12_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m12_couplers_RDATA),
        .S_AXI_rready(xbar_to_m12_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m12_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m12_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m12_couplers_WDATA),
        .S_AXI_wready(xbar_to_m12_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m12_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m12_couplers_WVALID));
  m13_couplers_imp_1GLEAX5 m13_couplers
       (.M_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .M_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .M_AXI_araddr(m13_couplers_to_AXI_C2C_axi_periph_ARADDR),
        .M_AXI_arprot(m13_couplers_to_AXI_C2C_axi_periph_ARPROT),
        .M_AXI_arready(m13_couplers_to_AXI_C2C_axi_periph_ARREADY),
        .M_AXI_arvalid(m13_couplers_to_AXI_C2C_axi_periph_ARVALID),
        .M_AXI_awaddr(m13_couplers_to_AXI_C2C_axi_periph_AWADDR),
        .M_AXI_awprot(m13_couplers_to_AXI_C2C_axi_periph_AWPROT),
        .M_AXI_awready(m13_couplers_to_AXI_C2C_axi_periph_AWREADY),
        .M_AXI_awvalid(m13_couplers_to_AXI_C2C_axi_periph_AWVALID),
        .M_AXI_bready(m13_couplers_to_AXI_C2C_axi_periph_BREADY),
        .M_AXI_bresp(m13_couplers_to_AXI_C2C_axi_periph_BRESP),
        .M_AXI_bvalid(m13_couplers_to_AXI_C2C_axi_periph_BVALID),
        .M_AXI_rdata(m13_couplers_to_AXI_C2C_axi_periph_RDATA),
        .M_AXI_rready(m13_couplers_to_AXI_C2C_axi_periph_RREADY),
        .M_AXI_rresp(m13_couplers_to_AXI_C2C_axi_periph_RRESP),
        .M_AXI_rvalid(m13_couplers_to_AXI_C2C_axi_periph_RVALID),
        .M_AXI_wdata(m13_couplers_to_AXI_C2C_axi_periph_WDATA),
        .M_AXI_wready(m13_couplers_to_AXI_C2C_axi_periph_WREADY),
        .M_AXI_wstrb(m13_couplers_to_AXI_C2C_axi_periph_WSTRB),
        .M_AXI_wvalid(m13_couplers_to_AXI_C2C_axi_periph_WVALID),
        .S_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .S_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m13_couplers_ARADDR[416]),
        .S_AXI_arprot(xbar_to_m13_couplers_ARPROT[39]),
        .S_AXI_arready(xbar_to_m13_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m13_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m13_couplers_AWADDR[416]),
        .S_AXI_awprot(xbar_to_m13_couplers_AWPROT[39]),
        .S_AXI_awready(xbar_to_m13_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m13_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m13_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m13_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m13_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m13_couplers_RDATA),
        .S_AXI_rready(xbar_to_m13_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m13_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m13_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m13_couplers_WDATA[416]),
        .S_AXI_wready(xbar_to_m13_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m13_couplers_WSTRB[52]),
        .S_AXI_wvalid(xbar_to_m13_couplers_WVALID));
  m14_couplers_imp_PPCMGD m14_couplers
       (.M_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .M_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .M_AXI_araddr(m14_couplers_to_AXI_C2C_axi_periph_ARADDR),
        .M_AXI_arprot(m14_couplers_to_AXI_C2C_axi_periph_ARPROT),
        .M_AXI_arready(m14_couplers_to_AXI_C2C_axi_periph_ARREADY),
        .M_AXI_arvalid(m14_couplers_to_AXI_C2C_axi_periph_ARVALID),
        .M_AXI_awaddr(m14_couplers_to_AXI_C2C_axi_periph_AWADDR),
        .M_AXI_awprot(m14_couplers_to_AXI_C2C_axi_periph_AWPROT),
        .M_AXI_awready(m14_couplers_to_AXI_C2C_axi_periph_AWREADY),
        .M_AXI_awvalid(m14_couplers_to_AXI_C2C_axi_periph_AWVALID),
        .M_AXI_bready(m14_couplers_to_AXI_C2C_axi_periph_BREADY),
        .M_AXI_bresp(m14_couplers_to_AXI_C2C_axi_periph_BRESP),
        .M_AXI_bvalid(m14_couplers_to_AXI_C2C_axi_periph_BVALID),
        .M_AXI_rdata(m14_couplers_to_AXI_C2C_axi_periph_RDATA),
        .M_AXI_rready(m14_couplers_to_AXI_C2C_axi_periph_RREADY),
        .M_AXI_rresp(m14_couplers_to_AXI_C2C_axi_periph_RRESP),
        .M_AXI_rvalid(m14_couplers_to_AXI_C2C_axi_periph_RVALID),
        .M_AXI_wdata(m14_couplers_to_AXI_C2C_axi_periph_WDATA),
        .M_AXI_wready(m14_couplers_to_AXI_C2C_axi_periph_WREADY),
        .M_AXI_wstrb(m14_couplers_to_AXI_C2C_axi_periph_WSTRB),
        .M_AXI_wvalid(m14_couplers_to_AXI_C2C_axi_periph_WVALID),
        .S_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .S_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m14_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m14_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m14_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m14_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m14_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m14_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m14_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m14_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m14_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m14_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m14_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m14_couplers_RDATA),
        .S_AXI_rready(xbar_to_m14_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m14_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m14_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m14_couplers_WDATA),
        .S_AXI_wready(xbar_to_m14_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m14_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m14_couplers_WVALID));
  m15_couplers_imp_1DXDXE4 m15_couplers
       (.M_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .M_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .M_AXI_araddr(m15_couplers_to_AXI_C2C_axi_periph_ARADDR),
        .M_AXI_arprot(m15_couplers_to_AXI_C2C_axi_periph_ARPROT),
        .M_AXI_arready(m15_couplers_to_AXI_C2C_axi_periph_ARREADY),
        .M_AXI_arvalid(m15_couplers_to_AXI_C2C_axi_periph_ARVALID),
        .M_AXI_awaddr(m15_couplers_to_AXI_C2C_axi_periph_AWADDR),
        .M_AXI_awprot(m15_couplers_to_AXI_C2C_axi_periph_AWPROT),
        .M_AXI_awready(m15_couplers_to_AXI_C2C_axi_periph_AWREADY),
        .M_AXI_awvalid(m15_couplers_to_AXI_C2C_axi_periph_AWVALID),
        .M_AXI_bready(m15_couplers_to_AXI_C2C_axi_periph_BREADY),
        .M_AXI_bresp(m15_couplers_to_AXI_C2C_axi_periph_BRESP),
        .M_AXI_bvalid(m15_couplers_to_AXI_C2C_axi_periph_BVALID),
        .M_AXI_rdata(m15_couplers_to_AXI_C2C_axi_periph_RDATA),
        .M_AXI_rready(m15_couplers_to_AXI_C2C_axi_periph_RREADY),
        .M_AXI_rresp(m15_couplers_to_AXI_C2C_axi_periph_RRESP),
        .M_AXI_rvalid(m15_couplers_to_AXI_C2C_axi_periph_RVALID),
        .M_AXI_wdata(m15_couplers_to_AXI_C2C_axi_periph_WDATA),
        .M_AXI_wready(m15_couplers_to_AXI_C2C_axi_periph_WREADY),
        .M_AXI_wstrb(m15_couplers_to_AXI_C2C_axi_periph_WSTRB),
        .M_AXI_wvalid(m15_couplers_to_AXI_C2C_axi_periph_WVALID),
        .S_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .S_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m15_couplers_ARADDR[480]),
        .S_AXI_arprot(xbar_to_m15_couplers_ARPROT[45]),
        .S_AXI_arready(xbar_to_m15_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m15_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m15_couplers_AWADDR[480]),
        .S_AXI_awprot(xbar_to_m15_couplers_AWPROT[45]),
        .S_AXI_awready(xbar_to_m15_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m15_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m15_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m15_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m15_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m15_couplers_RDATA),
        .S_AXI_rready(xbar_to_m15_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m15_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m15_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m15_couplers_WDATA[480]),
        .S_AXI_wready(xbar_to_m15_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m15_couplers_WSTRB[60]),
        .S_AXI_wvalid(xbar_to_m15_couplers_WVALID));
  s00_couplers_imp_XT0YB5 s00_couplers
       (.M_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .M_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(AXI_C2C_axi_periph_ACLK_net),
        .S_ARESETN(AXI_C2C_axi_periph_ARESETN_net),
        .S_AXI_araddr(AXI_C2C_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arprot(AXI_C2C_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arready(AXI_C2C_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(AXI_C2C_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(AXI_C2C_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awprot(AXI_C2C_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awready(AXI_C2C_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(AXI_C2C_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(AXI_C2C_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(AXI_C2C_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(AXI_C2C_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(AXI_C2C_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rready(AXI_C2C_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(AXI_C2C_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(AXI_C2C_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(AXI_C2C_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wready(AXI_C2C_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(AXI_C2C_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(AXI_C2C_axi_periph_to_s00_couplers_WVALID));
  design_1_xbar_0 xbar
       (.aclk(AXI_C2C_axi_periph_ACLK_net),
        .aresetn(AXI_C2C_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m15_couplers_ARADDR,xbar_to_m14_couplers_ARADDR,xbar_to_m13_couplers_ARADDR,xbar_to_m12_couplers_ARADDR,xbar_to_m11_couplers_ARADDR,xbar_to_m10_couplers_ARADDR,xbar_to_m09_couplers_ARADDR,xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m15_couplers_ARPROT,xbar_to_m14_couplers_ARPROT,xbar_to_m13_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[38:33],xbar_to_m10_couplers_ARPROT,xbar_to_m09_couplers_ARPROT,xbar_to_m08_couplers_ARPROT,xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m15_couplers_ARREADY,xbar_to_m14_couplers_ARREADY,xbar_to_m13_couplers_ARREADY,xbar_to_m12_couplers_ARREADY,xbar_to_m11_couplers_ARREADY,xbar_to_m10_couplers_ARREADY,xbar_to_m09_couplers_ARREADY,xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m15_couplers_ARVALID,xbar_to_m14_couplers_ARVALID,xbar_to_m13_couplers_ARVALID,xbar_to_m12_couplers_ARVALID,xbar_to_m11_couplers_ARVALID,xbar_to_m10_couplers_ARVALID,xbar_to_m09_couplers_ARVALID,xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m15_couplers_AWADDR,xbar_to_m14_couplers_AWADDR,xbar_to_m13_couplers_AWADDR,xbar_to_m12_couplers_AWADDR,xbar_to_m11_couplers_AWADDR,xbar_to_m10_couplers_AWADDR,xbar_to_m09_couplers_AWADDR,xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m15_couplers_AWPROT,xbar_to_m14_couplers_AWPROT,xbar_to_m13_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[38:33],xbar_to_m10_couplers_AWPROT,xbar_to_m09_couplers_AWPROT,xbar_to_m08_couplers_AWPROT,xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m15_couplers_AWREADY,xbar_to_m14_couplers_AWREADY,xbar_to_m13_couplers_AWREADY,xbar_to_m12_couplers_AWREADY,xbar_to_m11_couplers_AWREADY,xbar_to_m10_couplers_AWREADY,xbar_to_m09_couplers_AWREADY,xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m15_couplers_AWVALID,xbar_to_m14_couplers_AWVALID,xbar_to_m13_couplers_AWVALID,xbar_to_m12_couplers_AWVALID,xbar_to_m11_couplers_AWVALID,xbar_to_m10_couplers_AWVALID,xbar_to_m09_couplers_AWVALID,xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m15_couplers_BREADY,xbar_to_m14_couplers_BREADY,xbar_to_m13_couplers_BREADY,xbar_to_m12_couplers_BREADY,xbar_to_m11_couplers_BREADY,xbar_to_m10_couplers_BREADY,xbar_to_m09_couplers_BREADY,xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m15_couplers_BRESP,xbar_to_m15_couplers_BRESP,xbar_to_m14_couplers_BRESP,xbar_to_m13_couplers_BRESP,xbar_to_m13_couplers_BRESP,xbar_to_m12_couplers_BRESP,xbar_to_m11_couplers_BRESP,xbar_to_m10_couplers_BRESP,xbar_to_m09_couplers_BRESP,xbar_to_m09_couplers_BRESP,xbar_to_m08_couplers_BRESP,xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m15_couplers_BVALID,xbar_to_m14_couplers_BVALID,xbar_to_m13_couplers_BVALID,xbar_to_m12_couplers_BVALID,xbar_to_m11_couplers_BVALID,xbar_to_m10_couplers_BVALID,xbar_to_m09_couplers_BVALID,xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m15_couplers_RDATA,xbar_to_m14_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m11_couplers_RDATA,xbar_to_m10_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m15_couplers_RREADY,xbar_to_m14_couplers_RREADY,xbar_to_m13_couplers_RREADY,xbar_to_m12_couplers_RREADY,xbar_to_m11_couplers_RREADY,xbar_to_m10_couplers_RREADY,xbar_to_m09_couplers_RREADY,xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m15_couplers_RRESP,xbar_to_m15_couplers_RRESP,xbar_to_m14_couplers_RRESP,xbar_to_m13_couplers_RRESP,xbar_to_m13_couplers_RRESP,xbar_to_m12_couplers_RRESP,xbar_to_m11_couplers_RRESP,xbar_to_m10_couplers_RRESP,xbar_to_m09_couplers_RRESP,xbar_to_m09_couplers_RRESP,xbar_to_m08_couplers_RRESP,xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m15_couplers_RVALID,xbar_to_m14_couplers_RVALID,xbar_to_m13_couplers_RVALID,xbar_to_m12_couplers_RVALID,xbar_to_m11_couplers_RVALID,xbar_to_m10_couplers_RVALID,xbar_to_m09_couplers_RVALID,xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m15_couplers_WDATA,xbar_to_m14_couplers_WDATA,xbar_to_m13_couplers_WDATA,xbar_to_m12_couplers_WDATA,xbar_to_m11_couplers_WDATA,xbar_to_m10_couplers_WDATA,xbar_to_m09_couplers_WDATA,xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m15_couplers_WREADY,xbar_to_m14_couplers_WREADY,xbar_to_m13_couplers_WREADY,xbar_to_m12_couplers_WREADY,xbar_to_m11_couplers_WREADY,xbar_to_m10_couplers_WREADY,xbar_to_m09_couplers_WREADY,xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m15_couplers_WSTRB,xbar_to_m14_couplers_WSTRB,xbar_to_m13_couplers_WSTRB,xbar_to_m12_couplers_WSTRB,xbar_to_m11_couplers_WSTRB,xbar_to_m10_couplers_WSTRB,xbar_to_m09_couplers_WSTRB,xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m15_couplers_WVALID,xbar_to_m14_couplers_WVALID,xbar_to_m13_couplers_WVALID,xbar_to_m12_couplers_WVALID,xbar_to_m11_couplers_WVALID,xbar_to_m10_couplers_WVALID,xbar_to_m09_couplers_WVALID,xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot({1'b0,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot({1'b0,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_ZROMIB
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_V0232Q
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [2:0]m01_couplers_to_m01_couplers_ARPROT;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [2:0]m01_couplers_to_m01_couplers_AWPROT;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_10YWEWG
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [2:0]m02_couplers_to_m02_couplers_ARPROT;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [2:0]m02_couplers_to_m02_couplers_AWPROT;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m02_couplers_to_m02_couplers_ARPROT;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m02_couplers_to_m02_couplers_AWPROT;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_TJ55SH
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [2:0]m03_couplers_to_m03_couplers_ARPROT;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [2:0]m03_couplers_to_m03_couplers_AWPROT;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m03_couplers_to_m03_couplers_ARPROT;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m03_couplers_to_m03_couplers_AWPROT;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module m04_couplers_imp_12MZ6K5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [2:0]m04_couplers_to_m04_couplers_ARPROT;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [2:0]m04_couplers_to_m04_couplers_AWPROT;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m04_couplers_to_m04_couplers_ARPROT;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m04_couplers_to_m04_couplers_AWPROT;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module m05_couplers_imp_RRMVBO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m05_couplers_to_m05_couplers_ARADDR;
  wire m05_couplers_to_m05_couplers_ARPROT;
  wire m05_couplers_to_m05_couplers_ARREADY;
  wire m05_couplers_to_m05_couplers_ARVALID;
  wire m05_couplers_to_m05_couplers_AWADDR;
  wire m05_couplers_to_m05_couplers_AWPROT;
  wire m05_couplers_to_m05_couplers_AWREADY;
  wire m05_couplers_to_m05_couplers_AWVALID;
  wire m05_couplers_to_m05_couplers_BREADY;
  wire m05_couplers_to_m05_couplers_BRESP;
  wire m05_couplers_to_m05_couplers_BVALID;
  wire m05_couplers_to_m05_couplers_RDATA;
  wire m05_couplers_to_m05_couplers_RREADY;
  wire m05_couplers_to_m05_couplers_RRESP;
  wire m05_couplers_to_m05_couplers_RVALID;
  wire m05_couplers_to_m05_couplers_WDATA;
  wire m05_couplers_to_m05_couplers_WREADY;
  wire m05_couplers_to_m05_couplers_WSTRB;
  wire m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arprot = m05_couplers_to_m05_couplers_ARPROT;
  assign M_AXI_arvalid = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awprot = m05_couplers_to_m05_couplers_AWPROT;
  assign M_AXI_awvalid = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr;
  assign m05_couplers_to_m05_couplers_ARPROT = S_AXI_arprot;
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready;
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr;
  assign m05_couplers_to_m05_couplers_AWPROT = S_AXI_awprot;
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready;
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready;
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp;
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata;
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready;
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp;
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata;
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb;
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid;
endmodule

module m06_couplers_imp_13K8392
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m06_couplers_to_m06_couplers_ARADDR;
  wire [2:0]m06_couplers_to_m06_couplers_ARPROT;
  wire m06_couplers_to_m06_couplers_ARREADY;
  wire m06_couplers_to_m06_couplers_ARVALID;
  wire [31:0]m06_couplers_to_m06_couplers_AWADDR;
  wire [2:0]m06_couplers_to_m06_couplers_AWPROT;
  wire m06_couplers_to_m06_couplers_AWREADY;
  wire m06_couplers_to_m06_couplers_AWVALID;
  wire m06_couplers_to_m06_couplers_BREADY;
  wire [1:0]m06_couplers_to_m06_couplers_BRESP;
  wire m06_couplers_to_m06_couplers_BVALID;
  wire [31:0]m06_couplers_to_m06_couplers_RDATA;
  wire m06_couplers_to_m06_couplers_RREADY;
  wire [1:0]m06_couplers_to_m06_couplers_RRESP;
  wire m06_couplers_to_m06_couplers_RVALID;
  wire [31:0]m06_couplers_to_m06_couplers_WDATA;
  wire m06_couplers_to_m06_couplers_WREADY;
  wire [3:0]m06_couplers_to_m06_couplers_WSTRB;
  wire m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m06_couplers_to_m06_couplers_ARPROT;
  assign M_AXI_arvalid = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m06_couplers_to_m06_couplers_AWPROT;
  assign M_AXI_awvalid = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m06_couplers_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_m06_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready;
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_m06_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready;
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready;
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready;
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_m06_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid;
endmodule

module m07_couplers_imp_R4PEAF
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m07_couplers_to_m07_couplers_ARADDR;
  wire m07_couplers_to_m07_couplers_ARPROT;
  wire m07_couplers_to_m07_couplers_ARREADY;
  wire m07_couplers_to_m07_couplers_ARVALID;
  wire m07_couplers_to_m07_couplers_AWADDR;
  wire m07_couplers_to_m07_couplers_AWPROT;
  wire m07_couplers_to_m07_couplers_AWREADY;
  wire m07_couplers_to_m07_couplers_AWVALID;
  wire m07_couplers_to_m07_couplers_BREADY;
  wire m07_couplers_to_m07_couplers_BRESP;
  wire m07_couplers_to_m07_couplers_BVALID;
  wire m07_couplers_to_m07_couplers_RDATA;
  wire m07_couplers_to_m07_couplers_RREADY;
  wire m07_couplers_to_m07_couplers_RRESP;
  wire m07_couplers_to_m07_couplers_RVALID;
  wire m07_couplers_to_m07_couplers_WDATA;
  wire m07_couplers_to_m07_couplers_WREADY;
  wire m07_couplers_to_m07_couplers_WSTRB;
  wire m07_couplers_to_m07_couplers_WVALID;

  assign M_AXI_araddr = m07_couplers_to_m07_couplers_ARADDR;
  assign M_AXI_arprot = m07_couplers_to_m07_couplers_ARPROT;
  assign M_AXI_arvalid = m07_couplers_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr = m07_couplers_to_m07_couplers_AWADDR;
  assign M_AXI_awprot = m07_couplers_to_m07_couplers_AWPROT;
  assign M_AXI_awvalid = m07_couplers_to_m07_couplers_AWVALID;
  assign M_AXI_bready = m07_couplers_to_m07_couplers_BREADY;
  assign M_AXI_rready = m07_couplers_to_m07_couplers_RREADY;
  assign M_AXI_wdata = m07_couplers_to_m07_couplers_WDATA;
  assign M_AXI_wstrb = m07_couplers_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = m07_couplers_to_m07_couplers_WVALID;
  assign S_AXI_arready = m07_couplers_to_m07_couplers_ARREADY;
  assign S_AXI_awready = m07_couplers_to_m07_couplers_AWREADY;
  assign S_AXI_bresp = m07_couplers_to_m07_couplers_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_m07_couplers_BVALID;
  assign S_AXI_rdata = m07_couplers_to_m07_couplers_RDATA;
  assign S_AXI_rresp = m07_couplers_to_m07_couplers_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_m07_couplers_RVALID;
  assign S_AXI_wready = m07_couplers_to_m07_couplers_WREADY;
  assign m07_couplers_to_m07_couplers_ARADDR = S_AXI_araddr;
  assign m07_couplers_to_m07_couplers_ARPROT = S_AXI_arprot;
  assign m07_couplers_to_m07_couplers_ARREADY = M_AXI_arready;
  assign m07_couplers_to_m07_couplers_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_m07_couplers_AWADDR = S_AXI_awaddr;
  assign m07_couplers_to_m07_couplers_AWPROT = S_AXI_awprot;
  assign m07_couplers_to_m07_couplers_AWREADY = M_AXI_awready;
  assign m07_couplers_to_m07_couplers_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_m07_couplers_BREADY = S_AXI_bready;
  assign m07_couplers_to_m07_couplers_BRESP = M_AXI_bresp;
  assign m07_couplers_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign m07_couplers_to_m07_couplers_RDATA = M_AXI_rdata;
  assign m07_couplers_to_m07_couplers_RREADY = S_AXI_rready;
  assign m07_couplers_to_m07_couplers_RRESP = M_AXI_rresp;
  assign m07_couplers_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign m07_couplers_to_m07_couplers_WDATA = S_AXI_wdata;
  assign m07_couplers_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_m07_couplers_WSTRB = S_AXI_wstrb;
  assign m07_couplers_to_m07_couplers_WVALID = S_AXI_wvalid;
endmodule

module m08_couplers_imp_163HI4F
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m08_couplers_to_m08_couplers_ARADDR;
  wire m08_couplers_to_m08_couplers_ARPROT;
  wire m08_couplers_to_m08_couplers_ARREADY;
  wire m08_couplers_to_m08_couplers_ARVALID;
  wire m08_couplers_to_m08_couplers_AWADDR;
  wire m08_couplers_to_m08_couplers_AWPROT;
  wire m08_couplers_to_m08_couplers_AWREADY;
  wire m08_couplers_to_m08_couplers_AWVALID;
  wire m08_couplers_to_m08_couplers_BREADY;
  wire m08_couplers_to_m08_couplers_BRESP;
  wire m08_couplers_to_m08_couplers_BVALID;
  wire m08_couplers_to_m08_couplers_RDATA;
  wire m08_couplers_to_m08_couplers_RREADY;
  wire m08_couplers_to_m08_couplers_RRESP;
  wire m08_couplers_to_m08_couplers_RVALID;
  wire m08_couplers_to_m08_couplers_WDATA;
  wire m08_couplers_to_m08_couplers_WREADY;
  wire m08_couplers_to_m08_couplers_WSTRB;
  wire m08_couplers_to_m08_couplers_WVALID;

  assign M_AXI_araddr = m08_couplers_to_m08_couplers_ARADDR;
  assign M_AXI_arprot = m08_couplers_to_m08_couplers_ARPROT;
  assign M_AXI_arvalid = m08_couplers_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr = m08_couplers_to_m08_couplers_AWADDR;
  assign M_AXI_awprot = m08_couplers_to_m08_couplers_AWPROT;
  assign M_AXI_awvalid = m08_couplers_to_m08_couplers_AWVALID;
  assign M_AXI_bready = m08_couplers_to_m08_couplers_BREADY;
  assign M_AXI_rready = m08_couplers_to_m08_couplers_RREADY;
  assign M_AXI_wdata = m08_couplers_to_m08_couplers_WDATA;
  assign M_AXI_wstrb = m08_couplers_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid = m08_couplers_to_m08_couplers_WVALID;
  assign S_AXI_arready = m08_couplers_to_m08_couplers_ARREADY;
  assign S_AXI_awready = m08_couplers_to_m08_couplers_AWREADY;
  assign S_AXI_bresp = m08_couplers_to_m08_couplers_BRESP;
  assign S_AXI_bvalid = m08_couplers_to_m08_couplers_BVALID;
  assign S_AXI_rdata = m08_couplers_to_m08_couplers_RDATA;
  assign S_AXI_rresp = m08_couplers_to_m08_couplers_RRESP;
  assign S_AXI_rvalid = m08_couplers_to_m08_couplers_RVALID;
  assign S_AXI_wready = m08_couplers_to_m08_couplers_WREADY;
  assign m08_couplers_to_m08_couplers_ARADDR = S_AXI_araddr;
  assign m08_couplers_to_m08_couplers_ARPROT = S_AXI_arprot;
  assign m08_couplers_to_m08_couplers_ARREADY = M_AXI_arready;
  assign m08_couplers_to_m08_couplers_ARVALID = S_AXI_arvalid;
  assign m08_couplers_to_m08_couplers_AWADDR = S_AXI_awaddr;
  assign m08_couplers_to_m08_couplers_AWPROT = S_AXI_awprot;
  assign m08_couplers_to_m08_couplers_AWREADY = M_AXI_awready;
  assign m08_couplers_to_m08_couplers_AWVALID = S_AXI_awvalid;
  assign m08_couplers_to_m08_couplers_BREADY = S_AXI_bready;
  assign m08_couplers_to_m08_couplers_BRESP = M_AXI_bresp;
  assign m08_couplers_to_m08_couplers_BVALID = M_AXI_bvalid;
  assign m08_couplers_to_m08_couplers_RDATA = M_AXI_rdata;
  assign m08_couplers_to_m08_couplers_RREADY = S_AXI_rready;
  assign m08_couplers_to_m08_couplers_RRESP = M_AXI_rresp;
  assign m08_couplers_to_m08_couplers_RVALID = M_AXI_rvalid;
  assign m08_couplers_to_m08_couplers_WDATA = S_AXI_wdata;
  assign m08_couplers_to_m08_couplers_WREADY = M_AXI_wready;
  assign m08_couplers_to_m08_couplers_WSTRB = S_AXI_wstrb;
  assign m08_couplers_to_m08_couplers_WVALID = S_AXI_wvalid;
endmodule

module m09_couplers_imp_XJTBFI
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m09_couplers_to_m09_couplers_ARADDR;
  wire m09_couplers_to_m09_couplers_ARPROT;
  wire m09_couplers_to_m09_couplers_ARREADY;
  wire m09_couplers_to_m09_couplers_ARVALID;
  wire m09_couplers_to_m09_couplers_AWADDR;
  wire m09_couplers_to_m09_couplers_AWPROT;
  wire m09_couplers_to_m09_couplers_AWREADY;
  wire m09_couplers_to_m09_couplers_AWVALID;
  wire m09_couplers_to_m09_couplers_BREADY;
  wire m09_couplers_to_m09_couplers_BRESP;
  wire m09_couplers_to_m09_couplers_BVALID;
  wire m09_couplers_to_m09_couplers_RDATA;
  wire m09_couplers_to_m09_couplers_RREADY;
  wire m09_couplers_to_m09_couplers_RRESP;
  wire m09_couplers_to_m09_couplers_RVALID;
  wire m09_couplers_to_m09_couplers_WDATA;
  wire m09_couplers_to_m09_couplers_WREADY;
  wire m09_couplers_to_m09_couplers_WSTRB;
  wire m09_couplers_to_m09_couplers_WVALID;

  assign M_AXI_araddr = m09_couplers_to_m09_couplers_ARADDR;
  assign M_AXI_arprot = m09_couplers_to_m09_couplers_ARPROT;
  assign M_AXI_arvalid = m09_couplers_to_m09_couplers_ARVALID;
  assign M_AXI_awaddr = m09_couplers_to_m09_couplers_AWADDR;
  assign M_AXI_awprot = m09_couplers_to_m09_couplers_AWPROT;
  assign M_AXI_awvalid = m09_couplers_to_m09_couplers_AWVALID;
  assign M_AXI_bready = m09_couplers_to_m09_couplers_BREADY;
  assign M_AXI_rready = m09_couplers_to_m09_couplers_RREADY;
  assign M_AXI_wdata = m09_couplers_to_m09_couplers_WDATA;
  assign M_AXI_wstrb = m09_couplers_to_m09_couplers_WSTRB;
  assign M_AXI_wvalid = m09_couplers_to_m09_couplers_WVALID;
  assign S_AXI_arready = m09_couplers_to_m09_couplers_ARREADY;
  assign S_AXI_awready = m09_couplers_to_m09_couplers_AWREADY;
  assign S_AXI_bresp = m09_couplers_to_m09_couplers_BRESP;
  assign S_AXI_bvalid = m09_couplers_to_m09_couplers_BVALID;
  assign S_AXI_rdata = m09_couplers_to_m09_couplers_RDATA;
  assign S_AXI_rresp = m09_couplers_to_m09_couplers_RRESP;
  assign S_AXI_rvalid = m09_couplers_to_m09_couplers_RVALID;
  assign S_AXI_wready = m09_couplers_to_m09_couplers_WREADY;
  assign m09_couplers_to_m09_couplers_ARADDR = S_AXI_araddr;
  assign m09_couplers_to_m09_couplers_ARPROT = S_AXI_arprot;
  assign m09_couplers_to_m09_couplers_ARREADY = M_AXI_arready;
  assign m09_couplers_to_m09_couplers_ARVALID = S_AXI_arvalid;
  assign m09_couplers_to_m09_couplers_AWADDR = S_AXI_awaddr;
  assign m09_couplers_to_m09_couplers_AWPROT = S_AXI_awprot;
  assign m09_couplers_to_m09_couplers_AWREADY = M_AXI_awready;
  assign m09_couplers_to_m09_couplers_AWVALID = S_AXI_awvalid;
  assign m09_couplers_to_m09_couplers_BREADY = S_AXI_bready;
  assign m09_couplers_to_m09_couplers_BRESP = M_AXI_bresp;
  assign m09_couplers_to_m09_couplers_BVALID = M_AXI_bvalid;
  assign m09_couplers_to_m09_couplers_RDATA = M_AXI_rdata;
  assign m09_couplers_to_m09_couplers_RREADY = S_AXI_rready;
  assign m09_couplers_to_m09_couplers_RRESP = M_AXI_rresp;
  assign m09_couplers_to_m09_couplers_RVALID = M_AXI_rvalid;
  assign m09_couplers_to_m09_couplers_WDATA = S_AXI_wdata;
  assign m09_couplers_to_m09_couplers_WREADY = M_AXI_wready;
  assign m09_couplers_to_m09_couplers_WSTRB = S_AXI_wstrb;
  assign m09_couplers_to_m09_couplers_WVALID = S_AXI_wvalid;
endmodule

module m10_couplers_imp_O5GQEJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m10_couplers_to_m10_couplers_ARADDR;
  wire [2:0]m10_couplers_to_m10_couplers_ARPROT;
  wire m10_couplers_to_m10_couplers_ARREADY;
  wire m10_couplers_to_m10_couplers_ARVALID;
  wire [31:0]m10_couplers_to_m10_couplers_AWADDR;
  wire [2:0]m10_couplers_to_m10_couplers_AWPROT;
  wire m10_couplers_to_m10_couplers_AWREADY;
  wire m10_couplers_to_m10_couplers_AWVALID;
  wire m10_couplers_to_m10_couplers_BREADY;
  wire [1:0]m10_couplers_to_m10_couplers_BRESP;
  wire m10_couplers_to_m10_couplers_BVALID;
  wire [31:0]m10_couplers_to_m10_couplers_RDATA;
  wire m10_couplers_to_m10_couplers_RREADY;
  wire [1:0]m10_couplers_to_m10_couplers_RRESP;
  wire m10_couplers_to_m10_couplers_RVALID;
  wire [31:0]m10_couplers_to_m10_couplers_WDATA;
  wire m10_couplers_to_m10_couplers_WREADY;
  wire [3:0]m10_couplers_to_m10_couplers_WSTRB;
  wire m10_couplers_to_m10_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m10_couplers_to_m10_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m10_couplers_to_m10_couplers_ARPROT;
  assign M_AXI_arvalid = m10_couplers_to_m10_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m10_couplers_to_m10_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m10_couplers_to_m10_couplers_AWPROT;
  assign M_AXI_awvalid = m10_couplers_to_m10_couplers_AWVALID;
  assign M_AXI_bready = m10_couplers_to_m10_couplers_BREADY;
  assign M_AXI_rready = m10_couplers_to_m10_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m10_couplers_to_m10_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m10_couplers_to_m10_couplers_WSTRB;
  assign M_AXI_wvalid = m10_couplers_to_m10_couplers_WVALID;
  assign S_AXI_arready = m10_couplers_to_m10_couplers_ARREADY;
  assign S_AXI_awready = m10_couplers_to_m10_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m10_couplers_to_m10_couplers_BRESP;
  assign S_AXI_bvalid = m10_couplers_to_m10_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m10_couplers_to_m10_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m10_couplers_to_m10_couplers_RRESP;
  assign S_AXI_rvalid = m10_couplers_to_m10_couplers_RVALID;
  assign S_AXI_wready = m10_couplers_to_m10_couplers_WREADY;
  assign m10_couplers_to_m10_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m10_couplers_to_m10_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m10_couplers_to_m10_couplers_ARREADY = M_AXI_arready;
  assign m10_couplers_to_m10_couplers_ARVALID = S_AXI_arvalid;
  assign m10_couplers_to_m10_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m10_couplers_to_m10_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m10_couplers_to_m10_couplers_AWREADY = M_AXI_awready;
  assign m10_couplers_to_m10_couplers_AWVALID = S_AXI_awvalid;
  assign m10_couplers_to_m10_couplers_BREADY = S_AXI_bready;
  assign m10_couplers_to_m10_couplers_BRESP = M_AXI_bresp[1:0];
  assign m10_couplers_to_m10_couplers_BVALID = M_AXI_bvalid;
  assign m10_couplers_to_m10_couplers_RDATA = M_AXI_rdata[31:0];
  assign m10_couplers_to_m10_couplers_RREADY = S_AXI_rready;
  assign m10_couplers_to_m10_couplers_RRESP = M_AXI_rresp[1:0];
  assign m10_couplers_to_m10_couplers_RVALID = M_AXI_rvalid;
  assign m10_couplers_to_m10_couplers_WDATA = S_AXI_wdata[31:0];
  assign m10_couplers_to_m10_couplers_WREADY = M_AXI_wready;
  assign m10_couplers_to_m10_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m10_couplers_to_m10_couplers_WVALID = S_AXI_wvalid;
endmodule

module m11_couplers_imp_1F5FHOQ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m11_couplers_to_m11_couplers_ARADDR;
  wire m11_couplers_to_m11_couplers_ARREADY;
  wire m11_couplers_to_m11_couplers_ARVALID;
  wire [31:0]m11_couplers_to_m11_couplers_AWADDR;
  wire m11_couplers_to_m11_couplers_AWREADY;
  wire m11_couplers_to_m11_couplers_AWVALID;
  wire m11_couplers_to_m11_couplers_BREADY;
  wire [1:0]m11_couplers_to_m11_couplers_BRESP;
  wire m11_couplers_to_m11_couplers_BVALID;
  wire [31:0]m11_couplers_to_m11_couplers_RDATA;
  wire m11_couplers_to_m11_couplers_RREADY;
  wire [1:0]m11_couplers_to_m11_couplers_RRESP;
  wire m11_couplers_to_m11_couplers_RVALID;
  wire [31:0]m11_couplers_to_m11_couplers_WDATA;
  wire m11_couplers_to_m11_couplers_WREADY;
  wire [3:0]m11_couplers_to_m11_couplers_WSTRB;
  wire m11_couplers_to_m11_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m11_couplers_to_m11_couplers_ARADDR;
  assign M_AXI_arvalid = m11_couplers_to_m11_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m11_couplers_to_m11_couplers_AWADDR;
  assign M_AXI_awvalid = m11_couplers_to_m11_couplers_AWVALID;
  assign M_AXI_bready = m11_couplers_to_m11_couplers_BREADY;
  assign M_AXI_rready = m11_couplers_to_m11_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m11_couplers_to_m11_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m11_couplers_to_m11_couplers_WSTRB;
  assign M_AXI_wvalid = m11_couplers_to_m11_couplers_WVALID;
  assign S_AXI_arready = m11_couplers_to_m11_couplers_ARREADY;
  assign S_AXI_awready = m11_couplers_to_m11_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m11_couplers_to_m11_couplers_BRESP;
  assign S_AXI_bvalid = m11_couplers_to_m11_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m11_couplers_to_m11_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m11_couplers_to_m11_couplers_RRESP;
  assign S_AXI_rvalid = m11_couplers_to_m11_couplers_RVALID;
  assign S_AXI_wready = m11_couplers_to_m11_couplers_WREADY;
  assign m11_couplers_to_m11_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m11_couplers_to_m11_couplers_ARREADY = M_AXI_arready;
  assign m11_couplers_to_m11_couplers_ARVALID = S_AXI_arvalid;
  assign m11_couplers_to_m11_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m11_couplers_to_m11_couplers_AWREADY = M_AXI_awready;
  assign m11_couplers_to_m11_couplers_AWVALID = S_AXI_awvalid;
  assign m11_couplers_to_m11_couplers_BREADY = S_AXI_bready;
  assign m11_couplers_to_m11_couplers_BRESP = M_AXI_bresp[1:0];
  assign m11_couplers_to_m11_couplers_BVALID = M_AXI_bvalid;
  assign m11_couplers_to_m11_couplers_RDATA = M_AXI_rdata[31:0];
  assign m11_couplers_to_m11_couplers_RREADY = S_AXI_rready;
  assign m11_couplers_to_m11_couplers_RRESP = M_AXI_rresp[1:0];
  assign m11_couplers_to_m11_couplers_RVALID = M_AXI_rvalid;
  assign m11_couplers_to_m11_couplers_WDATA = S_AXI_wdata[31:0];
  assign m11_couplers_to_m11_couplers_WREADY = M_AXI_wready;
  assign m11_couplers_to_m11_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m11_couplers_to_m11_couplers_WVALID = S_AXI_wvalid;
endmodule

module m12_couplers_imp_MZRZ1K
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m12_couplers_to_m12_couplers_ARADDR;
  wire m12_couplers_to_m12_couplers_ARREADY;
  wire m12_couplers_to_m12_couplers_ARVALID;
  wire [31:0]m12_couplers_to_m12_couplers_AWADDR;
  wire m12_couplers_to_m12_couplers_AWREADY;
  wire m12_couplers_to_m12_couplers_AWVALID;
  wire m12_couplers_to_m12_couplers_BREADY;
  wire [1:0]m12_couplers_to_m12_couplers_BRESP;
  wire m12_couplers_to_m12_couplers_BVALID;
  wire [31:0]m12_couplers_to_m12_couplers_RDATA;
  wire m12_couplers_to_m12_couplers_RREADY;
  wire [1:0]m12_couplers_to_m12_couplers_RRESP;
  wire m12_couplers_to_m12_couplers_RVALID;
  wire [31:0]m12_couplers_to_m12_couplers_WDATA;
  wire m12_couplers_to_m12_couplers_WREADY;
  wire [3:0]m12_couplers_to_m12_couplers_WSTRB;
  wire m12_couplers_to_m12_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m12_couplers_to_m12_couplers_ARADDR;
  assign M_AXI_arvalid = m12_couplers_to_m12_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m12_couplers_to_m12_couplers_AWADDR;
  assign M_AXI_awvalid = m12_couplers_to_m12_couplers_AWVALID;
  assign M_AXI_bready = m12_couplers_to_m12_couplers_BREADY;
  assign M_AXI_rready = m12_couplers_to_m12_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m12_couplers_to_m12_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m12_couplers_to_m12_couplers_WSTRB;
  assign M_AXI_wvalid = m12_couplers_to_m12_couplers_WVALID;
  assign S_AXI_arready = m12_couplers_to_m12_couplers_ARREADY;
  assign S_AXI_awready = m12_couplers_to_m12_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m12_couplers_to_m12_couplers_BRESP;
  assign S_AXI_bvalid = m12_couplers_to_m12_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m12_couplers_to_m12_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m12_couplers_to_m12_couplers_RRESP;
  assign S_AXI_rvalid = m12_couplers_to_m12_couplers_RVALID;
  assign S_AXI_wready = m12_couplers_to_m12_couplers_WREADY;
  assign m12_couplers_to_m12_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m12_couplers_to_m12_couplers_ARREADY = M_AXI_arready;
  assign m12_couplers_to_m12_couplers_ARVALID = S_AXI_arvalid;
  assign m12_couplers_to_m12_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m12_couplers_to_m12_couplers_AWREADY = M_AXI_awready;
  assign m12_couplers_to_m12_couplers_AWVALID = S_AXI_awvalid;
  assign m12_couplers_to_m12_couplers_BREADY = S_AXI_bready;
  assign m12_couplers_to_m12_couplers_BRESP = M_AXI_bresp[1:0];
  assign m12_couplers_to_m12_couplers_BVALID = M_AXI_bvalid;
  assign m12_couplers_to_m12_couplers_RDATA = M_AXI_rdata[31:0];
  assign m12_couplers_to_m12_couplers_RREADY = S_AXI_rready;
  assign m12_couplers_to_m12_couplers_RRESP = M_AXI_rresp[1:0];
  assign m12_couplers_to_m12_couplers_RVALID = M_AXI_rvalid;
  assign m12_couplers_to_m12_couplers_WDATA = S_AXI_wdata[31:0];
  assign m12_couplers_to_m12_couplers_WREADY = M_AXI_wready;
  assign m12_couplers_to_m12_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m12_couplers_to_m12_couplers_WVALID = S_AXI_wvalid;
endmodule

module m13_couplers_imp_1GLEAX5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m13_couplers_to_m13_couplers_ARADDR;
  wire m13_couplers_to_m13_couplers_ARPROT;
  wire m13_couplers_to_m13_couplers_ARREADY;
  wire m13_couplers_to_m13_couplers_ARVALID;
  wire m13_couplers_to_m13_couplers_AWADDR;
  wire m13_couplers_to_m13_couplers_AWPROT;
  wire m13_couplers_to_m13_couplers_AWREADY;
  wire m13_couplers_to_m13_couplers_AWVALID;
  wire m13_couplers_to_m13_couplers_BREADY;
  wire m13_couplers_to_m13_couplers_BRESP;
  wire m13_couplers_to_m13_couplers_BVALID;
  wire m13_couplers_to_m13_couplers_RDATA;
  wire m13_couplers_to_m13_couplers_RREADY;
  wire m13_couplers_to_m13_couplers_RRESP;
  wire m13_couplers_to_m13_couplers_RVALID;
  wire m13_couplers_to_m13_couplers_WDATA;
  wire m13_couplers_to_m13_couplers_WREADY;
  wire m13_couplers_to_m13_couplers_WSTRB;
  wire m13_couplers_to_m13_couplers_WVALID;

  assign M_AXI_araddr = m13_couplers_to_m13_couplers_ARADDR;
  assign M_AXI_arprot = m13_couplers_to_m13_couplers_ARPROT;
  assign M_AXI_arvalid = m13_couplers_to_m13_couplers_ARVALID;
  assign M_AXI_awaddr = m13_couplers_to_m13_couplers_AWADDR;
  assign M_AXI_awprot = m13_couplers_to_m13_couplers_AWPROT;
  assign M_AXI_awvalid = m13_couplers_to_m13_couplers_AWVALID;
  assign M_AXI_bready = m13_couplers_to_m13_couplers_BREADY;
  assign M_AXI_rready = m13_couplers_to_m13_couplers_RREADY;
  assign M_AXI_wdata = m13_couplers_to_m13_couplers_WDATA;
  assign M_AXI_wstrb = m13_couplers_to_m13_couplers_WSTRB;
  assign M_AXI_wvalid = m13_couplers_to_m13_couplers_WVALID;
  assign S_AXI_arready = m13_couplers_to_m13_couplers_ARREADY;
  assign S_AXI_awready = m13_couplers_to_m13_couplers_AWREADY;
  assign S_AXI_bresp = m13_couplers_to_m13_couplers_BRESP;
  assign S_AXI_bvalid = m13_couplers_to_m13_couplers_BVALID;
  assign S_AXI_rdata = m13_couplers_to_m13_couplers_RDATA;
  assign S_AXI_rresp = m13_couplers_to_m13_couplers_RRESP;
  assign S_AXI_rvalid = m13_couplers_to_m13_couplers_RVALID;
  assign S_AXI_wready = m13_couplers_to_m13_couplers_WREADY;
  assign m13_couplers_to_m13_couplers_ARADDR = S_AXI_araddr;
  assign m13_couplers_to_m13_couplers_ARPROT = S_AXI_arprot;
  assign m13_couplers_to_m13_couplers_ARREADY = M_AXI_arready;
  assign m13_couplers_to_m13_couplers_ARVALID = S_AXI_arvalid;
  assign m13_couplers_to_m13_couplers_AWADDR = S_AXI_awaddr;
  assign m13_couplers_to_m13_couplers_AWPROT = S_AXI_awprot;
  assign m13_couplers_to_m13_couplers_AWREADY = M_AXI_awready;
  assign m13_couplers_to_m13_couplers_AWVALID = S_AXI_awvalid;
  assign m13_couplers_to_m13_couplers_BREADY = S_AXI_bready;
  assign m13_couplers_to_m13_couplers_BRESP = M_AXI_bresp;
  assign m13_couplers_to_m13_couplers_BVALID = M_AXI_bvalid;
  assign m13_couplers_to_m13_couplers_RDATA = M_AXI_rdata;
  assign m13_couplers_to_m13_couplers_RREADY = S_AXI_rready;
  assign m13_couplers_to_m13_couplers_RRESP = M_AXI_rresp;
  assign m13_couplers_to_m13_couplers_RVALID = M_AXI_rvalid;
  assign m13_couplers_to_m13_couplers_WDATA = S_AXI_wdata;
  assign m13_couplers_to_m13_couplers_WREADY = M_AXI_wready;
  assign m13_couplers_to_m13_couplers_WSTRB = S_AXI_wstrb;
  assign m13_couplers_to_m13_couplers_WVALID = S_AXI_wvalid;
endmodule

module m14_couplers_imp_PPCMGD
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m14_couplers_to_m14_couplers_ARADDR;
  wire [2:0]m14_couplers_to_m14_couplers_ARPROT;
  wire m14_couplers_to_m14_couplers_ARREADY;
  wire m14_couplers_to_m14_couplers_ARVALID;
  wire [31:0]m14_couplers_to_m14_couplers_AWADDR;
  wire [2:0]m14_couplers_to_m14_couplers_AWPROT;
  wire m14_couplers_to_m14_couplers_AWREADY;
  wire m14_couplers_to_m14_couplers_AWVALID;
  wire m14_couplers_to_m14_couplers_BREADY;
  wire [1:0]m14_couplers_to_m14_couplers_BRESP;
  wire m14_couplers_to_m14_couplers_BVALID;
  wire [31:0]m14_couplers_to_m14_couplers_RDATA;
  wire m14_couplers_to_m14_couplers_RREADY;
  wire [1:0]m14_couplers_to_m14_couplers_RRESP;
  wire m14_couplers_to_m14_couplers_RVALID;
  wire [31:0]m14_couplers_to_m14_couplers_WDATA;
  wire m14_couplers_to_m14_couplers_WREADY;
  wire [3:0]m14_couplers_to_m14_couplers_WSTRB;
  wire m14_couplers_to_m14_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m14_couplers_to_m14_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m14_couplers_to_m14_couplers_ARPROT;
  assign M_AXI_arvalid = m14_couplers_to_m14_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m14_couplers_to_m14_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m14_couplers_to_m14_couplers_AWPROT;
  assign M_AXI_awvalid = m14_couplers_to_m14_couplers_AWVALID;
  assign M_AXI_bready = m14_couplers_to_m14_couplers_BREADY;
  assign M_AXI_rready = m14_couplers_to_m14_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m14_couplers_to_m14_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m14_couplers_to_m14_couplers_WSTRB;
  assign M_AXI_wvalid = m14_couplers_to_m14_couplers_WVALID;
  assign S_AXI_arready = m14_couplers_to_m14_couplers_ARREADY;
  assign S_AXI_awready = m14_couplers_to_m14_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m14_couplers_to_m14_couplers_BRESP;
  assign S_AXI_bvalid = m14_couplers_to_m14_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m14_couplers_to_m14_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m14_couplers_to_m14_couplers_RRESP;
  assign S_AXI_rvalid = m14_couplers_to_m14_couplers_RVALID;
  assign S_AXI_wready = m14_couplers_to_m14_couplers_WREADY;
  assign m14_couplers_to_m14_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m14_couplers_to_m14_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m14_couplers_to_m14_couplers_ARREADY = M_AXI_arready;
  assign m14_couplers_to_m14_couplers_ARVALID = S_AXI_arvalid;
  assign m14_couplers_to_m14_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m14_couplers_to_m14_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m14_couplers_to_m14_couplers_AWREADY = M_AXI_awready;
  assign m14_couplers_to_m14_couplers_AWVALID = S_AXI_awvalid;
  assign m14_couplers_to_m14_couplers_BREADY = S_AXI_bready;
  assign m14_couplers_to_m14_couplers_BRESP = M_AXI_bresp[1:0];
  assign m14_couplers_to_m14_couplers_BVALID = M_AXI_bvalid;
  assign m14_couplers_to_m14_couplers_RDATA = M_AXI_rdata[31:0];
  assign m14_couplers_to_m14_couplers_RREADY = S_AXI_rready;
  assign m14_couplers_to_m14_couplers_RRESP = M_AXI_rresp[1:0];
  assign m14_couplers_to_m14_couplers_RVALID = M_AXI_rvalid;
  assign m14_couplers_to_m14_couplers_WDATA = S_AXI_wdata[31:0];
  assign m14_couplers_to_m14_couplers_WREADY = M_AXI_wready;
  assign m14_couplers_to_m14_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m14_couplers_to_m14_couplers_WVALID = S_AXI_wvalid;
endmodule

module m15_couplers_imp_1DXDXE4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m15_couplers_to_m15_couplers_ARADDR;
  wire m15_couplers_to_m15_couplers_ARPROT;
  wire m15_couplers_to_m15_couplers_ARREADY;
  wire m15_couplers_to_m15_couplers_ARVALID;
  wire m15_couplers_to_m15_couplers_AWADDR;
  wire m15_couplers_to_m15_couplers_AWPROT;
  wire m15_couplers_to_m15_couplers_AWREADY;
  wire m15_couplers_to_m15_couplers_AWVALID;
  wire m15_couplers_to_m15_couplers_BREADY;
  wire m15_couplers_to_m15_couplers_BRESP;
  wire m15_couplers_to_m15_couplers_BVALID;
  wire m15_couplers_to_m15_couplers_RDATA;
  wire m15_couplers_to_m15_couplers_RREADY;
  wire m15_couplers_to_m15_couplers_RRESP;
  wire m15_couplers_to_m15_couplers_RVALID;
  wire m15_couplers_to_m15_couplers_WDATA;
  wire m15_couplers_to_m15_couplers_WREADY;
  wire m15_couplers_to_m15_couplers_WSTRB;
  wire m15_couplers_to_m15_couplers_WVALID;

  assign M_AXI_araddr = m15_couplers_to_m15_couplers_ARADDR;
  assign M_AXI_arprot = m15_couplers_to_m15_couplers_ARPROT;
  assign M_AXI_arvalid = m15_couplers_to_m15_couplers_ARVALID;
  assign M_AXI_awaddr = m15_couplers_to_m15_couplers_AWADDR;
  assign M_AXI_awprot = m15_couplers_to_m15_couplers_AWPROT;
  assign M_AXI_awvalid = m15_couplers_to_m15_couplers_AWVALID;
  assign M_AXI_bready = m15_couplers_to_m15_couplers_BREADY;
  assign M_AXI_rready = m15_couplers_to_m15_couplers_RREADY;
  assign M_AXI_wdata = m15_couplers_to_m15_couplers_WDATA;
  assign M_AXI_wstrb = m15_couplers_to_m15_couplers_WSTRB;
  assign M_AXI_wvalid = m15_couplers_to_m15_couplers_WVALID;
  assign S_AXI_arready = m15_couplers_to_m15_couplers_ARREADY;
  assign S_AXI_awready = m15_couplers_to_m15_couplers_AWREADY;
  assign S_AXI_bresp = m15_couplers_to_m15_couplers_BRESP;
  assign S_AXI_bvalid = m15_couplers_to_m15_couplers_BVALID;
  assign S_AXI_rdata = m15_couplers_to_m15_couplers_RDATA;
  assign S_AXI_rresp = m15_couplers_to_m15_couplers_RRESP;
  assign S_AXI_rvalid = m15_couplers_to_m15_couplers_RVALID;
  assign S_AXI_wready = m15_couplers_to_m15_couplers_WREADY;
  assign m15_couplers_to_m15_couplers_ARADDR = S_AXI_araddr;
  assign m15_couplers_to_m15_couplers_ARPROT = S_AXI_arprot;
  assign m15_couplers_to_m15_couplers_ARREADY = M_AXI_arready;
  assign m15_couplers_to_m15_couplers_ARVALID = S_AXI_arvalid;
  assign m15_couplers_to_m15_couplers_AWADDR = S_AXI_awaddr;
  assign m15_couplers_to_m15_couplers_AWPROT = S_AXI_awprot;
  assign m15_couplers_to_m15_couplers_AWREADY = M_AXI_awready;
  assign m15_couplers_to_m15_couplers_AWVALID = S_AXI_awvalid;
  assign m15_couplers_to_m15_couplers_BREADY = S_AXI_bready;
  assign m15_couplers_to_m15_couplers_BRESP = M_AXI_bresp;
  assign m15_couplers_to_m15_couplers_BVALID = M_AXI_bvalid;
  assign m15_couplers_to_m15_couplers_RDATA = M_AXI_rdata;
  assign m15_couplers_to_m15_couplers_RREADY = S_AXI_rready;
  assign m15_couplers_to_m15_couplers_RRESP = M_AXI_rresp;
  assign m15_couplers_to_m15_couplers_RVALID = M_AXI_rvalid;
  assign m15_couplers_to_m15_couplers_WDATA = S_AXI_wdata;
  assign m15_couplers_to_m15_couplers_WREADY = M_AXI_wready;
  assign m15_couplers_to_m15_couplers_WSTRB = S_AXI_wstrb;
  assign m15_couplers_to_m15_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_XT0YB5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [1:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [1:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[1:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[1:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[1:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[1:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule
