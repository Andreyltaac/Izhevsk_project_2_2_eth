`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2019 17:43:19
// Design Name: 
// Module Name: razr
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


module Switch_DATA_16b(


 input wire [31:0] Service_1_RX_0,
 input wire [31:0] Service_2_RX_1,
 input wire [31:0] Service_3_RX_2,
 input wire [31:0] Service_4_RX_3,
 input wire [31:0] Service_1_TX_4,
 input wire [31:0] Service_2_TX_5,
 input wire [31:0] Service_3_TX_6,
 input wire [31:0] Service_4_TX_7,
 input wire [31:0] DL_RX_LNK_8,
 input wire [31:0] DL_TX_LNK_9,
 input wire [31:0] UL_RX_LNK_10,
 input wire [31:0] UL_TX_LNK_11,
 input wire [31:0] AD9364_Samples,
 input wire [31:0] Power_meter_1,
 input wire [31:0] Power_meter_2,
 input wire [31:0] Power_meter_3,
 input wire [31:0] Power_meter_4,

 output reg [15:0] Out_q,
 output reg [15:0] Out_i,
 
 input wire [7:0] sel_ch,
 input wire clk

);

always @(posedge clk)
begin
  case(sel_ch)
    8'd0:  begin
               {Out_q,Out_i} <= Service_1_RX_0;
           end
    8'd1:  begin
               {Out_q,Out_i} <= Service_2_RX_1;
           end
    8'd2:  begin
               {Out_q,Out_i} <= Service_3_RX_2;
           end     
    8'd3:  begin
               {Out_q,Out_i} <= Service_4_RX_3;
           end
    8'd4:  begin
               {Out_q,Out_i} <= Service_1_TX_4; 
           end
    8'd5:  begin
               {Out_q,Out_i} <= Service_2_TX_5; 
           end
    8'd6:  begin
               {Out_q,Out_i} <= Service_3_TX_6;
           end
    8'd7:  begin
               {Out_q,Out_i} <= Service_4_TX_7;
           end     
    8'd8:  begin
               {Out_q,Out_i} <= DL_RX_LNK_8;
           end
    8'd9:  begin
               {Out_q,Out_i} <= DL_TX_LNK_9; 
           end
    8'd10: begin
               {Out_q,Out_i} <= UL_RX_LNK_10; 
           end
    8'd11: begin
               {Out_q,Out_i} <= UL_TX_LNK_11; 
           end
    8'd12: begin
               {Out_q,Out_i} <= AD9364_Samples; 
           end
    8'd13: begin
               {Out_q,Out_i} <= Power_meter_1; 
           end    
    8'd14: begin
               {Out_q,Out_i} <= Power_meter_2; 
           end
    8'd15: begin
               {Out_q,Out_i} <= Power_meter_3; 
           end
    8'd16: begin
               {Out_q,Out_i} <= Power_meter_4; 
           end
                 
  default: begin               
               {Out_q,Out_i} <= 0;
           end
  endcase
end

endmodule