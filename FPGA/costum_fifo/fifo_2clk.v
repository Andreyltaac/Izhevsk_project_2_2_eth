module fifo_2clk #(
	parameter 	data_wdt  = 16,
	parameter 	fifo_deth  = 16
)(
	input 	clk_in,
	input 	clk_out,
	input	rstn,

	input 					data_in_val 	,
	input signed [data_wdt-1:0]	data_in 		,

	input						data_req	,
	output reg signed [data_wdt-1:0]	data_out 		
);

localparam cnt_d = $clog2(fifo_deth);

reg signed [data_wdt-1:0]	buff [fifo_deth-1:0];
reg [cnt_d-1:0]	count_r, count_w;
(* mark_debug = "true" *)	reg check_req;

initial begin
	count_r = 0;
	count_w = 0;
	check_req = 0;
end



always @(posedge clk_out) begin
	check_req <= check_req + 1'd1;
end

always @(posedge clk_in) begin
	if(!rstn) begin
		count_w <= 0;
	end
	else if(data_in_val) begin
		count_w <= count_w + 1'd1;
		buff[count_w] <= data_in;
	end
end

always @(posedge clk_out) begin
	if(!rstn) begin
		count_r <= 0;
	end
	else if(data_req) begin
		count_r <= count_r + 1'd1;
		data_out <= buff[count_r];
	end
end


endmodule