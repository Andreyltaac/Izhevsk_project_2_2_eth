module sync_fifo
#(
	parameter DATA_W	=	32, 
	parameter ADDR_W	=	10
)

(
	input		logic						clk,
	input		logic					    en_wr, 	
	input		logic	[(ADDR_W-1):0]	    wr_addr,
	input		logic	[(DATA_W-1):0]      idata,
	input		logic	[(ADDR_W-1):0]      r_addr,
	output	    logic	[(DATA_W-1):0]      odata
	
);

	reg [DATA_W-1:0] ram	[2**ADDR_W-1:0];

	assign odata = ram[r_addr];
	always@ (posedge clk) begin
		if(en_wr)
			ram[wr_addr] <= idata;
		end

endmodule
