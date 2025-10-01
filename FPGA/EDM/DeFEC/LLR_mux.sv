module LLR_mux (
        input							clk_h			, 
        input							rst				,
        input							ival			,
		input							isop			,
		input							ieop			,
		input							ieof			,
        input  logic	[4:0]			ibit 			,
        output logic					oval			,
		output logic					osop			,
		output logic					oeop			,
		output logic					oeof			,
        output logic	[4:0]			obit	[0:7] 	   
);




reg [2:0]	counter;
reg			ready_buf, ieop_b, isop_b, ieof_b;

reg	[4:0] buffer [0:7];




always @(posedge clk_h)
	if(rst)
		counter <= '0;
	else if(ival) 
		counter <= counter + 1'd1;

always @(posedge clk_h)
	if(rst) begin
		ieof_b <= '0;
	end
	else if(ival && counter == 3'd7) begin
		ieof_b <= ieof;
	end

always @(posedge clk_h)
	if(rst) begin
		ieop_b <= '0;
	end
	else if(ival && counter == 3'd7) begin
		ieop_b <= ieop;
	end

always @(posedge clk_h)
	if(rst) begin
		isop_b <= '0;
	end
	else if(ival && counter == 3'd0) begin
		isop_b <= isop;
	end


always @(posedge clk_h)
	if(rst)
		ready_buf <= '0;
	else if(ival & counter == 3'd7)
		ready_buf <= '1;
	else
		ready_buf <= '0;


always @(posedge clk_h)
	if(rst)
		for(int i = 0; i < 8; i++)
			buffer[i] <= '0;
	else if(ival)
		buffer[counter] <= ibit;


always @(posedge clk_h)
	if(rst) begin
		oval <= '0;
		osop <= '0;
		oeop <= '0;
		oeof <= '0;
		for(int i = 0; i < 8; i++)
			obit[i] <= '0;
	end
	else if(counter == 3'd0 & ready_buf) begin
		obit <= buffer;
		oval <= '1;
		osop <= isop_b;
		oeop <= ieop_b;
		oeof <= ieof_b;
	end
	else begin
		oval <= '0;
		osop <= '0;
		oeop <= '0;
		oeof <= '0;
		for(int i = 0; i < 8; i++)
			obit[i] <= '0;
	end

endmodule