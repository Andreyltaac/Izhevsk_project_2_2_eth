module ifft #(parameter fft_depth = 12)
(
	input								clk,
	input             					rst,
	input signed [fft_depth-1:0]		sub_i,
	input signed [fft_depth-1:0]		sub_q,
	input								ival,
	input     		[7:0]   			config_fft,
	input								ieop,

	output signed [fft_depth-1:0]		osub_i,
	output signed [fft_depth-1:0]		osub_q,
	output signed [4:0]				    oexp,
	output								oval,
	output								osop,
	output								oeop

);

wire [31:0]				input_fifo_data;
wire					oval_fifo;

wire [31:0]				input_ifft_data, output_ifft_data;
wire signed [15:0]		input_fifo_sub_i, input_fifo_sub_q;
reg						local_osop;


//===============================================================================
//
//


assign input_fifo_sub_i = sub_i;
assign input_fifo_sub_q = sub_q;
assign input_fifo_data 	= {input_fifo_sub_q,input_fifo_sub_i};


axis_data_fifo_ifft      my_fifo (
  .s_axis_aresetn       (rst),                 // input wire s_axis_aresetn
  .s_axis_aclk          (clk),                  // input wire s_axis_aclk
  .s_axis_tvalid        (ival),    				// input wire s_axis_tvalid
  .s_axis_tready        (),                     // output wire s_axis_tready
  .s_axis_tdata         (input_fifo_data),      // input wire [23 : 0] s_axis_tdata
  .m_axis_tvalid        (oval_fifo),    		// output wire m_axis_tvalid
  .m_axis_tready        (data_in_ready),    	// input wire m_axis_tready
  .m_axis_tdata         (input_ifft_data)      // output wire [23 : 0] m_axis_tdata
);


//===============================================================================
//
//


xfft_time_freq xilinx_ifft_sub (
  .aclk							(clk),							
  .aresetn						(rst),
  .s_axis_config_tdata			(config_fft),					
  .s_axis_config_tvalid			(1'd1),								
  .s_axis_config_tready			(),								

  .s_axis_data_tdata			(input_ifft_data),				
  .s_axis_data_tvalid			(oval_fifo),							
  .s_axis_data_tready			(data_in_ready),				
  .s_axis_data_tlast			(),								

  .m_axis_data_tdata			(output_ifft_data),				
  .m_axis_data_tuser			(oexp),							
  .m_axis_data_tvalid			(oval),							
  .m_axis_data_tlast			(oeop),

  .m_axis_status_tdata			(),								
  .m_axis_status_tvalid			()						
);


// xfft_0 xilinx_ifft_sub (
// 	.aclk							(clk),		
// 	.aresetn						(rst),
// 	.s_axis_config_tdata			(config_fft),	
// 	.s_axis_config_tvalid			(1'd1),			
// 	.s_axis_config_tready			(),

// 	.s_axis_data_tdata				(input_ifft_data),			
// 	.s_axis_data_tvalid				(oval_fifo),			
// 	.s_axis_data_tready				(data_in_ready),		
// 	.s_axis_data_tlast				(),		

// 	.m_axis_data_tdata				(output_ifft_data),			
// 	.m_axis_data_tuser				(oexp),						
// 	.m_axis_data_tvalid				(oval),					
// 	.m_axis_data_tlast				(),
// 	.m_axis_data_tready				(1'd1)				
// );



assign osub_i = oval ? output_ifft_data[fft_depth-1:0]   : '0;
assign osub_q = oval ? output_ifft_data[fft_depth+15:16] : '0;
assign osop   = ~local_osop & oval;

always @(posedge clk) local_osop <= oval;



endmodule 