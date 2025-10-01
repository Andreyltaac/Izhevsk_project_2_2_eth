module interlayer_rmcp#(parameter fft_depth = 12, fftsize = 1024, cpsize = 32)(

	input 								clk,
	input								rst,
	input 								isop,   
	input			[fft_depth-1:0]		in_real_data,
	input			[fft_depth-1:0]		in_imag_data,
	input signed	[5:0]				delay_sop,

	output logic						osop,
	output logic						oval,
	output logic	[fft_depth-1:0]		out_real_data,
	output logic	[fft_depth-1:0]		out_imag_data,

	output logic	[6:0]				count_frame	
);


localparam framesize 	= fftsize+cpsize;
localparam count_depth 	= $clog2(framesize);
localparam N_symb		= 50;

reg [count_depth:0]		count_symb;



reg [fft_depth-1:0] 	buff_i, buff_q;

reg						local_val, sop_insert;

assign oval = count_symb > cpsize - 1  && local_val;
assign osop = count_symb == cpsize + 1 -1;



assign out_real_data = oval ? buff_i : '0;
assign out_imag_data = oval ? buff_q : '0;

always @(posedge clk) begin
	if(rst) begin
		sop_insert <= '0;
		local_val		<= '0;
	end
	else if((count_symb == 0 || count_symb == framesize - 1 ) & isop) begin
		local_val	<= '1;
		sop_insert 	<= '0;
	end
	else if(isop) begin
		local_val	<= '1;
		sop_insert 	<= '1;
	end
	else if((count_symb == 0 || count_symb == framesize - 1 ) & sop_insert) begin
		sop_insert 	<= '0;
		local_val	<= '1;
	end
	else if(count_frame == N_symb - 1 & ~sop_insert & count_symb == framesize - 1) begin
		local_val	<= '0;
		sop_insert 	<= '0;
	end

end


always @(posedge clk) begin
	if(rst) begin
		count_symb 		<= '0;
		count_frame 	<= 2;
	end
	else if((count_symb == 0 || count_symb == framesize - 1 ) & (isop || sop_insert)) begin
		count_symb 		<= delay_sop;
		count_frame		<= 2;
	end
	else if(local_val) begin
		if(count_symb == framesize - 1) begin
			count_symb <= '0;
			if(count_frame == N_symb - 1) begin
				count_frame <= 2;
			end
			else
				count_frame <= count_frame + 1'd1;
		end
		else 
			count_symb <= count_symb + 1'd1;
	end
end


/*

always @(posedge clk) begin
	if(rst) begin
		count_symb 		<= '0;
		count_frame 	<= '0;
		local_val		<= '0;
	end
	else if(isop && (count_symb == framesize - 1 || count_symb == 0)) begin
		local_val 		<= '1;
		count_symb 		<= '0;
		count_frame		<= '0;
	end
	else if(isop) begin
		sop_insert		<= '1;
	end
	else if(local_val) begin
		if(count_symb == framesize - 1) begin
			count_symb <= '0;
			if(count_frame == N_symb - 1) begin
				count_frame <= '0;
				local_val <= '0;
			end
			else
				count_frame <= count_frame + 1'd1;
		end
		else 
			count_symb <= count_symb + 1'd1;
	end
end
*/
always @(posedge clk) begin
	buff_i <= in_real_data;
	buff_q <= in_imag_data;
end


endmodule