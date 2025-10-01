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


module razr(
    input wire [15:0] IN,
    output wire [15:0] OUT
    );
    
assign IN [15:4] =  OUT [11:0];

endmodule
