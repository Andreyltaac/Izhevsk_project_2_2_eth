`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2025 13:02:48
// Design Name: 
// Module Name: deInterleaver
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


module deInterleaver(
    input  logic         iclk,
    input  logic         irst,
    input  logic         isop,
    input  logic         ival,
    input  logic [4:0]   idat,
    output logic         osop,
    output logic         oval,
    output logic         oeop,
    output logic         oeof,
    output logic [4:0]   odat,
    output logic         oerr
    );

    localparam ADDR_WIDTH	=	13;
    localparam DATA_WIDTH	=	13;
    localparam PACK_LEN	    =	4608;
    localparam GAP_PACK     =   1000;


    logic [DATA_WIDTH-1:0]  perm_addr;  

    logic [ADDR_WIDTH-1:0]  pack_cnt;
    logic [ADDR_WIDTH-1:0] 	read_cnt;
    logic                   pack_trg;
    logic                   mem_list;
    logic                   pack_rdy;
    logic                   gap_trig;
    logic           [13:0]  gap_cnt;

    interl_addr_rom
    #( 
	.ADDR_WIDTH		(ADDR_WIDTH),
	.DATA_WIDTH		(DATA_WIDTH)
    )
    sub0_interl_addr_rom
    (
	.clk						(iclk),	
	.adress_for_adress			(read_cnt ),
	.adress_for_interliv		(perm_addr)
    );



    always @ (posedge iclk or negedge irst) begin
        if (~irst) begin
            pack_cnt <= '0;
            pack_trg <= '0;
        end
        else begin
            if (isop)
                pack_trg <= 1;
            else if (pack_cnt == PACK_LEN)
                pack_trg <= 0;

            if (pack_cnt == PACK_LEN)
                pack_cnt <= '0;
            else if ((ival&pack_trg)||(isop&ival))
                pack_cnt <= pack_cnt + 1'b1;    
        end    
    end

    logic							intram_write_en	;
    logic			[DATA_WIDTH:0]	intram_write_cnt;	
    logic					 [4:0]	intram_idat		;
    logic							intram_read_en	;	
    logic			[DATA_WIDTH:0]	intram_read_cnt	;
    logic					 [4:0]	intram_odat		;
    logic							val;

    deinterl_ram
    #( 
    	.ADDR_WIDTH		(ADDR_WIDTH+1)
    )
    sub0_ram
    (
    	.clk            (iclk),
    	.en_wr          (intram_write_en	),
    	.wr_ram_counter (intram_write_cnt	),
    	.in_bit_data    (intram_idat		),
    	.en_r           (intram_read_en		),
    	.r_ram_counter  (intram_read_cnt	),
    	.read_data_out	(intram_odat		)	
    );

    assign	intram_write_en		= ival	;
    assign	intram_write_cnt	= { mem_list, pack_cnt};
    assign	intram_idat			= idat	;
    assign	intram_read_cnt		= {~mem_list, perm_addr}-1;
    assign  intram_read_en      = pack_rdy_delay;

    assign wrt_end_strob 	= (pack_cnt==PACK_LEN-1)&ival;
    assign rd_end_strob  	= (read_cnt==PACK_LEN-1)&pack_rdy;

    logic pack_rdy_delay;
    always @ (posedge iclk) begin
        pack_rdy_delay <= pack_rdy;
    end


    always @ (posedge iclk or negedge irst) begin
        if (~irst) begin
            mem_list <= '0;
            pack_rdy <= '0;
        end
        else
            if (wrt_end_strob) begin
                if (~(pack_rdy||oval)) begin
                    mem_list <= ~mem_list;
                end
                pack_rdy <= 1;
            end
            else if (rd_end_strob) begin
                pack_rdy <= 0;
            end 
    end

    always @ (posedge iclk or negedge irst) begin
        if (~irst)
            read_cnt <= '0;
        else
            if (rd_end_strob) begin
                read_cnt <= '0;
            end
            else if (pack_rdy&~gap_trig) begin
                read_cnt <= read_cnt + 1'b1;
            end 
    end

    always @ (posedge iclk or posedge irst) begin
        if (~irst) begin
            gap_cnt <= '0;
        end
        else
            if (gap_trig)
                gap_cnt <= gap_cnt + 1'b1;
            else
                gap_cnt <= '0;
    end
    always @ (posedge iclk or posedge irst) begin
        if (~irst) begin
            gap_trig <= '0;
        end
        else
            if (read_cnt== PACK_LEN/2-1) begin
                gap_trig <= '1;
            end
            else if (gap_cnt==GAP_PACK-1) begin
                gap_trig <= '0;
            end
    end

    always @ (posedge iclk or negedge irst) begin
    if (~irst) begin
        val  <= '0;
        oval <= '0;
    end
    else begin
        val  <= ~gap_trig&pack_rdy;
        oval <= val;
    end
    end

    always @ (posedge iclk or negedge irst) begin
        if (~irst) begin
            oerr  <= '0;
        end
        else begin
            if (wrt_end_strob&(pack_rdy||oval))
                oerr <= 1;
            else if (wrt_end_strob&~(pack_rdy||oval))
                oerr <= 0;
        end
    end

    assign odat = intram_odat;
    assign oeof = oval&~val;
    assign osop = (oval&(read_cnt==2))||(oval&(read_cnt==2306));
    assign oeop = (oval&(read_cnt==1921))||(oval&(read_cnt==4225));
    

endmodule
