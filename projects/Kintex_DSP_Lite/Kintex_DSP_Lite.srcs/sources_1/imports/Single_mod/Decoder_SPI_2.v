`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2019 13:31:31
// Design Name: 
// Module Name: Decoder_SPI
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

module Decoder_SPI(
 input wire [4:0]code,
 input wire miso_in_0,
 input wire miso_in_1,
 input wire miso_in_2,
 input wire miso_in_3,
// input wire miso_in_4,
 output reg miso_out = 0
);

  
 
always @*
begin
  case(code)
   5'b11110:  begin
                miso_out = miso_in_0;
           end
   5'b11101:  begin
                miso_out = miso_in_1;
           end
   5'b11011:  begin
                miso_out = miso_in_2;
           end
   5'b10111:  begin
                miso_out = miso_in_3;
           end
   default: begin               
                miso_out = 1;
           end
  endcase
end

endmodule
