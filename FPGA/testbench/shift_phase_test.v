module shift_phase_test(
	input  [15:0]			s_axis_tdata,
	input					s_axis_tvalid,
	output reg				s_axis_tready,

	output reg [15:0]		m_axis_tdata,
	output reg				m_axis_tvalid,
	input					m_axis_tready,

	input 					s_axis_aclk,
	input 					m_axis_aclk,
	input					rst
);

reg signed [15:0]		buff [1:0];

initial begin
	buff[0]	<= 16'd0;
	buff[1]	<= 16'd0;
end


always @(posedge s_axis_aclk) begin
	if(rst) begin
		buff[0]	<= 16'd0;
		buff[1]	<= 16'd0;
	end
	else begin
		buff[0] <= s_axis_tdata;
		buff[1]	<= buff[0];
	end
end

always @(posedge s_axis_aclk) begin
	if(rst) begin
		m_axis_tdata	<= 16'd0;
		m_axis_tvalid	<= 1'd0;
		s_axis_tready	<= 1'd0;
	end
	else begin
		m_axis_tdata	<= 	(buff[0] + buff[1]) / 2;
		m_axis_tvalid	<= 	s_axis_tvalid;
		s_axis_tready	<=	m_axis_tready;
	end
end


endmodule 