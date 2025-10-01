// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Jun 16 14:03:41 2022
// Host        : TOR00094 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_IP_sync_0_3_stub.v
// Design      : design_1_IP_sync_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "IP_sync_v1_0,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(sync_iclk, sync_ireset, sync_idat_re, 
  sync_idat_im, sync_corr, sync_mlvl, sync_osop, sync_odat_re, sync_odat_im, reg_out, 
  s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, 
  s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, 
  s00_axi_bready, s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, 
  s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, s00_axi_rready, LED_str, LED_en, s00_axi_aclk, 
  s00_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="sync_iclk,sync_ireset,sync_idat_re[15:0],sync_idat_im[15:0],sync_corr[11:0],sync_mlvl[11:0],sync_osop,sync_odat_re[11:0],sync_odat_im[11:0],reg_out[31:0],s00_axi_awaddr[3:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[3:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,LED_str,LED_en,s00_axi_aclk,s00_axi_aresetn" */;
  input sync_iclk;
  input sync_ireset;
  input [15:0]sync_idat_re;
  input [15:0]sync_idat_im;
  output [11:0]sync_corr;
  output [11:0]sync_mlvl;
  output sync_osop;
  output [11:0]sync_odat_re;
  output [11:0]sync_odat_im;
  output [31:0]reg_out;
  input [3:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [3:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  output LED_str;
  output LED_en;
  input s00_axi_aclk;
  input s00_axi_aresetn;
endmodule
