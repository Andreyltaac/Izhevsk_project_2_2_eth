module speed_test  #(parameter B1 = 1920)
(
    input wire clk,          // 30.72 МГц
	input wire clk_hh,       // 276.48 МГц
    input wire reset,        // Синхронный сброс
    input wire p1,           // �?мпульс увеличения (276.48 МГц, 1 такт)
    input wire p2,           // �?мпульс уменьшения (276.48 МГц, 1 такт)
    output reg [17:0] d1_out,// Выходное значение
    output reg valid_out,     // Сигнал валидности
	output wire p1_rise,
	output wire p2_rise
);

// Параметры
//parameter B1 = 1;            // Константа изменения
localparam TIMER_MAX = 16'd30719; // 1 мс при 30.72 МГц (30720 тактов)

// Регистры синхронизации (3 ступени для надежности)
reg [2:0] p1_sync_reg = 3'b0;
reg [2:0] p2_sync_reg = 3'b0;
reg p1_prev, p2_prev;



reg [3:0]	count_dtct_p1;
reg         p1_dtct;

 always @(posedge clk_hh) begin
 	if(reset)
 		p1_dtct <= 1'b0;
 	else if(p1)
 		p1_dtct <= 1'b1;
 	else if(count_dtct_p1 == 4'd8)
 		p1_dtct <= 1'b0;
 end

 always @(posedge clk_hh) begin
 	if(reset)
 		count_dtct_p1 <= 4'd0;
 	else if(count_dtct_p1 == 4'd8)
 		count_dtct_p1 <= 4'd0;
 	else if(p1 || p1_dtct)
 		count_dtct_p1 <= count_dtct_p1 + 4'd1;
 end

reg [3:0]	count_dtct_p2;
reg         p2_dtct;

 always @(posedge clk_hh) begin
 	if(reset)
 		p2_dtct <= 1'b0;
 	else if(p2)
 		p2_dtct <= 1'b1;
 	else if(count_dtct_p2 == 4'd8)
 		p2_dtct <= 1'b0;
 end

 always @(posedge clk_hh) begin
 	if(reset)
 		count_dtct_p2 <= 4'd0;
 	else if(count_dtct_p2 == 4'd8)
 		count_dtct_p2 <= 4'd0;
 	else if(p2 || p2_dtct)
 		count_dtct_p2 <= count_dtct_p2 + 4'd1;
 end




// Синхронизация импульсов из высокочастотного домена
always @(posedge clk) begin
    if (reset) begin
        p1_sync_reg <= 3'b0;
        p2_sync_reg <= 3'b0;
    end else begin
        // Цепочка синхронизации для p1
        p1_sync_reg <= {p1_sync_reg[1:0], p1};
        
        // Цепочка синхронизации для p2
        p2_sync_reg <= {p2_sync_reg[1:0], p2};
    end
    p1_prev <= p1_dtct;//p1_sync_reg[1];
    p2_prev <= p2_dtct;
end

// Детектирование фронтов после синхронизации
assign p1_rise = ~p1_prev & p1_dtct;
assign p2_rise = ~p2_prev & p2_dtct;

// Счетчик времени и аккумулятор
reg [15:0] timer = 0;
reg [17:0] accumulator = 0;

// Основная логика
always @(posedge clk) begin
    if (reset) begin
        timer <= 0;
        accumulator <= 0;
        d1_out <= 0;
        valid_out <= 0;
    end else begin
        // Счетчик интервала времени
        timer <= (timer == TIMER_MAX) ? 0 : timer + 1;
        
        // Обработка импульсов
        case (p1_rise && ~p2_rise)
            1'b1: accumulator <= accumulator + B1;  // Увеличение
            //2'b01: accumulator <= accumulator - B1;  // Уменьшение
            default: ; // Сохранение значения
        endcase
        
        // Фиксация результата в конце интервала
        if (timer == TIMER_MAX) begin
            d1_out <= accumulator;
            valid_out <= 1;
            accumulator <= 0;  // Сброс аккумулятора
        end else begin
            valid_out <= 0;
        end
    end
end

endmodule