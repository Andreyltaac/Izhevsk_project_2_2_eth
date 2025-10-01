`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2025 10:14:43
// Design Name: 
// Module Name: P2S_conv_8x1
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


module P2S_conv_8x1(
    input           iclk,
    input           irst,

    input   [7:0]   idat,
    input           ival,
    input           isop,
    output          oreq,

    input           ireq,
    output  reg     osop,
    output  reg     oval,
    output          odat
    );

    logic [7:0] shift_data_reg;
    logic [2:0] bit_cnt;

    always @(posedge iclk or negedge irst) begin
        if (~ irst)
            bit_cnt <= '0;
        else if (ireq||oval) begin
            bit_cnt <= bit_cnt + 1'b1;                    
        end else begin
            bit_cnt <= '0;        
        end
    end

    assign oreq = ((bit_cnt == '1)&&ireq) ? 1:0;

    always @ (posedge iclk or negedge irst) begin
        if (~ irst) begin
            shift_data_reg <= '0;
            oval           <= '0;
        end else if (oreq&ival) begin
            shift_data_reg <= idat;
            oval           <= '1;
        end else begin
            shift_data_reg <= shift_data_reg << 1'b1;
            if (~ival&&bit_cnt=='1) begin
                oval       <= '0;
            end
        end
    end 
    
    always_ff @ (posedge iclk) begin
        osop <= isop;
    end

    assign  odat = shift_data_reg[7];

endmodule
