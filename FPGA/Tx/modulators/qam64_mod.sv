`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2024 13:38:26
// Design Name: 
// Module Name: qam64_mod
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


module qam64_mod#(parameter maxBitOrder = 6, fft_depth = 12, levels_0 = 210, levels_1 = 630, levels_2 = 1050, levels_3 = 1470)(
        input               [maxBitOrder-1:0]       bits,
        output logic        [fft_depth-1:0]                  sub_i,   
        output logic        [fft_depth-1:0]                  sub_q   
    );

always_comb begin
    case (bits[2:0])
        3'd0:   sub_i = -levels_3;
        3'd1:   sub_i = -levels_2;
        3'd2:   sub_i = -levels_0;
        3'd3:   sub_i = -levels_1;
        
        3'd4:   sub_i =  levels_3;
        3'd5:   sub_i =  levels_2;
        3'd6:   sub_i =  levels_0;
        3'd7:   sub_i =  levels_1;
    endcase
end

always_comb begin
    case (bits[5:3])
        3'd0:   sub_q = -levels_3;
        3'd1:   sub_q = -levels_2;
        3'd2:   sub_q = -levels_0;
        3'd3:   sub_q = -levels_1;

        3'd4:   sub_q =  levels_3;
        3'd5:   sub_q =  levels_2;
        3'd6:   sub_q =  levels_0;
        3'd7:   sub_q =  levels_1;
    endcase
end


endmodule