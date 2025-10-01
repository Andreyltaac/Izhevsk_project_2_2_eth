#-------------------------------------------------------------------------------
#DIO_ARTIX
#-------------------------------------------------------------------------------
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[0]}]; # output  FPGA_DIO_0
set_property -dict {PACKAGE_PIN P22 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[1]}]; # output  FPGA_DIO_1
set_property -dict {PACKAGE_PIN R22 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[2]}]; # output  FPGA_DIO_2
set_property -dict {PACKAGE_PIN P21 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[3]}]; # output  FPGA_DIO_3
set_property -dict {PACKAGE_PIN R21 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[4]}]; # output  FPGA_DIO_4
set_property -dict {PACKAGE_PIN U22 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[5]}]; # output  FPGA_DIO_5
set_property -dict {PACKAGE_PIN V22 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[6]}]; # output  FPGA_DIO_6
set_property -dict {PACKAGE_PIN T21 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[7]}]; # output  FPGA_DIO_7
set_property -dict {PACKAGE_PIN U21 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[8]}]; # output  FPGA_DIO_8
set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[9]}]; # output  FPGA_DIO_9
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[10]}]; # output  FPGA_DIO_10
##set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33} [get_ports RESET_AXI_BRIDGE]
set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[11]}]; # output  FPGA_DIO_12 
set_property -dict {PACKAGE_PIN W21 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[12]}]; # output  FPGA_DIO_13
set_property -dict {PACKAGE_PIN W22 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[13]}]; # output  FPGA_DIO_14 
set_property -dict {PACKAGE_PIN AA20 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[14]}]; # output  FPGA_DIO_15



set_property -dict {PACKAGE_PIN AA21 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[0]}]; # output  FPGA_DIO_16
set_property -dict {PACKAGE_PIN Y21 IOSTANDARD LVCMOS33} [get_ports  {AXI_TX_DATA_IN[1]}]; # output  FPGA_DIO_17
set_property -dict {PACKAGE_PIN Y22 IOSTANDARD LVCMOS33} [get_ports  {AXI_TX_DATA_IN[2]}]; # output  FPGA_DIO_18
set_property -dict {PACKAGE_PIN AB21 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[3]}]; # output  FPGA_DIO_19
set_property -dict {PACKAGE_PIN AB22 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[4]}]; # output  FPGA_DIO_20
set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports  {AXI_TX_DATA_IN[5]}]; # output  FPGA_DIO_21
set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports  {AXI_TX_DATA_IN[6]}]; # output  FPGA_DIO_22
set_property -dict {PACKAGE_PIN W20 IOSTANDARD LVCMOS33} [get_ports  {AXI_TX_DATA_IN[7]}]; # output  FPGA_DIO_23
set_property -dict {PACKAGE_PIN V18 IOSTANDARD LVCMOS33} [get_ports  {AXI_TX_DATA_IN[8]}]; # output  FPGA_DIO_24
set_property -dict {PACKAGE_PIN V19 IOSTANDARD LVCMOS33} [get_ports  {AXI_TX_DATA_IN[9]}]; # output  FPGA_DIO_25
set_property -dict {PACKAGE_PIN AA19 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[10]}]; # output  FPGA_DIO_26
set_property -dict {PACKAGE_PIN AB20 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[11]}]; # output  FPGA_DIO_27
set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports  {AXI_TX_DATA_IN[12]}]; # output  FPGA_DIO_28
set_property -dict {PACKAGE_PIN W17 IOSTANDARD LVCMOS33} [get_ports  {AXI_TX_DATA_IN[13]}]; # output  FPGA_DIO_29
set_property -dict {PACKAGE_PIN AA18 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[14]}]; # output  FPGA_DIO_30

set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports  {AXI_RX_CLK_OUT}]; # output  FPGA_SOM_SYN_P
set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports  {AXI_TX_CLK_IN}]; # output  FPGA_SOM_SYN_N

