#-------------------------------------------------------------------------------
#DIO_KINTEX_v1
#-------------------------------------------------------------------------------
##Pins located here belong to bank 14
#set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[0]}]
#set_property -dict {PACKAGE_PIN P22 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[1]}]
#set_property -dict {PACKAGE_PIN R22 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[2]}]
#set_property -dict {PACKAGE_PIN P21 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[3]}]
#set_property -dict {PACKAGE_PIN R21 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[4]}]
#set_property -dict {PACKAGE_PIN U22 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[5]}]
#set_property -dict {PACKAGE_PIN V22 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[6]}]
#set_property -dict {PACKAGE_PIN T21 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[7]}]
#set_property -dict {PACKAGE_PIN U21 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[8]}]
#set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[9]}]
#set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[10]}]
#set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33} [get_ports RESET_AXI_BRIDGE]
#set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[11]}]
#set_property -dict {PACKAGE_PIN W21 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[12]}]
#set_property -dict {PACKAGE_PIN W22 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[13]}]
#set_property -dict {PACKAGE_PIN AA20 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[14]}]



#set_property -dict {PACKAGE_PIN AA21 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[0]}]
#set_property -dict {PACKAGE_PIN Y21 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[1]}]
#set_property -dict {PACKAGE_PIN Y22 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[2]}]
#set_property -dict {PACKAGE_PIN AB21 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[3]}]
#set_property -dict {PACKAGE_PIN AB22 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[4]}]
#set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[5]}]
#set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports AXI_TX_CLK_IN]
#set_property -dict {PACKAGE_PIN W20 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[7]}]
#set_property -dict {PACKAGE_PIN V18 IOSTANDARD LVCMOS33} [get_ports AXI_RX_CLK_OUT]
#set_property -dict {PACKAGE_PIN V19 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[9]}]
#set_property -dict {PACKAGE_PIN AA19 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[10]}]
#set_property -dict {PACKAGE_PIN AB20 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[11]}]
#set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[12]}]
#set_property -dict {PACKAGE_PIN W17 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[13]}]
#set_property -dict {PACKAGE_PIN AA18 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[14]}]
#set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[6]}]
#set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[8]}]








#ad9361_1. LINK.
#RX
set_property  -dict {PACKAGE_PIN  G17  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports ad9361_DCLK_1_P]
set_property  -dict {PACKAGE_PIN  F18  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports ad9361_DCLK_1_N]
set_property  -dict {PACKAGE_PIN  B17  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports ad9361_RX_FRAME1_P]
set_property  -dict {PACKAGE_PIN  A17  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports ad9361_RX_FRAME1_N]
set_property  -dict {PACKAGE_PIN  K16  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P1_P[0]}]
set_property  -dict {PACKAGE_PIN  K17  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P1_N[0]}]
set_property  -dict {PACKAGE_PIN  M17  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P1_P[1]}]
set_property  -dict {PACKAGE_PIN  L18  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P1_N[1]}]
set_property  -dict {PACKAGE_PIN  L19  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P1_P[2]}]
set_property  -dict {PACKAGE_PIN  L20  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P1_N[2]}]
set_property  -dict {PACKAGE_PIN  J18  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P1_P[3]}]
set_property  -dict {PACKAGE_PIN  J19  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P1_N[3]}]
set_property  -dict {PACKAGE_PIN  K20  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P1_P[4]}]
set_property  -dict {PACKAGE_PIN  J20  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P1_N[4]}]
set_property  -dict {PACKAGE_PIN  H17  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P1_P[5]}]
set_property  -dict {PACKAGE_PIN  H18  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P1_N[5]}]
#RX

