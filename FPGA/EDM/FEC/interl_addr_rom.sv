`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2025 13:12:05
// Design Name: 
// Module Name: interl_addr_rom
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

`include "../../input_data/addr_rand_interl.svh"
module interl_addr_rom
#( 
  parameter ADDR_WIDTH	=	13,
	parameter DATA_WIDTH	=	14
)
(
	input		wire		[(ADDR_WIDTH-1):0]	adress_for_adress,
	input		wire												clk, 
	output	reg			[(DATA_WIDTH-1):0]	adress_for_interliv
);

/*	reg [DATA_WIDTH-1:0]	rom	[2**ADDR_WIDTH-1:0];

	initial
	begin
		$readmemb("F:\\work\\Izhevsk_project_2\\FPGA\\EDM\\FEC\\addr_rand_interl.txt", rom);
	end*/

	always @ (posedge clk) begin
		adress_for_interliv <= addr_rand_interl[adress_for_adress];
	end

endmodule


