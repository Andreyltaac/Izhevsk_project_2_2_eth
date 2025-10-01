// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Jun 16 12:47:15 2022
// Host        : TOR00094 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_dac_fifo_ad9364_0_0_stub.v
// Design      : design_1_dac_fifo_ad9364_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_rfifo,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(din_rstn, din_clk, din_enable_0, din_valid_0, 
  din_valid_in_0, din_data_0, din_enable_1, din_valid_1, din_valid_in_1, din_data_1, din_unf, 
  dout_rst, dout_clk, dout_enable_0, dout_valid_0, dout_valid_out_0, dout_data_0, 
  dout_enable_1, dout_valid_1, dout_valid_out_1, dout_data_1, dout_unf)
/* synthesis syn_black_box black_box_pad_pin="din_rstn,din_clk,din_enable_0,din_valid_0,din_valid_in_0,din_data_0[15:0],din_enable_1,din_valid_1,din_valid_in_1,din_data_1[15:0],din_unf,dout_rst,dout_clk,dout_enable_0,dout_valid_0,dout_valid_out_0,dout_data_0[15:0],dout_enable_1,dout_valid_1,dout_valid_out_1,dout_data_1[15:0],dout_unf" */;
  input din_rstn;
  input din_clk;
  output din_enable_0;
  output din_valid_0;
  input din_valid_in_0;
  input [15:0]din_data_0;
  output din_enable_1;
  output din_valid_1;
  input din_valid_in_1;
  input [15:0]din_data_1;
  input din_unf;
  input dout_rst;
  input dout_clk;
  input dout_enable_0;
  input dout_valid_0;
  output dout_valid_out_0;
  output [15:0]dout_data_0;
  input dout_enable_1;
  input dout_valid_1;
  output dout_valid_out_1;
  output [15:0]dout_data_1;
  output dout_unf;
endmodule
