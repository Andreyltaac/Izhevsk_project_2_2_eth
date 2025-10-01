`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2025 11:29:52
// Design Name: 
// Module Name: S2P_conv_1x8
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


module S2P_conv_1x8(
    input           iclk,
    input           irst,

    input           idat,
    input           ival,
    output          oreq,

    input           ireq,
    output  reg     oval,
    output  [7:0]   odat
    );

    logic [7:0] shift_data_reg;
    logic [2:0] bit_cnt;

    always_ff @(posedge iclk or negedge irst) begin
        if (~ irst) begin
            bit_cnt <= '0;
        end
        else if (ival) begin
            bit_cnt <= bit_cnt + 1'b1;                    
        end else if (ireq& bit_cnt=='1) begin
            bit_cnt <= '0;        
        end
    end

    always @ (posedge iclk or negedge irst) begin
        if (~ irst) begin
            shift_data_reg <= '0;
        end else if (ival) begin
            shift_data_reg    <= shift_data_reg << 1'b1;
            shift_data_reg[0] <= idat;
        end
    end 
    
    always @ (posedge iclk or negedge irst) begin
        if (~ irst) begin
            oval <= '0;
        end else begin
            oval <= (bit_cnt == '1) ? 1:0;
        end
    end 



    assign  oreq = ireq;
    assign  odat = shift_data_reg;
endmodule