#TX
set_property  -dict {PACKAGE_PIN  F17  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports ad9361_FB_CLK_1_P] 
set_property  -dict {PACKAGE_PIN  E17  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports ad9361_FB_CLK_1_N] 
set_property  -dict {PACKAGE_PIN  L17  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports ad9361_TX_FRAME1_P]
set_property  -dict {PACKAGE_PIN  K18  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports ad9361_TX_FRAME1_N]
set_property  -dict {PACKAGE_PIN  A18  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P0_P[0]}]
set_property  -dict {PACKAGE_PIN  A19  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P0_N[0]}]
set_property  -dict {PACKAGE_PIN  C16  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P0_P[1]}]
set_property  -dict {PACKAGE_PIN  B16  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P0_N[1]}]
set_property  -dict {PACKAGE_PIN  E18  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P0_P[2]}]
set_property  -dict {PACKAGE_PIN  D18  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P0_N[2]}]
set_property  -dict {PACKAGE_PIN  C19  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P0_P[3]}]
set_property  -dict {PACKAGE_PIN  B19  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P0_N[3]}]
set_property  -dict {PACKAGE_PIN  C17  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P0_P[4]}]
set_property  -dict {PACKAGE_PIN  C18  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P0_N[4]}]
set_property  -dict {PACKAGE_PIN  D15  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P0_P[5]}]
set_property  -dict {PACKAGE_PIN  D16  IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9361_1_P0_N[5]}]
set_property  -dict {PACKAGE_PIN  L24  IOSTANDARD LVCMOS18} [get_ports ad9361_EN_1]    
set_property  -dict {PACKAGE_PIN  K26  IOSTANDARD LVCMOS18} [get_ports ad9361_TXNRX_1] 
set_property  -dict {PACKAGE_PIN  K25  IOSTANDARD LVCMOS18} [get_ports ad9361_EN_AGC_1]
set_property  -dict {PACKAGE_PIN  M25  IOSTANDARD LVCMOS18} [get_ports ad9361_RESET_1] 

set_property -dict {PACKAGE_PIN M26 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_CS_1]
set_property -dict {PACKAGE_PIN M24 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_CLK_1]
set_property -dict {PACKAGE_PIN L25 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_DI_1]
set_property -dict {PACKAGE_PIN N26 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_DO_1]
#TX

#ad9361_1. LINK.

#ad9361_2. SERVICE.
#RX
set_property  -dict {PACKAGE_PIN  AA9   IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_DCLK_2_P]   
set_property  -dict {PACKAGE_PIN  AB9   IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_DCLK_2_N]   
set_property  -dict {PACKAGE_PIN  AC9   IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_RX_FRAME2_P]
set_property  -dict {PACKAGE_PIN  AD9   IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_RX_FRAME2_N]
set_property  -dict {PACKAGE_PIN  AD10  IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_P[0]}]
set_property  -dict {PACKAGE_PIN  AE10  IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_N[0]}]
set_property  -dict {PACKAGE_PIN  AE8   IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_P[1]}]
set_property  -dict {PACKAGE_PIN  AF8   IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_N[1]}]
set_property  -dict {PACKAGE_PIN  AF10  IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_P[2]}]
set_property  -dict {PACKAGE_PIN  AF9   IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_N[2]}]
set_property  -dict {PACKAGE_PIN  AD11  IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_P[3]}]
set_property  -dict {PACKAGE_PIN  AE11  IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_N[3]}]
set_property  -dict {PACKAGE_PIN  AE12  IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_P[4]}]
set_property  -dict {PACKAGE_PIN  AF12  IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_N[4]}]
set_property  -dict {PACKAGE_PIN  AE13  IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_P[5]}]
set_property  -dict {PACKAGE_PIN  AF13  IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_N[5]}]
#RX

