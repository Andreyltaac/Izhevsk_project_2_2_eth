`include "../../input_data/pream_tsync_band_all.svh"
module prb_tsync_ram#(
	parameter depht_ram = 14

)
(
	input							clk,
	input	[depht_ram - 1:0] 		addr,
	input   [2:0]                   index_bw,
	output 	logic [23:0]			odat
);


logic [23:0] prb_data;
logic [13:0] shift_m;
assign odat = prb_data; 

/* always @(posedge clk)
begin
case (index_bw)
			3'd0: odat <= prb_data[23:0];
			//3'd1: odat = prb_data[3:2];
			//3'd2: odat = prb_data[5:4];
			//3'd3: odat = prb_data[7:6];
			//3'd4: odat = prb_data[9:8];
			3'd5: odat <= prb_data[47:24];
			default: odat <= odat;
endcase
end */

always_comb begin
begin
		case (index_bw)
			3'd0: shift_m = 2048;
			//3'd1: odat = prb_data[3:2];
			//3'd2: odat = prb_data[5:4];
			//3'd3: odat = prb_data[7:6];
			//3'd4: odat = prb_data[9:8];
			3'd5: shift_m = '0;
			default: shift_m = shift_m;
		endcase
 end 
end

always @(posedge clk)
begin
prb_data <= sig_pr[addr+shift_m];
end

endmodule 