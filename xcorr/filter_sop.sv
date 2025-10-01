module filter_sop#(parameter N_symb = 50, fftsize = 1024, cpsize = 32)
(
	input 								clk,
	input 								rst,

	input 								isop,
	input [14:0]						n_sps,

	output 								osop,
	output reg signed	[5:0]			delay_sop,
	output reg							found_sync,
	output								sop_frame

);


localparam N_spfr = fftsize + cpsize;
localparam L_frame = N_symb * N_spfr;
localparam window_sop = 20; 
localparam left_board = L_frame - window_sop - 1;


localparam check_dat 		= 20;
localparam tshd_check_up 	= 15;
localparam tshd_check_dw 	= 7;


assign osop = found_sync & count_fr == window_sop + 1;

assign sop_frame = reg_sop_val;

reg		run_count;
wire	reg_sop_val;
reg		sop_insert;


reg [$clog2(L_frame) - 1:0] count_fr;
(* mark_debug = "true" *) reg [$clog2(L_frame):0] 	count_delay;


(* mark_debug = "true" *) reg	[$clog2(check_dat)-1:0] count_check;




always @(posedge clk) begin
	if(rst)
		found_sync <= '0;
	else if(count_check > tshd_check_up)
		found_sync <= '1;
	else if(count_check < tshd_check_dw)
		found_sync <= '0;
end




always @(posedge clk) begin
	if(rst) begin
		count_check <= '0;
		sop_insert  <= '0;
	end
	else if(reg_sop_val & run_count & isop)begin
		if(count_check == check_dat)
			count_check <= count_check;
		else
			count_check <= count_check + 1'd1;
		sop_insert	<= '1;
	end
	else if(count_fr == window_sop + 1) begin
		if(sop_insert)
			sop_insert <= '0;
		else begin
			if(count_check == 0)
				count_check <= 0;
			else
				count_check <= count_check - 1'd1;
			sop_insert	<= '0;
		end
	end
	else if(~run_count) begin
		count_check <= '0;
	end
end

always @(posedge clk) begin
	if(rst) begin
		delay_sop <= '0;
	end
	else if(isop & reg_sop_val)
		if(count_fr < L_frame/2)
			delay_sop <= count_fr + window_sop - 1; 
		else
			delay_sop <= 5;
end


always @(posedge clk) begin
	if(rst) begin
		count_delay <= '0;
	end
	else if(n_sps >= check_dat - 5 && n_sps <= check_dat + 5 && isop)
		count_delay <= 1;
	else if(run_count)
		count_delay <= count_delay + 1'd1;
	else
		count_delay <= '0;
end





assign reg_sop_val = run_count && (count_fr > left_board  || count_fr <= window_sop);

always @(posedge clk) begin
	if(rst) begin
		count_fr <= '0;
	end
	else if(count_check == 0 & isop & run_count)
		count_fr <= 1;
	else if(run_count & isop & reg_sop_val)
		count_fr <= 1;
	else if(run_count || n_sps >= check_dat - 5 && n_sps <= check_dat + 5 && isop)
		if(count_fr == L_frame - 1)
			count_fr <= '0;
		else
			count_fr <= count_fr + 1'd1;
	else
		count_fr <= '0;
end


always @(posedge clk) begin
	if(rst) begin
		run_count <= '0;
	end
	else if((n_sps >= check_dat - 5) && (n_sps <= check_dat + 5) && isop)
		run_count <= '1;
	else if(((n_sps < check_dat / 2 || n_sps > check_dat + 5) || count_check < tshd_check_dw) & run_count & found_sync)
		run_count <= '0;
end









endmodule