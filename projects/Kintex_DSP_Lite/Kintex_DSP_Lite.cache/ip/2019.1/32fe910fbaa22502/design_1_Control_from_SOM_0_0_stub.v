// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Jun 16 12:57:00 2022
// Host        : TOR00094 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Control_from_SOM_0_0_stub.v
// Design      : design_1_Control_from_SOM_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Control_from_SOM_v1_0,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(op_mode_fsc_fsr, dl_lnk_sv_swap_iq, 
  dl_lnk_lnk_swap_iq, ul_sv_lnk_swap_iq, ul_lnk_lnk_swap_iq, link_1_enable, link_2_enable, 
  ad9361_1_reset, ad9361_2_reset, ad9361_3_reset, ad9364_reset, ad9361_1_en_agc, 
  ad9361_2_en_agc, ad9361_3_en_agc, ad9364_en_agc, link_1_mode_rf_optic, 
  link_2_mode_rf_optic, lte_downlink_simulation, lte_uplink_simulation, 
  reset_FIR_core_26b, live_status, s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, 
  s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, 
  s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, s00_axi_arprot, 
  s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, 
  s00_axi_rready, s00_axi_aclk, s00_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="op_mode_fsc_fsr,dl_lnk_sv_swap_iq,dl_lnk_lnk_swap_iq,ul_sv_lnk_swap_iq,ul_lnk_lnk_swap_iq,link_1_enable,link_2_enable,ad9361_1_reset,ad9361_2_reset,ad9361_3_reset,ad9364_reset,ad9361_1_en_agc,ad9361_2_en_agc,ad9361_3_en_agc,ad9364_en_agc,link_1_mode_rf_optic,link_2_mode_rf_optic,lte_downlink_simulation,lte_uplink_simulation,reset_FIR_core_26b,live_status,s00_axi_awaddr[3:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[3:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn" */;
  output op_mode_fsc_fsr;
  output dl_lnk_sv_swap_iq;
  output dl_lnk_lnk_swap_iq;
  output ul_sv_lnk_swap_iq;
  output ul_lnk_lnk_swap_iq;
  output link_1_enable;
  output link_2_enable;
  output ad9361_1_reset;
  output ad9361_2_reset;
  output ad9361_3_reset;
  output ad9364_reset;
  output ad9361_1_en_agc;
  output ad9361_2_en_agc;
  output ad9361_3_en_agc;
  output ad9364_en_agc;
  output link_1_mode_rf_optic;
  output link_2_mode_rf_optic;
  output lte_downlink_simulation;
  output lte_uplink_simulation;
  output reset_FIR_core_26b;
  output live_status;
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
  input s00_axi_aclk;
  input s00_axi_aresetn;
endmodule
