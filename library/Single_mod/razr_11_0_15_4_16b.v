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


module razr_11_0_15_4_16b(
    input wire [15:0] IN_D,
    output wire [15:0] OUT_D
    );
    
assign IN_D [11:0] =  OUT_D [15:4];

endmodule
