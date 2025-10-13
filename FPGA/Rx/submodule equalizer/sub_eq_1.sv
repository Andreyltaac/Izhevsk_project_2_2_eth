`include "../input_data/pilot.svh"
module sub_eq#(
parameter 	fft_depth 		= 12, 
		level_pilot		= 2000, 
		eq_precision 		= 10
)(
	input							clk,
	input							rst,
	input							ival,
	input							isop,
	input			[  1:0]				index,
	input signed	[fft_depth-1:0]				sub_i,
	input signed	[fft_depth-1:0]				sub_q,
	output							oval,
	output							H_oval,
	output							osop,
	output			[  1:0]				oindex,
	output			[fft_depth-1:0]			osub_i,
	output			[fft_depth-1:0]			osub_q,
	output logic signed	[fft_depth + eq_precision:0]	H_mean_i,
	output logic signed	[fft_depth + eq_precision:0]	H_mean_q,
	output logic signed	[fft_depth*2:0]			koef
);

localparam sz_count_p = $clog2(n_pilot);

//logic						pilot_mem		[n_pilot-1:0];
logic signed	[ fft_depth-1:0]		pilot_mod;
logic		[sz_count_p-1:0]		pilot_counter;
//logic signed	[ fft_depth-1:0]		pilot;
logic signed	[ fft_depth:0]			diff_sub, summ_sub;	

logic signed 		[fft_depth*2 :0]	H_i			[1:0];
logic signed 		[fft_depth*2 :0]	H_q			[1:0];
logic signed		[fft_depth*2:0]		fifo_koef		[1:0];


logic signed	[ fft_depth:0]		fifo_i		[step_pilot-1:0];
logic signed	[ fft_depth:0]		fifo_q		[step_pilot-1:0];
logic signed				fifo_sop	[step_pilot-1:0];
logic signed	[step_pilot:0]		fifo_val;



assign H_mean_i = (H_i[0] + H_i[1])/16;
assign H_mean_q = (H_q[0] + H_q[1])/16;
assign koef	= (fifo_koef[1] + fifo_koef[0])/4;


assign osub_i 	= fifo_i[step_pilot-1];
assign osub_q 	= fifo_q[step_pilot-1];
assign oval	= fifo_val[step_pilot-1];
assign osop	= fifo_sop[step_pilot-1];


assign H_oval	= ~fifo_val[step_pilot] & fifo_val[step_pilot-1];



/*initial begin
	$readmemb(file_pilot,    pilot_mem);
end*/

always @(posedge clk) begin
	if(rst)
		pilot_counter <= '0;
	else if(isop)
		pilot_counter <= '0;
	else if(index == 2'd2)
		if(pilot_counter == n_pilot - 1)
			pilot_counter <= '0;
		else
			pilot_counter <= pilot_counter + 1'b1;
end

assign summ_sub = sub_i + sub_q;
assign diff_sub = sub_i - sub_q;
//assign pilot	= pilot_mem[pilot_counter] ? level_pilot : -level_pilot;
assign pilot_mod	= pilot[pilot_counter] ? level_pilot : -level_pilot;

always @(posedge clk) begin
	if(rst) begin
		H_i[0]	<= '0;
		H_q[0]	<= '0;
		H_i[1]	<= '0;
		H_q[1]	<= '0;


		fifo_koef[0]	<= '0;
		fifo_koef[1]	<= '0;
	end
	else if(index == 2'd2) begin
		H_i[1]	<= H_i[0];
		H_q[1]	<= H_q[0];
		
		H_i[0]	<= summ_sub * pilot_mod;
		H_q[0]	<= diff_sub * pilot_mod;

		fifo_koef[1]	<= fifo_koef[0];
		fifo_koef[0]	<= sub_i * sub_i + sub_q * sub_q;
	end

end

always @(posedge clk) begin
	for (int i = step_pilot - 1; i > 0; i = i - 1) begin
		fifo_i[i] 	<= fifo_i[i-1];
		fifo_q[i] 	<= fifo_q[i-1];
		fifo_sop[i]	<= fifo_sop[i-1];
	end
	for (int i = step_pilot; i > 0; i = i - 1) begin
		fifo_val[i] 	<= fifo_val[i-1];
	end

	fifo_i[0]	<= sub_i;
	fifo_q[0]	<= sub_q;
	fifo_sop[0]	<= isop;
	fifo_val[0]  	<= index == 2'd1;
end


endmodule