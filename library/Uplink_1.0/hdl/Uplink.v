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

input wire [15:0] U_LNK_RX_1_i,
input wire [15:0] U_LNK_RX_1_q,
input wire [15:0] U_LNK_RX_2_i,
input wire [15:0] U_LNK_RX_2_q,
input wire [15:0] U_LNK_RX_3_i,
input wire [15:0] U_LNK_RX_3_q,
input wire [15:0] U_LNK_RX_4_i,
input wire [15:0] U_LNK_RX_4_q,

input wire [15:0] U_SV_RX_1_i,
input wire [15:0] U_SV_RX_1_q,
input wire [15:0] U_SV_RX_2_i,
input wire [15:0] U_SV_RX_2_q,
input wire [15:0] U_SV_RX_3_i,
input wire [15:0] U_SV_RX_3_q,
input wire [15:0] U_SV_RX_4_i,
input wire [15:0] U_SV_RX_4_q,

output wire [15:0] U_LNK_TX_TP_1_i,
output wire [15:0] U_LNK_TX_TP_1_q,

output wire [15:0] U_SV_TX_TP_1_i,
output wire [15:0] U_SV_TX_TP_1_q,
output wire [15:0] U_SV_TX_TP_2_i,
output wire [15:0] U_SV_TX_TP_2_q,
output wire [15:0] U_SV_TX_TP_3_i,
output wire [15:0] U_SV_TX_TP_3_q,
output wire [15:0] U_SV_TX_TP_4_i,
output wire [15:0] U_SV_TX_TP_4_q,

output wire [15:0] DL_TX_Service_1_i,
output wire [15:0] DL_TX_Service_1_q,
output wire [15:0] DL_TX_Service_2_i,
output wire [15:0] DL_TX_Service_2_q,
output wire [15:0] DL_TX_Service_3_i,
output wire [15:0] DL_TX_Service_3_q,
output wire [15:0] DL_TX_Service_4_i,
output wire [15:0] DL_TX_Service_4_q
    );
endmodule
