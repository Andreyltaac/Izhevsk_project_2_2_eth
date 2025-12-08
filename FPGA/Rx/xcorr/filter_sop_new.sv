module filter_sop_new #(

	parameter W_COUNT					= 10,
    parameter SZ_FRAME            		= 1000,
	parameter PHASE_WINDOW_TICKS  		= 4,

    parameter N_SOP               		= 20,
    parameter SOP_COUNT_HALF_WINDOW 	= 5,

   
    parameter N_LOCK              		= 10,
    parameter N_UNLOCK            		= 10

    

)
(
	input 			clk,
	input 			rst,

	input [14:0] 	n_sop,
(* mark_debug = "true" *)	input 			isop,
(* mark_debug = "true" *)	output	wire	osop,
(* mark_debug = "true" *)	output	wire	corr_found
);

localparam 	GUARD_TICKS	= SZ_FRAME / 2; 
localparam	LOWER_GUARD = SZ_FRAME - PHASE_WINDOW_TICKS;
localparam	UPPER_GUARD = SZ_FRAME + PHASE_WINDOW_TICKS;
localparam  DATA_SHIFT  = 2**10;

reg	[W_COUNT - 1 : 0]	dT;	
reg [W_COUNT - 1 : 0]	counter, previos_sop, now_sop, next_sop, guard_count, sop_count_lower_gb, sop_count_upper_gb, sop_count_end;

(* mark_debug = "true" *) reg [9:0]	count_lock, count_unlock;

reg	local_val, sop_insert, after_gb;
wire secong_logic;

typedef enum logic [2:0] {
        STATE_WAIT		= 3'd0,
		STATE_ARM		= 3'd1,
        STATE_VALIDATE	= 3'd2,
        STATE_LOCKED	= 3'd3,
		STATE_UNCLOCK	= 3'd4
    } state_t;

(* mark_debug = "true" *)    state_t state;



assign corr_found = state == STATE_LOCKED;
assign osop = corr_found && counter == sop_count_end;



reg [31:0]		dt_2;
reg [31:0] 		dt_3;

always @(posedge clk) begin
	if(rst) begin
		dt_3 <= 32'd0;
		dt_2 <= 32'd0;
	end
	else if(osop) begin
		dt_2 <= dt_3;
		dt_3 <= 32'd0;
	end
	else
		dt_3 <= dt_3 + 1'd1;
end


always @(posedge clk) begin
	if(rst) begin
		state <= STATE_WAIT;
	end
	else begin
		case (state)
			STATE_WAIT		: begin
								if(n_sop > N_SOP - SOP_COUNT_HALF_WINDOW && n_sop < N_SOP + SOP_COUNT_HALF_WINDOW) state <= STATE_ARM;
								else state <= STATE_WAIT;
			end
			STATE_ARM		: begin	
								if(n_sop < N_SOP - SOP_COUNT_HALF_WINDOW || n_sop > N_SOP + SOP_COUNT_HALF_WINDOW) state <= STATE_WAIT;
								else if(dT > LOWER_GUARD && dT < UPPER_GUARD) state <= STATE_VALIDATE;
								else state <= STATE_ARM;
			end
			STATE_VALIDATE	: begin
								if(n_sop < N_SOP - SOP_COUNT_HALF_WINDOW || n_sop > N_SOP + SOP_COUNT_HALF_WINDOW) state <= STATE_WAIT;
								else if(count_unlock >= N_UNLOCK) 		state <= STATE_UNCLOCK;
								else if(count_lock >= N_LOCK) 			state <= STATE_LOCKED;
								else state <= STATE_VALIDATE;
			end
			STATE_LOCKED	: begin
								if(n_sop < N_SOP - SOP_COUNT_HALF_WINDOW || n_sop > N_SOP + SOP_COUNT_HALF_WINDOW) state <= STATE_WAIT;
								else if(count_unlock >= N_UNLOCK) 		state <= STATE_UNCLOCK;
								else 									state <= STATE_LOCKED;
			end
			STATE_UNCLOCK	: begin
								state <= STATE_ARM;
			end
			default: begin
				state <= STATE_WAIT;
			end
		endcase
	end
end

always @(posedge clk) begin
	if(rst)
		counter <= '0;
	else
		counter <= counter + 1'd1;
end


assign secong_logic = sop_count_lower_gb > sop_count_upper_gb;

