`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2021 11:13:35
// Design Name: 
// Module Name: DIV
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


module DIV(
    input in_clk,
    output out_clk
    );
    
parameter SIM_DEVICE = "7SERIES";
parameter DIV_VAL = "4";
    
   BUFR #(
      .BUFR_DIVIDE(DIV_VAL),   // Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8" 
      .SIM_DEVICE(SIM_DEVICE)  // Must be set to "7SERIES" 
   )
   BUFR_inst (
      .O(out_clk),     // 1-bit output: Clock output port
      .CE(1),   // 1-bit input: Active high, clock enable (Divided modes only)
      .CLR(0),  // 1-bit input: Active high, asynchronous clear (Divided modes only)
      .I(in_clk)     // 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
   );
    
endmodule
