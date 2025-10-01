`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.12.2019 08:51:52
// Design Name: 
// Module Name: Live_status
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


module Live_status(
    input   clk,
    input   reset_n,
    
    output  live_status
    );
    
    // --------------------------------------------------------------------------------------
    // Functions
    // --------------------------------------------------------------------------------------
    // N/A
    
    // --------------------------------------------------------------------------------------
    // Local parameters
    // --------------------------------------------------------------------------------------
    localparam  integer C_PERIOD_MS    =   500;             // period value in milliseconds
    
    // --------------------------------------------------------------------------------------
    // Main
    // --------------------------------------------------------------------------------------
    // Count clock cycles for generation of live_status signal with period C_PERIOD_MS
    reg         live_status_reg = 1'b0;
    reg [31:0]  count_clk_cycl  = 32'd0;
    
    always @(posedge clk) begin
        if (! reset_n) begin
            live_status_reg <= 1'b0;
            count_clk_cycl  <= 32'd0;
        end
        else begin
            if (count_clk_cycl == ((C_PERIOD_MS * 100_000) - 1)) begin       // 1 ms is 100 000 clock cycles at 100 MHz
                    count_clk_cycl  <= 32'd0;
                    live_status_reg <= ~live_status_reg;
                end
            else begin
                count_clk_cycl <= count_clk_cycl + 1'b1;
            end
        end
    end
    
    assign live_status = live_status_reg;
    
endmodule
