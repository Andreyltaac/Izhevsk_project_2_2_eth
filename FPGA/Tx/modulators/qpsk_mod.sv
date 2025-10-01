`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2024 14:40:29
// Design Name: 
// Module Name: qpsk_mod
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


module qpsk_mod#(parameter maxBitOrder = 6, fft_depth = 12, levels = 1200)(
        input                   [maxBitOrder-1:0]        bits,
        output logic            [fft_depth-1:0]                   sub_i,   
        output logic            [fft_depth-1:0]                   sub_q   
    );


always_comb begin
    case (bits[0])
    1'd0:   begin
        sub_i =  -levels;
    end
    1'd1:   begin
        sub_i =  levels;
    end
    endcase
end

always_comb begin
    case (bits[1])
    1'd0:   begin
        sub_q =  -levels;
    end
    1'd1:   begin
        sub_q =  levels;
    end
    endcase
end

endmodule
