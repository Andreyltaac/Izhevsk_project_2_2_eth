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


module sum_ch2(

        input wire [15:0] data_ch0_i, //Канал 0
        input wire [15:0] data_ch0_q,
          
        input wire [15:0] data_ch1_i, //Канал 1
        input wire [15:0] data_ch1_q,  
              
        input wire [15:0] data_ch2_i, //Канал 2
        input wire [15:0] data_ch2_q, 
        
        input wire [15:0] data_ch3_i, //Канал 3
        input wire [15:0] data_ch3_q,  
        
        output wire [17:0] data_sum_ch_i, //Сумма каналов
        output wire [17:0] data_sum_ch_q,
        
        input wire clk

    );
    
wire [16:0] sum_rm_01_i;
wire [16:0] sum_rm_01_q;
wire [16:0] sum_rm_23_i;
wire [16:0] sum_rm_23_q;  

//wire [17:0] sum_i;
//wire [17:0] sum_q;  

//assign sum_i [15:0] = data_sum_ch_i [15:0];
//assign sum_q [15:0] = data_sum_ch_q [15:0];
 
 adder_17 add_link_01_i(
                .clk(clk),
                .a(data_ch0_i),
                .b(data_ch1_i),
                .s(sum_rm_01_i)
                );
adder_17 add_link_01_q(
                .clk(clk),
                .a(data_ch0_q),
                .b(data_ch1_q),
                .s(sum_rm_01_q)
                );
adder_17 add_link_23_i(
                .clk(clk),
                .a(data_ch2_i),
                .b(data_ch3_i),
                .s(sum_rm_23_i)
                );
adder_17 add_link_23_q(
                .clk(clk),
                .a(data_ch2_q),
                .b(data_ch3_q),
                .s(sum_rm_23_q)
                );
adder_18 add_link_i(
                .clk(clk),
                .a(sum_rm_01_i),
                .b(sum_rm_23_i),
                .s(data_sum_ch_i)
                );
adder_18 add_link_q(
                .clk(clk),
                .a(sum_rm_01_q),
                .b(sum_rm_23_q),
                .s(data_sum_ch_q)
                );
                

   
endmodule