#TX
set_property  -dict {PACKAGE_PIN  AA10  IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_FB_CLK_2_P] 
set_property  -dict {PACKAGE_PIN  AB10  IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_FB_CLK_2_N] 
set_property  -dict {PACKAGE_PIN  AB11  IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_TX_FRAME2_P]
set_property  -dict {PACKAGE_PIN  AC11  IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_TX_FRAME2_N]
set_property  -dict {PACKAGE_PIN  V9    IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_P[0]}]
set_property  -dict {PACKAGE_PIN  W8    IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_N[0]}]
set_property  -dict {PACKAGE_PIN  V8    IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_P[1]}]
set_property  -dict {PACKAGE_PIN  V7    IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_N[1]}]
set_property  -dict {PACKAGE_PIN  Y8    IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_P[2]}]
set_property  -dict {PACKAGE_PIN  Y7    IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_N[2]}]
set_property  -dict {PACKAGE_PIN  W10   IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_P[3]}]
set_property  -dict {PACKAGE_PIN  W9    IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_N[3]}]
set_property  -dict {PACKAGE_PIN  V11   IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_P[4]}]
set_property  -dict {PACKAGE_PIN  W11   IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_N[4]}]
set_property  -dict {PACKAGE_PIN  Y11   IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_P[5]}]
set_property  -dict {PACKAGE_PIN  Y10   IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_N[5]}]
set_property  -dict {PACKAGE_PIN  N21   IOSTANDARD LVCMOS18} [get_ports ad9361_EN_2]    
set_property  -dict {PACKAGE_PIN  R25   IOSTANDARD LVCMOS18} [get_ports ad9361_TXNRX_2] 
set_property  -dict {PACKAGE_PIN  N19   IOSTANDARD LVCMOS18} [get_ports ad9361_EN_AGC_2]
set_property  -dict {PACKAGE_PIN  P24   IOSTANDARD LVCMOS18} [get_ports ad9361_RESET_2]

set_property -dict {PACKAGE_PIN P23 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_CS_2]
set_property -dict {PACKAGE_PIN P26 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_CLK_2]
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_DI_2] 
set_property -dict {PACKAGE_PIN R26 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_DO_2]
#TX
#ad9361_2. SERVICE.

#ad9361_3. SERVICE.
#RX
set_property  -dict {PACKAGE_PIN  AA3   IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_DCLK_3_P]     
set_property  -dict {PACKAGE_PIN  AA2   IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_DCLK_3_N]     
set_property  -dict {PACKAGE_PIN  AB2   IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_RX_FRAME3_P] 
set_property  -dict {PACKAGE_PIN  AC2   IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_RX_FRAME3_N] 
set_property  -dict {PACKAGE_PIN  U6    IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_P[0]}]  
set_property  -dict {PACKAGE_PIN  U5    IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_N[0]}]  
set_property  -dict {PACKAGE_PIN  U7    IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_P[1]}]  
set_property  -dict {PACKAGE_PIN  V6    IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_N[1]}]  
set_property  -dict {PACKAGE_PIN  W6    IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_P[2]}]  
set_property  -dict {PACKAGE_PIN  W5    IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_N[2]}]  
set_property  -dict {PACKAGE_PIN  V4    IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_P[3]}] 
set_property  -dict {PACKAGE_PIN  W4    IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_N[3]}] 
set_property  -dict {PACKAGE_PIN  U2    IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_P[4]}]  
set_property  -dict {PACKAGE_PIN  U1    IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_N[4]}] 
set_property  -dict {PACKAGE_PIN  V3    IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_P[5]}] 
set_property  -dict {PACKAGE_PIN  W3    IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_N[5]}] 
#RX

