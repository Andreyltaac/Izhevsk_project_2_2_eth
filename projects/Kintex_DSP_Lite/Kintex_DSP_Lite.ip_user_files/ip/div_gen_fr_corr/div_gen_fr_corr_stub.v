// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Sep  1 14:48:16 2025
// Host        : TOR00094 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/work/Izhevsk_project_2_2/Izhevsk_project_2_2/projects/Kintex_DSP_Lite/Kintex_DSP_Lite.srcs/sources_1/ip/div_gen_fr_corr/div_gen_fr_corr_stub.v
// Design      : div_gen_fr_corr
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "div_gen_v5_1_15,Vivado 2019.1" *)
module div_gen_fr_corr(aclk, aresetn, s_axis_divisor_tvalid, 
  s_axis_divisor_tdata, s_axis_dividend_tvalid, s_axis_dividend_tdata, 
  m_axis_dout_tvalid, m_axis_dout_tuser, m_axis_dout_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_divisor_tvalid,s_axis_divisor_tdata[23:0],s_axis_dividend_tvalid,s_axis_dividend_tdata[23:0],m_axis_dout_tvalid,m_axis_dout_tuser[0:0],m_axis_dout_tdata[47:0]" */;
  input aclk;
  input aresetn;
  input s_axis_divisor_tvalid;
  input [23:0]s_axis_divisor_tdata;
  input s_axis_dividend_tvalid;
  input [23:0]s_axis_dividend_tdata;
  output m_axis_dout_tvalid;
  output [0:0]m_axis_dout_tuser;
  output [47:0]m_axis_dout_tdata;
endmodule
