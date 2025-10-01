module PSS_ram
#(
	  parameter int pDAT_W	=	72,
	  parameter int pDAT_Num      =   1024
)
(

	input	logic	    [10:0]		        addr,
	input	logic						    iclk, 
	input	logic                           ival,
	output	logic	    [pDAT_W-1:0]		odat
	
);

	reg [pDAT_W-1:0] rom	[pDAT_Num-1:0];

	initial
	begin
		$readmemb("F:\\kintex_dsp_lite\\projects\\ip_repo\\IP_sync_1.0\\src\\PSS_hub_1024.txt", rom);
	end

	always_ff @ (posedge iclk)
		begin
		if (ival)
			odat <= rom[addr];		
		end

endmodule
