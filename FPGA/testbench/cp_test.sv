module cp_test();


localparam CLK_PERIOD   = 30;

reg clk, rst, rst_2;

always
begin
 clk = 1'b1;
 #(CLK_PERIOD) clk = 1'b0;
 #(CLK_PERIOD);
end


initial begin

    rst <= 1'd1;
    repeat(10) begin
        @(posedge clk);
    end
    rst <= 1'd0;

    @(posedge clk);

end

initial begin

    rst_2 <= 1'd1;
    repeat(20) begin
        @(posedge clk);
    end
    rst_2 <= 1'd0;

	repeat(1054) begin
    @(posedge clk);
	end
	rst_2 <= 1'd1;

	repeat(2048) begin
    @(posedge clk);
	end
	rst_2 <= 1'd0;

end


//----------------------------------------------------------------------//
//							ЦП
//----------------------------------------------------------------------//

wire [11:0]	addcp_subc_i;
wire [11:0]	addcp_subc_q;
wire					addcp_subc_osop;		

add_cp #(12, 1024, 32)
add_cp_sub(
		.clk			(clk),
		.rst			(rst),
		.isop			(sop),
		.ival			(val),
		.in_real_data	(data),
		.in_imag_data	(data),
		.osop			(addcp_subc_osop),
		.out_real_data	(addcp_subc_i),
		.out_imag_data	(addcp_subc_q)	
);

reg [11:0]	addcp_subc_i_1;
reg [11:0]	addcp_subc_q_1;

wire			add_cp_sop; 
reg				add_cp_sop_1;

assign add_cp_sop 	= add_cp_sop_1 + addcp_subc_osop;

always @(posedge clk) begin
	if(rst) begin
		addcp_subc_i_1 	<= 12'd0;
		addcp_subc_q_1	<= 12'd0;
		add_cp_sop_1 	<= 1'd0;
	end
	else begin
		addcp_subc_i_1 	<= addcp_subc_i;
		addcp_subc_q_1 	<= addcp_subc_q;
		
		add_cp_sop_1 	<= addcp_subc_osop;
	end

end


find_max#(16, 12)
find_max_sub(
	.clk		(clk),
	.rst		(rst),
	.corr_in	(data),
	.thr_lvl	(12'd1050)
);


//----------------------------------------------------------------------//
//							Удаление ЦП
//----------------------------------------------------------------------//

wire [11:0]	remove_subc_i;
wire [11:0]	remove_subc_q;
wire		remove_subc_osop;
wire		remove_subc_oval;	
wire		remove_subc_oeop;	


interlayer_rmcp#(12, 1024, 32)
interlayer_rmcp_sub(
	.clk			(clk),
	.rst			(rst),
	.isop			(add_cp_sop),  
	.in_real_data	(addcp_subc_i_1),
	.in_imag_data	(addcp_subc_q_1),
	.osop			(),
	.oval			(),
	.out_real_data	(),
	.out_imag_data	()	
);


// remove_cp #(12, 1024, 32)
// remove_cp_sub(
// 		.clk				(clk)		,
// 		.rst				(rst)				,
// 		.isop				(addcp_subc_osop)	,   
// 		.in_real_data		(addcp_subc_i)		,
// 		.in_imag_data		(addcp_subc_q)		,
// 		.osop				(remove_subc_osop)	,
// 		.oeop				(remove_subc_oeop)	,
// 		.oval				(remove_subc_oval)	,
// 		.out_real_data		(remove_subc_i)		,
// 		.out_imag_data		(remove_subc_q)		);


reg [11:0]	data;

wire sop, val;

initial begin
	data <= '0;
end

assign sop = data == 11'd0 & ~ rst_2;
assign val = data < 1024 & ~ rst_2;


always @(posedge clk) begin
	if(rst_2)
		data <= '0;
	else if(data == 12'd1055) 
		data <= '0;
	else
		data <= data + 1'd1;
end

endmodule