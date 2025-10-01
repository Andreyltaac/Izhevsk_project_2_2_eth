    module SSS_ram
#(
	  parameter int pDAT_W	  =	 4,
	  parameter int pDAT_Num  =  1024
)
(

    input	logic                           ival_axi,
	input	logic						    iclk_axi, 
    input	logic	    [10:0]		        addr_axi,
	input	logic	    [pDAT_W-1:0]        idat_axi,
	//
    input	logic						    iclk, 
	input	logic                           ival,
	input	logic	    [10:0]		        addr,
	output	logic	    [pDAT_W-1:0]		odat
	
);

	reg [pDAT_W-1:0] rom	[pDAT_Num-1:0];

	initial
	begin
		$readmemb("F:\\kintex_dsp_lite\\projects\\ip_repo\\IP_sync_1.0\\src\\SSS_hub_1024.txt", rom); //"../rtl/common/data_req_mask.txt" F:\\work\\Rad_Zav\\modelsim\\//
	end

	always_ff @ (posedge iclk_axi)
		begin
		if (ival_axi)
		   rom[addr_axi] <= idat_axi;		
		end


	always_ff @ (posedge iclk)
		begin
		if (ival)
			odat <= rom[addr];		
		end

endmodule
