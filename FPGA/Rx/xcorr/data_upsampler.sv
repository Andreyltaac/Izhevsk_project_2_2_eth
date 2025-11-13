module data_upsampler #(
    parameter 	DATA_WIDTH = 12,
	parameter	BUFFER_DEPTH = 2048
)(
    input  logic                  clk_in,
    input  logic                  clk_out,
    input  logic                  rst,

	input  logic [DATA_WIDTH-1:0] in_data_i,
	input  logic [DATA_WIDTH-1:0] in_data_q,
    input  logic                  in_valid,

    output logic [DATA_WIDTH-1:0] out_data_i,
	output logic [DATA_WIDTH-1:0] out_data_q,
    output logic                  out_valid,
	output logic				  out_eop
);

	logic 					loc_val;
	logic [DATA_WIDTH-1:0] 	loc_data_i;
	logic [DATA_WIDTH-1:0] 	loc_data_q;
	localparam SZ_Count = $clog2(BUFFER_DEPTH);
    // Передача данных между тактовыми доменами через флаг
    logic [DATA_WIDTH-1:0] data_buffer_i;
	logic [DATA_WIDTH-1:0] data_buffer_q;
    logic                  data_flag_in, data_flag_out;
    logic                  data_flag_out_sync1, data_flag_out_sync2;

    // Входной домен: сохраняем данные и поднимаем флаг
    always @(posedge clk_in or posedge rst) begin
        if (rst) begin
            data_flag_in <= 0;
        end else if (in_valid) begin
            data_buffer_i  <= in_data_i;
			data_buffer_q  <= in_data_q;
            data_flag_in <= ~data_flag_in;  // Toggle-флаг
        end
    end

    // Синхронизация флага в выходной домен
    always @(posedge clk_out) begin
        if (rst) begin
            data_flag_out_sync1 <= 0;
            data_flag_out_sync2 <= 0;
        end else begin
            data_flag_out_sync1 <= data_flag_in;
            data_flag_out_sync2 <= data_flag_out_sync1;
        end
    end

    // Детектор фронта toggle-флага
    wire new_data_ready = (data_flag_out_sync2 != data_flag_out);

    always @(posedge clk_out) begin
        if (rst) begin
            loc_val			<= 0;
            loc_data_i		<= '0;
            loc_data_q		<= '0;
            data_flag_out	<= 0;
        end else begin
            if (new_data_ready) begin
                loc_data_i      <= data_buffer_i;
                loc_data_q      <= data_buffer_q;
                loc_val     <= 1'b1;
                data_flag_out <= data_flag_out_sync2;
            end else begin
                loc_val <= 1'b0;
            end
        end
    end

logic [2*DATA_WIDTH-1:0] bram_data_out;
logic [SZ_Count:0] buff_count;
always @(posedge clk_out) begin
	if(rst)
		buff_count <= 0;
	else if(loc_val) begin
		buff_count <= buff_count + 1'd1;
	end
end

my_bram #(
    .DATA_WIDTH     (2 * DATA_WIDTH),  // I и Q вместе
    .DEPTH          (BUFFER_DEPTH)
) bram_iq (
    // Тактирование записи (медленное)
	.wr_clk			(clk_out),
	.wr_data		({loc_data_q, loc_data_i}),
	.wr_valid		(loc_val),
	.wr_addr		(buff_count),
		
	// Тактирование чтения (быстрое)
	.rd_clk			(clk_out),  // Другая частота!
	.rd_valid		(now_read),
	.rd_addr		(buff_count_r),
	.rd_data		(bram_data_out)
);

logic		now_read, n_buf;
logic	[SZ_Count-1:0]	buff_count_r;


always @(posedge clk_out) begin
	if(rst) begin
		n_buf <= 0;
		now_read <= 0;
		out_eop <= 0;
	end 
	else if(buff_count_r == BUFFER_DEPTH -1) begin
		now_read <= 0;
		n_buf	 <= ~n_buf;
		out_eop  <= 1;
	end
	else if(buff_count[SZ_Count-1:0] == BUFFER_DEPTH -1) begin
		now_read <= 1;
		out_eop  <= 0;
	end
	else
		out_eop  <= 0;
end

always @(posedge clk_out) begin
    if(rst) begin
		out_data_i <= 0;
		out_data_q <= 0;
		out_valid <= 0;
		buff_count_r <= 0;
	end
	else if(now_read) begin
		buff_count_r <= buff_count_r + 1'd1;
		out_valid <= 1;
		out_data_q <= bram_data_out[2 * DATA_WIDTH-1:DATA_WIDTH*1]; 
		out_data_i <= bram_data_out[1 * DATA_WIDTH-1:DATA_WIDTH*0]; 
	end
	else begin
		out_data_i <= 0;
		out_data_q <= 0;
		out_valid <= 0;
		buff_count_r <= 0;
	end
end


endmodule
