// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Jun 16 12:57:23 2022
// Host        : TOR00094 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Current_turning_off_0_0_stub.v
// Design      : design_1_Current_turning_off_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Current_turning_off_v1_0,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(som_en_28v_l1, som_en_28v_l2, som_en_28v_s1, 
  som_en_28v_s2, som_en_28v_s3, som_en_28v_s4, som_en_5v_s, fpga_en_28v_l1, fpga_en_28v_l2, 
  fpga_en_28v_s1, fpga_en_28v_s2, fpga_en_28v_s3, fpga_en_28v_s4, fpga_en_5v_s, spi_cs_n_0, 
  spi_sclk_0, spi_mosi_0, spi_miso_0, spi_cs_n_1, spi_sclk_1, spi_mosi_1, spi_miso_1, 
  s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, 
  s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, 
  s00_axi_bready, s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, 
  s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, s00_axi_rready, s00_axi_aclk, 
  s00_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="som_en_28v_l1,som_en_28v_l2,som_en_28v_s1,som_en_28v_s2,som_en_28v_s3,som_en_28v_s4,som_en_5v_s,fpga_en_28v_l1,fpga_en_28v_l2,fpga_en_28v_s1,fpga_en_28v_s2,fpga_en_28v_s3,fpga_en_28v_s4,fpga_en_5v_s,spi_cs_n_0,spi_sclk_0,spi_mosi_0,spi_miso_0,spi_cs_n_1,spi_sclk_1,spi_mosi_1,spi_miso_1,s00_axi_awaddr[5:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[5:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn" */;
  input som_en_28v_l1;
  input som_en_28v_l2;
  input som_en_28v_s1;
  input som_en_28v_s2;
  input som_en_28v_s3;
  input som_en_28v_s4;
  input som_en_5v_s;
  output fpga_en_28v_l1;
  output fpga_en_28v_l2;
  output fpga_en_28v_s1;
  output fpga_en_28v_s2;
  output fpga_en_28v_s3;
  output fpga_en_28v_s4;
  output fpga_en_5v_s;
  output spi_cs_n_0;
  output spi_sclk_0;
  output spi_mosi_0;
  input spi_miso_0;
  output spi_cs_n_1;
  output spi_sclk_1;
  output spi_mosi_1;
  input spi_miso_1;
  input [5:0]s00_axi_awaddr;
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
  input [5:0]s00_axi_araddr;
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
