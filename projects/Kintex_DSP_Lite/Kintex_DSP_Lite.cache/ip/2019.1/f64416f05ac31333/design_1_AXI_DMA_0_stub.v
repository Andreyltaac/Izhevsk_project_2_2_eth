// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Jun 16 12:45:18 2022
// Host        : TOR00094 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_AXI_DMA_0_stub.v
// Design      : design_1_AXI_DMA_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_dmac,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_aclk, s_axi_aresetn, s_axi_awvalid, 
  s_axi_awaddr, s_axi_awready, s_axi_awprot, s_axi_wvalid, s_axi_wdata, s_axi_wstrb, 
  s_axi_wready, s_axi_bvalid, s_axi_bresp, s_axi_bready, s_axi_arvalid, s_axi_araddr, 
  s_axi_arready, s_axi_arprot, s_axi_rvalid, s_axi_rready, s_axi_rresp, s_axi_rdata, irq, 
  m_dest_axi_aclk, m_dest_axi_aresetn, m_dest_axi_awaddr, m_dest_axi_awlen, 
  m_dest_axi_awsize, m_dest_axi_awburst, m_dest_axi_awprot, m_dest_axi_awcache, 
  m_dest_axi_awvalid, m_dest_axi_awready, m_dest_axi_wdata, m_dest_axi_wstrb, 
  m_dest_axi_wready, m_dest_axi_wvalid, m_dest_axi_wlast, m_dest_axi_bvalid, 
  m_dest_axi_bresp, m_dest_axi_bready, fifo_wr_clk, fifo_wr_en, fifo_wr_din, 
  fifo_wr_overflow, fifo_wr_sync, fifo_wr_xfer_req)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aclk,s_axi_aresetn,s_axi_awvalid,s_axi_awaddr[10:0],s_axi_awready,s_axi_awprot[2:0],s_axi_wvalid,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wready,s_axi_bvalid,s_axi_bresp[1:0],s_axi_bready,s_axi_arvalid,s_axi_araddr[10:0],s_axi_arready,s_axi_arprot[2:0],s_axi_rvalid,s_axi_rready,s_axi_rresp[1:0],s_axi_rdata[31:0],irq,m_dest_axi_aclk,m_dest_axi_aresetn,m_dest_axi_awaddr[29:0],m_dest_axi_awlen[7:0],m_dest_axi_awsize[2:0],m_dest_axi_awburst[1:0],m_dest_axi_awprot[2:0],m_dest_axi_awcache[3:0],m_dest_axi_awvalid,m_dest_axi_awready,m_dest_axi_wdata[31:0],m_dest_axi_wstrb[3:0],m_dest_axi_wready,m_dest_axi_wvalid,m_dest_axi_wlast,m_dest_axi_bvalid,m_dest_axi_bresp[1:0],m_dest_axi_bready,fifo_wr_clk,fifo_wr_en,fifo_wr_din[31:0],fifo_wr_overflow,fifo_wr_sync,fifo_wr_xfer_req" */;
  input s_axi_aclk;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input [10:0]s_axi_awaddr;
  output s_axi_awready;
  input [2:0]s_axi_awprot;
  input s_axi_wvalid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  output s_axi_wready;
  output s_axi_bvalid;
  output [1:0]s_axi_bresp;
  input s_axi_bready;
  input s_axi_arvalid;
  input [10:0]s_axi_araddr;
  output s_axi_arready;
  input [2:0]s_axi_arprot;
  output s_axi_rvalid;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output [31:0]s_axi_rdata;
  output irq;
  input m_dest_axi_aclk;
  input m_dest_axi_aresetn;
  output [29:0]m_dest_axi_awaddr;
  output [7:0]m_dest_axi_awlen;
  output [2:0]m_dest_axi_awsize;
  output [1:0]m_dest_axi_awburst;
  output [2:0]m_dest_axi_awprot;
  output [3:0]m_dest_axi_awcache;
  output m_dest_axi_awvalid;
  input m_dest_axi_awready;
  output [31:0]m_dest_axi_wdata;
  output [3:0]m_dest_axi_wstrb;
  input m_dest_axi_wready;
  output m_dest_axi_wvalid;
  output m_dest_axi_wlast;
  input m_dest_axi_bvalid;
  input [1:0]m_dest_axi_bresp;
  output m_dest_axi_bready;
  input fifo_wr_clk;
  input fifo_wr_en;
  input [31:0]fifo_wr_din;
  output fifo_wr_overflow;
  input fifo_wr_sync;
  output fifo_wr_xfer_req;
endmodule
