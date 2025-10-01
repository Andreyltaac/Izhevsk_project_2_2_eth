`timescale 100ps/100ps
module xcorr_tb();

localparam CLK_PERIOD   = 30;

reg clk, rst;


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

   repeat(3000) begin
        @(posedge clk);
    end

	rst <= 1'd1;
	repeat(10) begin
        @(posedge clk);
    end
    rst <= 1'd0;
end


wire sop, filt_osop;

wire signed [5:0]	delay_sop;

reg  [14:0]	n_sps;

assign sop = count == count_2 + 1;

filter_sop#(10, 90, 20)
filter_sop_sub(
	.clk		(clk),
	.rst		(rst),
	.isop		(sop),
	.n_sps		(n_sps),
	.osop		(filt_osop),
	.delay_sop	(delay_sop)
);

interlayer_rmcp#(12, 90, 20)
interlayer_rmcp_sub(
	.clk			(clk),
	.rst			(rst),
	.isop			(filt_osop),  
	.in_real_data	(count),
	.in_imag_data	(count),
	.delay_sop		(delay_sop),
	.osop			(),
	.oval			(),
	.out_real_data	(),
	.out_imag_data	(),
	.count_frame	()
);


reg [11:0] count, count_2;


always @(posedge clk) begin
	if(rst)
		count_2 <= 150;
	else if(count == 150)
		count_2 <= count_2 + 3;
end


always @(posedge clk) begin
if(rst) begin
	count <= '0;
	n_sps <= 16;
end
else
	if(count ==1099)
		count <= '0;
	else
		count <= count + 1'd1;

	

end


/*
localparam N = 4224;

reg [23:0]	sig_c [N-1:0];



reg [11:0]	count_del;
reg [12:0]	count_dat;
reg			run_dat;


initial begin
	$readmemb("D:\\FPGA\\xcorr\\sig_c.txt",sig_c);
end

wire signed [11:0]	sig_c_i, sig_c_q;

always @(posedge clk) begin
	if(rst)
		count_dat <= '0;
	else if(run_dat)
		if(count_dat == N - 1)
			count_dat <= '0;
		else
			count_dat <= count_dat	+ 1'd1;
end

always @(posedge clk) begin
	if(rst) begin
		count_del <= '0;
		run_dat   <= '0;
	end
	else if(count_del == 12'd1500 || run_dat) begin
		count_del <= '0;
		run_dat   <= '1;
	end
	else begin
		count_del <= count_del	+ 1'd1;
		run_dat   <= '0;
	end
end



assign sig_c_i = sig_c[count_dat][23:12];
assign sig_c_q = sig_c[count_dat][11:0];


xcorr_main #("D:\\FPGA\\xcorr\\sig_pr.txt")
xcorr_main_s(
	.clk		(clk),
	.rst		(rst),
	.data_i		(sig_c_i),
	.data_q		(sig_c_q),
	.thr_lvl	(24'd50000),
	.addr_shft	(14'd8470),
	.odata_i	(),
	.odata_q	(),
	.osop		(corr_sop),
	.corr_dtct	()
);


count_sop_dtct
count_sop_dtct_sub(
	.clk			(clk),
	.rst			(rst),
	.sop			(corr_sop),
	.n_sps			(n_sps)
);
*/
endmodule