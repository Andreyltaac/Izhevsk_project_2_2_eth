`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2019 17:43:19
// Design Name: 
// Module Name: razr
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
 input wire [3:0]code,
 input wire miso_in_0,
 input wire miso_in_1,
 input wire miso_in_2,
 input wire miso_in_3,
 output reg miso_out = 0
);

  
 
always @*
begin
  case(code)
   4'b0011:  begin
                miso_out = miso_in_0;
           end
   4'b1101:  begin
                miso_out = miso_in_1;
           end
   4'b1011:  begin
                miso_out = miso_in_2;
           end
   4'b0111:  begin
                miso_out = miso_in_3;
           end
   default: begin               
                miso_out = 1;
           end
  endcase
end

endmodule