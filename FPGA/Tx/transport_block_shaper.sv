module  transport_block_shaper #(
	parameter size_tblck = 480, 	// байт
	parameter time_to_wait = 5 		// тактов 
)(
	input 				clk,
	input 				rst,
	input 				ival,
	input 	[7:0]		idata,
	input				ireq,

	output logic 		oval,
	output logic [7:0]	odata,
	output logic		oreq
);


localparam szCB	= $clog2(size_tblck);
localparam szCW	= $clog2(time_to_wait);

logic [szCB-1:0] cnt_block;
logic [szCW-1:0] cnt_wait;

logic			pagging_d;


initial begin
	cnt_block <= '0;
	cnt_wait  <= '0;
	pagging_d <= '0;
end


assign oreq = pagging_d ? '0 : ireq;
assign odata = pagging_d ? '0 : idata;
assign oval  = pagging_d ? '1 : ival;


always @(posedge clk) begin
	if(rst) begin
		cnt_block <= '0;
	end
	else if(ireq & ival ||  ireq & pagging_d)
		if(cnt_block == size_tblck - 1)
			cnt_block <= '0;
		else
			cnt_block <= cnt_block + 1;
end

always @(posedge clk) begin
	if(rst)
		cnt_wait <= '0;
	else if(ireq & ival & ~pagging_d)begin
		pagging_d <= '0;
		cnt_wait <= '0;
	end

	else if(ireq & ~ival & ~pagging_d) begin
		if(cnt_wait == time_to_wait - 1) begin
			pagging_d <= '1;
			cnt_wait <= '0;
		end
		else 
			cnt_wait <= cnt_wait + 1'd1;
	end
	else if(pagging_d & ireq & cnt_block == size_tblck - 1)
		pagging_d <= '0;
end

endmodule