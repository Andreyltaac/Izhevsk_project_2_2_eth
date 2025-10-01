// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Sep  2 10:52:43 2025
// Host        : TOR00094 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_vio_0_0_stub.v
// Design      : design_1_vio_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe_in0, probe_in1, probe_in2, probe_in3, 
  probe_in4, probe_out0, probe_out1, probe_out2, probe_out3, probe_out4, probe_out5, probe_out6, 
  probe_out7, probe_out8, probe_out9, probe_out10)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[14:0],probe_in1[23:0],probe_in2[23:0],probe_in3[23:0],probe_in4[17:0],probe_out0[3:0],probe_out1[2:0],probe_out2[13:0],probe_out3[23:0],probe_out4[0:0],probe_out5[0:0],probe_out6[2:0],probe_out7[0:0],probe_out8[1:0],probe_out9[0:0],probe_out10[0:0]" */;
  input clk;
  input [14:0]probe_in0;
  input [23:0]probe_in1;
  input [23:0]probe_in2;
  input [23:0]probe_in3;
  input [17:0]probe_in4;
  output [3:0]probe_out0;
  output [2:0]probe_out1;
  output [13:0]probe_out2;
  output [23:0]probe_out3;
  output [0:0]probe_out4;
  output [0:0]probe_out5;
  output [2:0]probe_out6;
  output [0:0]probe_out7;
  output [1:0]probe_out8;
  output [0:0]probe_out9;
  output [0:0]probe_out10;
endmodule
