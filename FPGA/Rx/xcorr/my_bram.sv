module my_bram #(
	parameter DATA_WIDTH	= 32,
	parameter DEPTH			= 1024
)(
    // Тактирование записи
	input  logic						wr_clk,
		
	// Порт записи
	input  logic [DATA_WIDTH-1:0]		wr_data,
	input  logic						wr_valid,
	input  logic [$clog2(DEPTH)-1:0]	wr_addr,
		
	// Тактирование чтения
	input  logic						rd_clk,
		
	// Порт чтения
	input  logic						rd_valid,
	input  logic [$clog2(DEPTH)-1:0]	rd_addr,
	output logic [DATA_WIDTH-1:0]		rd_data
);

reg  	[DATA_WIDTH-1:0] buff  [DEPTH-1:0];

always @(posedge wr_clk) begin
	if(wr_valid)
		buff[wr_addr] <= wr_data;
end

always @(posedge rd_clk) begin
	if(rd_valid)
		rd_data  <= buff[rd_addr];
end


endmodule