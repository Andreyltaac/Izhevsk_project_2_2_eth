`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.01.2020 14:22:06
// Design Name: 
// Module Name: Uplink
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


module Uplink(

input wire  clk_sample_rate,
input wire [31:0] UL_LNK_RX_1,
input wire [31:0] UL_LNK_RX_2,
input wire [31:0] UL_LNK_RX_3,
input wire [31:0] UL_LNK_RX_4,
                                   
input wire [31:0] UL_SV_RX_1,
input wire [31:0] UL_SV_RX_2,
input wire [31:0] UL_SV_RX_3,
input wire [31:0] UL_SV_RX_4,

input wire [31:0] reg_0,
input wire [31:0] reg_1,
input wire [31:0] reg_2,
input wire [31:0] reg_3,
input wire [31:0] reg_4,

input wire [11:0] pilot_i,
input wire [11:0] pilot_q,

output wire [31:0] UL_TX_Link_1,

output wire [31:0] DL_TX_Service_1,
output wire [31:0] DL_TX_Service_2,
output wire [31:0] DL_TX_Service_3,
output wire [31:0] DL_TX_Service_4
    );
 
wire [31:0] LO_1; 
wire [31:0] LO_2; 
wire [31:0] LO_3; 
wire [31:0] LO_4; 
wire [31:0] PILOT_FRQ; 

wire [15:0] add_1_i; 
wire [15:0] add_1_q; 
wire [15:0] add_2_i; 
wire [15:0] add_2_q; 
wire [15:0] add_3_i; 
wire [15:0] add_3_q; 
wire [15:0] add_4_i; 
wire [15:0] add_4_q; 

wire [23:0] data_ch1_i_out; 
wire [23:0] data_ch1_q_out; 
wire [23:0] data_ch2_i_out; 
wire [23:0] data_ch2_q_out; 
wire [23:0] data_ch3_i_out; 
wire [23:0] data_ch3_q_out; 
wire [23:0] data_ch4_i_out; 
wire [23:0] data_ch4_q_out; 

wire [17:0] U_LNK_TX_DATA_i; 
wire [17:0] U_LNK_TX_DATA_q; 

wire [18:0] sum_4ch_i;  
wire [18:0] sum_4ch_q;

assign UL_TX_Link_1 = {sum_4ch_q[16:1], sum_4ch_i[16:1]};
    
adder adder_1_i (
              .a(UL_LNK_RX_1[15:0]),
              .b(UL_SV_RX_1[15:0]),
              .s(add_1_i),
              .clk(clk_sample_rate)
               );
               
adder adder_1_q (
              .a(UL_LNK_RX_1[31:16]),
              .b(UL_SV_RX_1[31:16]),
              .s(add_1_q),
              .clk(clk_sample_rate)
               );
adder adder_2_i (
              .a(UL_LNK_RX_2[15:0]),
              .b(UL_SV_RX_2[15:0]),
              .s(add_2_i),
              .clk(clk_sample_rate)
               );
               
adder adder_2_q (
              .a(UL_LNK_RX_2[31:16]),
              .b(UL_SV_RX_2[31:16]),
              .s(add_2_q),
              .clk(clk_sample_rate)
               );
adder adder_3_i (
              .a(UL_LNK_RX_3[15:0]),
              .b(UL_SV_RX_3[15:0]),
              .s(add_3_i),
              .clk(clk_sample_rate)
               );
               
adder adder_3_q (
              .a(UL_LNK_RX_3[31:16]),
              .b(UL_SV_RX_3[31:16]),
              .s(add_3_q),
              .clk(clk_sample_rate)
               );
adder adder_4_i (
              .a(UL_LNK_RX_4[15:0]),
              .b(UL_SV_RX_4[15:0]),
              .s(add_4_i),
              .clk(clk_sample_rate)
               );
               
adder adder_4_q (
              .a(UL_LNK_RX_4[31:16]),
              .b(UL_SV_RX_4[31:16]),
              .s(add_4_q),
              .clk(clk_sample_rate)
               );
               
               
adder_pilot_2 adder_pilot_i (
              .a(U_LNK_TX_DATA_i),
              .b(pilot_i),
              .s(sum_4ch_i),
              .clk(clk_sample_rate)
               );
               
adder_pilot_2 adder_pilot_q (
              .a(U_LNK_TX_DATA_q),
              .b(pilot_q),
              .s(sum_4ch_q),
              .clk(clk_sample_rate)
               );


sum_ch2 sum_ch_i (
                  .data_ch0_i(data_ch1_i_out[15:0]),
                  .data_ch0_q(data_ch1_q_out[15:0]),
                  .data_ch1_i(data_ch2_i_out[15:0]),
                  .data_ch1_q(data_ch2_q_out[15:0]),
                  .data_ch2_i(data_ch3_i_out[15:0]),
                  .data_ch2_q(data_ch3_q_out[15:0]),
                  .data_ch3_i(data_ch4_i_out[15:0]),
                  .data_ch3_q(data_ch4_q_out[15:0]),
                  .data_sum_ch_i(U_LNK_TX_DATA_i),
                  .data_sum_ch_q(U_LNK_TX_DATA_q),
                  .clk(clk_sample_rate)
                  );

LO_16b LO_16b_1(
              .s_axis_config_tdata(reg_1[31:0]),
              .s_axis_config_tvalid(1),
              .m_axis_data_tdata(LO_1),
              .m_axis_data_tvalid(valid_LO_1),
              .aclk(clk_sample_rate)
              );
              
LO_16b LO_16b_2(
              .s_axis_config_tdata(reg_2[31:0]),
              .s_axis_config_tvalid(1),
              .m_axis_data_tdata(LO_2),
              .m_axis_data_tvalid(valid_LO_2),
              .aclk(clk_sample_rate)
              );
              
LO_16b LO_16b_3(
              .s_axis_config_tdata(reg_3[31:0]),
              .s_axis_config_tvalid(1),
              .m_axis_data_tdata(LO_3),
              .m_axis_data_tvalid(valid_LO_3),
              .aclk(clk_sample_rate)
              );
              
LO_16b LO_16b_4(
              .s_axis_config_tdata(reg_4[31:0]),
              .s_axis_config_tvalid(1),
              .m_axis_data_tdata(LO_4),
              .m_axis_data_tvalid(valid_LO_4),
              .aclk(clk_sample_rate)
              );
                            
//PILOT_SIN PILOT(
//              .s_axis_config_tdata(reg_0[31:0]),
//              .s_axis_config_tvalid(1),
//              .m_axis_data_tdata(PILOT_FRQ),
//              //.m_axis_data_tvalid(valid_LO_4),
//              .aclk(clk_sample_rate)
//              );

mixer_16b mixer_16b_1(
                .aclk(clk_sample_rate),
                .s_axis_a_tdata({add_1_q,add_1_i}),
                .s_axis_a_tvalid(1),
                .s_axis_b_tdata(LO_1),
                .s_axis_b_tvalid(valid_LO_1),
                .m_axis_dout_tdata({data_ch1_q_out,data_ch1_i_out})
//                .m_axis_dout_tvalid(valid_ch1)
                );   
                
mixer_16b mixer_16b_2(
                .aclk(clk_sample_rate),
                .s_axis_a_tdata({add_2_q,add_2_i}),
                .s_axis_a_tvalid(1),
                .s_axis_b_tdata(LO_2),
                .s_axis_b_tvalid(valid_LO_2),
                .m_axis_dout_tdata({data_ch2_q_out,data_ch2_i_out})
//                .m_axis_dout_tvalid(valid_ch1)
                );   
                
mixer_16b mixer_16b_3(
                .aclk(clk_sample_rate),
                .s_axis_a_tdata({add_3_q,add_3_i}),
                .s_axis_a_tvalid(1),
                .s_axis_b_tdata(LO_3),
                .s_axis_b_tvalid(valid_LO_3),
                .m_axis_dout_tdata({data_ch3_q_out,data_ch3_i_out})
//                .m_axis_dout_tvalid(valid_ch1)
                );   
                
mixer_16b mixer_16b_4(
                .aclk(clk_sample_rate),
                .s_axis_a_tdata({add_4_q,add_4_i}),
                .s_axis_a_tvalid(1),
                .s_axis_b_tdata(LO_4),
                .s_axis_b_tvalid(valid_LO_4),
                .m_axis_dout_tdata({data_ch4_q_out,data_ch4_i_out})
//                .m_axis_dout_tvalid(valid_ch1)
                );   
         

assign DL_TX_Service_1 = {data_ch1_q_out[15:0],data_ch1_i_out[15:0]};
assign DL_TX_Service_2 = {data_ch2_q_out[15:0],data_ch2_i_out[15:0]};
assign DL_TX_Service_3 = {data_ch3_q_out[15:0],data_ch3_i_out[15:0]};
assign DL_TX_Service_4 = {data_ch4_q_out[15:0],data_ch4_i_out[15:0]};

endmodule
