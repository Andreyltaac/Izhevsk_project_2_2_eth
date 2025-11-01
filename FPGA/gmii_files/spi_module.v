module spi_module
#(
  parameter pW_DATA_SPI = 10,
  parameter pSyS_clk    = 50_000_000,
  parameter pSPI_clk    = 6_250_000
)
(
input                iclk,   
input                irst, 
// spi
output reg           spi_do,
output reg           spi_do_1,
output reg           spi_do_2,
output reg           spi_do_3,
output reg           spi_do_4,
output reg           spi_do_5,
output reg           spi_do_6,
output reg           spi_do_7,
output reg           spi_do_8,

output               spi_clk,
output reg           spi_enb,
// uart
input                uart_rx_stb,
input [2:0]          uart_command,
input [7:0]          uart_data,
// data
input                isop,
input                ilast,
//input [7:0]          idata,
input [7:0]          idata_1,
input [7:0]          idata_2,
input [7:0]          idata_3,
input [7:0]          idata_4,
input [7:0]          idata_5,
input [7:0]          idata_6,
input [7:0]          idata_7,
input [7:0]          idata_8
);

initial
begin
spi_enb = 1'd1;
mode =  2'd0;
spi_clk_rg = 1'd0;
end

localparam SPI_CNT_END = ((pSyS_clk/pSPI_clk)/2)-1;

///////////////////////////////////////////////
reg [1:0]  mode;
reg [pW_DATA_SPI-1:0] tx_data_1;
reg [pW_DATA_SPI-1:0] tx_data_2;
reg [pW_DATA_SPI-1:0] tx_data_3;
reg [pW_DATA_SPI-1:0] tx_data_4;
reg [pW_DATA_SPI-1:0] tx_data_5;
reg [pW_DATA_SPI-1:0] tx_data_6;
reg [pW_DATA_SPI-1:0] tx_data_7;
reg [pW_DATA_SPI-1:0] tx_data_8;

reg [4:0]  cnt_bit;
reg        spi_enb_reg;
reg        spi_clk_rg;
reg [2:0]  spi_clk_cnt;
reg [2:0]  spi_cs_cnt;
///////////////////////////////////////////////
wire spi_start;

///////////////////////////////////////////////

assign spi_start = isop;
assign spi_clk   = spi_clk_rg;

///////////////////////////////////////////////



always @(posedge iclk or posedge irst)
begin
if (irst)
 spi_clk_cnt <= 3'd0;
else if (~spi_enb) 
        begin 
		  if (spi_clk_cnt == SPI_CNT_END)  spi_clk_cnt <= 3'd0;
		    else spi_clk_cnt <= spi_clk_cnt + 3'd1;
		  
		  end
end




always @(posedge iclk or posedge irst)
begin
if (irst)
 spi_clk_rg <= 1'b0;
else if (~spi_enb && spi_clk_cnt == 3'd1) spi_clk_rg <= ~spi_clk_rg;
end


always @(posedge iclk or posedge irst)
begin
if (irst)
 spi_enb_reg <= 1'b0;
else
 spi_enb_reg <= spi_enb;
end


always @(posedge iclk or posedge irst)
begin 
    if (irst)
	begin
	mode     <=2'd0;
    //tx_data  <=10'd0;
	tx_data_1 <= 10'd0;
	tx_data_2 <= 10'd0;
	tx_data_3 <= 10'd0;
	tx_data_4 <= 10'd0;
	tx_data_5 <= 10'd0;
	tx_data_6 <= 10'd0;
	tx_data_7 <= 10'd0;
	tx_data_8 <= 10'd0;
	cnt_bit  <=5'd0;
	spi_do   <=1'b0;
	spi_cs_cnt <= 3'd0; 
    spi_do_1 <=1'b0;
	spi_do_2 <=1'b0;
	spi_do_3 <=1'b0;
	spi_do_4 <=1'b0;
	spi_do_5 <=1'b0;
	spi_do_6 <=1'b0;
	spi_do_7 <=1'b0;
	spi_do_8 <=1'b0;	
			
	end
	else
	begin
	case(mode)
		2'd0: begin 
			   if(spi_start) 
			   begin 
			   spi_cs_cnt <= (spi_cs_cnt == 3'd3)? 3'd0:spi_cs_cnt + 3'd1;
			   if (spi_cs_cnt == 3'd3) 
			   begin
			   spi_enb <= 0;
			   mode    <= 2'd1; 
			   end 	 
			   tx_data_1 <= {ilast,1'b0,idata_1};
			   tx_data_2 <= {ilast,1'b0,idata_2};
			   tx_data_3 <= {ilast,1'b0,idata_3};
			   tx_data_4 <= {ilast,1'b0,idata_4};
			   tx_data_5 <= {ilast,1'b0,idata_5};
			   tx_data_6 <= {ilast,1'b0,idata_6};
			   tx_data_7 <= {ilast,1'b0,idata_7};
			   tx_data_8 <= {ilast,1'b0,idata_8};
			   end
			   else 
			   begin 
			   spi_cs_cnt <= 3'd0; 
			   spi_enb    <= 1'b1;
			   //tx_data    <= 10'd0;
			   spi_do     <= 1'b0;
			   tx_data_1 <= 10'd0;
	           tx_data_2 <= 10'd0;
	           tx_data_3 <= 10'd0;
	           tx_data_4 <= 10'd0;
	           tx_data_5 <= 10'd0;
	           tx_data_6 <= 10'd0;
	           tx_data_7 <= 10'd0;
	           tx_data_8 <= 10'd0;
		
			   end
		      end 
	   2'd1: begin
	          spi_do_1 <= tx_data_1[pW_DATA_SPI-1];
			  spi_do_2 <= tx_data_2[pW_DATA_SPI-1];
			  spi_do_3 <= tx_data_3[pW_DATA_SPI-1];
			  spi_do_4 <= tx_data_4[pW_DATA_SPI-1];
			  spi_do_5 <= tx_data_5[pW_DATA_SPI-1];
			  spi_do_6 <= tx_data_6[pW_DATA_SPI-1];
			  spi_do_7 <= tx_data_7[pW_DATA_SPI-1];
			  spi_do_8 <= tx_data_8[pW_DATA_SPI-1];
			    	  
			  	  
             if(spi_clk_cnt == 3'd0 && spi_clk_rg == 1'b1) 
             begin
             //spi_do  <= tx_data[pW_DATA_SPI-1];				
			    tx_data_1 <= tx_data_1 << 1;
				tx_data_2 <= tx_data_2 << 1;
				tx_data_3 <= tx_data_3 << 1;
				tx_data_4 <= tx_data_4 << 1;
				tx_data_5 <= tx_data_5 << 1;
				tx_data_6 <= tx_data_6 << 1;
				tx_data_7 <= tx_data_7 << 1;
				tx_data_8 <= tx_data_8 << 1;
				
				 if(cnt_bit == pW_DATA_SPI-1) 
			    begin
				 mode    <= 2'd0;
				 cnt_bit <= 5'd0;
			    end
			    else cnt_bit <= cnt_bit + 5'd1;
                end				
		       end
	   2'd2 : begin
	         
             end		 
	default : begin
	          mode    <=2'd0;
             end	
	endcase
	end
end 


endmodule
