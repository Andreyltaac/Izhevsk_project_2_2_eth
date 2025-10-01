`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2020 10:53:39
// Design Name: 
// Module Name: Samples_to_FIFO
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


module Samples_to_FIFO #(
    parameter   C_SAMPLE_NUMBER = 2048          // Number of samples to transmit to SOM
)
(
    input       clk,
    input       reset_n,
    
    input       acq_smpls,
    input       data_valid,
    
    output      fifo_wr_en,
    
    // Signals for debug
    output          acq_smpls_frnt_ext, 
    output [15:0]   count_smpls_ext, 
    output          last_smpl_ext

    );

    // -----------------------------------------------------------------------------
    // Functions
    // -----------------------------------------------------------------------------
    // N/A
    
    // --------------------------------------------------------------------------------------
    // Parameters
    // --------------------------------------------------------------------------------------
    // N/A
    
    // --------------------------------------------------------------------------------------
    // Main
    // --------------------------------------------------------------------------------------
    
    // Positive edge detector of acq_smpls signal
    wire        acq_smpls_frnt;
    reg         acq_smpls_dly = 1'b0;
    
    always @(posedge clk) begin
        if (! reset_n) begin
            acq_smpls_dly <= 1'b0;
        end
        else begin
            acq_smpls_dly <= acq_smpls;
        end   // if reset_n
    end

    assign acq_smpls_frnt = acq_smpls & ~acq_smpls_dly;

    // Counter for samples
    reg [15:0]  count_smpls = 16'd0;
    wire        last_smpl;
    
    always @(posedge clk) begin
        if (! reset_n) begin
            count_smpls = 16'd0;
        end
        else begin
            if (fifo_wr_en) begin
                if (count_smpls == C_SAMPLE_NUMBER - 1) begin
                    count_smpls <= 16'd0;
                end
                else begin
                    count_smpls <= count_smpls + 1'b1;
                end
            end
        end
    end
    
    assign  last_smpl = (count_smpls == C_SAMPLE_NUMBER - 1);

    // Generation of fifo_wr_en signal
    wire        fifo_wr_en_int;
    
    FDRE #(
        .INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
    ) FDRE_inst (
        .Q(fifo_wr_en_int),         // 1-bit Data output
        .C(clk),                // 1-bit Clock input
        .CE(acq_smpls_frnt),    // 1-bit Clock enable input
        .R(last_smpl),          // 1-bit Synchronous reset input
        .D(1'b1)                // 1-bit Data input
    );
    
    assign fifo_wr_en = fifo_wr_en_int & data_valid;
    
    
    // Assignments for debug
    assign acq_smpls_frnt_ext   = acq_smpls_frnt;
    assign count_smpls_ext      = count_smpls;
    assign last_smpl_ext        = last_smpl;
    
endmodule
