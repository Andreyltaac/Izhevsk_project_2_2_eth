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

`include "../../input_data/prbm_mem.svh"
module interl_ram
#(
  parameter ADDR_WIDTH  =  14
)
(
  input    wire                        clk            ,
  //
  //input    wire                        en_wr          ,
  input    wire  [(ADDR_WIDTH-1):0]    wr_ram_counter ,
  input    wire                        in_bit_data    ,
  //
  //input    wire                        en_r           ,
  input    wire  [(ADDR_WIDTH-1):0]    r_ram_counter  ,
  output   wire                        read_data_out
);

/*  reg   ram  [2**ADDR_WIDTH-1:0];
 
  initial begin
     $readmemb("F:\\work\\Izhevsk_project_2\\FPGA\\EDM\\FEC\\prbm_mem.txt", ram);                            
  end */  

 	assign read_data_out = prbm_mem[r_ram_counter];
  	always @ (posedge clk) begin
		prbm_mem[wr_ram_counter] <= in_bit_data ;
	end
  
endmodule
