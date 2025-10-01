`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Compare averaging value with set one
//////////////////////////////////////////////////////////////////////////////////


module comparator(
    input           clk,
    input           reset_n,
    
    input [11:0]    avg_value,
    input [11:0]    thld_value,
    
    output          over_thld
    );
    
    // Compare avg_value with thld_value
    reg     over_thld_reg = 1'b0;
    
    always @(posedge clk)
    begin
        if (reset_n == 1'b0)
        begin
            over_thld_reg <= 1'b0;
        end
        else
        begin
            over_thld_reg <= (avg_value > thld_value)? 1'b1 : 1'b0;
        end
    end
    
    assign over_thld = over_thld_reg;
    
    
endmodule
