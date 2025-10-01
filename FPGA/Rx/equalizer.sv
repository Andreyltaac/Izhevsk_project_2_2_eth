`include "../../include/parameters.vh"


module equalizer #(
parameter 	fft_depth = 12, 
		level_pilot = 2000, 
		eq_precision = 10
)(
	input										clk,
	input										rst,
	input										ival,
	input										isop,
	input				[1:0]					index,
	input				[  2:0]					index_M_in,
	input				[  3:0]					index_SS_in,
	input										enable,
	input signed		[fft_depth-1:0]			sub_i,
	input signed		[fft_depth-1:0]			sub_q,
	(* mark_debug = "true" *) output logic								oval,
	output										osop,
	output				[1:0]					oindex,
	output logic		[2:0]					index_M_out,
	output logic		[3:0]					index_SS_out,
	(* mark_debug = "true" *) output logic signed	[fft_depth-1:0]			osub_i,
	(* mark_debug = "true" *) output logic signed	[fft_depth-1:0]			osub_q

);

localparam latency_divide = 30;



// =======================================================
// 

logic signed	[fft_depth + eq_precision:0]	H_mean_i;
logic signed	[fft_depth + eq_precision:0]	H_mean_q;
logic signed	[fft_depth*2:0]					koef;
logic signed	[fft_depth-1:0]					data_i, data_q;
logic											data_val;


sub_eq
sub_eq_sub(
			.clk		(clk),
			.rst		(rst),
			.ival		(ival),
			.isop		(isop),
			.index		(index),
			.sub_i		(sub_i),
			.sub_q		(sub_q),
			.oval		(data_val),
			.H_oval		(H_oval),
			.osop		(osop),
			.oindex		(oindex),
			.osub_i		(data_i),
			.osub_q		(data_q),
			.H_mean_i	(H_mean_i),
			.H_mean_q	(H_mean_q),
			.koef		(koef)
			);

// =======================================================
// 

wire signed 	[31:0] idata_div_i, idata_div_q;
wire signed 	[31:0] idata_koef;	
wire 			[80:0] odata_div_i, odata_div_q;



wire signed [24:0] ostatok_i, ostatok_q;
wire signed [24:0] result_dev_i, result_dev_q;
wire oval_div_i, oval_div_q;



assign idata_div_i = H_mean_i * 1024 ;
assign idata_div_q = H_mean_q * 1024 ;
assign idata_koef  = koef; 


div_gen_0 div_sub_i (
  .aclk				(clk),			// input wire aclk
  .s_axis_divisor_tvalid	(H_oval),		// input wire s_axis_divisor_tvalid
  .s_axis_divisor_tdata		(idata_koef),		// input wire [31 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid	(H_oval),		// input wire s_axis_dividend_tvalid
  .s_axis_dividend_tdata	(idata_div_i),		// input wire [31 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid		(oval_div_i),		// output wire m_axis_dout_tvalid
  .m_axis_dout_tdata		(odata_div_i)		// output wire [63 : 0] m_axis_dout_tdata
);

div_gen_0 div_sub_q (
  .aclk				(clk),			// input wire aclk
  .s_axis_divisor_tvalid	(H_oval),		// input wire s_axis_divisor_tvalid
  .s_axis_divisor_tdata		(idata_koef),		// input wire [31 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid	(H_oval),		// input wire s_axis_dividend_tvalid
  .s_axis_dividend_tdata	(idata_div_q),    	// input wire [31 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid		(oval_div_q),		// output wire m_axis_dout_tvalid
  .m_axis_dout_tdata		(odata_div_q)		// output wire [63 : 0] m_axis_dout_tdata
);


// =======================================================
// 

assign ostatok_i 	= odata_div_i[24:0];
assign result_dev_i = odata_div_i[63:32];

assign ostatok_q 	= odata_div_q[24:0];
assign result_dev_q = odata_div_q[63:32];

reg signed [fft_depth-1:0]	data_latency_i [latency_divide:0];
reg signed [fft_depth-1:0]	data_latency_q [latency_divide:0];
reg	 						data_latency_v [latency_divide:0];


always @(posedge clk) begin
	if(rst) 
		for (int i = 0; i <= latency_divide; i = i + 1) begin
			data_latency_i[i] <= '0;
			data_latency_q[i] <= '0;
		end
	else begin
		if(latency_divide > 0) begin
			for (int i = latency_divide; i > 0; i = i - 1) begin
				data_latency_i[i] <= data_latency_i[i-1];
				data_latency_q[i] <= data_latency_q[i-1];
				data_latency_v[i] <= data_latency_v[i-1];
			end
			data_latency_i[0] <= data_i;
			data_latency_q[0] <= data_q;
			data_latency_v[0] <= data_val;
		end
		else begin
			data_latency_i[0] <= data_i;
			data_latency_q[0] <= data_q;
			data_latency_v[0] <= data_val;	
		end
	end
end


// ===============================================================
//

logic signed [36:0]  sub_i_m_H_i, sub_q_m_H_q, sub_i_m_H_q, sub_q_m_H_i;



mult_gen_0 mult_sub_i_m_H_i (
  .CLK	(clk),					// input wire CLK
  .A	(result_dev_i),				// input wire [24 : 0] A
  .B	(data_latency_i[latency_divide-1]),	// input wire [11 : 0] B
  .P	(sub_i_m_H_i)				// output wire [36 : 0] P
);

mult_gen_0 mult_sub_q_m_H_q (
  .CLK	(clk),					// input wire CLK
  .A	(result_dev_q),				// input wire [24 : 0] A
  .B	(data_latency_q[latency_divide-1]),	// input wire [11 : 0] B
  .P	(sub_q_m_H_q)				// output wire [36 : 0] P
);

mult_gen_0 mult_sub_i_m_H_q (
  .CLK	(clk),					// input wire CLK
  .A	(result_dev_q),				// input wire [24 : 0] A
  .B	(data_latency_i[latency_divide-1]),	// input wire [11 : 0] B
  .P	(sub_i_m_H_q)				// output wire [36 : 0] P
);

mult_gen_0 mult_sub_q_m_H_i (
  .CLK	(clk),					// input wire CLK
  .A	(result_dev_i),				// input wire [24 : 0] A
  .B	(data_latency_q[latency_divide-1]),	// input wire [11 : 0] B
  .P	(sub_q_m_H_i)				// output wire [36 : 0] P
);





assign osub_i 			= enable ? (sub_i_m_H_i - sub_q_m_H_q)/256 : data_latency_i[latency_divide];
assign osub_q 			= enable ? (sub_i_m_H_q + sub_q_m_H_i)/256 : data_latency_q[latency_divide];
assign oval				= data_latency_v[latency_divide];

assign index_M_out		= index_M_latency[latency_divide+step_pilot];
assign index_SS_out		= index_SS_latency[latency_divide+step_pilot];



reg signed [2:0]	index_M_latency 	[latency_divide+step_pilot+1:0];
reg signed [3:0]	index_SS_latency 	[latency_divide+step_pilot+1:0];

always @(posedge clk) begin
	if(rst) 
		for (int i = 0; i <= latency_divide; i = i + 1) begin
			index_M_latency[i] <= '0;
			index_SS_latency[i] <= '0;
		end
	else begin
			for (int i = latency_divide+step_pilot+1; i > 0; i = i - 1) begin
				index_M_latency[i]  <= index_M_latency[i-1];
				index_SS_latency[i] <= index_SS_latency[i-1];
			end
			index_M_latency[0]  <= index_M_in;
			index_SS_latency[0] <= index_SS_in;
	end
end


endmodule