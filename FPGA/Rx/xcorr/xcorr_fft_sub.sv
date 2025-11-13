module xcorr_fft_sub(
	input					clk,
	input					rst,
	input					ival,
	input signed	[11:0]	data_i,
	input signed	[11:0]	data_q,
	input			[7:0]	conf,

	output signed 	[11:0]	odata_i,
	output signed 	[11:0]	odata_q,
	output			[7:0]	oexp,
	output					oval,
	output					oeop
);

wire [31:0]	s_axis_data_tdata,s_axis_fifo_data_tdata, m_axis_data_tdata;
wire signed [15:0]	s_axis_data_i, s_axis_data_q;
wire last_fft;

assign s_axis_data_tdata = {s_axis_data_q,s_axis_data_i};
assign s_axis_data_i = data_i;
assign s_axis_data_q = data_q;


assign odata_i = m_axis_data_tdata[11:0];
assign odata_q = m_axis_data_tdata[27:16];



wire ifft_fifo_tready,ifft_fifo_tvalid;

assign s_axis_data_tdata = {s_axis_data_q,s_axis_data_i};
assign s_axis_data_i = data_i;
assign s_axis_data_q = data_q;
assign oeop = last_fft & oval;

axis_data_fifo_ifft_corr ifft_fifo_sub (
  		.s_axis_aresetn			(~rst),  // input wire s_axis_aresetn
  		.s_axis_aclk			(clk),        // input wire s_axis_aclk
  		.s_axis_tvalid			(ival),    // input wire s_axis_tvalid
  		.s_axis_tready			(),    // output wire s_axis_tready
  		.s_axis_tdata			(s_axis_data_tdata),      // input wire [31 : 0] s_axis_tdata
  		.m_axis_tvalid			(ifft_fifo_tvalid),    // output wire m_axis_tvalid
  		.m_axis_tready			(ifft_fifo_tready),    // input wire m_axis_tready
  		.m_axis_tdata			(s_axis_fifo_data_tdata)      // output wire [31 : 0] m_axis_tdata
);

fft_corr_1 fft_corr_1_1 (
  .aclk									(clk),					// input wire aclk
  .aresetn								(~rst),					// input wire aresetn
  .s_axis_config_tdata					(conf),					// input wire [7 : 0] s_axis_config_tdata
  .s_axis_config_tvalid					(ifft_fifo_tvalid),					// input wire s_axis_config_tvalid
  .s_axis_config_tready					(),						// output wire s_axis_config_tready
  .s_axis_data_tdata					(s_axis_fifo_data_tdata),	// input wire [31 : 0] s_axis_data_tdata
  .s_axis_data_tvalid					(ival),					// input wire s_axis_data_tvalid
  .s_axis_data_tready					(ifft_fifo_tready),						// output wire s_axis_data_tready
  .s_axis_data_tlast					(),						// input wire s_axis_data_tlast
  .m_axis_data_tdata					(m_axis_data_tdata),	// output wire [31 : 0] m_axis_data_tdata
  .m_axis_data_tuser					(oexp),					// output wire [7 : 0] m_axis_data_tuser
  .m_axis_data_tvalid					(oval),					// output wire m_axis_data_tvalid
  //.m_axis_data_tready					(1'd1),					// input wire m_axis_data_tready
  .m_axis_data_tlast					(last_fft)					// output wire m_axis_data_tlast
 // .m_axis_status_tdata					(),						// output wire [7 : 0] m_axis_status_tdata
  //.m_axis_status_tvalid					(),						// output wire m_axis_status_tvalid
  //.m_axis_status_tready					(),						// input wire m_axis_status_tready
  //.event_frame_started					(),						// output wire event_frame_started
  //.event_tlast_unexpected				(),						// output wire event_tlast_unexpected
  //.event_tlast_missing					(),						// output wire event_tlast_missing
  //.event_status_channel_halt			(),						// output wire event_status_channel_halt
  //.event_data_in_channel_halt			(),						// output wire event_data_in_channel_halt
  //.event_data_out_channel_halt			() 						// output wire event_data_out_channel_halt
);

endmodule 