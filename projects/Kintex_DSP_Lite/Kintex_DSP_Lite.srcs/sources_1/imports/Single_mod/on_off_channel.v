`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2020 12:51:40
// Design Name: 
// Module Name: on_off_channel
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


module on_off_channel(
    input [31:0] in_bus,
    input mode,
    
    output [31:0] out_bus
    );

assign out_bus = mode ? in_bus : 0;
    
endmodule
