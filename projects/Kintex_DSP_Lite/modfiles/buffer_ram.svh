module buffer_ram
#(

	parameter DATA_W	=	24, 
	parameter ADDR_W	=	18

)

(
	input		logic						iclk,
	input		logic					    en_wr, 	
	input		logic	[(ADDR_W-1):0]	    wr_addr,
	input		logic	[(DATA_W-1):0]      idata,
	input		logic	[(ADDR_W-1):0]      r_addr,
	output	    logic	[(DATA_W-1):0]      odata
	
);

	reg [DATA_W-1:0] ram	[2**ADDR_W-1:0];

	always_ff  @ (posedge iclk)
		begin
			if(en_wr)
				ram[wr_addr] <= idata;
				odata <= ram[r_addr];
			end

endmodule