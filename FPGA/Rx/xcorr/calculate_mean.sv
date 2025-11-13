module calculate_mean #(
	parameter 	width_Dat = 16,
	parameter 	Wind_size = 32
	// parameter	koef	  = 4
)
(
	input 								clk,
	input								rst,
	input			[width_Dat-1:0]		data_in,
	input			[6:0]				koef,
	output	logic 	[width_Dat-1:0]		Calc_mean,
	output	logic 	[width_Dat-1:0]		data_out
);

localparam Sdvig = $clog2(Wind_size);

reg signed [width_Dat-1:0]		rslos [Wind_size-1:0];
reg signed [width_Dat-1:0]		lst_data;

reg signed [width_Dat-1:0]		local_mean;

reg	[Sdvig-1:0]		Counter;

initial begin
	Counter <= '0;
	local_mean <= '0;
	lst_data <= '0;
end

always @(posedge clk) begin
	if(rst) begin
		Counter <= '0;
	end
	else
		if(Counter != Wind_size-1)
			Counter <= Counter + 1'd1;
		else
			Counter <= Counter;
end
int i;

always @(posedge clk) begin
    if (rst) begin
        for (i = 0; i < Wind_size; i = i + 1)
            rslos[i] <= '0;
    end
    else begin
		lst_data  <= rslos[Wind_size-1];
        for (i = Wind_size-1; i > 0; i = i - 1)
            rslos[i] <= rslos[i-1];
		if(^data_in === 1'bx)
			rslos[0] <= 0;
		else
        	rslos[0] <= data_in;
    end
end


always @(posedge clk) begin
	if(rst)
		local_mean <= '0;
	else if(Counter < Wind_size-1) begin
		local_mean <= local_mean + rslos[0];
	end
	else begin
		local_mean <= local_mean + rslos[0] - lst_data;
	end
end

always @(posedge clk) begin
	Calc_mean <= (((local_mean + 1) * koef) / Wind_size  ) / 8;
	data_out <= rslos[Wind_size / 2 - 1];
end



endmodule