set_property -dict {PACKAGE_PIN AB18 IOSTANDARD LVCMOS33} [get_ports ip2intc_irpt]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports FPGA_REF_40MHZ]
#-------------------------------------------------------------------------------
#DIO_ARTIX
#-------------------------------------------------------------------------------

#ad9361_1. LINK.
#RX. 
set_property -dict {PACKAGE_PIN J19 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_DCLK_1_P]
set_property -dict {PACKAGE_PIN H19 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_DCLK_1_N]
set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_RX_FRAME1_P]
set_property -dict {PACKAGE_PIN G18 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_RX_FRAME1_N]
set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_P[0]}]
set_property -dict {PACKAGE_PIN N19 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_N[0]}]
set_property -dict {PACKAGE_PIN N22 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_P[1]}]
set_property -dict {PACKAGE_PIN M22 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_N[1]}]
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_P[2]}]
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_N[2]}]
set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_P[3]}]
set_property -dict {PACKAGE_PIN M16 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_N[3]}]
set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_P[4]}]
set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_N[4]}]
set_property -dict {PACKAGE_PIN L14 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_P[5]}]
set_property -dict {PACKAGE_PIN L15 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_N[5]}]
#RX. 

#TX. 
set_property -dict {PACKAGE_PIN J20 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_FB_CLK_1_P]
set_property -dict {PACKAGE_PIN J21 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_FB_CLK_1_N]
set_property -dict {PACKAGE_PIN H20 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_TX_FRAME1_P]
set_property -dict {PACKAGE_PIN G20 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_TX_FRAME1_N]
set_property -dict {PACKAGE_PIN M13 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_P[0]}]
set_property -dict {PACKAGE_PIN L13 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_N[0]}]
set_property -dict {PACKAGE_PIN K13 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_P[1]}]
set_property -dict {PACKAGE_PIN K14 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_N[1]}]
set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_P[2]}]
set_property -dict {PACKAGE_PIN H14 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_N[2]}]
set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_P[3]}]
set_property -dict {PACKAGE_PIN K19 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_N[3]}]
set_property -dict {PACKAGE_PIN K21 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_P[4]}]
set_property -dict {PACKAGE_PIN K22 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_N[4]}]
set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_P[5]}]
set_property -dict {PACKAGE_PIN J17 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_N[5]}]
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS25} [get_ports ad9361_EN_1]
set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS25} [get_ports ad9361_TXNRX_1]
set_property -dict {PACKAGE_PIN W12 IOSTANDARD LVCMOS25} [get_ports ad9361_EN_AGC_1]
set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVCMOS25} [get_ports ad9361_RESET_1]

set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS25} [get_ports ad9361_SPI_CS_1]
set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS25} [get_ports ad9361_SPI_CLK_1]
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS25} [get_ports ad9361_SPI_DI_1]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS25} [get_ports ad9361_SPI_DO_1]

#TX. 
#ad9361_1. LINK.


#ad9361_2. SERVICE.
#RX. 
set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_DCLK_2_P]
set_property -dict {PACKAGE_PIN B2 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_DCLK_2_N]
set_property -dict {PACKAGE_PIN H3 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_RX_FRAME2_P]
set_property -dict {PACKAGE_PIN G3 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_RX_FRAME2_N]
set_property -dict {PACKAGE_PIN J5 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P1_P[0]}]
set_property -dict {PACKAGE_PIN H5 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P1_N[0]}]
set_property -dict {PACKAGE_PIN K1 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P1_P[1]}]
set_property -dict {PACKAGE_PIN J1 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P1_N[1]}]
set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P1_P[2]}]
set_property -dict {PACKAGE_PIN G4 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P1_N[2]}]
set_property -dict {PACKAGE_PIN H2 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P1_P[3]}]
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P1_N[3]}]
set_property -dict {PACKAGE_PIN M6 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P1_P[4]}]
set_property -dict {PACKAGE_PIN M5 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P1_N[4]}]
set_property -dict {PACKAGE_PIN P6 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P1_P[5]}]
set_property -dict {PACKAGE_PIN N5 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P1_N[5]}]
#RX. 


