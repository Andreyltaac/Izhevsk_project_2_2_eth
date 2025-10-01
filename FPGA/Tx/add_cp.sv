module add_cp #(fft_depth = 12, fftsize = 1024, cpsize = 32)
(
	input						clk,
	input						rst,
	input						isop,
	input						ival,
	input	[fft_depth-1:0]		in_real_data,
	input	[fft_depth-1:0]		in_imag_data,
	output						osop,
	output logic	[fft_depth-1:0]		out_real_data,
	output logic	[fft_depth-1:0]		out_imag_data		
);

localparam framesize 	= fftsize+cpsize;
localparam count_depth 	= $clog2(framesize);


reg 	[fft_depth-1:0]		fifo_i 		[fftsize-1:0];
reg 	[fft_depth-1:0]		fifo_q 		[fftsize-1:0];
reg 	[count_depth-1:0]	count_write;
reg 	[count_depth-1:0]	count_read;
reg 	[count_depth:0]		count_symb;

reg write_data, read_data, data_rdy;
wire 						local_val;


assign local_val    = (count_symb < fftsize - cpsize - 1 || count_symb >= fftsize - 1) && data_rdy;
assign osop			= (count_write == fftsize - cpsize);

initial begin
	read_data	<= '0;
	// for(int i = 0; i < fftsize; i = i + 1) begin
	// 	fifo_i[i] <= '0;
	// 	fifo_q[i] <= '0;
	// end
end


always_comb begin
	if(rst) begin
		out_real_data = '0;
		out_imag_data = '0;
	end
	else if(count_write > fftsize - cpsize - 1 && ~data_rdy) begin
		out_real_data = in_real_data;
		out_imag_data = in_imag_data;
	end
	else if(data_rdy) begin
		out_real_data = fifo_i[count_read];
		out_imag_data = fifo_q[count_read];
	end
	else begin
		out_real_data = '0;
		out_imag_data = '0;
	end

end


always @(posedge clk) begin
	if(rst)				
		count_symb <= '0;
	else if(ival || (count_symb < framesize && count_symb > fftsize - 2))
		count_symb <= count_symb + 1'b1;
	else	
		count_symb <= '0;
end

always @(posedge clk) begin
	if(rst)			count_write <= '0;
	else if(ival)	count_write <= count_write + 1'b1;
	else 			count_write <= '0;
end

always @(posedge clk) begin
	if(rst)	
		data_rdy <= '0;
	else if(count_write == fftsize - 1)
		data_rdy <= '1;
	else if(count_read == fftsize - 1)
		data_rdy <= '0;
end
always @(posedge clk) begin
	if(rst) 			count_read  <= '0;
	else if(local_val) 	count_read <= count_read  + 1'b1;
	else				count_read <= '0;	
end

always @(posedge clk) begin
	// if(rst) begin
	// 	for(int i = 0; i < fftsize; i = i + 1) begin
	// 		fifo_i[i] <= '0;
	// 		fifo_q[i] <= '0;
	// 	end
	// end
	// else
	 if(ival) begin
		fifo_i[count_write] <= in_real_data;
		fifo_q[count_write] <= in_imag_data;
	end
end

endmodule