#TX
set_property  -dict {PACKAGE_PIN  AC4   IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_FB_CLK_3_P]  
set_property  -dict {PACKAGE_PIN  AC3   IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_FB_CLK_3_N] 
set_property  -dict {PACKAGE_PIN  AA4   IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_TX_FRAME3_P] 
set_property  -dict {PACKAGE_PIN  AB4   IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_TX_FRAME3_N] 
set_property  -dict {PACKAGE_PIN  AE6   IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_P[0]}] 
set_property  -dict {PACKAGE_PIN  AE5   IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_N[0]}] 
set_property  -dict {PACKAGE_PIN  AF5   IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_P[1]}] 
set_property  -dict {PACKAGE_PIN  AF4   IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_N[1]}] 
set_property  -dict {PACKAGE_PIN  AE3   IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_P[2]}] 
set_property  -dict {PACKAGE_PIN  AE2   IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_N[2]}] 
set_property  -dict {PACKAGE_PIN  AF3   IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_P[3]}] 
set_property  -dict {PACKAGE_PIN  AF2   IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_N[3]}]
set_property  -dict {PACKAGE_PIN  AD1   IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_P[4]}]
set_property  -dict {PACKAGE_PIN  AE1   IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_N[4]}]
set_property  -dict {PACKAGE_PIN  AD4   IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_P[5]}]
set_property  -dict {PACKAGE_PIN  AD3   IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_N[5]}]
set_property  -dict {PACKAGE_PIN  P21   IOSTANDARD LVCMOS18} [get_ports ad9361_EN_3]   
set_property  -dict {PACKAGE_PIN  R21   IOSTANDARD LVCMOS18} [get_ports ad9361_TXNRX_3] 
set_property  -dict {PACKAGE_PIN  T20   IOSTANDARD LVCMOS18} [get_ports ad9361_EN_AGC_3]
set_property  -dict {PACKAGE_PIN  R23   IOSTANDARD LVCMOS18} [get_ports ad9361_RESET_3]

set_property -dict {PACKAGE_PIN  T23 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_CS_3]
set_property -dict {PACKAGE_PIN  T22 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_CLK_3]
set_property -dict {PACKAGE_PIN  R20 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_DI_3]
set_property -dict {PACKAGE_PIN  T24 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_DO_3]
#TX
#ad9361_3. SERVICE.


#ad9364_0. OBSERVER CHANNEL.
#RX
set_property  -dict {PACKAGE_PIN  C12   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports ad9364_DCLK_P]    
set_property  -dict {PACKAGE_PIN  C11   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports ad9364_DCLK_N]    
set_property  -dict {PACKAGE_PIN  G11   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports ad9364_RX_FRAME_P]
set_property  -dict {PACKAGE_PIN  F10   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports ad9364_RX_FRAME_N]
set_property  -dict {PACKAGE_PIN  A13   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P1_P[0]}] 
set_property  -dict {PACKAGE_PIN  A12   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P1_N[0]}] 
set_property  -dict {PACKAGE_PIN  B12   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P1_P[1]}] 
set_property  -dict {PACKAGE_PIN  B11   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P1_N[1]}] 
set_property  -dict {PACKAGE_PIN  C14   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P1_P[2]}] 
set_property  -dict {PACKAGE_PIN  C13   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P1_N[2]}] 
set_property  -dict {PACKAGE_PIN  B14   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P1_P[3]}] 
set_property  -dict {PACKAGE_PIN  A14   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P1_N[3]}] 
set_property  -dict {PACKAGE_PIN  B10   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P1_P[4]}] 
set_property  -dict {PACKAGE_PIN  A10   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P1_N[4]}] 
set_property  -dict {PACKAGE_PIN  B15   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P1_P[5]}] 
set_property  -dict {PACKAGE_PIN  A15   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P1_N[5]}] 
#RX

