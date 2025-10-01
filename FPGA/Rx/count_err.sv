module count_err(
	input					clk,
	input					rst,
	input					err,
	input					val,
	output logic	[23:0]	n_er
);


reg [23:0]  count;
reg [23:0]  count_val;

reg [23:0]  n_sp_loc;

localparam  smplrt = 1_000_000;

initial begin
	n_sp_loc <= '0;
end

always @(posedge clk) begin
	if(rst)
		count_val <= '0;
	else if(val)
		count_val <= '0;
	else if(count_val == smplrt)
		count_val <= count_val;
	else
		count_val <= count_val + 1'd1;
end


always @(posedge clk) begin
	if(rst) begin
		count <= '0;
		n_er	 <= '0;
	end
	else if(count_val == smplrt) begin
		count <= '0;
		n_er <= smplrt;
	end
	else if(val && count == smplrt - 1) begin
		count <= '0;
		n_er <= smplrt - n_sp_loc;
	end
	else if(val)
		count <= count + 1'd1;
end

always @(posedge clk) begin
	if(rst) begin
		n_sp_loc <= '0;
	end
	else if(val && count == smplrt - 1)  begin
		n_sp_loc <= '0;
	end
	else if(val)
		n_sp_loc <= n_sp_loc + err;
end


endmodule 