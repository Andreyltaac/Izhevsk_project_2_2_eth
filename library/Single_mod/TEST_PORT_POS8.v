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


module TEST_PORT_POS8(


    input wire [15:0] TstPort,

    input wire clk,

    output reg [0:0] TstBit


    );

always @(posedge clk)
    begin
        if ( TstPort[7] )
            begin
                TstBit[0] <= 1;
            end
        else
            begin
                TstBit[0] <= 0;
            end

    end

endmodule