#TX. 
set_property -dict {PACKAGE_PIN B1 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_FB_CLK_2_P]
set_property -dict {PACKAGE_PIN A1 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_FB_CLK_2_N]
set_property -dict {PACKAGE_PIN F3 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_TX_FRAME2_P]
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_TX_FRAME2_N]
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P0_P[0]}]
set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P0_N[0]}]
set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P0_P[1]}]
set_property -dict {PACKAGE_PIN D1 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P0_N[1]}]
set_property -dict {PACKAGE_PIN M1 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P0_P[2]}]
set_property -dict {PACKAGE_PIN L1 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P0_N[2]}]
set_property -dict {PACKAGE_PIN E2 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P0_P[3]}]
set_property -dict {PACKAGE_PIN D2 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P0_N[3]}]
set_property -dict {PACKAGE_PIN M3 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P0_P[4]}]
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P0_N[4]}]
set_property -dict {PACKAGE_PIN P5 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P0_P[5]}]
set_property -dict {PACKAGE_PIN P4 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_2_P0_N[5]}]
set_property -dict {PACKAGE_PIN W10 IOSTANDARD LVCMOS25} [get_ports ad9361_EN_2]
set_property -dict {PACKAGE_PIN AA9 IOSTANDARD LVCMOS25} [get_ports ad9361_TXNRX_2]
set_property -dict {PACKAGE_PIN W11 IOSTANDARD LVCMOS25} [get_ports ad9361_EN_AGC_2]
set_property -dict {PACKAGE_PIN AB11 IOSTANDARD LVCMOS25} [get_ports ad9361_RESET_2]

set_property -dict {PACKAGE_PIN AB12 IOSTANDARD LVCMOS25} [get_ports ad9361_SPI_CS_2]
set_property -dict {PACKAGE_PIN AB13 IOSTANDARD LVCMOS25} [get_ports ad9361_SPI_CLK_2]
set_property -dict {PACKAGE_PIN V10 IOSTANDARD LVCMOS25} [get_ports ad9361_SPI_DI_2]
set_property -dict {PACKAGE_PIN AB10 IOSTANDARD LVCMOS25} [get_ports ad9361_SPI_DO_2]

#TX. 
#ad9361_2. SERVICE.

#ad9361_3. SERVICE.
#RX. 
set_property -dict {PACKAGE_PIN W6 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_DCLK_3_P]
set_property -dict {PACKAGE_PIN W5 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_DCLK_3_N]
set_property -dict {PACKAGE_PIN AB3 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_RX_FRAME3_P]
set_property -dict {PACKAGE_PIN AB2 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_RX_FRAME3_N]
set_property -dict {PACKAGE_PIN V9 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P1_P[0]}]
set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P1_N[0]}]
set_property -dict {PACKAGE_PIN W9 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P1_P[1]}]
set_property -dict {PACKAGE_PIN Y9 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P1_N[1]}]
set_property -dict {PACKAGE_PIN Y8 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P1_P[2]}]
set_property -dict {PACKAGE_PIN Y7 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P1_N[2]}]
set_property -dict {PACKAGE_PIN AB7 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P1_P[3]}]
set_property -dict {PACKAGE_PIN AB6 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P1_N[3]}]
set_property -dict {PACKAGE_PIN Y6 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P1_P[4]}]
set_property -dict {PACKAGE_PIN AA6 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P1_N[4]}]
set_property -dict {PACKAGE_PIN AA5 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P1_P[5]}]
set_property -dict {PACKAGE_PIN AB5 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P1_N[5]}]
#RX. 


