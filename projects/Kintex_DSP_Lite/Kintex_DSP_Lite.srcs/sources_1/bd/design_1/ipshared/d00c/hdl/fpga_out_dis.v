`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Disable fpga output signal
//////////////////////////////////////////////////////////////////////////////////


module fpga_out_dis(
    input   clk,
    input   reset_n,
    
    input   som_input,
    input   dis_input,
    
    output  fpga_output
    );
    
    // Disable som_input signal
    reg    fpga_output_reg = 1'b0;
    
    always @(posedge clk)
    begin
        if (reset_n == 1'b0)
            fpga_output_reg <= 1'b0;
        else
            fpga_output_reg <= (dis_input == 1'b1)? 1'b0 : som_input;
    end
    
    assign fpga_output = fpga_output_reg;
    
    
endmodule
