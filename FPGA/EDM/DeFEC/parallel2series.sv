module parallel2series #(parameter maxWordOut = 6)(
        input									clk_h, 
        input									rst,
        input									ival,
        input				[3:0]				modOrder,
        input  logic signed	[4:0]				ibit        [maxWordOut],
        output logic							oval,
        output logic signed	[4:0]				obit        
);

localparam count_depth = $clog2(maxWordOut);
localparam e_count = 4'd0;
localparam s_count = maxWordOut - 1'd1;


logic [count_depth-1:0] count;
logic signed[4:0]             buffer  [maxWordOut];
logic      [3:0]             now_order;
logic                   buf_en;

initial begin
		count <= s_count;
end

always_comb begin
    if(count < now_order && buf_en) begin
        oval = '1;
        obit = buffer[count];
    end
    else begin
        oval = '0;
        obit = '0;
    end
end

always @(posedge clk_h) begin
    if(rst) begin
        buf_en      <= '0;
        now_order   <= '0;
    end
    else if(ival) begin
        buffer      <= ibit;
        buf_en      <= ival;
        now_order   <= modOrder;
    end
    else if(count == e_count) begin
        buf_en      <= '0;
        now_order   <= '0;
    end
end

always @(posedge clk_h) begin
    if(rst) begin
		count <= s_count;
    end
    if(buf_en) begin
        if(count ==e_count)
			count <= s_count;
        else
            count <= count - 1'd1;
    end
end

endmodule