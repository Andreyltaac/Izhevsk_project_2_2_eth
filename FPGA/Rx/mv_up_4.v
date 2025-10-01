module mv_up_4(
	input  signed	[15:0]	in,
	output signed	[15:0]	out
);

assign out = in <<< 4;


endmodule 