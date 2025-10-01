module control_index_symb(
	input				clk,
	input				rst,
	input	[6:0]		frame_count_in,

	input				rmsp_sop,
	input				fft_sop,

	output logic [6:0]		frame_count_out
);

reg [6:0]		buffer_fr	[3:0];

reg	[1:0]		count_r, count_w;

assign frame_count_out = buffer_fr[count_w];

always @(posedge clk)begin
	if(rst) begin
		buffer_fr[0] <= '0;
		buffer_fr[1] <= '0;
		buffer_fr[2] <= '0;
		buffer_fr[3] <= '0;

		count_r <= '0;
	end
	else if(rmsp_sop) begin
		buffer_fr[count_r] <= frame_count_in;
		count_r <= count_r + 1'd1;
	end
end

always @(posedge clk)begin
	if(rst) begin
		count_w <= 2'b11;
	end
	else if(fft_sop) begin
		count_w <= count_w + 1'd1;
	end
end



endmodule 