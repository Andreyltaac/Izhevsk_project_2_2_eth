`timescale 1ns / 1ps


module MUXes(
    input wire  OP_MODE_FSC_FSR, 
    input wire  LTE_SIMULATION_MODE,

    input wire [31:0] LTE_Simulation,

    input wire [31:0] Downlink_TX_Service_1,
    input wire [31:0] Downlink_TX_Service_2,
    input wire [31:0] Downlink_TX_Service_3,
    input wire [31:0] Downlink_TX_Service_4,

    input wire [31:0] Uplink_TX_Service_1,
    input wire [31:0] Uplink_TX_Service_2,
    input wire [31:0] Uplink_TX_Service_3,
    input wire [31:0] Uplink_TX_Service_4,

    input wire [31:0] Uplink_UL_TX_Link,
    input wire [31:0] Downlink_UL_TX_Link,
   
    input wire clk,
    
    output reg [15:0] DL_TX_Service_1_i,
    output reg [15:0] DL_TX_Service_1_q,
    output reg [15:0] DL_TX_Service_2_i,
    output reg [15:0] DL_TX_Service_2_q,
    output reg [15:0] DL_TX_Service_3_i,
    output reg [15:0] DL_TX_Service_3_q,
    output reg [15:0] DL_TX_Service_4_i,
    output reg [15:0] DL_TX_Service_4_q,
            
    output reg [31:0] UL_TX_Link

    );
    
always @(posedge clk)
begin   
    if(LTE_SIMULATION_MODE & !OP_MODE_FSC_FSR)
       begin
           {DL_TX_Service_1_q,DL_TX_Service_1_i} <= LTE_Simulation;
           {DL_TX_Service_2_q,DL_TX_Service_2_i} <= LTE_Simulation;
           {DL_TX_Service_3_q,DL_TX_Service_3_i} <= LTE_Simulation;
           {DL_TX_Service_4_q,DL_TX_Service_4_i} <= LTE_Simulation;
            UL_TX_Link <= (OP_MODE_FSC_FSR ? Downlink_UL_TX_Link : Uplink_UL_TX_Link);
       end
    else   
       begin    
           {DL_TX_Service_1_q,DL_TX_Service_1_i} <= OP_MODE_FSC_FSR ? Uplink_TX_Service_1 : Downlink_TX_Service_1;
           {DL_TX_Service_2_q,DL_TX_Service_2_i} <= OP_MODE_FSC_FSR ? Uplink_TX_Service_2 : Downlink_TX_Service_2;
           {DL_TX_Service_3_q,DL_TX_Service_3_i} <= OP_MODE_FSC_FSR ? Uplink_TX_Service_3 : Downlink_TX_Service_3;
           {DL_TX_Service_4_q,DL_TX_Service_4_i} <= OP_MODE_FSC_FSR ? Uplink_TX_Service_4 : Downlink_TX_Service_4;
            UL_TX_Link <= (OP_MODE_FSC_FSR ? Downlink_UL_TX_Link : Uplink_UL_TX_Link);
       end     
end       
    
       
endmodule
