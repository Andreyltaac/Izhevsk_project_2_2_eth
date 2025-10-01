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


module DEMUX_2_1(

    input wire  OP_MODE_MGTX,

    input wire [15:0] DSP_Out_i,
    input wire [15:0] DSP_Out_q,
    
    input wire clk,
    
    output reg [15:0] AD_Link_i,
    output reg [15:0] AD_Link_q,
    output reg [15:0] MGT__i,
    output reg [15:0] MGT__q

    );
    
always @(posedge clk)
    begin    
        if (OP_MODE_MGTX)
            begin
                {MGT__q, MGT__i}        <= {DSP_Out_q, DSP_Out_i};
                AD_Link_i <= 0;
                AD_Link_q <= 0;
            end
        else
            begin
                {AD_Link_q, AD_Link_i}  <= {DSP_Out_q, DSP_Out_i};
                MGT__i <= 0;
                MGT__q <= 0;
            end

    end

endmodule