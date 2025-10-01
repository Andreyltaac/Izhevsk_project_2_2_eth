`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2022 15:21:39
// Design Name: 
// Module Name: router
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


module router(
    input clk,
    input [4:0] addr,
    input [31:0] dt,
    input reset,
    output reg [31:0] pack = 0
    );
    
    // + 16 17 2048
    // + magic_num addr

reg [14:0] magic_num = 16'hAFA;

always @(posedge clk) begin
    if ( !reset ) begin
        pack <= dt;
    end
    else begin
        pack <= {addr[4:0], magic_num[14:0]};
    end
end

endmodule
