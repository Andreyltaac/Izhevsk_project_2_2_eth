`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2020 17:20:49
// Design Name: 
// Module Name: MUXes
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


module MUX_2_1(

    input wire  OP_MODE_MGTX,

    input wire [15:0] ADC_Out_i,
    input wire [15:0] ADC_Out_q,

    input wire [15:0] MGTX_Out_i,
    input wire [15:0] MGTX_Out_q,
    
    input wire clk,
    
    output reg [15:0] Link_toDSP_i,
    output reg [15:0] Link_toDSP_q           

    );
    
always @(posedge clk)
    begin    
        {Link_toDSP_q,Link_toDSP_i} <= OP_MODE_MGTX ? {MGTX_Out_q,MGTX_Out_i} : {ADC_Out_q,ADC_Out_i};
    end

endmodule