#TX
set_property  -dict {PACKAGE_PIN  E11   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports ad9364_FB_CLK_P]  
set_property  -dict {PACKAGE_PIN  D11   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports ad9364_FB_CLK_N]  
set_property  -dict {PACKAGE_PIN  E10   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports ad9364_TX_FRAME_P]
set_property  -dict {PACKAGE_PIN  D10   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports ad9364_TX_FRAME_N]
set_property  -dict {PACKAGE_PIN  H9    IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P0_P[0]}] 
set_property  -dict {PACKAGE_PIN  H8    IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P0_N[0]}] 
set_property  -dict {PACKAGE_PIN  G10   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P0_P[1]}] 
set_property  -dict {PACKAGE_PIN  G9    IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P0_N[1]}] 
set_property  -dict {PACKAGE_PIN  J11   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P0_P[2]}] 
set_property  -dict {PACKAGE_PIN  J10   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P0_N[2]}] 
set_property  -dict {PACKAGE_PIN  H12   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P0_P[3]}] 
set_property  -dict {PACKAGE_PIN  H11   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P0_N[3]}] 
set_property  -dict {PACKAGE_PIN  J13   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P0_P[4]}] 
set_property  -dict {PACKAGE_PIN  H13   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P0_N[4]}] 
set_property  -dict {PACKAGE_PIN  H14   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P0_P[5]}] 
set_property  -dict {PACKAGE_PIN  G14   IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {ad9364_P0_N[5]}] 
set_property  -dict {PACKAGE_PIN  N16   IOSTANDARD LVCMOS18} [get_ports ad9364_EN]     
set_property  -dict {PACKAGE_PIN  N24   IOSTANDARD LVCMOS18} [get_ports ad9364_TXNRX]  
set_property  -dict {PACKAGE_PIN  P25   IOSTANDARD LVCMOS18} [get_ports ad9364_EN_AGC] 
set_property  -dict {PACKAGE_PIN  M22   IOSTANDARD LVCMOS18} [get_ports ad9364_RESET] 

set_property -dict {PACKAGE_PIN N22 IOSTANDARD LVCMOS18} [get_ports ad9364_SPI_CS]
set_property -dict {PACKAGE_PIN N23 IOSTANDARD LVCMOS18} [get_ports ad9364_SPI_CLK]
set_property -dict {PACKAGE_PIN T25 IOSTANDARD LVCMOS18} [get_ports ad9364_SPI_DI] 
set_property -dict {PACKAGE_PIN M21 IOSTANDARD LVCMOS18} [get_ports ad9364_SPI_DO]
#TX
#ad9364_0. OBSERVER CHANNEL.



#DIO_KINTEX_DSP
#Pins located here belong to bank 14
set_property  -dict {PACKAGE_PIN  H26  IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[0]}]         ; ## FPGA DIO_0
set_property  -dict {PACKAGE_PIN  B24  IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[1]}]         ; ## FPGA DIO_1
set_property  -dict {PACKAGE_PIN  A25  IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[2]}]         ; ## FPGA DIO_2
set_property  -dict {PACKAGE_PIN  E21  IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[3]}]         ; ## FPGA DIO_3
set_property  -dict {PACKAGE_PIN  K23  IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[4]}]         ; ## FPGA DIO_4
set_property  -dict {PACKAGE_PIN  A22  IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[5]}]         ; ## FPGA DIO_5
set_property  -dict {PACKAGE_PIN  F25  IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[6]}]         ; ## FPGA DIO_6
set_property  -dict {PACKAGE_PIN  G24  IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[7]}]         ; ## FPGA DIO_7
set_property  -dict {PACKAGE_PIN  C22  IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[8]}]         ; ## FPGA DIO_8
set_property  -dict {PACKAGE_PIN  E23  IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[9]}]         ; ## FPGA DIO_9
set_property  -dict {PACKAGE_PIN  E22  IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[10]}]         ; ## FPGA DIO_10

set_property  -dict {PACKAGE_PIN  C23  IOSTANDARD LVCMOS33} [get_ports RESET_AXI_BRIDGE]             ; ## FPGA DIO_11
set_property  -dict {PACKAGE_PIN  G25  IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[11]}]        ; ## FPGA DIO_12
set_property  -dict {PACKAGE_PIN  A24  IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[12]}]        ; ## FPGA DIO_13
set_property  -dict {PACKAGE_PIN  F24  IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[13]}]        ; ## FPGA DIO_14
set_property  -dict {PACKAGE_PIN  D25  IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[14]}]        ; ## FPGA DIO_15


