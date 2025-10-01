module pipeline#(
   parameter PIPE_NUM = 2,
   parameter DATA_WIDTH = 32
)(
  input clock,
  input [DATA_WIDTH-1:0]data_in,
  output [DATA_WIDTH-1:0]data_out
);

 //synthesis translate_off
 initial begin
   if(PIPE_NUM < 1) begin
       $fatal("Error: PIPE_NUM must be greater than 0!");
   end
 end
 //synthesis translate_on

 reg [DATA_WIDTH-1:0]pipeline_reg[PIPE_NUM-1:0]/*synthesis preserve*/;

 assign data_out = pipeline_reg[PIPE_NUM-1];

 integer p;
 always @(posedge clock)begin
    pipeline_reg[0] <= data_in;
    for(p = 1;p < PIPE_NUM;p = p+1)begin
       pipeline_reg[p] <= pipeline_reg[p-1];
    end
 end

endmodule
