module ram #(parameter rm_dep = 12)
(
	input							clk,
	input							rst,
	input signed		[11:0]		isub_i,
	input signed		[11:0]		isub_q,

	input				[rm_dep-1:0]		count_r,
	input				[rm_dep-1:0]		count_w,

	output logic signed	[11:0]		osub_i,
	output logic signed	[11:0]		osub_q
);

reg signed [11:0]	buff_i [2**rm_dep - 1:0];
reg signed [11:0]	buff_q [2**rm_dep - 1:0];



always @(posedge clk) begin
	buff_i[count_w] <= isub_i;
	buff_q[count_w] <= isub_q;
	osub_i <= buff_i[count_r];
	osub_q <= buff_q[count_r];
end



endmodule