set_property  -dict {PACKAGE_PIN  C21  IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[0]}]         ; ## FPGA DIO_16             
set_property  -dict {PACKAGE_PIN  A20  IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[1]}]         ; ## FPGA DIO_17               
set_property  -dict {PACKAGE_PIN  E26  IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[2]}]         ; ## FPGA DIO_18               
set_property  -dict {PACKAGE_PIN  B21  IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[3]}]         ; ## FPGA DIO_19             
set_property  -dict {PACKAGE_PIN  D23  IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[4]}]         ; ## FPGA DIO_20             
set_property  -dict {PACKAGE_PIN  C26  IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[5]}]         ; ## FPGA DIO_21               
set_property  -dict {PACKAGE_PIN  B20  IOSTANDARD LVCMOS33} [get_ports AXI_TX_CLK_IN]               ; ## FPGA DIO_22               
set_property  -dict {PACKAGE_PIN  D21  IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[7]}]         ; ## FPGA DIO_23               
set_property  -dict {PACKAGE_PIN  G26  IOSTANDARD LVCMOS33} [get_ports AXI_RX_CLK_OUT]              ; ## FPGA DIO_24               
set_property  -dict {PACKAGE_PIN  D24  IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[9]}]         ; ## FPGA DIO_25               
set_property  -dict {PACKAGE_PIN  E25  IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[10]}]         ; ## FPGA DIO_26               


set_property  -dict {PACKAGE_PIN  C24  IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[11]}]        ; ## FPGA DIO_27             
set_property  -dict {PACKAGE_PIN  B22  IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[12]}]        ; ## FPGA DIO_28               
set_property  -dict {PACKAGE_PIN  L22  IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[13]}]        ; ## FPGA DIO_29               
set_property  -dict {PACKAGE_PIN  B26  IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[14]}]        ; ## FPGA DIO_30             
#set_property  -dict {PACKAGE_PIN  B25  IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[6]}]         ; ## FPGA DIO_31               
#set_property  -dict {PACKAGE_PIN  A23  IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[8]}]         ; ## FPGA DIO_32    
          
set_property  -dict {PACKAGE_PIN  G22  IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[6]}]    ; ## FPGA SOM_SYN_P
set_property  -dict {PACKAGE_PIN  F23  IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[8]}]    ; ## FPGA SOM_SYN_N
#DIO_KINTEX_DSP

set_property -dict {PACKAGE_PIN B25 IOSTANDARD LVCMOS33} [get_ports ip2intc_irpt]  
                                  
set_property -dict {PACKAGE_PIN J26 IOSTANDARD LVCMOS33} [get_ports FPGA_REF_40MHZ]
#set_property -dict {PACKAGE_PIN F22 IOSTANDARD LVCMOS33} [get_ports FPGA_REF_40MHZ]


set_property CONFIG_MODE SPIx1 [current_design]
set_property BITSTREAM.CONFIG.PERSIST NO [current_design]

#Primary clocks
#Created primary clock
create_clock -period 8.000 -name prm_clk_ad1 [get_ports ad9361_DCLK_1_P]
create_clock -period 8.000 -name prm_clk_ad2 [get_ports ad9361_DCLK_2_P]
create_clock -period 8.000 -name prm_clk_ad3 [get_ports ad9361_DCLK_3_P]
create_clock -period 8.000 -name prm_clk_ad4 [get_ports ad9364_DCLK_P]
create_clock -period 25.000 -name prm_clk_40 [get_ports FPGA_REF_40MHZ]
#Primary clocks

set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins design_1_i/clk_axi/clk_common/inst/mmcm_adv_inst/CLKOUT1]] -group [get_clocks -of_objects [get_pins design_1_i/DSP/ad9361_clk/clk_DSP/inst/mmcm_adv_inst/CLKOUT0]]



set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets design_1_i/AXI_Peripheral/AXI_C2C/inst/slave_fpga_gen.axi_chip2chip_slave_phy_inst/slave_sio_phy.axi_chip2chip_sio_input_inst/axi_chip2chip_clk_gen_inst/clk_in_ibufg]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets design_1_i/ibuf_0/inst/out_ref]
