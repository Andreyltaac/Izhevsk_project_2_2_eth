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


module on_off_channel_2(
    input [15:0] in_bus_1,
    input [15:0] in_bus_2,
    input mode,
    
    output [15:0] out_bus_1,
    output [15:0] out_bus_2
    );

assign out_bus_1 = mode ? in_bus_1 : 0;
assign out_bus_2 = mode ? in_bus_2 : 0;
    
endmodule
