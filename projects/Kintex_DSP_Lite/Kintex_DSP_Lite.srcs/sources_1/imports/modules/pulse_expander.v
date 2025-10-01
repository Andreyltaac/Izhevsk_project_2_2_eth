module pulse_expander#(
    parameter EXPAND = 128
)(
    input clock,
    input reset,
    input in_sig,

    output out_sig
);

 //synthesis translate_off
 initial begin
   if(EXPAND < 1) begin
       $fatal("Error: EXPAND must be greater than 0!");
   end
 end
 //synthesis translate_on

reg [31:0]  counter;
reg      lock;
reg last_lockR;

wire first_lock;
wire last_lock;
//wire out_lock;


assign first_lock = in_sig;
assign last_lock  = last_lockR;

always@(posedge clock or negedge reset) begin
    if (!reset)begin
        counter <= 0;
        lock    <= 0;
        last_lockR <= 0;
    end
    else if ( lock == 0 )begin
        if( in_sig == 1 )begin
            lock <= 1;
            counter <= counter + 1;
            last_lockR <= 1;
        end
    end
    else begin
        if ( counter == EXPAND )begin
            counter     <= 0;
            lock        <= 0;
            last_lockR   <= 0;
        end
        else begin
            counter <= counter + 1;
        end
    end
end

assign out_sig = first_lock | last_lock;

endmodule

