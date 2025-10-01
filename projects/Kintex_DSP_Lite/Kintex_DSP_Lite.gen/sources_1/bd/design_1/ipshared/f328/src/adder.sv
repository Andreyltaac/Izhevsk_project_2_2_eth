module adder
#(
  parameter int  pDAT_W = 12,
  parameter int  pDAT_Num   = 2048
  
)
(
   input  logic  iclk,
  //
   input  logic  iena,
   input  logic  signed [pDAT_W-1:0]  idat 	[0:pDAT_Num-1],
  //
   output  logic oena,
   output  logic signed [pDAT_W-1:0]  odat
);
////////////////////////////////////////////////////////////////////////////////////////////// localparam
 localparam int cADDER_NUM_PER_STAGE = pDAT_Num/2;
 localparam int cADDER_STAGE_NUM     = $clog2(pDAT_Num);
////////////////////////////////////////////////////////////////////////////////////////////// logic
 logic signed [pDAT_W-1 : 0] acc[0 : cADDER_STAGE_NUM-1][0 : cADDER_NUM_PER_STAGE-1];


////////////////////////////////////////////////////////////////////////////////////////////// assign
 assign odat = acc[cADDER_STAGE_NUM-1][0];



////////////////////////////////////////////////////////////////////////////////////////////// code

 always_ff @(posedge iclk) begin
    oena <= iena;
  end

  genvar i, stage;
  generate
    for (stage = 0; stage < cADDER_STAGE_NUM; stage++) begin : adder_stage_gen
      for (i = 0; i < (cADDER_NUM_PER_STAGE >> stage); i++) begin : adder_in_stage_gen
        if (stage == 0) begin : stage_gen

          always_ff @(posedge iclk) begin
             begin
              acc[stage][i] <= idat[2*i] + idat[2*i+1];
            end
          end

        end
        else begin

          always_ff @(posedge iclk) begin
            begin
              acc[stage][i] <= acc[stage-1][2*i] + acc[stage-1][2*i+1];
            end
          end
        end // stage_gen
      end // adder_in_stage_gen
    end // adder_stage_gen
    endgenerate
	
  endmodule
  