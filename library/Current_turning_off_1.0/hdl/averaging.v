`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Averaging of input data on 16 values
//////////////////////////////////////////////////////////////////////////////////


module averaging(
    input           clk,
    input           reset_n,
    
    input           enable,
    input           over_thld,
    
    input [11:0]    adc_value,
    input           valid,
    
    output [11:0]   avg_value
    
    // Signals for debug
//    output [12:0]   sum_0_0,
//    output [12:0]   sum_0_1,
//    output [12:0]   sum_0_2,
//    output [12:0]   sum_0_3,
//    output [12:0]   sum_0_4,
//    output [12:0]   sum_0_5,
//    output [12:0]   sum_0_6,
//    output [12:0]   sum_0_7,
//    output [13:0]   sum_1_0,
//    output [13:0]   sum_1_1,
//    output [13:0]   sum_1_2,
//    output [13:0]   sum_1_3,
//    output [14:0]   sum_2_0,
//    output [14:0]   sum_2_1,
//    output [15:0]   sum_3_0
    );
    
    // Shift registers for 16 input data
    reg [11:0] value_reg_0   = 12'd0;
    reg [11:0] value_reg_1   = 12'd0;
    reg [11:0] value_reg_2   = 12'd0;
    reg [11:0] value_reg_3   = 12'd0;
    reg [11:0] value_reg_4   = 12'd0;
    reg [11:0] value_reg_5   = 12'd0;
    reg [11:0] value_reg_6   = 12'd0;
    reg [11:0] value_reg_7   = 12'd0;
    reg [11:0] value_reg_8   = 12'd0;
    reg [11:0] value_reg_9   = 12'd0;
    reg [11:0] value_reg_10  = 12'd0;
    reg [11:0] value_reg_11  = 12'd0;
    reg [11:0] value_reg_12  = 12'd0;
    reg [11:0] value_reg_13  = 12'd0;
    reg [11:0] value_reg_14  = 12'd0;
    reg [11:0] value_reg_15  = 12'd0;
    
    always @(posedge clk)
    begin
        if (reset_n == 1'b0)
        begin
            value_reg_0  <= 12'd0;
            value_reg_1  <= 12'd0;
            value_reg_2  <= 12'd0;
            value_reg_3  <= 12'd0;
            value_reg_4  <= 12'd0;
            value_reg_5  <= 12'd0;
            value_reg_6  <= 12'd0;
            value_reg_7  <= 12'd0;
            value_reg_8  <= 12'd0;
            value_reg_9  <= 12'd0;
            value_reg_10 <= 12'd0;
            value_reg_11 <= 12'd0;
            value_reg_12 <= 12'd0;
            value_reg_13 <= 12'd0;
            value_reg_14 <= 12'd0;
            value_reg_15 <= 12'd0;
        end
        else
        begin
            if (enable == 1'b0)
            begin
                value_reg_0  <= 12'd0;
                value_reg_1  <= 12'd0;
                value_reg_2  <= 12'd0;
                value_reg_3  <= 12'd0;
                value_reg_4  <= 12'd0;
                value_reg_5  <= 12'd0;
                value_reg_6  <= 12'd0;
                value_reg_7  <= 12'd0;
                value_reg_8  <= 12'd0;
                value_reg_9  <= 12'd0;
                value_reg_10 <= 12'd0;
                value_reg_11 <= 12'd0;
                value_reg_12 <= 12'd0;
                value_reg_13 <= 12'd0;
                value_reg_14 <= 12'd0;
                value_reg_15 <= 12'd0;
            end
            else
            begin
                if (over_thld == 1'b0 && valid == 1'b1)
                begin
                    value_reg_0  <= adc_value;
                    value_reg_1  <= value_reg_0;
                    value_reg_2  <= value_reg_1;
                    value_reg_3  <= value_reg_2;
                    value_reg_4  <= value_reg_3;
                    value_reg_5  <= value_reg_4;
                    value_reg_6  <= value_reg_5;
                    value_reg_7  <= value_reg_6;
                    value_reg_8  <= value_reg_7;
                    value_reg_9  <= value_reg_8;
                    value_reg_10 <= value_reg_9;
                    value_reg_11 <= value_reg_10;
                    value_reg_12 <= value_reg_11;
                    value_reg_13 <= value_reg_12;
                    value_reg_14 <= value_reg_13;
                    value_reg_15 <= value_reg_14;
                end
            end
        end
    end
    
    // Add 16 data from shift register
    reg [12:0]  sum_reg_0_0 = 13'd0;
    reg [12:0]  sum_reg_0_1 = 13'd0;
    reg [12:0]  sum_reg_0_2 = 13'd0;
    reg [12:0]  sum_reg_0_3 = 13'd0;
    reg [12:0]  sum_reg_0_4 = 13'd0;
    reg [12:0]  sum_reg_0_5 = 13'd0;
    reg [12:0]  sum_reg_0_6 = 13'd0;
    reg [12:0]  sum_reg_0_7 = 13'd0;

    reg [13:0]  sum_reg_1_0 = 14'd0;
    reg [13:0]  sum_reg_1_1 = 14'd0;
    reg [13:0]  sum_reg_1_2 = 14'd0;
    reg [13:0]  sum_reg_1_3 = 14'd0;

    reg [14:0]  sum_reg_2_0 = 15'd0;
    reg [14:0]  sum_reg_2_1 = 15'd0;

    reg [15:0]  sum_reg_3_0 = 16'd0;

    always @(posedge clk)
    begin
        if (reset_n == 1'b0)
        begin
            sum_reg_0_0 <= 13'd0;
            sum_reg_0_1 <= 13'd0;
            sum_reg_0_2 <= 13'd0;
            sum_reg_0_3 <= 13'd0;
            sum_reg_0_4 <= 13'd0;
            sum_reg_0_5 <= 13'd0;
            sum_reg_0_6 <= 13'd0;
            sum_reg_0_7 <= 13'd0;
            
            sum_reg_1_0 <= 14'd0;
            sum_reg_1_1 <= 14'd0;
            sum_reg_1_2 <= 14'd0;
            sum_reg_1_3 <= 14'd0;
            
            sum_reg_2_0 <= 15'd0;
            sum_reg_2_1 <= 15'd0;
            
            sum_reg_3_0 <= 16'd0;
        end
        else
        begin
            if (enable == 1'b0)
            begin
                sum_reg_0_0 <= 13'd0;
                sum_reg_0_1 <= 13'd0;
                sum_reg_0_2 <= 13'd0;
                sum_reg_0_3 <= 13'd0;
                sum_reg_0_4 <= 13'd0;
                sum_reg_0_5 <= 13'd0;
                sum_reg_0_6 <= 13'd0;
                sum_reg_0_7 <= 13'd0;
                
                sum_reg_1_0 <= 14'd0;
                sum_reg_1_1 <= 14'd0;
                sum_reg_1_2 <= 14'd0;
                sum_reg_1_3 <= 14'd0;
                
                sum_reg_2_0 <= 15'd0;
                sum_reg_2_1 <= 15'd0;
                
                sum_reg_3_0 <= 16'd0;
            end
            else
            begin
                sum_reg_0_0 <= value_reg_0 + value_reg_1;
                sum_reg_0_1 <= value_reg_2 + value_reg_3;
                sum_reg_0_2 <= value_reg_4 + value_reg_5;
                sum_reg_0_3 <= value_reg_6 + value_reg_7;
                sum_reg_0_4 <= value_reg_8 + value_reg_9;
                sum_reg_0_5 <= value_reg_10 + value_reg_11;
                sum_reg_0_6 <= value_reg_12 + value_reg_13;
                sum_reg_0_7 <= value_reg_14 + value_reg_15;

                sum_reg_1_0 <= sum_reg_0_0 + sum_reg_0_1;
                sum_reg_1_1 <= sum_reg_0_2 + sum_reg_0_3;
                sum_reg_1_2 <= sum_reg_0_4 + sum_reg_0_5;
                sum_reg_1_3 <= sum_reg_0_6 + sum_reg_0_7;

                sum_reg_2_0 <= sum_reg_1_0 + sum_reg_1_1;
                sum_reg_2_1 <= sum_reg_1_2 + sum_reg_1_3;

                sum_reg_3_0 <= sum_reg_2_0 + sum_reg_2_1;
            end
        end
    end
    
    // Delete final sum on 16 (<< 4)
    assign avg_value = sum_reg_3_0[15:4];
    
    
    // Assignments for debug
//    assign  sum_0_0 = sum_reg_0_0;
//    assign  sum_0_1 = sum_reg_0_1;
//    assign  sum_0_2 = sum_reg_0_2;
//    assign  sum_0_3 = sum_reg_0_3;
//    assign  sum_0_4 = sum_reg_0_4;
//    assign  sum_0_5 = sum_reg_0_5;
//    assign  sum_0_6 = sum_reg_0_6;
//    assign  sum_0_7 = sum_reg_0_7;
//    assign  sum_1_0 = sum_reg_1_0;
//    assign  sum_1_1 = sum_reg_1_1;
//    assign  sum_1_2 = sum_reg_1_2;
//    assign  sum_1_3 = sum_reg_1_3;
//    assign  sum_2_0 = sum_reg_2_0;
//    assign  sum_2_1 = sum_reg_2_1;
//    assign  sum_3_0 = sum_reg_3_0;
    
            
endmodule
