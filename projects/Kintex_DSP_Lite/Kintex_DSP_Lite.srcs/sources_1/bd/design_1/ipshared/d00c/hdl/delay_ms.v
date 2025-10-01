`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Generation of input signal delay for surge current passing
//////////////////////////////////////////////////////////////////////////////////


module delay_ms #(
    parameter   C_CLK_MHZ   = 100,
    parameter   C_DELAY_MS  = 2
)
(
    input   clk,
    input   reset_n,
    
    input   in_signal,
    output  delayed
    
    // Signals for debug
//    output [31:0] clk_count_ext
);
    
	// Counter for input signal delay
	reg [31:0] clk_count = 32'd0;
	
	always @(posedge clk)
        if (reset_n == 1'b0)
            clk_count <= 32'd0;
        else
            if (in_signal == 1'b0)
                clk_count <= 32'd0;
            else
                if (clk_count == C_DELAY_MS * C_CLK_MHZ * 1000)     // ms
                    clk_count <= clk_count;
                else
                    clk_count <= clk_count + 1'b1;
    
	// Generation of delayed input signal
	reg    delayed_reg = 1'b0;
	
	always @(posedge clk)
        if (reset_n == 1'b0)
            delayed_reg <= 1'b0;
        else
            if (in_signal == 1'b0)
                delayed_reg <= 1'b0;
            else
                if (clk_count == C_DELAY_MS * C_CLK_MHZ * 1000)     // ms
                    delayed_reg <= 1'b1;
    
    assign delayed = delayed_reg;
    
    
    // Assignments for debug
//    assign clk_count_ext = clk_count;
    
    
endmodule
