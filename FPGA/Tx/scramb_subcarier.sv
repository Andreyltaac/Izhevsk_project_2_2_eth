module scramb_subcarier #(parameter fft_depth = 12)
(
			input 								clk,
			input								rst,
			input 			[fft_depth-1:0]		isubc_i,
			input 			[fft_depth-1:0]		isubc_q,
			input 			[  1:0]				iindex_subc,
			input			[  2:0]				index_M_in,
			input			[  3:0]				index_SS_in,
			input								isop,
			input								ival,
			input								ieop,
			output logic	[fft_depth-1:0]		osubc_i,
			output logic	[fft_depth-1:0]		osubc_q,
			output logic	[  1:0]				oindex_subc,
			output logic	[  2:0]				index_M_out,
			output logic	[  3:0]				index_SS_out,
			output logic						osop,
			output logic						oval,		
			output logic						oeop				
);

localparam init_state = 15'd23248;

reg 	[14:0]		lfsr;
wire 				feedback;

initial begin
	lfsr <= init_state;
end

assign feedback = lfsr[14]^lfsr[13];

always @(posedge clk) begin
	oindex_subc		<= iindex_subc;
	index_M_out		<= index_M_in;
	index_SS_out	<= index_SS_in;
end

always @(posedge clk) begin
	if(rst)
		lfsr <= init_state;
	else if(isop)
		lfsr <= init_state;
	else if(iindex_subc == 2'd1 && ival) begin
		lfsr <= {lfsr[13:0], feedback};
	end
end

always @(posedge clk) begin
	if(rst) begin
		osubc_i <= '0;
		osubc_q <= '0;
	end
	else if(iindex_subc == 2'd1 && ival) begin
		osubc_i <= lfsr[0] ? -isubc_i : isubc_i;
		osubc_q <= lfsr[0] ? -isubc_q : isubc_q;
	end
	else begin
		osubc_i <= isubc_i;
		osubc_q <= isubc_q;
	end
end

always @(posedge clk) begin
	oval <= ival;
	osop <= isop;
	oeop <= ieop;
end


endmodule