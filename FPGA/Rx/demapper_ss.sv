module demapper_ss #(
	parameter 		fft_depth = 12
)(
	input 								clk,
	input								rst,
	input	[3:0]						index_SS_in,
	input	[2:0]						index_M_in,
	input								ival,
	input signed	[fft_depth-1:0]		subc_i,
	input signed	[fft_depth-1:0]		subc_q,

	output logic	[3:0]				index_SS_out,
	output logic	[2:0]				index_M_out,
	output logic						oval,
	output logic signed	[fft_depth-1:0]	osubc_i,
	output logic signed [fft_depth-1:0]	osubc_q
);



	reg [3:0]						count_ss;

	reg 								loc_val;
	reg signed [fft_depth + 4:0]		fifo_i, fifo_q;


	initial begin
		count_ss <= '0;
		loc_val <= '0;
		fifo_i <= '0;
		fifo_q <= '0;
	end

	always @(posedge clk) begin
		if(rst) begin
			count_ss <= '0;
			loc_val <= '0;
		end
		else if(ival) begin
			if(count_ss == index_SS_in - 1) begin
				count_ss <= '0;
				loc_val  <= '1;
			end
			else begin
				count_ss <= count_ss + 1'd1;
				loc_val <= '0;
			end
		end
		else begin
			count_ss <= '0;
			loc_val <= '0;
		end
	end

	always @(posedge clk) begin
		if(rst) begin
			fifo_i 	<= '0;
			fifo_q	<= '0;
		end
		else if(ival) begin
			if(loc_val) begin
				fifo_i <= subc_i;
				fifo_q <= subc_q;
			end
			else begin
				fifo_i <= fifo_i + subc_i;
				fifo_q <= fifo_q + subc_q;
			end
		end
		else begin
			fifo_i <= '0;
			fifo_q <= '0;
		end
	end


	always @(posedge clk) begin
		if(rst) begin
			osubc_i <= '0;
			osubc_q <= '0;
			oval	<= '0;
		end
		else if(loc_val) begin
			if(index_SS_in == 4'd1) begin
				osubc_i <= fifo_i;
				osubc_q <= fifo_q;
			end
			else begin
				osubc_i <= fifo_i / 16;
				osubc_q <= fifo_q / 16;
			end
			oval	<= '1;
		end
		else begin
			osubc_i <= '0;
			osubc_q <= '0;
			oval	<= '0;
		end
	end

	always @(posedge clk) begin
		if(rst) begin
			index_SS_out	<=  '0;
			index_M_out		<=	'0;
		end
		else if(count_ss == 4'd0) begin
			index_SS_out	<= index_SS_in;
			index_M_out		<= index_M_in;

		end
	end

endmodule 