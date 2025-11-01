module spi_module_rx
#(
  parameter pW_DATA_SPI = 10,
  parameter pSyS_clk    = 50_000_000,
  parameter pSPI_clk    = 6_250_000
)
(
input                iclk,   
input                irst, 
// odata
output reg  [7:0]    spi_do_1,
output reg  [7:0]    spi_do_2,
output reg  [7:0]    spi_do_3,
output reg  [7:0]    spi_do_4,
output reg  [7:0]    spi_do_5,
output reg  [7:0]    spi_do_6,
output reg  [7:0]    spi_do_7,
output reg  [7:0]    spi_do_8,
output reg           spi_oval,
output               spi_oval_stb,
output               spi_olast,
input                spi_iclk,
input                spi_enb,

// idata
input                idata_1,
input                idata_2,
input                idata_3,
input                idata_4,
input                idata_5,
input                idata_6,
input                idata_7,
input                idata_8
);



localparam OVAL_CNT_END = 8;

///////////////////////////////////////////////
reg        spi_enb_reg;
initial
begin
spi_enb_reg = 1'd1;
end

reg [1:0]  mode;
reg [pW_DATA_SPI-1:0] rx_data_1;
reg [pW_DATA_SPI-1:0] rx_data_2;
reg [pW_DATA_SPI-1:0] rx_data_3;
reg [pW_DATA_SPI-1:0] rx_data_4;
reg [pW_DATA_SPI-1:0] rx_data_5;
reg [pW_DATA_SPI-1:0] rx_data_6;
reg [pW_DATA_SPI-1:0] rx_data_7;
reg [pW_DATA_SPI-1:0] rx_data_8;
reg [pW_DATA_SPI-1:0] rxReg;
 

reg [3:0]  spi_cs_cnt;
///////////////////////////////////////////////
wire spi_start;
//wire spi_stb_ovalid;
///////////////////////////////////////////////
assign spi_olast =  (((spi_cs_cnt == 4'd1)||(spi_cs_cnt == 4'd2)) && spi_enb && rx_data_1[9]);
assign spi_oval_stb = (spi_cs_cnt == 4'd1);

///////////////////////////////////////////////

always @(posedge spi_iclk or posedge irst) 
begin 
	if(irst) 
	begin
		rx_data_1 <= 10'd0;
        rx_data_2 <= 10'd0;
        rx_data_3 <= 10'd0;
        rx_data_4 <= 10'd0;
        rx_data_5 <= 10'd0;
        rx_data_6 <= 10'd0;
        rx_data_7 <= 10'd0;
        rx_data_8 <= 10'd0;
	end
	else if(~spi_enb) 
	begin

        rx_data_1 <= rx_data_1 << 1;
        rx_data_2 <= rx_data_2 << 1;
		rx_data_3 <= rx_data_3 << 1;
		rx_data_4 <= rx_data_4 << 1;
		rx_data_5 <= rx_data_5 << 1;
		rx_data_6 <= rx_data_6 << 1;
		rx_data_7 <= rx_data_7 << 1;
		rx_data_8 <= rx_data_8 << 1;

	    rx_data_1[0] <= idata_1;
		rx_data_2[0] <= idata_2;
		rx_data_3[0] <= idata_3;
		rx_data_4[0] <= idata_4;
		rx_data_5[0] <= idata_5;
		rx_data_6[0] <= idata_6;
		rx_data_7[0] <= idata_7;
		rx_data_8[0] <= idata_8;
			

	end

end


always @(posedge iclk or posedge irst)
begin
if (irst)
begin
    spi_do_1 <=8'b0;
	spi_do_2 <=8'b0;
	spi_do_3 <=8'b0;
	spi_do_4 <=8'b0;
	spi_do_5 <=8'b0;
	spi_do_6 <=8'b0;
	spi_do_7 <=8'b0;
	spi_do_8 <=8'b0;
end
else if (spi_enb) 
        begin 
		  spi_do_1 <= rx_data_1[7:0];
		  spi_do_2 <= rx_data_2[7:0];
		  spi_do_3 <= rx_data_3[7:0];
		  spi_do_4 <= rx_data_4[7:0];
		  spi_do_5 <= rx_data_5[7:0];
		  spi_do_6 <= rx_data_6[7:0];
		  spi_do_7 <= rx_data_7[7:0];
		  spi_do_8 <= rx_data_8[7:0];
		end
end

always @(posedge iclk)
begin
 spi_enb_reg <= spi_enb;
end

always @(posedge iclk or posedge irst)
begin
if (irst)
 spi_oval <= 1'b0;
 else
 begin
   if (spi_enb & ~spi_enb_reg)  spi_oval <= 1'b1;
   if (spi_cs_cnt == OVAL_CNT_END) spi_oval <= 1'b0;
 end
end

always @(posedge iclk or posedge irst)
begin
if (irst)
 spi_cs_cnt <= 4'd0;
else 
begin
	if (spi_enb && spi_oval) 
        begin 
		  if (spi_cs_cnt == OVAL_CNT_END)  spi_cs_cnt <= 4'd0;
		    else spi_cs_cnt <= spi_cs_cnt + 4'd1;
		  
		end
	if (~spi_enb)  spi_cs_cnt <= 4'd0;	
end
end

endmodule
