module ram_preamb#(
	parameter int DEPTH_LOG2	= 11,   // log2(2048)
    parameter int WORD_W		= 24,
    parameter int NUM_BANDS		= 5
)
(
    input  logic                      		clk,
    input  logic [DEPTH_LOG2-1:0]     		addr,
    input  logic [$clog2(NUM_BANDS)-1:0] 	band,
    output logic [WORD_W-1:0]         		odat
);

`include "../../input_data/preamb_corr_full.svh";

localparam int DEPTH = NUM_BANDS * (1 << DEPTH_LOG2); 


    logic [$clog2(DEPTH)-1:0] eff_addr;
    always_comb begin
        unique case (band)
            3'd1: eff_addr = addr + 0;
            3'd2: eff_addr = addr + 2048;
            3'd3: eff_addr = addr + 4096;
            3'd4: eff_addr = addr + 6144;
            3'd5: eff_addr = addr + 8192;
            default: eff_addr = addr + 8192;
        endcase
    end

    always_ff @(posedge clk)
        odat <= sig_pr_full[eff_addr];

endmodule