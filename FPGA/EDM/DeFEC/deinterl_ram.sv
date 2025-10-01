`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 09:53:27
// Design Name: 
// Module Name: interl_ram
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


module deinterl_ram
#(
  parameter ADDR_WIDTH  =  14
)
(
  input    wire                        clk            ,
  //
  input    wire                        en_wr          ,
  input    wire  [(ADDR_WIDTH-1):0]    wr_ram_counter ,
  input    wire  [4:0]                 in_bit_data    ,
  //
  input    wire                        en_r           ,
  input    wire  [(ADDR_WIDTH-1):0]    r_ram_counter  ,
  output   reg   [4:0]                 read_data_out
);

  reg [4:0] ram  [2**ADDR_WIDTH-1:0];
 

  always @ (posedge clk) begin
    if (en_r)
      read_data_out <= ram[r_ram_counter];
    if (en_wr)
      ram[wr_ram_counter] <= in_bit_data ;
  end
  
endmodule
