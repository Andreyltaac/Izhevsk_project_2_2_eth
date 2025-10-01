`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2024 14:47:26
// Design Name: 
// Module Name: series2parallel
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module series2parallel #(parameter maxWordOut = 6)(
		input logic							ibit,
		input								clk, 
		input								rst,
		input								ireq,
		input								ival,
		input		[2:0]					modOrder,
		output logic						oreq,
		output logic						oval,
		output logic [maxWordOut-1:0]		obit
);

localparam count_depth = $clog2(maxWordOut);

logic [2:0]		now_index;
logic			loc_req;
logic			false_dat;


logic [count_depth-1:0] count;
logic [maxWordOut-1:0] buffer;

initial begin
	count <= '0;
	false_dat <= '0;
end


assign obit = (oval & ~false_dat) ? ((now_index == 6) ? buffer 	
						: ((now_index == 4) ? {'0, buffer[3:0]} 
						: ((now_index == 2) ? {'0, buffer[1:0]} 
						: buffer[0]) )) 
						: '0;

assign oreq = (now_index > 3'd1) ? loc_req || ireq : ireq;

always @(posedge clk) begin
	if(rst) begin
		loc_req <= '0;
	end
	else if(ireq) begin
		loc_req <= '1;
	end
	else if(now_index != modOrder)
		loc_req <= '0;
	else if(count == now_index-1) begin
		loc_req <= '0;
	end
end
always @(posedge clk) begin
	if(rst) begin
		now_index <= '0;
	end
	else if(count == 0)
		now_index <= modOrder;
end


always @(posedge clk) begin
	if(rst) begin
		count <= '0;
	end
	else if((ireq || loc_req) & ival)
		if(count == now_index-1) begin
			count <= '0;
		end
		else begin
			count <= count + 1'd1;
		end
	else begin
		count <= '0;
	end
end

always @(posedge clk) begin
	if(rst) begin
		oval <= '0;
		false_dat <= '0;
	end
	else if(~ival & ireq) begin
		oval <= '1;
		false_dat <= '1;
	end
	else if((ireq || loc_req) & ival & now_index > 3'd1 & count == now_index-1) begin
		oval <= '1;
		false_dat <= '0;
	end
	else if(count == now_index-1 & ireq) begin
		oval <= '1;
		false_dat <= '0;
	end
	else begin
		oval <= '0;
		false_dat <= '0;
	end

end


always @(posedge clk) begin
	if(rst)
		buffer <= '0;
	else if(ival & (ireq || loc_req))
		if(count == 3'd0)
			buffer <= {4'd0, ibit};
		else
			buffer <= {buffer[maxWordOut-2:0], ibit};
end

endmodule
