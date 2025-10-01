`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2024 13:55:52
// Design Name: 
// Module Name: modulator
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


module modulator #(parameter maxBitOrder = 6, fft_depth = 12)(
        input                               clk,
        input                               rst,
        input                               isop,
        input                               ival,
        input                               ieop,
        input           [maxBitOrder-1:0]   bits,
        input           [2:0]               index_M,    // 1 - BPSK, 2 - QPSk, 4 - QAM-16, 6 - QAM64
        input           [1:0]               index_subc, // 0 - GB, 1 - Info Subc, 2 - Pilot Sub, 3 - Preamb
        output logic    [fft_depth-1:0]     sub_i,
        output logic    [fft_depth-1:0]     sub_q,
        output logic                        oval,
        output logic                        osop,
        output logic                        oeop,
        output logic    [2:0]               oindex_M,
        output logic    [1:0]               oindex_subc);  // 0 - GB, 1 - Info Subc, 2 - Pilot Sub, 3 - Preamb

logic signed [fft_depth-1:0] sub_info_i;
logic signed [fft_depth-1:0] sub_info_q;

logic signed [fft_depth-1:0] sub_pilot_i;
logic signed [fft_depth-1:0] sub_pilot_q;

logic signed [fft_depth-1:0] sub_preamb_i;
logic signed [fft_depth-1:0] sub_preamb_q;

logic signed [fft_depth-1:0] sub_info_i_qpsk;
logic signed [fft_depth-1:0] sub_info_q_qpsk;

logic signed [fft_depth-1:0] sub_info_i_qm16;
logic signed [fft_depth-1:0] sub_info_q_qm16;

logic signed [fft_depth-1:0] sub_info_i_qm64;
logic signed [fft_depth-1:0] sub_info_q_qm64;


initial begin
    osop        <= '0;
    oval        <= '0;
    sub_i       <= '0;
    sub_q       <= '0;
    oeop        <= '0;
end

always @(posedge clk) begin
    oeop <= ieop;
end


always @(posedge clk) begin
    if (rst) begin
        osop <= '0;
        oval <= '0;
        sub_i <= '0;
        sub_q <= '0;
        oindex_subc <= '0;
    end
    else if(ival) begin
        oval <= '1;
        osop <= isop;
        oindex_subc <= index_subc;
		oindex_M 	<=			(index_subc == 2'd0) ? 
					3'd0 	:	((index_subc == 2'd1) ? 
					index_M :	((index_subc == 2'd2 || index_subc == 2'd3)  ? 
					3'd2 	: 	3'd0));
        case(index_subc)
            2'd0:   begin   
                sub_i <= '0;
                sub_q <= '0;
            end

            2'd1:   begin   
                sub_i <= sub_info_i;
                sub_q <= sub_info_q;
            end

            2'd2:   begin
                sub_i <= sub_pilot_i;
                sub_q <= sub_pilot_q;
            end

            2'd3:   begin
                sub_i <= sub_preamb_i;
                sub_q <= sub_preamb_q;
            end
        endcase
    end
    else begin
        oval <= '0;
        osop <= '0;
        sub_i <= '0;
        sub_q <= '0;
    end
end



always_comb begin
    case(index_M)
    3'd1:   begin 
        sub_info_i = sub_info_i_qpsk;
        sub_info_q = sub_info_i_qpsk;
    end

    3'd2:   begin
        sub_info_i = sub_info_i_qpsk;
        sub_info_q = sub_info_q_qpsk;
    end

    3'd4:   begin   
        sub_info_i = sub_info_i_qm16;
        sub_info_q = sub_info_q_qm16;
    end

    3'd6:   begin   
        sub_info_i = sub_info_i_qm64;
        sub_info_q = sub_info_q_qm64;
    end
	 default: begin
			sub_info_i = '0;
			sub_info_q = '0;
	 end

    endcase
end

qpsk_mod #(maxBitOrder, fft_depth, 12'd2000)
qpsk_mod_sub_pilot(
                .bits   (bits),
                .sub_i  (sub_pilot_i),  
                .sub_q  (sub_pilot_q));

qpsk_mod #(maxBitOrder, fft_depth, 12'd1024)
qpsk_mod_sub_preamb(
                .bits   (bits),
                .sub_i  (sub_preamb_i),  
                .sub_q  (sub_preamb_q));

qpsk_mod #(maxBitOrder, fft_depth, 12'd1024)
qpsk_mod_sub(
                .bits   (bits),
                .sub_i  (sub_info_i_qpsk),  
                .sub_q  (sub_info_q_qpsk));

qam16_mod #(maxBitOrder, fft_depth, 12'd512, 12'd1536)
qam16_mod_sub(
                .bits   (bits),
                .sub_i  (sub_info_i_qm16),  
                .sub_q  (sub_info_q_qm16));

qam64_mod #(maxBitOrder, fft_depth, 12'd256, 12'd768, 12'd1280, 12'd1792)  // 1470
qam64_mod_sub(
                .bits   (bits),
                .sub_i  (sub_info_i_qm64),  
                .sub_q  (sub_info_q_qm64));







reg [10:0]	noise_i, noise_q;

reg	[5:0]	sign_i, sign_q;

initial begin
	noise_i <= 11'd1579;
	noise_q <= 11'd826;

	sign_i	<= 6'd54;
	sign_q	<= 6'd41;

end


// always @(posedge clk) begin
// 	if(rst) begin
// 		noise_i <= 11'd1579;
// 		noise_q <= 11'd826;
// 		sign_i	<= 6'54;
// 		sign_q	<= 6'41;
// 	end
// 	else 

// end



endmodule
