module fftshift #(
	parameter fft_depth = 12
)(
	input										clk,
	input										rst,
	input logic signed		[fft_depth-1:0] 	sub_i,
	input logic signed		[fft_depth-1:0] 	sub_q,
	output logic signed		[fft_depth-1:0] 	osub_i,
	output logic signed		[fft_depth-1:0] 	osub_q
);


logic counter ;

initial counter <= '0;

always @(posedge clk) 
	if(rst) counter <= '0;
	else counter <= counter + 1'd1;

always @(posedge clk)
	if(counter) begin
		osub_i <= -sub_i;
		osub_q <= -sub_q;
	end
	else begin
		osub_i <= sub_i;
		osub_q <= sub_q;
	end
endmodule 