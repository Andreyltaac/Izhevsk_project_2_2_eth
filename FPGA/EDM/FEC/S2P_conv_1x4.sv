`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2025 13:08:43
// Design Name: 
// Module Name: S2P_conv_1x4
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




module S2P_conv_1x4(
    input           iclk,
    input           irst,

    input           idat,
    input           isop,
    input           ival,
    output          oreq,

    input           ireq,
    output  reg     oval,
    output          osop,
    output  [3:0]   odat
    );

    logic [3:0] shift_data_reg;
    logic [1:0] bit_cnt;
    logic       sop;

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
            shift_data_reg    <= shift_data_reg >> 1'b1;
            shift_data_reg[3] <= idat;
        end
    end 
    
    always @ (posedge iclk or negedge irst) begin
        if (~ irst) begin
            oval <= '0;
            sop  <= '0;
        end else begin
            oval <= (bit_cnt == '1) ? 1:0;
            if (isop) begin
                sop <= 1;
            end
            else if (oval) begin
                sop <= 0;
            end
        end
    end 


    assign  osop = oval&sop;
    assign  oreq = ireq;
    assign  odat = shift_data_reg;
endmodule
