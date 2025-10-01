`timescale 1ns / 1ps

`include "../include/parameters.vh"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2024 17:06:05
// Design Name: 
// Module Name: mapper
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mapper#(parameter maxWordOut = 6)(
	input                           clk,
	input                           clk_h,
	input                           rst,
	input                           ival,
	input logic [maxWordOut-1:0]    ibit,
	input                           ready_frame,
	input           [3:0]           index_ss,
	input           [2:0]           index_M_in,
	input logic     [2:0]           index_bw,
    input                           enable,

	output logic    [2:0]           index_M_out,
    output logic                    osof,
	output logic    [1:0]           index,
	output logic                    oreq,
	output logic [maxWordOut-1:0]   obit,
	output logic                    osop,
	output logic                    oval,
	output logic                    oeop);               


localparam frame_size   = 50;
localparam pream_size   = 780*2;
localparam N_pream      = 2;
localparam size_sumb    = fftsize + cpsize; // fftsize + cp
localparam sz_count     = $clog2(size_sumb);
localparam sz_count_p   = $clog2(n_pilot);


logic [ $clog2(frame_size)-1:0] frame_counter;
logic [sz_count-1:0]            symb_counter;
logic [10:0]                    preamb_counter;
logic [4:0]                     ss_counter;
logic [sz_count_p-1:0]          pilot_counter;

logic [maxWordOut-1:0]      data, 
                            data_low, 
                            data_low_2;
logic [1:0]     map_i;
(* ram_style = "block" *) logic [11:0]    map_data   [fftsize - 1:0];
logic [11:0]    map_data_read;
logic [1:0]     map_p   [fftsize - 1:0];
logic           pilot   [n_pilot-1:0];
logic           pream_i [pream_size-1:0];
logic           pream_q [pream_size-1:0];

logic [1:0]		loc_index;
logic			loc_oreq;


assign map_data_read = map_data[symb_counter];
logic   next_symb, now_count,prev_count;
reg     local_bit, local_val;


initial begin

    $readmemb(file_map_symb,    map_data);
    $readmemb(file_map_pream,   map_p);
    $readmemb(file_pilot,       pilot);
    $readmemb(file_t_pream_i,   pream_i);
    $readmemb(file_t_pream_q,   pream_q);

    frame_counter   <= '0;
    preamb_counter  <= '0;
    symb_counter	<= size_sumb-1;
    pilot_counter 	<= '0;
    data 			<= '0;
    data_low 		<= '0;
    ss_counter 		<= '0;
    index 			<= '0;
    oval 			<= '0;
    osop 			<= '0;
    index_M_out 	<= '0;
    oeop 			<= '0;
	loc_oreq		<= '0;
	loc_index		<= '0;
    local_bit       <= '0;
end


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Данные на выходе в зависимости от Карты

always_comb begin
	if(rst)
		map_i = '0;
	else if (symb_counter < fftsize)
	begin
		case (index_bw)
			3'd0: map_i = map_data_read[1:0];
			3'd1: map_i = map_data_read[3:2];
			3'd2: map_i = map_data_read[5:4];
			3'd3: map_i = map_data_read[7:6];
			3'd4: map_i = map_data_read[9:8];
			3'd5: map_i = map_data_read[11:10];
			//3'd6: map_i = map_data_read[13:12];
		endcase
	end else  map_i = '0;  
end


always_comb begin
	if(rst)
		obit = '0;
	else
		case (index)
			2'b00: obit = '0;
			2'b01: obit = index_M_out == 3'd6 ? data_low : data_low_2;
			2'b10: obit = {'0, {pilot[pilot_counter], pilot[pilot_counter]}};
			2'b11: obit = {'0, {pream_i[preamb_counter], pream_q[preamb_counter]}};
		endcase
end

always @(posedge clk) begin
    if(rst)
        oeop <= '0;
    else if(symb_counter == fftsize)
        oeop <= '1;
    else
        oeop <= '0;
end

