// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Jun 16 12:44:27 2022
// Host        : TOR00094 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_AXI_C2C_0_stub.v
// Design      : design_1_AXI_C2C_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_chip2chip_v5_0_5,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_aclk, s_aresetn, s_axi_awaddr, s_axi_awlen, 
  s_axi_awsize, s_axi_awburst, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, 
  s_axi_wlast, s_axi_wvalid, s_axi_wready, s_axi_bresp, s_axi_bvalid, s_axi_bready, 
  s_axi_araddr, s_axi_arlen, s_axi_arsize, s_axi_arburst, s_axi_arvalid, s_axi_arready, 
  s_axi_rdata, s_axi_rresp, s_axi_rlast, s_axi_rvalid, s_axi_rready, axi_c2c_m2s_intr_in, 
  axi_c2c_s2m_intr_out, idelay_ref_clk, axi_c2c_phy_clk, axi_c2c_selio_tx_clk_out, 
  axi_c2c_selio_tx_data_out, axi_c2c_selio_rx_clk_in, axi_c2c_selio_rx_data_in, 
  axi_c2c_link_status_out, axi_c2c_multi_bit_error_out, axi_c2c_link_error_out, 
  m_axi_lite_aclk, m_axi_lite_awaddr, m_axi_lite_awprot, m_axi_lite_awvalid, 
  m_axi_lite_awready, m_axi_lite_wdata, m_axi_lite_wstrb, m_axi_lite_wvalid, 
  m_axi_lite_wready, m_axi_lite_bresp, m_axi_lite_bvalid, m_axi_lite_bready, 
  m_axi_lite_araddr, m_axi_lite_arprot, m_axi_lite_arvalid, m_axi_lite_arready, 
  m_axi_lite_rdata, m_axi_lite_rresp, m_axi_lite_rvalid, m_axi_lite_rready)
/* synthesis syn_black_box black_box_pad_pin="s_aclk,s_aresetn,s_axi_awaddr[31:0],s_axi_awlen[7:0],s_axi_awsize[2:0],s_axi_awburst[1:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[31:0],s_axi_arlen[7:0],s_axi_arsize[2:0],s_axi_arburst[1:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rlast,s_axi_rvalid,s_axi_rready,axi_c2c_m2s_intr_in[3:0],axi_c2c_s2m_intr_out[3:0],idelay_ref_clk,axi_c2c_phy_clk,axi_c2c_selio_tx_clk_out,axi_c2c_selio_tx_data_out[14:0],axi_c2c_selio_rx_clk_in,axi_c2c_selio_rx_data_in[14:0],axi_c2c_link_status_out,axi_c2c_multi_bit_error_out,axi_c2c_link_error_out,m_axi_lite_aclk,m_axi_lite_awaddr[31:0],m_axi_lite_awprot[1:0],m_axi_lite_awvalid,m_axi_lite_awready,m_axi_lite_wdata[31:0],m_axi_lite_wstrb[3:0],m_axi_lite_wvalid,m_axi_lite_wready,m_axi_lite_bresp[1:0],m_axi_lite_bvalid,m_axi_lite_bready,m_axi_lite_araddr[31:0],m_axi_lite_arprot[1:0],m_axi_lite_arvalid,m_axi_lite_arready,m_axi_lite_rdata[31:0],m_axi_lite_rresp[1:0],m_axi_lite_rvalid,m_axi_lite_rready" */;
  input s_aclk;
  input s_aresetn;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input [3:0]axi_c2c_m2s_intr_in;
  output [3:0]axi_c2c_s2m_intr_out;
  input idelay_ref_clk;
  input axi_c2c_phy_clk;
  output axi_c2c_selio_tx_clk_out;
  output [14:0]axi_c2c_selio_tx_data_out;
  input axi_c2c_selio_rx_clk_in;
  input [14:0]axi_c2c_selio_rx_data_in;
  output axi_c2c_link_status_out;
  output axi_c2c_multi_bit_error_out;
  output axi_c2c_link_error_out;
  input m_axi_lite_aclk;
  output [31:0]m_axi_lite_awaddr;
  output [1:0]m_axi_lite_awprot;
  output m_axi_lite_awvalid;
  input m_axi_lite_awready;
  output [31:0]m_axi_lite_wdata;
  output [3:0]m_axi_lite_wstrb;
  output m_axi_lite_wvalid;
  input m_axi_lite_wready;
  input [1:0]m_axi_lite_bresp;
  input m_axi_lite_bvalid;
  output m_axi_lite_bready;
  output [31:0]m_axi_lite_araddr;
  output [1:0]m_axi_lite_arprot;
  output m_axi_lite_arvalid;
  input m_axi_lite_arready;
  input [31:0]m_axi_lite_rdata;
  input [1:0]m_axi_lite_rresp;
  input m_axi_lite_rvalid;
  output m_axi_lite_rready;
endmodule
