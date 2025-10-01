`timescale 1ns / 1ps

module Frequency_value
//    #(
//parameter integer SYMBOL_DUR = 32'd15, //SYMBOL DURATION IN TACTS
//parameter integer DEALY_VAL = SYMBOL_DUR*35 //DELAY VALUE IN SYMBOL
//    )
    (
    input clk, //Clock
    input [31:0] symbol_dur, 
    input [31:0] mark_frq, //Hi frequency
    input [31:0] space_frq, //Low frquency
    input [31:0] word_value, //Word for transmission
    output reg [31:0] out_val = 0 //Data to DDS
    );

reg send_busy = 0; //Symbol formation module busy
reg start = 0; //Start send message
reg [31:0] tick_counter = 0; //Tick counter
reg [7:0] bit_counter = 0; //Bit counter
reg [31:0] delay_counter = 0; //Delay between messages

wire [33:0] word_value_internal = {1'b1,word_value,1'b0};
wire [31:0] delay_val = symbol_dur*35;


//Modulation control
always @(posedge clk)
begin
          if(!start & delay_counter == 0)
             begin
                start <= 1; //Start operation
             end
             
          if(delay_counter <= 5*delay_val - 1)
             begin
                delay_counter <= delay_counter[30:0] + 1'b1;
                if(delay_counter == 5*delay_val - 1) 
                  begin
                      delay_counter <= 0;
                  end
             end
                   
          if(bit_counter == 33 & tick_counter == 0)
              begin
                 start <= 0;
              end   
end
//Modulation control


//Control of Symbol formation
always @(posedge clk)
begin
           if(bit_counter <= 34 & start & !send_busy)
              begin
              bit_counter <= bit_counter[6:0] + 1'b1;
              end
              
           if(bit_counter == 34)
              begin
              bit_counter <= 0;   
              end
end
//Control of Symbol formation


//Symbol formation
always @(posedge clk)
begin
           if(start)
              begin
              send_busy <= 1;
              if(word_value_internal[bit_counter]) //1             
                        if(tick_counter <= symbol_dur - 1)
                            begin
                               tick_counter <= tick_counter[30:0] + 1'b1;
                               out_val <= mark_frq;
                            end
                      else  
                            begin
                            tick_counter <= 0;
                            send_busy <= 0;
                            end      
              else
                        if(tick_counter <= symbol_dur - 1)
                            begin
                               tick_counter <= tick_counter[30:0] + 1'b1;
                               out_val <= space_frq; 
                            end
                      else  
                            begin
                            tick_counter <= 0;
                            send_busy <= 0;
                            end 
              end         
end
//Symbol formation


endmodule
  
