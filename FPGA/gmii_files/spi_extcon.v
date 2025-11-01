module spi_extcon(
    input           spi_extcon_iclk,
    input           spi_extcon_irst,
    
	input           spi_rx_extcon_iclk,
	input           spi_rx_extcon_ics,

    input           spi_rx_extcon_idata_1,
    input           spi_rx_extcon_idata_2,
    input           spi_rx_extcon_idata_3,
    input           spi_rx_extcon_idata_4,
    input           spi_rx_extcon_idata_5,
    input           spi_rx_extcon_idata_6,
    input           spi_rx_extcon_idata_7,
    input           spi_rx_extcon_idata_8,
    



    input           spi_extcon_ival,
    input    [63:0] spi_extcon_idata,
    input           spi_extcon_ilast,
    output          spi_extcon_oready,
	output          spi_extcon_oclk,
	output          spi_extcon_ocs,
    
    output          spi_extcon_odata_1,
    output          spi_extcon_odata_2,
    output          spi_extcon_odata_3,
    output          spi_extcon_odata_4,
    output          spi_extcon_odata_5,
    output          spi_extcon_odata_6,
    output          spi_extcon_odata_7,
    output          spi_extcon_odata_8,
    output          spi_extcon_olast,
    output          spi_extcon_oval,
    output          spi_extcon_oval_stb,
    output   [63:0] spi_extcon_odata
    );

wire [7:0]  spi_idata_1;
wire [7:0]  spi_idata_2;
wire [7:0]  spi_idata_3;
wire [7:0]  spi_idata_4;
wire [7:0]  spi_idata_5;
wire [7:0]  spi_idata_6;
wire [7:0]  spi_idata_7;
wire [7:0]  spi_idata_8;

wire [7:0]  spi_rx_do_1;
wire [7:0]  spi_rx_do_2;
wire [7:0]  spi_rx_do_3;
wire [7:0]  spi_rx_do_4;
wire [7:0]  spi_rx_do_5;
wire [7:0]  spi_rx_do_6;
wire [7:0]  spi_rx_do_7;
wire [7:0]  spi_rx_do_8;


reg  [63:0] idata_spi;
reg  spi_isop;
reg  spi_enb_reg;
reg  data_last;

assign spi_idata_1 = idata_spi [7:0];
assign spi_idata_2 = idata_spi [15:8];
assign spi_idata_3 = idata_spi [23:16];
assign spi_idata_4 = idata_spi [31:24];
assign spi_idata_5 = idata_spi [39:32];
assign spi_idata_6 = idata_spi [47:40];
assign spi_idata_7 = idata_spi [55:48];
assign spi_idata_8 = idata_spi [63:56];

assign spi_extcon_oready = (spi_extcon_ival) ? spi_enb & ~spi_enb_reg:spi_enb;

assign spi_extcon_odata_1 = spi_tx_do_1;
assign spi_extcon_odata_2 = spi_tx_do_2;
assign spi_extcon_odata_3 = spi_tx_do_3;
assign spi_extcon_odata_4 = spi_tx_do_4;
assign spi_extcon_odata_5 = spi_tx_do_5;
assign spi_extcon_odata_6 = spi_tx_do_6;
assign spi_extcon_odata_7 = spi_tx_do_7;
assign spi_extcon_odata_8 = spi_tx_do_8;

assign spi_extcon_oclk = spi_clk;
assign spi_extcon_ocs  = spi_enb;

assign spi_extcon_odata = {spi_rx_do_8,spi_rx_do_7,spi_rx_do_6,spi_rx_do_5,spi_rx_do_4,spi_rx_do_3,spi_rx_do_2,spi_rx_do_1};
assign spi_extcon_oval  = spi_rx_oval;
assign spi_extcon_olast = spi_rx_olast;
assign spi_extcon_oval_stb = spi_rx_oval_stb;

always @(posedge spi_extcon_iclk or posedge spi_extcon_irst)
begin
if (spi_extcon_irst)
 spi_enb_reg <= 1'b0;
 else
 spi_enb_reg <= spi_enb;
end

