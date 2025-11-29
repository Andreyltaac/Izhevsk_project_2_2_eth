module tvalid_fir_gen #(
parameter CLK_RATE = 276_480_000,
parameter SAMPLE_RATE = 30_720_000,
parameter DATA_W = 16 
)(
input  wire                   iclk,
input  wire                   irstn,

input wire  [DATA_W-1:0]	  idata_i,
input wire  [DATA_W-1:0]	  idata_q,

output wire [DATA_W-1:0]	  odata_i,
output wire [DATA_W-1:0]	  odata_q,
output wire                   tvalid
);

tvalid_generator 
#(
.CLK_RATE    (CLK_RATE),
.SAMPLE_RATE (SAMPLE_RATE),
.DATA_W      (DATA_W)
)
tvalid_generator_sub
(
.iclk    (iclk),
.irstn   (irstn),
.oval    (tvalid),

.idata_i (idata_i),
.idata_q (idata_q),

.odata_i (odata_i),
.odata_q (odata_q)
);
              
endmodule
