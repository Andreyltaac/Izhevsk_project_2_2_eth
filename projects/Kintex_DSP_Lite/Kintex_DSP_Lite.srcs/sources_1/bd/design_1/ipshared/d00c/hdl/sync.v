`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Synchonization of external input signal
//////////////////////////////////////////////////////////////////////////////////


module sync(
    input   clk,
    input   reset_n,
    
    input   in,
    output  out
    );
    
    // Synchronization of input signal
    reg  [1:0]  sync = {2{1'b0}};

    always @(posedge clk)
    begin
        if (reset_n == 1'b0)
            sync <= {2{1'b0}};
        else
            sync <= {sync[0], in};
    end

    assign out = sync[1];

    
endmodule
