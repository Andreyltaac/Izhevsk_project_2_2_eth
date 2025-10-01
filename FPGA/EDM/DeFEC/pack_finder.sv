`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2025 09:40:51
// Design Name: 
// Module Name: pack_finder
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
///////////////////////////////////////////////////////////////////////////////// 
/*
logic           [4:0]   finder_idat  [8] ;
logic                   finder_ival      ;
logic                   finder_osop      ;
logic                   finder_oval      ;
logic           [4:0]   finder_odat  [8] ;

pack_finder sub0_pack_finder(
    .iclk           (clk),
    .irst           (rst),
    .idat           (finder_idat),
    .ival           (finder_ival),
    .osop           (finder_osop),
    .oval           (finder_oval),
    .oeop           (finder_oeop),
    .odat           (finder_odat)
    );

assign  finder_idat = '0;
assign  finder_ival = '0; 

*///////////////////////////////////////////////////////////////////////////////////


module pack_finder(
    input   logic            iclk,
    input   logic            irst,
    input   logic   [4:0]    idat,
    input   logic            ival,
    output  logic            osop,
    output  logic            oval,
    output  logic   [4:0]    odat
    );

	`include "plc_bit_preambule.vh"

  	localparam int cPREA_LEN = 128; 
 	localparam int cBORDER   = 80;

 	localparam int cACC_W    = 9; // for place max +128 value

 	logic                       val                            ;
 	logic     [cPREA_LEN-1 : 0] dat_shift_reg                  ;
	logic     			[4 : 0] dat_delay_reg                  ;
 	logic signed        [1 : 0] corr_line     [0 : cPREA_LEN-1];
 	logic signed [cACC_W-1 : 0] sum           [0 : cPREA_LEN-1];

 	//------------------------------------------------------------------------------------------------------
 	//
 	//------------------------------------------------------------------------------------------------------
 	// synthesis translate_off
 	initial begin : sim_ini
 	  sum  = '{default : 0};
 	end
 	// synthesis translate_on
 	//------------------------------------------------------------------------------------------------------
 	//
 	//------------------------------------------------------------------------------------------------------

 	always_comb begin
 	  for (int i = 0; i < cPREA_LEN; i++) begin
 	    corr_line[i] = (dat_shift_reg[0] == preambule[i]) ? 1 : -1;
 	  end
 	end

 	//------------------------------------------------------------------------------------------------------
 	//
 	//------------------------------------------------------------------------------------------------------

 	always @(posedge iclk or negedge irst) begin
 	  	if (~irst) begin
	   		val           <= '0;
 	    	//dat_shift_reg <= '0;		
			sum           <= '{default : 0}; 
 	  	end
	 	else begin
 	    	val <= ival;
 	    if (ival) begin
 	      	dat_shift_reg <= (dat_shift_reg << 1) | ~idat[4];
 	    end

 	    if (val) begin
 	      	sum[0] <= corr_line[0];
 	      	for (int i = 1; i < cPREA_LEN; i++) begin
 	        	sum[i] <= sum[i-1] + corr_line[i];
 	      	end
 	    end
 	  	end
 	end
 	//------------------------------------------------------------------------------------------------------
 	//
 	//------------------------------------------------------------------------------------------------------

 	always_ff @(posedge iclk or negedge irst) begin
 	  	if (~irst) 
 	    	dat_delay_reg <= '0;
 	  	else 
 	    	dat_delay_reg <= idat;
 	end
 	//------------------------------------------------------------------------------------------------------
 	//
 	//------------------------------------------------------------------------------------------------------

 	always @(posedge iclk or negedge irst) begin
 	  	if (~irst) begin
 	    	oval <= '0;
 	    	osop <= '0;
 	    	odat <= '0;
 	  	end
 	  	else begin
 	    	oval <= val;
 	    if (val) begin
 	      	osop <= (sum[cPREA_LEN-1] >= cBORDER);
 	      	odat <= dat_delay_reg;
 	    	end
 	  	end
 	end

 	//------------------------------------------------------------------------------------------------------
 	//
 	//------------------------------------------------------------------------------------------------------

endmodule
