`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2025 15:34:21
// Design Name: 
// Module Name: tvalid_generator
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


module tvalid_generator #(
parameter int CLK_RATE = 276_480_000,
parameter int SAMPLE_RATE = 30_720_000,
parameter int DATA_W = 16
)(
input                               iclk,
input                               irstn,
output logic                        oval,

input	     [DATA_W-1:0]			idata_i,
input	     [DATA_W-1:0]			idata_q,

output logic [DATA_W-1:0]			odata_i,
output logic [DATA_W-1:0]			odata_q
);
localparam int RATIO = CLK_RATE / SAMPLE_RATE;
localparam int CNT_W = $clog2(RATIO); 
logic [CNT_W-1:0] cnt = 0;

always_ff @(posedge iclk or negedge irstn) begin
if (!irstn) begin
    cnt  <= '0;
    oval <=  0;
    odata_i <= '0;
    odata_q <= '0;
end else begin
if (cnt == RATIO-1) begin
    cnt     <= '0;
    odata_i <= idata_i;
    odata_q <= idata_q;
    oval    <= 1;
end else begin
    cnt <= cnt + 1;
    oval <= 0;
end
end
end

endmodule   
    
    

