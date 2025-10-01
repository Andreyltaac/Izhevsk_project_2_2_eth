`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TUSUR
// Engineer: Dmitriyev Edgar
// 
// Create Date: 27.01.2025 12:35:35
// Design Name: FEC2DeFEC
// Module Name: scrambler
// Project Name: Modem2025
// Target Devices: xc7z020
// Tool Versions: Vivado 2019.1
// Description: -
// 
// Dependencies: -
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module scrambler
#(
  parameter  start_state = 12'b111111111111 
)
(
  input   wire  iclk    ,
  input   wire  ireset  ,
  
  input   wire  isop    ,
  input   wire  ival    ,
  input   wire  idata   ,
  
  output  reg   oval    ,
  output  reg   osop    ,
  output  reg   odata
);

/**********************************     
		  Module Variables		  
**********************************/

  reg  [11:0]  shift_reg    ;
  wire         psp_out_bit  ;
  
/**********************************     
		      Code		  
**********************************/

  initial begin
    shift_reg = start_state;
  end
  	 
  assign psp_out_bit = shift_reg[11] + shift_reg[5] + shift_reg[3] + shift_reg[0];  	 
	 
  always @ (posedge iclk or negedge ireset)
    if (~ireset)
	   shift_reg <= start_state;
	  else begin
	    if (isop&ival)
		    shift_reg = start_state;
      else if (ival) begin
		    shift_reg    <= shift_reg << 1'b1;
        shift_reg[0] <= shift_reg[11] + shift_reg[5] + shift_reg[3] + shift_reg[0]; 		 
		  end 
	 end	
	
  always @ (posedge iclk or negedge ireset)
    if (~ireset) begin
	  odata <= '0 ;
		oval  <= '0 ;
		osop  <= '0 ;
	  end	
	  else begin
	    odata <= idata + psp_out_bit    ;
		  oval  <= ival                   ;
		  osop  <= isop                   ;
	  end  

endmodule


