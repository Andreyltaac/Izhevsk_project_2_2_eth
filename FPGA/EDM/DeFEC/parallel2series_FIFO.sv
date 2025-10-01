module parallel2series_FIFO(
        input									clk_h, 
        input									rst,
        input									ival,
        input logic		[7:0]					ibit,
        output logic							oval,
		output logic							oreq,
        output logic							obit        
);



logic [2:0] 			count;
logic [7:0]             buffer;
logic                   buf_en;


initial begin
		count <= '0;
		buf_en <= '0;
end

assign obit = oval ? buffer[count] : 1'd0;
assign oval = buf_en;
assign oreq = ~buf_en & count == 3'd0 ? 1'd1: 1'd0;


always @(posedge clk_h) begin
    if(rst) begin
        buf_en      <= '0;
		buffer		<= '0;
    end
    else if(ival & oreq) begin
        buffer      <= ibit;
        buf_en      <= '1;
    end
    else if(count == 3'd7) begin
        buf_en      <= '0;
		buffer		<= '0;
    end
end

always @(posedge clk_h) begin
    if(rst)
		count <= '0;
    else if(buf_en) 
		count <= count + 1'd1;
    else
		count <= '0;
end

endmodule