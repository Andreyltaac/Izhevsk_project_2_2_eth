`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2021 11:07:43
// Design Name: 
// Module Name: IQquad_sum
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


module IQquad_sum(
    input clk,
    input [15:0] I,
    input [15:0] Q,
    input [15:0] razr_shift,
    output [31:0] pwr_meas_out
    );


reg [31:0] prod_I = 0;   
reg [31:0] prod_Q = 0;
reg [31:0] sum = 0; 
reg [47:0] avg_sum = 0; 

  
wire [31:0] fifo_output;

fix_delay fix_delay_i (
        .D(sum),      
        .CLK(clk),  
        .Q(fifo_output)       
        );
   
always @(posedge clk) 
        begin
        prod_I <= I*I;
        prod_Q <= Q*Q;
        end     

always @(posedge clk) 
        begin
        sum <= prod_I + prod_Q;
        avg_sum <= (sum + avg_sum) - fifo_output;
//        pwr_meas_out [31:0] <= razr_shift * avg_sum;
        end

mult mult_i (
  .CLK(clk), 
  .A(avg_sum),      
  .B(razr_shift),     
  .P(pwr_meas_out)      
);

endmodule
