`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2020 12:34:15
// Design Name: 
// Module Name: ibuf
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


module ibuf(
    input in_ref,
    output out_ref
    );
    
    IBUF #(
      .IBUF_LOW_PWR("TRUE"),  // Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
      .IOSTANDARD("DEFAULT")  // Specify the input I/O standard
   ) IBUF_inst (
      .O(out_ref),     // Buffer output
      .I(in_ref)      // Buffer input (connect directly to top-level port)
   );
   
endmodule
