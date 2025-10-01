`timescale 1ns / 1ps

// ----- Module description -----
// Generation of tlast


module tlast_gen #(
        parameter   C_COUNTER_WIDTH = 32,
        parameter   C_NUMBER        = 16
    )
    (
        input   clk,
        input   reset,
        
        input   valid,
        input   rd_en,
        
        output  tlast,
        
        // Signals for debug
        output [C_COUNTER_WIDTH - 1 : 0] count_ext
    );
    
//    reg tlast_reg;
    reg [C_COUNTER_WIDTH - 1 : 0] count = {C_COUNTER_WIDTH{1'b0}};
    
    always @(posedge clk)
        if (reset) begin
//            tlast_reg <= 1'b0;
            count <= {C_COUNTER_WIDTH{1'b0}};
        end
        else begin
            if (valid && rd_en)
                count <= count + 1'b1;
            if (count == C_NUMBER) begin
//                tlast_reg <= 1'b0;
                count <= {C_COUNTER_WIDTH{1'b0}};
            end
        end
    
    assign tlast = (count == C_NUMBER - 1);
    
//    assign tlast = tlast_reg;
    
    // Assignment for debug
    assign count_ext = count;
    
    
endmodule
