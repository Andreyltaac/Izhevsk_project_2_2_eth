/*

localparam PLC_pack_cnt_len = 16;

wire			PLC_ilast_0;
wire			PLC_ilast_1;
wire			PLC_ilast_2;
wire			PLC_ilast_3;
wire			PLC_ilast_4;
wire			PLC_ilast_5;
wire			PLC_ilast_6;
wire			PLC_ilast_7;
wire			PLC_ilast_8;
wire			PLC_ilast_9;

wire	[PLC_pack_cnt_len-1:0]	PLC_cnt_pack_0;
wire	[PLC_pack_cnt_len-1:0]	PLC_cnt_pack_1;
wire	[PLC_pack_cnt_len-1:0]	PLC_cnt_pack_2;
wire	[PLC_pack_cnt_len-1:0]	PLC_cnt_pack_3;
wire	[PLC_pack_cnt_len-1:0]	PLC_cnt_pack_4;
wire	[PLC_pack_cnt_len-1:0]	PLC_cnt_pack_5;
wire	[PLC_pack_cnt_len-1:0]	PLC_cnt_pack_6;
wire	[PLC_pack_cnt_len-1:0]	PLC_cnt_pack_7;
wire	[PLC_pack_cnt_len-1:0]	PLC_cnt_pack_8;
wire	[PLC_pack_cnt_len-1:0]	PLC_cnt_pack_9;

pack_last_counter 
#(
.wait_time		(1),
.input_freq		(25_000_000),
.plen_cnt		(PLC_pack_cnt_len)
)
u_plc
(
.clk			(***),
.rstn			(***),

.ilast_0		(PLC_ilast_0),
.ilast_1		(PLC_ilast_1),
.ilast_2		(PLC_ilast_2),
.ilast_3		(PLC_ilast_3),
.ilast_4		(PLC_ilast_4),
.ilast_5		(PLC_ilast_5),
.ilast_6		(PLC_ilast_6),
.ilast_7		(PLC_ilast_7),
.ilast_8		(PLC_ilast_8),
.ilast_9		(PLC_ilast_9),


.cnt_pack_0		(PLC_cnt_pack_0),
.cnt_pack_1		(PLC_cnt_pack_1),
.cnt_pack_2		(PLC_cnt_pack_2),
.cnt_pack_3		(PLC_cnt_pack_3),
.cnt_pack_4		(PLC_cnt_pack_4),
.cnt_pack_5		(PLC_cnt_pack_5),
.cnt_pack_6		(PLC_cnt_pack_6),
.cnt_pack_7		(PLC_cnt_pack_7),
.cnt_pack_8		(PLC_cnt_pack_8),
.cnt_pack_9		(PLC_cnt_pack_9)
);

assign PLC_ilast_0	<= '0;
assign PLC_ilast_1	<= '0;
assign PLC_ilast_2	<= '0;
assign PLC_ilast_3	<= '0;
assign PLC_ilast_4	<= '0;
assign PLC_ilast_5	<= '0;
assign PLC_ilast_6	<= '0;
assign PLC_ilast_7	<= '0;
assign PLC_ilast_8	<= '0;
assign PLC_ilast_9	<= '0;

*/
module pack_last_counter
#(	parameter 	wait_time 	= 1,
				input_freq 	= 25_000_000,
				plen_cnt	= 16
)
(
	input					clk,
	input					rstn,
	
	input	wire			ilast_0,
	input	wire			ilast_1,
	input	wire			ilast_2,
	input	wire			ilast_3,
	input	wire			ilast_4,
	input	wire			ilast_5,
	input	wire			ilast_6,
	input	wire			ilast_7,
	input	wire			ilast_8,
	input	wire			ilast_9,
	
	(* mark_debug = "true" *) output	reg		[plen_cnt-1:0]	cnt_pack_0,
	(* mark_debug = "true" *) output	reg		[plen_cnt-1:0]	cnt_pack_1,
	(* mark_debug = "true" *) output	reg		[plen_cnt-1:0]	cnt_pack_2,
	(* mark_debug = "true" *) output	reg		[plen_cnt-1:0]	cnt_pack_3,
	(* mark_debug = "true" *) output	reg		[plen_cnt-1:0]	cnt_pack_4,
	(* mark_debug = "true" *) output	reg		[plen_cnt-1:0]	cnt_pack_5,
	output	reg		[plen_cnt-1:0]	cnt_pack_6,
	output	reg		[plen_cnt-1:0]	cnt_pack_7,
	output	reg		[plen_cnt-1:0]	cnt_pack_8,
	output	reg		[plen_cnt-1:0]	cnt_pack_9
);
	localparam cnt_div = input_freq*wait_time;
	localparam cnt_len = $clog2(cnt_div);
	
	reg		[plen_cnt-1:0]			counter_0;
	reg		[plen_cnt-1:0]			counter_1;
	reg		[plen_cnt-1:0]			counter_2;
	reg		[plen_cnt-1:0]			counter_3;
	reg		[plen_cnt-1:0]			counter_4;
	reg		[plen_cnt-1:0]			counter_5;
	reg		[plen_cnt-1:0]			counter_6;
	reg		[plen_cnt-1:0]			counter_7;
	reg		[plen_cnt-1:0]			counter_8;
	reg		[plen_cnt-1:0]			counter_9;
	reg		[cnt_len-1:0]			cnt;
	wire							stat_clear;
	
	assign stat_clear = (cnt == cnt_len);
	
	// Global counter
	always@(posedge clk) begin
		if (~rstn) 
			cnt <= '0;
		else if (cnt == cnt_div)
			cnt <= '0;
		else
			cnt <= cnt + 1;
	end
	
	// Package conter	
	always@(posedge clk) begin
		if (~rstn) begin
			counter_0 	<= '0;
			counter_1 	<= '0;
			counter_2 	<= '0;
			counter_3 	<= '0;
			counter_4 	<= '0;
			counter_5 	<= '0;
			counter_6 	<= '0;
			counter_7 	<= '0;
			counter_8 	<= '0;
			counter_9 	<= '0;
			cnt_pack_0	<= '0;
			cnt_pack_1	<= '0;
			cnt_pack_2	<= '0;
			cnt_pack_3	<= '0;
			cnt_pack_4	<= '0;
			cnt_pack_5	<= '0;
			cnt_pack_6	<= '0;
			cnt_pack_7	<= '0;
			cnt_pack_8	<= '0;
			cnt_pack_9	<= '0;

		end
		else begin
			if (ilast_0	) counter_0	<=	counter_0 	+ 1;
			else if (stat_clear) begin
				counter_0		<=	'0;
				cnt_pack_0		<= counter_0;
			end
			if (ilast_1	) counter_1	<=	counter_1 	+ 1;
			else if (stat_clear) begin
				counter_1		<=	'0;
				cnt_pack_1		<= counter_1;
			end	
			if (ilast_2	) counter_2	<=	counter_2 	+ 1;
			else if (stat_clear) begin
				counter_2		<=	'0;
				cnt_pack_2		<= counter_2;
			end
			if (ilast_3	) counter_3	<=	counter_3 	+ 1;
			else if (stat_clear) begin
				counter_3		<=	'0;
				cnt_pack_3		<= counter_3;
			end
			if (ilast_4	) counter_4	<=	counter_4 	+ 1;
			else if (stat_clear) begin
				counter_4		<=	'0;
				cnt_pack_4		<= counter_4;
			end
			if (ilast_5	) counter_5	<=	counter_5 	+ 1;
			else if (stat_clear) begin
				counter_5		<=	'0;
				cnt_pack_5		<= counter_5;
			end
			if (ilast_6	) counter_6	<=	counter_6 	+ 1;
			else if (stat_clear) begin
				counter_6		<=	'0;
				cnt_pack_6		<= counter_6;
			end
			if (ilast_7	) counter_7	<=	counter_7 	+ 1;
			else if (stat_clear) begin
				counter_7		<=	'0;
				cnt_pack_7		<= counter_7;
			end
			if (ilast_8	) counter_8	<=	counter_8 	+ 1;
			else if (stat_clear) begin
				counter_8		<=	'0;
				cnt_pack_8		<= counter_8;
			end
			if (ilast_9	) counter_9	<=	counter_9 	+ 1;
			else if (stat_clear) begin
				counter_9		<=	'0;
				cnt_pack_9		<= counter_9;
			end			
		end
	end

endmodule
