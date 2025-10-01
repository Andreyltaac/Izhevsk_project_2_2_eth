`include "../../input_data/pream_freq_band_all.svh"
module prb_fsync_ram#(
	parameter depht_ram = 13

)
(
	input							clk,
	input	[depht_ram - 1:0] 		addr,
	input   [2:0]                   index_bw,
	output 	logic [23:0]			odat
);


logic [23:0] prb_data;
logic [12:0] shift_m;

assign odat = prb_data; 

always @(posedge clk)
begin
		case (index_bw)
			3'd0: shift_m <= 5120;
			3'd1: shift_m <= 4096;
			3'd2: shift_m <= 3072;
			3'd3: shift_m <= 2048;
			3'd4: shift_m <= 1024;
			3'd5: shift_m <= '0;
			default: shift_m = shift_m;
		endcase
end

always @(posedge clk)
begin
prb_data <= rom_freq_pr[addr+shift_m];
end

endmodule 