#TX. 
set_property -dict {PACKAGE_PIN Y4 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_FB_CLK_3_P]
set_property -dict {PACKAGE_PIN AA4 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_FB_CLK_3_N]
set_property -dict {PACKAGE_PIN U6 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_TX_FRAME3_P]
set_property -dict {PACKAGE_PIN V5 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_TX_FRAME3_N]
set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P0_P[0]}]
set_property -dict {PACKAGE_PIN W7 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P0_N[0]}]
set_property -dict {PACKAGE_PIN R6 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P0_P[1]}]
set_property -dict {PACKAGE_PIN T6 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P0_N[1]}]
set_property -dict {PACKAGE_PIN V4 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P0_P[2]}]
set_property -dict {PACKAGE_PIN W4 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P0_N[2]}]
set_property -dict {PACKAGE_PIN Y3 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P0_P[3]}]
set_property -dict {PACKAGE_PIN AA3 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P0_N[3]}]
set_property -dict {PACKAGE_PIN AA1 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P0_P[4]}]
set_property -dict {PACKAGE_PIN AB1 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P0_N[4]}]
set_property -dict {PACKAGE_PIN AA8 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P0_P[5]}]
set_property -dict {PACKAGE_PIN AB8 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_3_P0_N[5]}]
set_property -dict {PACKAGE_PIN AA11 IOSTANDARD LVCMOS25} [get_ports ad9361_EN_3]
set_property -dict {PACKAGE_PIN Y12 IOSTANDARD LVCMOS25} [get_ports ad9361_TXNRX_3]
set_property -dict {PACKAGE_PIN AA10 IOSTANDARD LVCMOS25} [get_ports ad9361_EN_AGC_3]
set_property -dict {PACKAGE_PIN AA15 IOSTANDARD LVCMOS25} [get_ports ad9361_RESET_3]

set_property -dict {PACKAGE_PIN AB16 IOSTANDARD LVCMOS25} [get_ports ad9361_SPI_CS_3]
set_property -dict {PACKAGE_PIN AB15 IOSTANDARD LVCMOS25} [get_ports ad9361_SPI_CLK_3]
set_property -dict {PACKAGE_PIN AA14 IOSTANDARD LVCMOS25} [get_ports ad9361_SPI_DI_3]
set_property -dict {PACKAGE_PIN AB17 IOSTANDARD LVCMOS25} [get_ports ad9361_SPI_DO_3]
#TX. 
#ad9361_3. SERVICE.


#ad9364_0. OBSERVER CHANNEL.
#RX. 
set_property -dict {PACKAGE_PIN D17 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9364_DCLK_P]
set_property -dict {PACKAGE_PIN C17 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9364_DCLK_N]
set_property -dict {PACKAGE_PIN C18 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9364_RX_FRAME_P]
set_property -dict {PACKAGE_PIN C19 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9364_RX_FRAME_N]
set_property -dict {PACKAGE_PIN B17 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_P[0]}]
set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_N[0]}]
set_property -dict {PACKAGE_PIN A18 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_P[1]}]
set_property -dict {PACKAGE_PIN A19 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_N[1]}]
set_property -dict {PACKAGE_PIN B20 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_P[2]}]
set_property -dict {PACKAGE_PIN A20 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_N[2]}]
set_property -dict {PACKAGE_PIN B21 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_P[3]}]
set_property -dict {PACKAGE_PIN A21 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_N[3]}]
set_property -dict {PACKAGE_PIN G21 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_P[4]}]
set_property -dict {PACKAGE_PIN G22 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_N[4]}]
set_property -dict {PACKAGE_PIN C22 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_P[5]}]
set_property -dict {PACKAGE_PIN B22 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_N[5]}]
#RX. 

