`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2019 02:13:40 PM
// Design Name: 
// Module Name: Count_addr
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


module Count_addr
    (
    input clk,  
    input startbutton, //Тумблер запуска
    output reg [31:0] addr = 0
    );
    
always @(posedge clk) 
begin
      if (startbutton == 1) 
          if (addr <= 8191)
             begin
             addr <= addr[30:0] + 1'b1;
             if (addr == 8191)
                 addr <= 0;
             end
end
endmodule