always @(posedge clk) begin
	if(rst) begin
		dT 				<= '0;
		previos_sop		<= '0; 
		now_sop			<= '0;
		next_sop		<= '0;
		count_lock  	<= '0;
		count_unlock 	<= '0;
		after_gb		<= 1'd0;
		sop_count_lower_gb	<= '0;
		sop_count_upper_gb	<= '0;
		sop_count_end	<= '0;
		sop_insert		<= '0;
		guard_count		<= '0;
	end
	else if(state == STATE_WAIT) begin
		dT 				<= '0;
		previos_sop		<= '0; 
		now_sop			<= '0;
		next_sop		<= '0;
		count_lock  	<= '0;
		count_unlock 	<= '0;
		after_gb		<= 1'd0;
		sop_count_lower_gb	<= '0;
		sop_count_upper_gb	<= '0;
		sop_count_end	<= '0;
		sop_insert		<= '0;
		guard_count		<= '0;
	end
	else if(state == STATE_ARM) begin
		count_lock 			<= '0;
		count_unlock 			<= '0;
		after_gb				<= 1'd0;

		if(isop) begin
			previos_sop 		<= now_sop;
			now_sop				<= counter;
			next_sop			<= counter + SZ_FRAME;
			guard_count 		<= counter + GUARD_TICKS;
			sop_count_lower_gb 	<= counter + LOWER_GUARD;
			sop_count_upper_gb 	<= counter + UPPER_GUARD;
		end

		if(previos_sop > now_sop)	
			dT	<= now_sop + DATA_SHIFT - previos_sop ;
		else
			dT	<= now_sop  - previos_sop ;
	end
	else if(state == STATE_VALIDATE) begin
		dT <= '0;
		if(after_gb) begin
			if(isop) begin
				if(counter > sop_count_lower_gb && counter < sop_count_upper_gb && ~secong_logic) begin
					next_sop				<= counter + SZ_FRAME;
					guard_count 			<= counter + GUARD_TICKS;
					sop_count_lower_gb 		<= counter + LOWER_GUARD;
					sop_count_upper_gb 		<= counter + UPPER_GUARD;
					sop_count_end 			<= sop_count_upper_gb;
					count_lock 				<= count_lock + 1'd1;
					count_unlock 			<= '0;
					sop_insert				<= 1'd1;
					after_gb				<= 1'd0;
				end 
				else if((counter < sop_count_lower_gb || counter > sop_count_upper_gb) && secong_logic) begin
					next_sop				<= counter + SZ_FRAME;
					guard_count 			<= counter + GUARD_TICKS;
					sop_count_lower_gb 		<= counter + LOWER_GUARD;
					sop_count_upper_gb 		<= counter + UPPER_GUARD;
					sop_count_end 			<= sop_count_upper_gb;
					count_lock 				<= count_lock + 1'd1;
					count_unlock 			<= '0;
					sop_insert 				<= 1'd1;
					after_gb				<= 1'd0;
				end
			end
			if(counter == sop_count_upper_gb && ~sop_insert) begin
					next_sop			<= next_sop + SZ_FRAME;
					guard_count 		<= next_sop + GUARD_TICKS;
					sop_count_lower_gb 	<= next_sop + LOWER_GUARD;
					sop_count_upper_gb 	<= next_sop + UPPER_GUARD;
					sop_count_end 		<= next_sop + UPPER_GUARD;
					count_lock 			<= '0;
					count_unlock 		<= count_unlock + 1'd1;
					sop_insert 			<= 1'd0;
					after_gb			<= 1'd0;
			end
		end
		if(counter == guard_count) begin
			sop_insert 			<= 1'd0;
			after_gb			<= 1'd1;
		end
	end
	else if(state == STATE_LOCKED) begin
		dT <= '0;
		if(after_gb) begin
			if(isop) begin
				if(counter > sop_count_lower_gb && counter < sop_count_upper_gb && ~secong_logic) begin
					next_sop				<= counter + SZ_FRAME;
					guard_count 			<= counter + GUARD_TICKS;
					sop_count_lower_gb 		<= counter + LOWER_GUARD;
					sop_count_upper_gb 		<= counter + UPPER_GUARD;
					sop_count_end 			<= sop_count_upper_gb;
					count_unlock 			<= '0;
					sop_insert				<= 1'd1;
					after_gb				<= 1'd0;
				end 
				else if((counter < sop_count_lower_gb || counter > sop_count_upper_gb) && secong_logic) begin
					next_sop				<= counter + SZ_FRAME;
					guard_count 			<= counter + GUARD_TICKS;
					sop_count_lower_gb 		<= counter + LOWER_GUARD;
					sop_count_upper_gb 		<= counter + UPPER_GUARD;
					sop_count_end 			<= sop_count_upper_gb;
					count_unlock 			<= '0;
					sop_insert 				<= 1'd1;
					after_gb				<= 1'd0;
				end
			end
			if(counter == sop_count_upper_gb && ~sop_insert) begin
					next_sop			<= next_sop + SZ_FRAME;
					guard_count 		<= next_sop + GUARD_TICKS;
					sop_count_lower_gb 	<= next_sop + LOWER_GUARD;
					sop_count_upper_gb 	<= next_sop + UPPER_GUARD;
					sop_count_end 		<= next_sop + UPPER_GUARD;
					count_unlock 		<= count_unlock + 1'd1;
					count_lock 			<= '0;
					sop_insert 			<= 1'd0;
					after_gb			<= 1'd0;
			end
		end
		if(counter == guard_count) begin
			sop_insert 			<= 1'd0;
			after_gb			<= 1'd1;
		end
	end
	else if(state == STATE_UNCLOCK) begin
		dT 					<= '0;
		previos_sop			<= '0; 
		now_sop				<= '0;
		next_sop			<= '0;
		count_lock  		<= '0;
		count_unlock 		<= '0;
		after_gb			<= 1'd0;
		sop_count_lower_gb	<= '0;
		sop_count_upper_gb	<= '0;
		sop_count_end		<= '0;
		sop_insert			<= '0;
		guard_count			<= '0;
	end
end

endmodule