always @(posedge clk) begin
    if(rst) begin
        osop <= '0;
        osof <= '0;
    end
    else if(symb_counter == 10'd1) begin
        osop <= '1;
        if(frame_counter == 7'd0)
            osof <= '1;
        else
            osof <= '0;
    end
    else begin
        osop <= '0;
        osof <= '0;
    end
end

always @(posedge clk) begin
    if(rst) begin
        local_val <= '0;
        index_M_out <= '0;
    end
    else if(symb_counter == 0) begin
        local_val <= '1;
        index_M_out <= index_M_in;
    end
    else if(symb_counter == fftsize) begin
        local_val <= '0;
        index_M_out <= '0;
    end
end

always @(posedge clk) begin
	oval <= local_val;
end



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Линия задержки для входных данных

always @(posedge clk) 
    if(rst)
        data_low <= '0;
    else begin
        data_low 	<= data;  				//10 
		data_low_2 	<= data_low;			
    end

always @(posedge clk_h) begin
    if(rst)
        data <= '0;
    else if(ival)
        data <= ibit;
end

always @(posedge clk) begin
    if(rst) begin
        loc_index   <= '0;
        index       <= '0;
    end
    else begin
        if(symb_counter < fftsize)
		    // loc_index <= frame_counter > N_pream - 1 ? map_i[symb_counter] : (frame_counter > 0 ? '0 : map_p[symb_counter]);
			loc_index <= frame_counter > N_pream - 1 ? map_i :  map_p[symb_counter];
        else 
		    loc_index <= '0;

        index <= loc_index;
    end
end


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Запрос данных из памяти

// assign oreq = ready_frame && frame_counter > N_pream - 1 && symb_counter < fftsize && next_symb && map_i[symb_counter] == 2'd1 && ss_counter == 5'd0 ? 1'd1 : loc_oreq;

assign oreq = ready_frame && frame_counter > N_pream - 1 && symb_counter < fftsize && next_symb && map_i == 2'd1 && ss_counter == 5'd0 ? 1'd1 : '0;


always @(posedge clk_h) begin
	if(rst)
        loc_oreq <= '0;
    else if(ready_frame && frame_counter > N_pream - 1 && next_symb && map_i == 2'd1 && ss_counter == 5'd0)
        loc_oreq <= '1;
    else if(ival || (oreq && map_i != 2'd1))
        loc_oreq <= '0;
    else
        loc_oreq <= loc_oreq;
end


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Определение начала нового отсчета 

assign next_symb = ~local_bit && now_count || local_bit && ~now_count;

always @(posedge clk_h) begin
    if(rst) 
        now_count <= '0;
    else
        now_count <= local_bit;
end

always @(posedge clk) begin
    if(rst) begin
        local_bit <='0;
	end
    else begin
        local_bit <= ~local_bit;
	end
end

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Счетчик пилотов

always @(posedge clk) begin
    if(rst)
        pilot_counter <= '0;
    else if(symb_counter == size_sumb -1)
        pilot_counter <= '0;
    else if(index == 2'd2)
        if(pilot_counter == n_pilot - 1)
            pilot_counter <= '0;
        else
            pilot_counter <= pilot_counter + 1'b1;
end

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Счетчик преамбулы

always @(posedge clk) begin
    if(rst)
        preamb_counter <= '0;
    else if(osof)
        preamb_counter <= '0;
    else if(index == 2'd3)
        if(preamb_counter == pream_size - 1)
            preamb_counter <= '0;
        else
            preamb_counter <= preamb_counter + 1'b1;
end

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Счетчик по кадру

always @(posedge clk) begin
    if(rst)
        frame_counter <= '0;
    else if(oeop & enable)
        if(frame_counter == frame_size-1) 
            frame_counter <= '0;
        else
            frame_counter <= frame_counter + 1'b1;
    else if(!enable)
        frame_counter <= '0;

end

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Счетчик по символу

always @(posedge clk) begin
    if(rst)
        symb_counter <= size_sumb -1;
    else if(enable)
        if(symb_counter == size_sumb -1) 
            symb_counter <= '0;
        else
            symb_counter <= symb_counter + 1'b1;
    else  
        symb_counter <= size_sumb - 1;

end

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Счетчик для расширения спектра

always @(posedge clk) begin 
    if(rst)
        ss_counter <= '0;
    else if(map_i == 2'd1)
        if(ss_counter == index_ss - 1)
            ss_counter <= '0;
        else 
            ss_counter <= ss_counter + 1'd1;
end

endmodule