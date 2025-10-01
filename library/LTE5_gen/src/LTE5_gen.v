`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.12.2020 16:39:09
// Design Name: 
// Module Name: LTE5_gen
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


module LTE5_gen(
        output wire [15:0] LTE5_I, 
        output wire [15:0] LTE5_Q, 
         
        input wire enable,
        input wire clk
    );
    
wire [5:0] reg_0;
wire [14:0] addr;
	
LTE20_samples_I i_LTE20_samples_I (
                                   .clka(clk),
                                   .ena(enable),
                                   .addra(addr),
                                   .douta(LTE5_I)
                                   );


LTE20_samples_Q i_LTE20_samples_Q (
                                   .clka(clk),
                                   .ena(enable),
                                   .addra(addr),
                                   .douta(LTE5_Q)
                                   );


Count_addr Count_addr_inst (
                         .addr(addr),
                         .clk(clk),
                         .startbutton(enable)
                         );	 
    
endmodule