#TX. 
set_property -dict {PACKAGE_PIN A15 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9364_FB_CLK_P]
set_property -dict {PACKAGE_PIN A16 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9364_FB_CLK_N]
set_property -dict {PACKAGE_PIN C13 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9364_TX_FRAME_P]
set_property -dict {PACKAGE_PIN B13 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9364_TX_FRAME_N]
set_property -dict {PACKAGE_PIN E16 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_P[0]}]
set_property -dict {PACKAGE_PIN D16 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_N[0]}]
set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_P[1]}]
set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_N[1]}]
set_property -dict {PACKAGE_PIN F19 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_P[2]}]
set_property -dict {PACKAGE_PIN F20 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_N[2]}]
set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_P[3]}]
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_N[3]}]
set_property -dict {PACKAGE_PIN E21 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_P[4]}]
set_property -dict {PACKAGE_PIN D21 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_N[4]}]
set_property -dict {PACKAGE_PIN E22 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_P[5]}]
set_property -dict {PACKAGE_PIN D22 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_N[5]}]
set_property -dict {PACKAGE_PIN Y11 IOSTANDARD LVCMOS25} [get_ports ad9364_EN]
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS25} [get_ports ad9364_TXNRX]
set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS25} [get_ports ad9364_EN_AGC]
set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS25} [get_ports ad9364_RESET]

set_property -dict {PACKAGE_PIN AA16 IOSTANDARD LVCMOS25} [get_ports ad9364_SPI_CS]
set_property -dict {PACKAGE_PIN Y13 IOSTANDARD LVCMOS25} [get_ports ad9364_SPI_CLK]
set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVCMOS25} [get_ports ad9364_SPI_DI]
set_property -dict {PACKAGE_PIN AA13 IOSTANDARD LVCMOS25} [get_ports ad9364_SPI_DO]

#TX. 
#ad9364_0. OBSERVER CHANNEL.


#Primary clocks
#Created primary clock
create_clock -period 4.000 -name prm_clk_ad1 [get_ports ad9361_DCLK_1_P]
create_clock -period 4.000 -name prm_clk_ad2 [get_ports ad9361_DCLK_2_P]
create_clock -period 4.000 -name prm_clk_ad3 [get_ports ad9361_DCLK_3_P]
create_clock -period 4.000 -name prm_clk_ad4 [get_ports ad9364_DCLK_P]
create_clock -period 25.000 -name prm_clk_40 [get_ports FPGA_REF_40MHZ]
#Primary clocks


#-------------------------------------------------------------------------------
#HW constraimts
#-------------------------------------------------------------------------------
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets design_1_i/AXI_Peripheral/AXI_C2C/inst/slave_fpga_gen.axi_chip2chip_slave_phy_inst/slave_sio_phy.axi_chip2chip_sio_input_inst/axi_chip2chip_clk_gen_inst/clk_in_ibufg]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets design_1_i/AD9361_ctrl/AD9361_2/axi_ad9361_2/inst/i_dev_if/i_clk/clk_ibuf_s]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets design_1_i/AD9361_ctrl/AD9361_3/axi_ad9361_3/inst/i_dev_if/i_clk/clk_ibuf_s]


set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins design_1_i/clk_axi/clk_common/inst/mmcm_adv_inst/CLKOUT1]] -group [get_clocks -of_objects [get_pins design_1_i/AD9361_ctrl/ad9361_clk/clk_DSP/inst/mmcm_adv_inst/CLKOUT0]]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins design_1_i/clk_axi/clk_common/inst/mmcm_adv_inst/CLKOUT1]] -group [get_clocks -of_objects [get_pins design_1_i/AD9361_ctrl/ad9361_clk/clk_DSP/inst/mmcm_adv_inst/CLKOUT1]]

set_property CONFIG_MODE SPIx1 [current_design]
set_property BITSTREAM.CONFIG.PERSIST NO [current_design]


set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins design_1_i/AD9361_ctrl/ad9361_clk/clk_DSP/inst/mmcm_adv_inst/CLKOUT1]] -group [get_clocks -of_objects [get_pins design_1_i/AD9361_ctrl/ad9361_clk/clk_DSP/inst/mmcm_adv_inst/CLKOUT0]]
