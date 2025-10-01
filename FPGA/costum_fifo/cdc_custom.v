module cdc_custom #(
	parameter 	data_wdt  = 16
)(
	input 	clk_in,
	input 	clk_out,
	input	rstn,

	input signed [data_wdt-1:0]			data_in,

	output reg signed [data_wdt-1:0]	data_out 		
);


reg count_ch;


reg [data_wdt-1:0]	data_in_clk, data_out_clk;

initial begin
	count_ch = 1'd0;
end

always @(posedge clk_in) begin
	data_in_clk <= data_in;
end


always @(posedge clk_out) begin
	count_ch <= count_ch + 1'd1;

	if(count_ch)
		data_out_clk <= data_in_clk;
end

always @(posedge clk_out) begin
	data_out <= data_out_clk;
end



endmodule