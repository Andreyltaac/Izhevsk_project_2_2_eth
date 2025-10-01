module count_sop_dtct(
	input					clk,
	input					rst,
	input					sop,

input			[23:0]	thr_lvl,
output logic	[14:0]	n_sps,
output logic	[23:0]	thr_lvl_auto
);


reg [24:0]  		count;
reg [14:0] 		 n_sp_loc;
reg [14:0] 		 n_sps_true_loc;

reg	[15:0]	count_samp;
reg [23:0]	local_thr_lvl, local_thr_lvl_1;


localparam  num_samp = 52800;
localparam  n_sop_opor = 20;
localparam  smplrt = num_samp*n_sop_opor;

localparam	step_1	= 50;
localparam  step_2	= 25;
localparam	step_3	= 5;

localparam	border_1 = 10;
localparam	border_2 = 5;
localparam	border_3 = 2;

assign thr_lvl_auto = local_thr_lvl;

always @(posedge clk) begin
	if(rst) begin
		local_thr_lvl 	<= '0;
		local_thr_lvl_1 <= '0;
	end
	
	else if(local_thr_lvl_1 !=  thr_lvl) begin
		local_thr_lvl_1 	<= thr_lvl;
		local_thr_lvl 		<= thr_lvl;
	end
	else if(count == smplrt - 1) begin
		if(n_sps > n_sop_opor + border_1) 
			local_thr_lvl <= local_thr_lvl + step_1;

		else if(n_sps > n_sop_opor + border_2) 
			local_thr_lvl <= local_thr_lvl + step_2;

		else if(n_sps > n_sop_opor + border_3) 
			local_thr_lvl <= local_thr_lvl + step_3;

		else if(n_sps < n_sop_opor - border_1) 
			if(local_thr_lvl < 2*step_1)
				local_thr_lvl <= local_thr_lvl;
			else
				local_thr_lvl <= local_thr_lvl - step_1;

		else if(n_sps < n_sop_opor - border_2) 
			if(local_thr_lvl < 2*step_1)
				local_thr_lvl <= local_thr_lvl;
			else
				local_thr_lvl <= local_thr_lvl - step_2;

		else if(n_sps < n_sop_opor - border_3) 
			if(local_thr_lvl < 2*step_1)
				local_thr_lvl <= local_thr_lvl;
			else
				local_thr_lvl <= local_thr_lvl - step_3;
		
		else
			local_thr_lvl <= local_thr_lvl;


	end
end

always @(posedge clk) begin
	if(rst)
		count <= '0;
	else if(count == smplrt - 1)
		count <= '0;
	else 
		count <= count + 1'd1;
end

always @(posedge clk) begin
	if(rst) begin
		n_sp_loc <= '0;
	end
	else if(sop && count == smplrt - 1)  begin
		n_sp_loc <= '0;
		n_sps <= n_sp_loc + 1'd1;
	end
	else if(count == smplrt - 1) begin
		n_sp_loc <= '0;
		n_sps <= n_sp_loc;
	end
	else if(sop) begin
		n_sp_loc <= n_sp_loc + 1'd1;
	end
end


always @(posedge clk) begin
	if(rst)
		count_samp <= '0;
	else if(sop)
		count_samp <= '0;
	else 
		count_samp <= count_samp + 1'd1;
end






endmodule 