`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2020 13:07:32
// Design Name: 
// Module Name: FPGA_reset
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


module FPGA_reset #(
    parameter integer   C_MS_NUMBER  =   1000
    )
    (
    input   clk,
    input   locked,
    
    output  reset_n
    
    // Signals for debug
//    output          reset_n_reg_ext,
//    output [31:0]   count_ext
    
    );
    
    // Generation of reset
    reg         reset_n_reg = 1'b0;
    reg [31:0]  count = 32'd0;
    
    always @(posedge clk) begin
        if (! locked) begin
            reset_n_reg = 1'b0;
            count <= 32'd0;
        end
        else begin
            if (count == ((C_MS_NUMBER * 100_000) - 1)) begin       // 1 ms is 100 000 clock cycles at 100 MHz
                reset_n_reg = 1'b1;
                count <= count;
            end
            else begin
                count <= count + 1'b1;
            end
        end // (! locked)
    end // always
    
    assign reset_n = reset_n_reg;
    
    
    // Assignment for debug
//    assign reset_n_reg_ext  = reset_n_reg;
//    assign count_ext        = count;

    
endmodule
