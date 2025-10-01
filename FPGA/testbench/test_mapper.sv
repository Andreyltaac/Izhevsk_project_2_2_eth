`timescale 100ps/100ps
module test_mapper();


localparam CLK_PERIOD   = 30;
localparam CLK_PERIOD_I  = 15;
localparam CLK_PERIOD_H = 5;
localparam CLK_PERIOD_HH = 3;

reg clk, rst, clk_h, clk_I, clk_hh;

int fd_out,fd_out_2;

initial begin

    fd_out = $fopen("D:\\FPGA\\My_Models\\FPGA\\Data_tx.txt","w");
    fd_out_2 = $fopen("D:\\FPGA\\Modem_OFDM\\FPGA\\Cyclone\\Matlab\\Data_after_eq.txt","w");

end

reg [3:0] SS;
reg [2:0] M;



always
begin
 clk = 1'b1;
 #(CLK_PERIOD) clk = 1'b0;
 #(CLK_PERIOD);
end

always
begin
 clk_I = 1'b1;
 #(CLK_PERIOD_I) clk_I = 1'b0;
 #(CLK_PERIOD_I);
end

always
begin
 clk_h = 1'b1;
 #(CLK_PERIOD_H) clk_h = 1'b0;
 #(CLK_PERIOD_H);
end

always
begin
 clk_hh = 1'b1;
 #(CLK_PERIOD_HH) clk_hh = 1'b0;
 #(CLK_PERIOD_HH);
end

initial begin

	rst <= 1'd1;
	repeat(2500) begin
		@(posedge clk);
	end
	rst <= 1'd0;

	repeat(5000) begin
		@(posedge clk);
	end
	rst <= 1'd1;

	repeat(2500) begin
		@(posedge clk);
	end
	rst <= 1'd0;

end

localparam MaxOrderModulat 	= 6;
localparam fft_depth        = 4;


wire req;
reg val;

wire [15:0]	sub_i, sub_q;






only_tx
only_tx_sub(
.clk_l				(clk),
.clk_h				(clk_h),
.rst				(~rst),
.ss_in				(SS),
.m_in				(M),
.s_axis_tdata		(counter),
.s_axis_tvalid		(val),
.s_axis_tlast		(),
.s_axis_tuser		(),
.s_axis_tready		(),
.s_axis_aclk		(),
.tx_i_axis_tdata	(sub_i),	
.tx_q_axis_tdata	(sub_q));



// always @(posedge clk) begin
// 	if(data_r)
// 		$fwrite(fd_out, "%b%b \n", sub_i, sub_q);
// end


/*



only_rx
only_rx_sub(
	.clk_l				(clk),
	.clk_h				(clk_h),
	.clk_hh				(clk_hh),
	.rst				(~rst),
	.ss_in				(SS),
	.m_in				(M),
	.thr_lvl			(24'd500),
	.addr_shft			(14'd8519),
	.rx_i_axis_tdata	(sub_i),
	.rx_q_axis_tdata	(sub_q),
	.m_axis_tdata		(),
	.m_axis_tvalid		(),
	.N_sop_detect		(),
	.m_axis_tlast		(),
	.m_axis_tuser		(),
	.m_axis_tready		(),
	.m_axis_aclk		()
);
*/
reg data_r;

always @(posedge clk) begin
if(rst)
	data_r<= 1'd0;
else if(counter == 12'd2201)
	data_r <= 1'd1;
end


reg [11:0]	counter;

always @(posedge clk) begin
if(rst)
	counter <= 12'd0;
else
	counter <= counter + 12'd1;
end





	initial begin
        
        SS <= 4'd1;
        M  <= 3'd2;
		val <= 1'd1;

		#1000

		SS <= 4'd1;
        M  <= 3'd4;
		val <= 1'd1;
	end









endmodule