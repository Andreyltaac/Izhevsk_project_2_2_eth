module data_downsampler #(
	parameter DATA_WIDTH = 12,
	parameter BUFFER_DEPTH = 2048
)(
	input  logic				  clk_in,
	input  logic				  clk_out,
	input  logic				  rst,

	// Входная пачка данных (на clk_out)
	input  logic [DATA_WIDTH-1:0] in_data_i,
	input  logic [DATA_WIDTH-1:0] in_data_q,
	input  logic				  in_valid,

	// Выход по одному элементу (на clk_in)
	output logic [DATA_WIDTH-1:0] out_data_i,
	output logic [DATA_WIDTH-1:0] out_data_q,
	output logic				  out_valid
);

	localparam SZ_Count = $clog2(BUFFER_DEPTH);

	// Буферы для двух пачек
	logic [DATA_WIDTH-1:0] buff_1_i [BUFFER_DEPTH-1:0];
	logic [DATA_WIDTH-1:0] buff_1_q [BUFFER_DEPTH-1:0];
	logic [DATA_WIDTH-1:0] buff_2_i [BUFFER_DEPTH-1:0];
	logic [DATA_WIDTH-1:0] buff_2_q [BUFFER_DEPTH-1:0];

	logic [SZ_Count-1:0]   wr_count;
	logic [SZ_Count-1:0]   rd_count;
	logic				  active_buf_wr, active_buf_rd;	 // 0 или 1 — какая из двух буферов используется для чтения

	logic					rd_run;

	// WRITING on clk_out
	always @(posedge clk_in) begin
		if (rst) begin
			wr_count <= 0;
		end else if (in_valid) begin
			if (!active_buf_wr) begin
				buff_1_i[wr_count] <= in_data_i;
				buff_1_q[wr_count] <= in_data_q;
			end else begin
				buff_2_i[wr_count] <= in_data_i;
				buff_2_q[wr_count] <= in_data_q;
			end
			wr_count <= wr_count + 1;
		end
	end

	always @(posedge clk_in) begin
		if(rst)
			active_buf_wr <= 0;
		else if(wr_count == BUFFER_DEPTH-1)
			active_buf_wr <= ~active_buf_wr;
	end
	
	always @(posedge clk_out) begin
		if(rst)
			active_buf_rd <= 0;
		else if(rd_count == BUFFER_DEPTH-1)
			active_buf_rd <= ~active_buf_rd;
	end
	

	always @(posedge clk_out) begin
		if(rst)
			rd_run <= '0;
		else if(rd_count == BUFFER_DEPTH-1 & in_valid)
			rd_run <= 1;
		else if(rd_count == BUFFER_DEPTH-1)
			rd_run <= '0;
		else if(in_valid)
			rd_run <= 1;
	end

	always @(posedge clk_out) begin
		if(rst) begin
			out_data_i 	<= '0;
			out_data_q 	<= '0;
			rd_count	<= '0;
			out_valid	<= '0;
		end
		else if(rd_run) begin
			out_valid <= 1;
			if (!active_buf_rd) begin
				out_data_i <= buff_1_i[rd_count];
				out_data_q <= buff_1_q[rd_count];
			end else begin
				out_data_i <= buff_2_i[rd_count];
				out_data_q <= buff_2_q[rd_count];
			end
			rd_count <= rd_count + 1;
		end
		else begin
			out_data_i 	<= '0;
			out_data_q 	<= '0;
			rd_count	<= '0;
			out_valid	<= '0;
		end
	end
endmodule
