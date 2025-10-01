`timescale 1ns / 1ps



module MUX_0(

    input [15:0] data_input_i_ADC,
    input [15:0] data_input_q_ADC,
  
    input [15:0] data_input_i_LTE,
    input [15:0] data_input_q_LTE,
   
    input OP_MODE_ADC_LTE,
    
    output [15:0] data_output_i,
    output [15:0] data_output_q
    
    );
    
assign {data_output_q, data_output_i} = OP_MODE_ADC_LTE ? {data_input_q_LTE, data_input_i_LTE} : {data_input_q_ADC, data_input_i_ADC};

    
endmodule
