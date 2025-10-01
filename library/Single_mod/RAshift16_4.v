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


module RAshift16_4(
    input signed  [15:0] input_bus,
    output signed [15:0] output_bus
    );

    assign output_bus = input_bus >>> 4;

endmodule
