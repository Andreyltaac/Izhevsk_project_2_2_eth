// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Jun 16 12:43:54 2022
// Host        : TOR00094 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_util_cpack_0_stub.v
// Design      : design_1_util_cpack_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_cpack2,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset, enable_0, enable_1, fifo_wr_en, 
  fifo_wr_overflow, fifo_wr_data_0, fifo_wr_data_1, packed_fifo_wr_en, 
  packed_fifo_wr_overflow, packed_fifo_wr_sync, packed_fifo_wr_data)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,enable_0,enable_1,fifo_wr_en,fifo_wr_overflow,fifo_wr_data_0[15:0],fifo_wr_data_1[15:0],packed_fifo_wr_en,packed_fifo_wr_overflow,packed_fifo_wr_sync,packed_fifo_wr_data[31:0]" */;
  input clk;
  input reset;
  input enable_0;
  input enable_1;
  input fifo_wr_en;
  output fifo_wr_overflow;
  input [15:0]fifo_wr_data_0;
  input [15:0]fifo_wr_data_1;
  output packed_fifo_wr_en;
  input packed_fifo_wr_overflow;
  output packed_fifo_wr_sync;
  output [31:0]packed_fifo_wr_data;
endmodule
