`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2019 21:02:14
// Design Name: 
// Module Name: sum_ch
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


module mult_ch_2ch(

        input wire [15:0] data_ch_i, //Данные
        input wire [15:0] data_ch_q,
          
        input wire [15:0] scale_ch, //Коэффициент масштабирования
 
        
        output wire [15:0] data_mult_ch_i, //Результат умножения
        output wire [15:0] data_mult_ch_q,
        
        input wire clk

    );
    
multiplier scale_sv_i(
                .clk(clk),
                .a(data_ch_i),
                .b(scale_ch),
                .p(data_mult_ch_i)
                );
multiplier scale_sv_q(
                .clk(clk),
                .a(data_ch_q),
                .b(scale_ch),
                .p(data_mult_ch_q)
                );
endmodule
