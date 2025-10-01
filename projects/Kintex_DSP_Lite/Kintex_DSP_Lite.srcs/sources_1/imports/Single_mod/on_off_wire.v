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


module on_off_wire(
    input data_in,
    input mode,
    
    output data_out
    );

assign data_out = mode ? 0 : data_in;
    
endmodule
