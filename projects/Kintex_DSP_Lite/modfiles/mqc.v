`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2022 15:21:39
// Design Name: 
// Module Name: mqc
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


module mqc(
    input clk,
    input sig_tcorr,
    input wire [31:0] Service_1_RX_0,
    input wire [31:0] Service_2_RX_1,
    input wire [31:0] Service_3_RX_2,
    input wire [31:0] Service_4_RX_3,
    input wire [31:0] Service_1_TX_4,
    input wire [31:0] Service_2_TX_5,
    input wire [31:0] Service_3_TX_6,
    input wire [31:0] Service_4_TX_7,
    input wire [31:0] DL_RX_LNK_8,
    input wire [31:0] DL_TX_LNK_9,
    input wire [31:0] UL_RX_LNK_10,
    input wire [31:0] UL_TX_LNK_11,
    input wire [31:0] AD9364_Samples,
    input wire [31:0] Power_meter_1,
    input wire [31:0] Power_meter_2,
    input wire [31:0] Power_meter_3,
    input wire [31:0] Power_meter_4,
    input wire [31:0] Tcorr,
    
    output reg [31:0] dt = 0,
    output reg [4:0] addr = 0,
    output reg reset = 0
    );

reg [17:0] datac = 0;
reg flag_tusur = 0;

always @(posedge clk) begin
    
    if (sig_tcorr) begin
        flag_tusur <= 1;
        reset <= 0;
        datac <= 0;
    end

    if (flag_tusur) begin
        dt <= Tcorr;
        addr <= 5'd17;
        
        if (datac == 200000) begin
            datac <= 0;
            flag_tusur <= 0;
            reset <= 1;
            addr <= 0;
        end
        else begin
            datac <= datac + 1;
            reset <= 0;
        end
    end
    else begin
        if ( addr == 1024 )
            addr <= 0;
    
        if (datac == 2 ) begin
            datac <= 0;
            reset <= 1;
            addr <= addr + 1;
        end
        else begin
            reset <= 0;
            datac <= datac + 1;
        end
    
        case(addr)
            5'd0: dt <= Service_1_RX_0;
            5'd1: dt <= Service_2_RX_1;
            5'd2: dt <= Service_3_RX_2;
            5'd3: dt <= Service_4_RX_3;
            5'd4: dt <= Service_1_TX_4;
            5'd5: dt <= Service_2_TX_5;
            5'd6: dt <= Service_3_TX_6;
            5'd7: dt <= Service_4_TX_7;
            5'd8: dt <= DL_RX_LNK_8;
            5'd9: dt <= DL_TX_LNK_9;
            5'd10: dt <= UL_RX_LNK_10;
            5'd11: dt <= UL_TX_LNK_11;
            5'd12: dt <= AD9364_Samples;
            5'd13: dt <= Power_meter_1;
            5'd14: dt <= Power_meter_2;
            5'd15: dt <= Power_meter_3;
            5'd16: dt <= Power_meter_4;
        endcase
    end
end

endmodule
