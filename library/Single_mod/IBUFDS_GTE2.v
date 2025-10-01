`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2022 11:28:52
// Design Name: 
// Module Name: IBUFDS_GTE2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module IBUFDS_GTE2(
  input   ref_clk1_p,
  input   ref_clk1_n,
  output   ref_clk1   
    );
    
IBUFDS_GTE2 i_ibufds_ref_clk (
    .CEB (1'd0),
    .I (ref_clk1_p),
    .IB (ref_clk1_n),
    .O (ref_clk1),
    .ODIV2 ());
    
endmodule
