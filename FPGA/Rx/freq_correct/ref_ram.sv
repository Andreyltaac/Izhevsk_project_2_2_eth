`include "../../input_data/pream_freq_band_all.svh"
module ref_ram
#(
	  parameter int pDAT_W	=	24,
	  parameter int pDAT_Num      =   1024
)
(

	input	logic	    [cADDER_NUM-1:0]    addr,
	input	logic						    iclk, 
	input	logic                           ival,
	input   [2:0]                           index_bw,
	output	logic	    [pDAT_W-1:0]		odat
	
);
    localparam int cADDER_NUM     = $clog2(pDAT_Num);


	

	// reg [pDAT_W-1:0] rom_freq_pr	[pDAT_Num-1:0];
	// initial
	// begin
	// 	$readmemb("D:\\FPGA\\xcorr\\preamb.txt", rom_freq_pr); // F:\work\IV_BPLA\modem_rx_tsync\data_file
    // end
	
	
	//assign odat = rom_freq_pr[addr[cADDER_NUM-1:0]];	

always_comb begin
		case (index_bw)
			3'd0: begin
			odat = rom_freq_pr[addr][pDAT_W-1:0];
				  end
		    3'd5: begin
			odat = rom_freq_pr[addr][2*pDAT_W-1:0+pDAT_W];
			      end
		endcase
 end 



	// always_ff @ (posedge iclk)
	// 	begin
	// 	if (ival)
	// 		odat <= rom_freq_pr[addr[cADDER_NUM-1:0]];		
	// 	end

endmodule