always @(posedge spi_extcon_iclk or posedge spi_extcon_irst)
begin
if (spi_extcon_irst)
begin
 idata_spi <= 64'b0;
 data_last <= 1'b0;
 spi_isop <= 1'b0;
end
 else
begin
if (spi_extcon_ival && spi_enb)
begin
spi_isop   <= 1'b1; 
idata_spi  <= spi_extcon_idata;
if (spi_extcon_ilast && spi_isop) data_last <= 1'b1;
end
if (~spi_enb || ~spi_extcon_ival) 
begin
spi_isop <= 1'b0;
data_last <= 1'b0;
end
end 
end

	
//------------------------------------------------------------------------------------------------------
//                SPI_TX
//------------------------------------------------------------------------------------------------------
  
spi_module
#(
.pW_DATA_SPI      ( 10             ),
.pSyS_clk         ( 125_000_000    ),
.pSPI_clk         ( 12_500_000     )
) 
sub_spi_module
(
//	
.iclk 			  ( spi_extcon_iclk),
.irst 		      ( spi_extcon_irst),
							      
//.spi_di 		  ( spi_di),      
.spi_do_1		  ( spi_tx_do_1       ),
.spi_do_2		  ( spi_tx_do_2       ),
.spi_do_3		  ( spi_tx_do_3       ),
.spi_do_4		  ( spi_tx_do_4       ),
.spi_do_5		  ( spi_tx_do_5       ),
.spi_do_6		  ( spi_tx_do_6       ),
.spi_do_7		  ( spi_tx_do_7       ),
.spi_do_8		  ( spi_tx_do_8       ),


.ilast            ( data_last      ),
.spi_clk          ( spi_clk        ),
.spi_enb          ( spi_enb        ),
//                                 
.isop             ( spi_isop       ),
.idata_1          ( spi_idata_1    ),
.idata_2          ( spi_idata_2    ),
.idata_3          ( spi_idata_3    ),
.idata_4          ( spi_idata_4    ),
.idata_5          ( spi_idata_5    ),
.idata_6          ( spi_idata_6    ),
.idata_7          ( spi_idata_7    ),
.idata_8          ( spi_idata_8    ),

//                                 
.uart_rx_stb      ( ),
.uart_command     ( ),
.uart_data        ( )
);
	
	
//------------------------------------------------------------------------------------------------------
//                SPI_RX
//------------------------------------------------------------------------------------------------------
  
spi_module_rx
#(
.pW_DATA_SPI      ( 10             ),
.pSyS_clk         ( 125_000_000    ),
.pSPI_clk         ( 12_500_000     )
) 
sub_spi_module_rx
(
//	
.iclk 			  ( spi_extcon_iclk),
.irst 		      ( spi_extcon_irst),
							      
//.spi_di 		  ( spi_di),      
.spi_do_1		  ( spi_rx_do_1      ),
.spi_do_2		  ( spi_rx_do_2      ),
.spi_do_3		  ( spi_rx_do_3      ),
.spi_do_4		  ( spi_rx_do_4      ),
.spi_do_5		  ( spi_rx_do_5      ),
.spi_do_6		  ( spi_rx_do_6      ),
.spi_do_7		  ( spi_rx_do_7      ),
.spi_do_8		  ( spi_rx_do_8      ),
.spi_oval		  ( spi_rx_oval      ),
.spi_oval_stb     ( spi_rx_oval_stb  ),
.spi_olast        ( spi_rx_olast     ),

.spi_iclk         ( spi_rx_extcon_iclk       ),
.spi_enb          ( spi_rx_extcon_ics        ),
//                                 
//.isop           (                          ),
.idata_1          (  spi_rx_extcon_idata_1   ),
.idata_2          (  spi_rx_extcon_idata_2   ),
.idata_3          (  spi_rx_extcon_idata_3   ),
.idata_4          (  spi_rx_extcon_idata_4   ),
.idata_5          (  spi_rx_extcon_idata_5   ),
.idata_6          (  spi_rx_extcon_idata_6   ),
.idata_7          (  spi_rx_extcon_idata_7   ),
.idata_8          (  spi_rx_extcon_idata_8   )

);


	endmodule