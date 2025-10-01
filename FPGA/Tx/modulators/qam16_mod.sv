`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2024 15:08:10
// Design Name: 
// Module Name: qam16_mod
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


module qam16_mod#(parameter maxBitOrder = 6, fft_depth = 12, levels_0 = 400, levels_1 = 1200)(
        input               [maxBitOrder-1:0]       bits,
        output logic        [fft_depth-1:0]                  sub_i,   
        output logic        [fft_depth-1:0]                  sub_q   
    );

// localparam levels_0 = 32767;
// localparam levels_1 = 16383;

always_comb begin
	 case (bits[1:0])
		2'd0:   sub_i = -levels_1;
        2'd1:   sub_i = -levels_0;
        2'd2:   sub_i =  levels_1;
        2'd3:   sub_i =  levels_0;
    endcase
end

always_comb begin
	case (bits[3:2])
        2'd0:   sub_q = -levels_1;
        2'd1:   sub_q = -levels_0;
        2'd2:   sub_q =  levels_1;
        2'd3:   sub_q =  levels_0;
    endcase
end


endmodule
