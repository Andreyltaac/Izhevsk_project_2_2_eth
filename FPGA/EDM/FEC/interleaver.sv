`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2025 11:54:35
// Design Name: 
// Module Name: interleaver
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


module interleaver(
    input   logic   iclk,
    input   logic   irst,
    input   logic   isop,
    input   logic   ival,
    input   logic   idat,
    output  logic   oreq,

    input   logic   ireq,
	output  logic   emty,
    output  logic   osop,
    output  logic   oval,
    output  logic   odat  
    );


localparam ADDR_WIDTH	=	13;
localparam DATA_WIDTH	=	13;
localparam PACK_LEN	    =	4608;
localparam PRMB_LEN		=	128;

logic								wrt_end_strob;
logic								rd_end_strob;
logic								mem_list;
logic						 [1:0] 	mem_state;			
logic			  [ADDR_WIDTH-1:0] 	pack_cnt;
logic			  [ADDR_WIDTH-1:0] 	read_cnt;
logic			  [DATA_WIDTH-1:0] 	perm_addr;
logic						 		delay_val;
logic						 		delay_dat;
logic						 		delay_wendstb;
logic						 		delay_wendstb_t;
logic						 		delay_rd_end_strob;

interl_addr_rom
#( 
	.ADDR_WIDTH		(ADDR_WIDTH),
	.DATA_WIDTH		(DATA_WIDTH)
)
sub0_interl_addr_rom
(
	.clk						(iclk),	
	.adress_for_adress			(pack_cnt ),
	.adress_for_interliv		(perm_addr)
);

always@(posedge iclk or negedge irst) begin
	if (~irst)
		pack_cnt <= '0;
	else if (pack_cnt == PACK_LEN-1) begin
		pack_cnt <= '0;
	end	
	else if (ival) begin
		pack_cnt <= pack_cnt +1;
	end
end

always_ff @( posedge iclk ) begin 
	delay_val		<= delay_val<<1;
	delay_dat		<= delay_dat<<1;
	delay_wendstb	<= wrt_end_strob;
	delay_wendstb_t	<= delay_wendstb;  	
	delay_val		<= ival;
	delay_dat		<= idat;
	delay_rd_end_strob <= rd_end_strob;
end


logic							intram_write_en	;
logic			[DATA_WIDTH:0]	intram_write_cnt;	
logic							intram_idat		;
logic							intram_read_en	;	
logic			[DATA_WIDTH:0]	intram_read_cnt	;
logic							intram_odat		;

logic							intram_write_en_temp	;
logic			[DATA_WIDTH:0]	intram_write_cnt_temp	;	
logic							intram_idat_temp		;
logic							intram_read_en_temp		;	
logic			[DATA_WIDTH:0]	intram_read_cnt_temp	;
logic							intram_odat_temp		;
logic							oval_temp				;
logic							osop_temp				;
logic							oval_temp2				;
logic							osop_temp2				;
logic							ireq_temp				;



interl_ram
#( 
	.ADDR_WIDTH		(ADDR_WIDTH+1)
)
sub0_ram
(
	.clk            (iclk),
	//.en_wr          (intram_write_en	),
	.wr_ram_counter (intram_write_cnt_temp	),
	.in_bit_data    (intram_idat_temp		),
	//.en_r           (intram_read_en		),
	.r_ram_counter  (intram_read_cnt_temp	),
	.read_data_out	(intram_odat		    )	
);


assign	intram_write_en		= delay_val	;
assign	intram_write_cnt	= { mem_list, perm_addr}+PRMB_LEN-1;
assign	intram_idat			= delay_dat	;
assign	intram_read_en		= ireq;
assign	intram_read_cnt		= {~mem_list, read_cnt};


always@(posedge iclk or negedge irst) begin
	if (~irst) begin
		intram_write_en_temp 	<= '0;
		intram_write_cnt_temp	<= '0;
		intram_idat_temp		<= '0;		
		intram_read_en_temp		<= '0;
		intram_read_cnt_temp	<= '0;
		intram_odat_temp		<= '0;
		oval_temp				<= '0;
		osop_temp				<= '0;
		oval_temp2				<= '0;
		osop_temp2				<= '0;	
	end
	else begin
		intram_write_en_temp 	<= intram_write_en;
		intram_write_cnt_temp	<= intram_write_cnt;
		intram_idat_temp		<= intram_idat;
		intram_read_en_temp		<= intram_read_en;
		
		intram_odat_temp		<= intram_odat;
		oval_temp				<= ~emty;
		osop_temp				<= (read_cnt==0)&&~emty&&ireq;
		if (ireq) begin
			intram_read_cnt_temp	<= intram_read_cnt;	
		end
	end
end


assign wrt_end_strob 	= (pack_cnt==PACK_LEN-1)&ival&oreq;
assign rd_end_strob  	= (read_cnt==PACK_LEN+PRMB_LEN-1)&oval&ireq;
assign oreq				= mem_state!=2'd2; 
assign emty				= mem_state==2'd0;
assign oval				= oval_temp;
assign osop				= osop_temp;

always@(posedge iclk or negedge irst) begin
	if (~irst) begin
		mem_state 	<= '0;
		mem_list	<= '0;
	end
	else if (delay_wendstb) begin
		mem_state <= mem_state+1;
		if (mem_state==0) begin
			mem_list = ~mem_list; 
		end
	end
	else if (rd_end_strob) begin
		mem_state <= mem_state-1;
		if (mem_state!=1) begin
			mem_list = ~mem_list; 
		end		
	end
end

always@(posedge iclk or negedge irst) begin
	if (~irst)
		read_cnt <= '0;
	else if ((read_cnt == PACK_LEN+PRMB_LEN-1)&&ireq) begin
		read_cnt <= '0;
	end	
	else if (ireq&&~emty) begin
		read_cnt <= read_cnt +1;
	end
end

assign odat = intram_odat;

endmodule
