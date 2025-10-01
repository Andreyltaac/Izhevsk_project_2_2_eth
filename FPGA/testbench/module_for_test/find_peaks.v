module find_peaks(
	input					clk,
	input signed	[15:0]	data_i,
	input signed	[15:0]	data_q,
	input signed	[15:0]	porog,

	output	reg	osop_i,
	output	reg	osop_q
);



always @(posedge clk) begin
	if(data_i > porog)
		osop_i <= 1;
	else
		osop_i <= 0;
end


always @(posedge clk) begin
	if(data_q > porog)
		osop_q <= 1;
	else
		osop_q <= 0;
end




endmodule