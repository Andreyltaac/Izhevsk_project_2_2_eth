#-------------------------------------------------------------------------------
#DIO_KINTEX_v1
#-------------------------------------------------------------------------------

#User PINs
set_property -dict {PACKAGE_PIN K21 IOSTANDARD LVCMOS33} [get_ports PIN_0]
set_property -dict {PACKAGE_PIN H21 IOSTANDARD LVCMOS33} [get_ports PIN_1]
set_property -dict {PACKAGE_PIN G21 IOSTANDARD LVCMOS33} [get_ports PIN_2]
#User PINs

#User LEDS
set_property -dict {PACKAGE_PIN AA24 IOSTANDARD LVCMOS33} [get_ports LED1]
set_property -dict {PACKAGE_PIN Y22 IOSTANDARD LVCMOS33} [get_ports LED2]
set_property -dict {PACKAGE_PIN AA22 IOSTANDARD LVCMOS33} [get_ports LED3]
set_property -dict {PACKAGE_PIN U21 IOSTANDARD LVCMOS33} [get_ports LED4]
#User LEDS

# Power on of links and services
set_property -dict {PACKAGE_PIN AC22 IOSTANDARD LVCMOS33} [get_ports som_28v_en_link1]
set_property -dict {PACKAGE_PIN AD26 IOSTANDARD LVCMOS33} [get_ports som_28v_en_link2]
set_property -dict {PACKAGE_PIN U25 IOSTANDARD LVCMOS33} [get_ports som_28v_en_service1]
set_property -dict {PACKAGE_PIN AA23 IOSTANDARD LVCMOS33} [get_ports som_28v_en_service2]
set_property -dict {PACKAGE_PIN W23 IOSTANDARD LVCMOS33} [get_ports som_28v_en_service3]
set_property -dict {PACKAGE_PIN W24 IOSTANDARD LVCMOS33} [get_ports som_28v_en_service4]
set_property -dict {PACKAGE_PIN AB26 IOSTANDARD LVCMOS33} [get_ports som_5v_en_link]

set_property -dict {PACKAGE_PIN V22 IOSTANDARD LVCMOS33} [get_ports fpga_28v_en_link1]
set_property -dict {PACKAGE_PIN V26 IOSTANDARD LVCMOS33} [get_ports fpga_28v_en_link2]
set_property -dict {PACKAGE_PIN U24 IOSTANDARD LVCMOS33} [get_ports fpga_28v_en_service1]
set_property -dict {PACKAGE_PIN V23 IOSTANDARD LVCMOS33} [get_ports fpga_28v_en_service2]
set_property -dict {PACKAGE_PIN U26 IOSTANDARD LVCMOS33} [get_ports fpga_28v_en_service3]
set_property -dict {PACKAGE_PIN V24 IOSTANDARD LVCMOS33} [get_ports fpga_28v_en_service4]
set_property -dict {PACKAGE_PIN Y25 IOSTANDARD LVCMOS33} [get_ports fpga_5v_en_link]
# Power on of links and services


# SPI #0 signals
set_property -dict {PACKAGE_PIN AB24 IOSTANDARD LVCMOS33} [get_ports spi_cs_n_0]
set_property -dict {PACKAGE_PIN Y23 IOSTANDARD LVCMOS33} [get_ports spi_sclk_0]
set_property -dict {PACKAGE_PIN U22 IOSTANDARD LVCMOS33} [get_ports spi_mosi_0]
set_property -dict {PACKAGE_PIN AA25 IOSTANDARD LVCMOS33} [get_ports spi_miso_0]
# SPI #0 signals

# SPI #1 signals
set_property -dict {PACKAGE_PIN AC24 IOSTANDARD LVCMOS33} [get_ports spi_cs_n_1]
set_property -dict {PACKAGE_PIN AC23 IOSTANDARD LVCMOS33} [get_ports spi_sclk_1]
set_property -dict {PACKAGE_PIN W26 IOSTANDARD LVCMOS33} [get_ports spi_mosi_1]
set_property -dict {PACKAGE_PIN Y26 IOSTANDARD LVCMOS33} [get_ports spi_miso_1]
# SPI #0 signals


#ad9361_1. LINK.
#RX
set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_DCLK_1_P]
set_property -dict {PACKAGE_PIN F18 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_DCLK_1_N]
set_property -dict {PACKAGE_PIN B17 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_RX_FRAME1_P]
set_property -dict {PACKAGE_PIN A17 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_RX_FRAME1_N]
set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_P[0]}]
set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_N[0]}]
set_property -dict {PACKAGE_PIN M17 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_P[1]}]
set_property -dict {PACKAGE_PIN L18 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_N[1]}]
set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_P[2]}]
set_property -dict {PACKAGE_PIN L20 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_N[2]}]
set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_P[3]}]
set_property -dict {PACKAGE_PIN J19 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_N[3]}]
set_property -dict {PACKAGE_PIN K20 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_P[4]}]
set_property -dict {PACKAGE_PIN J20 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_N[4]}]
set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_P[5]}]
set_property -dict {PACKAGE_PIN H18 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P1_N[5]}]
#RX

#TX
set_property -dict {PACKAGE_PIN F17 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_FB_CLK_1_P]
set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_FB_CLK_1_N]
set_property -dict {PACKAGE_PIN L17 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_TX_FRAME1_P]
set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9361_TX_FRAME1_N]
set_property -dict {PACKAGE_PIN A18 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_P[0]}]
set_property -dict {PACKAGE_PIN A19 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_N[0]}]
set_property -dict {PACKAGE_PIN C16 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_P[1]}]
set_property -dict {PACKAGE_PIN B16 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_N[1]}]
set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_P[2]}]
set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_N[2]}]
set_property -dict {PACKAGE_PIN C19 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_P[3]}]
set_property -dict {PACKAGE_PIN B19 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_N[3]}]
set_property -dict {PACKAGE_PIN C17 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_P[4]}]
set_property -dict {PACKAGE_PIN C18 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_N[4]}]
set_property -dict {PACKAGE_PIN D15 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_P[5]}]
set_property -dict {PACKAGE_PIN D16 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9361_1_P0_N[5]}]
set_property -dict {PACKAGE_PIN L24 IOSTANDARD LVCMOS18} [get_ports ad9361_EN_1]
set_property -dict {PACKAGE_PIN K26 IOSTANDARD LVCMOS18} [get_ports ad9361_TXNRX_1]
set_property -dict {PACKAGE_PIN K25 IOSTANDARD LVCMOS18} [get_ports ad9361_EN_AGC_1]
set_property -dict {PACKAGE_PIN M25 IOSTANDARD LVCMOS18} [get_ports ad9361_RESET_1]

set_property -dict {PACKAGE_PIN M26 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_CS_1]
set_property -dict {PACKAGE_PIN M24 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_CLK_1]
set_property -dict {PACKAGE_PIN L25 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_DI_1]
set_property -dict {PACKAGE_PIN N26 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_DO_1]
#TX

#ad9361_1. LINK.

#ad9361_2. SERVICE.
#RX
set_property -dict {PACKAGE_PIN AA9 IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_DCLK_2_P]
set_property -dict {PACKAGE_PIN AB9 IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_DCLK_2_N]
set_property -dict {PACKAGE_PIN AC9 IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_RX_FRAME2_P]
set_property -dict {PACKAGE_PIN AD9 IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_RX_FRAME2_N]
set_property -dict {PACKAGE_PIN AD10 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_P[0]}]
set_property -dict {PACKAGE_PIN AE10 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_N[0]}]
set_property -dict {PACKAGE_PIN AE8 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_P[1]}]
set_property -dict {PACKAGE_PIN AF8 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_N[1]}]
set_property -dict {PACKAGE_PIN AF10 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_P[2]}]
set_property -dict {PACKAGE_PIN AF9 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_N[2]}]
set_property -dict {PACKAGE_PIN AD11 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_P[3]}]
set_property -dict {PACKAGE_PIN AE11 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_N[3]}]
set_property -dict {PACKAGE_PIN AE12 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_P[4]}]
set_property -dict {PACKAGE_PIN AF12 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_N[4]}]
set_property -dict {PACKAGE_PIN AE13 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_P[5]}]
set_property -dict {PACKAGE_PIN AF13 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P1_N[5]}]
#RX

#TX
set_property -dict {PACKAGE_PIN AA10 IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_FB_CLK_2_P]
set_property -dict {PACKAGE_PIN AB10 IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_FB_CLK_2_N]
set_property -dict {PACKAGE_PIN AB11 IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_TX_FRAME2_P]
set_property -dict {PACKAGE_PIN AC11 IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_TX_FRAME2_N]
set_property -dict {PACKAGE_PIN V9 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_P[0]}]
set_property -dict {PACKAGE_PIN W8 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_N[0]}]
set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_P[1]}]
set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_N[1]}]
set_property -dict {PACKAGE_PIN Y8 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_P[2]}]
set_property -dict {PACKAGE_PIN Y7 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_N[2]}]
set_property -dict {PACKAGE_PIN W10 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_P[3]}]
set_property -dict {PACKAGE_PIN W9 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_N[3]}]
set_property -dict {PACKAGE_PIN V11 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_P[4]}]
set_property -dict {PACKAGE_PIN W11 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_N[4]}]
set_property -dict {PACKAGE_PIN Y11 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_P[5]}]
set_property -dict {PACKAGE_PIN Y10 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_2_P0_N[5]}]
set_property -dict {PACKAGE_PIN N21 IOSTANDARD LVCMOS18} [get_ports ad9361_EN_2]
set_property -dict {PACKAGE_PIN R25 IOSTANDARD LVCMOS18} [get_ports ad9361_TXNRX_2]
set_property -dict {PACKAGE_PIN N19 IOSTANDARD LVCMOS18} [get_ports ad9361_EN_AGC_2]
set_property -dict {PACKAGE_PIN P24 IOSTANDARD LVCMOS18} [get_ports ad9361_RESET_2]

set_property -dict {PACKAGE_PIN P23 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_CS_2]
set_property -dict {PACKAGE_PIN P26 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_CLK_2]
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_DI_2]
set_property -dict {PACKAGE_PIN R26 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_DO_2]
#TX
#ad9361_2. SERVICE.

#ad9361_3. SERVICE.
#RX
set_property -dict {PACKAGE_PIN AA3 IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_DCLK_3_P]
set_property -dict {PACKAGE_PIN AA2 IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_DCLK_3_N]
set_property -dict {PACKAGE_PIN AB2 IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_RX_FRAME3_P]
set_property -dict {PACKAGE_PIN AC2 IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_RX_FRAME3_N]
set_property -dict {PACKAGE_PIN U6 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_P[0]}]
set_property -dict {PACKAGE_PIN U5 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_N[0]}]
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_P[1]}]
set_property -dict {PACKAGE_PIN V6 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_N[1]}]
set_property -dict {PACKAGE_PIN W6 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_P[2]}]
set_property -dict {PACKAGE_PIN W5 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_N[2]}]
set_property -dict {PACKAGE_PIN V4 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_P[3]}]
set_property -dict {PACKAGE_PIN W4 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_N[3]}]
set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_P[4]}]
set_property -dict {PACKAGE_PIN U1 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_N[4]}]
set_property -dict {PACKAGE_PIN V3 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_P[5]}]
set_property -dict {PACKAGE_PIN W3 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P1_N[5]}]
#RX

#TX
set_property -dict {PACKAGE_PIN AC4 IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_FB_CLK_3_P]
set_property -dict {PACKAGE_PIN AC3 IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_FB_CLK_3_N]
set_property -dict {PACKAGE_PIN AA4 IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_TX_FRAME3_P]
set_property -dict {PACKAGE_PIN AB4 IOSTANDARD LVDS DIFF_TERM 1} [get_ports ad9361_TX_FRAME3_N]
set_property -dict {PACKAGE_PIN AE6 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_P[0]}]
set_property -dict {PACKAGE_PIN AE5 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_N[0]}]
set_property -dict {PACKAGE_PIN AF5 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_P[1]}]
set_property -dict {PACKAGE_PIN AF4 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_N[1]}]
set_property -dict {PACKAGE_PIN AE3 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_P[2]}]
set_property -dict {PACKAGE_PIN AE2 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_N[2]}]
set_property -dict {PACKAGE_PIN AF3 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_P[3]}]
set_property -dict {PACKAGE_PIN AF2 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_N[3]}]
set_property -dict {PACKAGE_PIN AD1 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_P[4]}]
set_property -dict {PACKAGE_PIN AE1 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_N[4]}]
set_property -dict {PACKAGE_PIN AD4 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_P[5]}]
set_property -dict {PACKAGE_PIN AD3 IOSTANDARD LVDS DIFF_TERM 1} [get_ports {ad9361_3_P0_N[5]}]
set_property -dict {PACKAGE_PIN P21 IOSTANDARD LVCMOS18} [get_ports ad9361_EN_3]
set_property -dict {PACKAGE_PIN R21 IOSTANDARD LVCMOS18} [get_ports ad9361_TXNRX_3]
set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS18} [get_ports ad9361_EN_AGC_3]
set_property -dict {PACKAGE_PIN R23 IOSTANDARD LVCMOS18} [get_ports ad9361_RESET_3]

set_property -dict {PACKAGE_PIN T23 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_CS_3]
set_property -dict {PACKAGE_PIN T22 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_CLK_3]
set_property -dict {PACKAGE_PIN R20 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_DI_3]
set_property -dict {PACKAGE_PIN T24 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_DO_3]
#TX
#ad9361_3. SERVICE.


#ad9364_0. OBSERVER CHANNEL.
#RX
set_property -dict {PACKAGE_PIN C12 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9364_DCLK_P]
set_property -dict {PACKAGE_PIN C11 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9364_DCLK_N]
set_property -dict {PACKAGE_PIN G11 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9364_RX_FRAME_P]
set_property -dict {PACKAGE_PIN F10 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9364_RX_FRAME_N]
set_property -dict {PACKAGE_PIN A13 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_P[0]}]
set_property -dict {PACKAGE_PIN A12 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_N[0]}]
set_property -dict {PACKAGE_PIN B12 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_P[1]}]
set_property -dict {PACKAGE_PIN B11 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_N[1]}]
set_property -dict {PACKAGE_PIN C14 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_P[2]}]
set_property -dict {PACKAGE_PIN C13 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_N[2]}]
set_property -dict {PACKAGE_PIN B14 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_P[3]}]
set_property -dict {PACKAGE_PIN A14 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_N[3]}]
set_property -dict {PACKAGE_PIN B10 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_P[4]}]
set_property -dict {PACKAGE_PIN A10 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_N[4]}]
set_property -dict {PACKAGE_PIN B15 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_P[5]}]
set_property -dict {PACKAGE_PIN A15 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_N[5]}]
#RX

#TX
set_property -dict {PACKAGE_PIN E11 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9364_FB_CLK_P]
set_property -dict {PACKAGE_PIN D11 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9364_FB_CLK_N]
set_property -dict {PACKAGE_PIN E10 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9364_TX_FRAME_P]
set_property -dict {PACKAGE_PIN D10 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9364_TX_FRAME_N]
set_property -dict {PACKAGE_PIN H9 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_P[0]}]
set_property -dict {PACKAGE_PIN H8 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_N[0]}]
set_property -dict {PACKAGE_PIN G10 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_P[1]}]
set_property -dict {PACKAGE_PIN G9 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_N[1]}]
set_property -dict {PACKAGE_PIN J11 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_P[2]}]
set_property -dict {PACKAGE_PIN J10 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_N[2]}]
set_property -dict {PACKAGE_PIN H12 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_P[3]}]
set_property -dict {PACKAGE_PIN H11 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_N[3]}]
set_property -dict {PACKAGE_PIN J13 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_P[4]}]
set_property -dict {PACKAGE_PIN H13 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_N[4]}]
set_property -dict {PACKAGE_PIN H14 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_P[5]}]
set_property -dict {PACKAGE_PIN G14 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P0_N[5]}]
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS18} [get_ports ad9364_EN]
set_property -dict {PACKAGE_PIN N24 IOSTANDARD LVCMOS18} [get_ports ad9364_TXNRX]
set_property -dict {PACKAGE_PIN P25 IOSTANDARD LVCMOS18} [get_ports ad9364_EN_AGC]
set_property -dict {PACKAGE_PIN M22 IOSTANDARD LVCMOS18} [get_ports ad9364_RESET]

set_property -dict {PACKAGE_PIN N22 IOSTANDARD LVCMOS18} [get_ports ad9364_SPI_CS]
set_property -dict {PACKAGE_PIN N23 IOSTANDARD LVCMOS18} [get_ports ad9364_SPI_CLK]
set_property -dict {PACKAGE_PIN T25 IOSTANDARD LVCMOS18} [get_ports ad9364_SPI_DI]
set_property -dict {PACKAGE_PIN M21 IOSTANDARD LVCMOS18} [get_ports ad9364_SPI_DO]
#TX
#ad9364_0. OBSERVER CHANNEL.

#DIO_KINTEX_DSP
#Pins located here belong to bank 14

set_property -dict {PACKAGE_PIN G22 IOSTANDARD LVCMOS33} [get_ports AXI_RX_CLK_OUT]
set_property -dict {PACKAGE_PIN H26 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[0]}]
set_property -dict {PACKAGE_PIN J26 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[1]}];#B24
set_property -dict {PACKAGE_PIN L23 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[2]}];#A25
set_property -dict {PACKAGE_PIN E21 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[3]}]
set_property -dict {PACKAGE_PIN K23 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[4]}]
set_property -dict {PACKAGE_PIN A22 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[5]}]
set_property -dict {PACKAGE_PIN F25 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[6]}]
set_property -dict {PACKAGE_PIN G24 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[7]}]
set_property -dict {PACKAGE_PIN C22 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[8]}]
set_property -dict {PACKAGE_PIN E23 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[9]}]
set_property -dict {PACKAGE_PIN E22 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[10]}]
set_property -dict {PACKAGE_PIN D26 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[11]}];  #G25
set_property -dict {PACKAGE_PIN G25 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[12]}]; #A24
set_property -dict {PACKAGE_PIN A24 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[13]}]; #F24
set_property -dict {PACKAGE_PIN F24 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[14]}]; #D25
set_property -dict {PACKAGE_PIN D25 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[15]}]; #C23
set_property -dict {PACKAGE_PIN C21 IOSTANDARD LVCMOS33} [get_ports {AXI_RX_DATA_OUT[16]}]; #K22




set_property -dict {PACKAGE_PIN F23 IOSTANDARD LVCMOS33} [get_ports AXI_TX_CLK_IN]
set_property -dict {PACKAGE_PIN H23 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[0]}]; #C21
set_property -dict {PACKAGE_PIN A20 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[1]}]
set_property -dict {PACKAGE_PIN E26 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[2]}]
set_property -dict {PACKAGE_PIN B21 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[3]}]
set_property -dict {PACKAGE_PIN D23 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[4]}]
set_property -dict {PACKAGE_PIN C26 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[5]}]
set_property -dict {PACKAGE_PIN B20 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[6]}]
set_property -dict {PACKAGE_PIN D21 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[7]}]
set_property -dict {PACKAGE_PIN G26 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[8]}]
set_property -dict {PACKAGE_PIN D24 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[9]}]
set_property -dict {PACKAGE_PIN E25 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[10]}]
set_property -dict {PACKAGE_PIN C24 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[11]}]
set_property -dict {PACKAGE_PIN B22 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[12]}]
set_property -dict {PACKAGE_PIN L22 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[13]}]
set_property -dict {PACKAGE_PIN B26 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[14]}]
set_property -dict {PACKAGE_PIN B25 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[15]}]
set_property -dict {PACKAGE_PIN A23 IOSTANDARD LVCMOS33} [get_ports {AXI_TX_DATA_IN[16]}]


set_property -dict {PACKAGE_PIN F22 IOSTANDARD LVCMOS33} [get_ports FPGA_REF_40MHZ]


set_property CONFIG_MODE SPIx1 [current_design]
set_property BITSTREAM.CONFIG.PERSIST NO [current_design]

#Primary clocks
create_clock -period 4.000 -name prm_clk_ad1 [get_ports ad9361_DCLK_1_P]
create_clock -period 4.000 -name prm_clk_ad2 [get_ports ad9361_DCLK_2_P]
create_clock -period 4.000 -name prm_clk_ad3 [get_ports ad9361_DCLK_3_P]
create_clock -period 4.000 -name prm_clk_ad4 [get_ports ad9364_DCLK_P]
create_clock -period 25.000 -name prm_clk_40 [get_ports FPGA_REF_40MHZ]
#Primary clocks


#Hardware constrains
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets design_1_i/CLK_AXI/ibuf_0/inst/out_ref]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets design_1_i/AXI_Peripheral/AXI_C2C/inst/master_fpga_gen.axi_chip2chip_master_phy_inst/master_sio_phy.axi_chip2chip_sio_input_inst/axi_chip2chip_clk_gen_inst/clk_in_ibufg]
#Hardware constrains


#Area constrains
create_pblock pblock_AD9361_2
add_cells_to_pblock [get_pblocks pblock_AD9361_2] [get_cells -quiet [list design_1_i/AD9361_CTRL/AD9361_2]]
resize_pblock [get_pblocks pblock_AD9361_2] -add {SLICE_X136Y51:SLICE_X153Y99}
resize_pblock [get_pblocks pblock_AD9361_2] -add {RAMB18_X6Y22:RAMB18_X6Y39}
resize_pblock [get_pblocks pblock_AD9361_2] -add {RAMB36_X6Y11:RAMB36_X6Y19}

create_pblock pblock_AD9361_3
add_cells_to_pblock [get_pblocks pblock_AD9361_3] [get_cells -quiet [list design_1_i/AD9361_CTRL/AD9361_3]]
resize_pblock [get_pblocks pblock_AD9361_3] -add {SLICE_X136Y100:SLICE_X153Y149}
resize_pblock [get_pblocks pblock_AD9361_3] -add {RAMB18_X6Y40:RAMB18_X6Y59}
resize_pblock [get_pblocks pblock_AD9361_3] -add {RAMB36_X6Y20:RAMB36_X6Y29}

create_pblock AXI_BRIDGE
add_cells_to_pblock [get_pblocks AXI_BRIDGE] [get_cells -quiet [list design_1_i/AXI_Peripheral/AXI_C2C design_1_i/AXI_Peripheral/AXI_C2C_axi_periph design_1_i/AXI_Peripheral/AXI_DMA]]
resize_pblock [get_pblocks AXI_BRIDGE] -add {SLICE_X0Y100:SLICE_X23Y149}
resize_pblock [get_pblocks AXI_BRIDGE] -add {DSP48_X0Y40:DSP48_X1Y59}
resize_pblock [get_pblocks AXI_BRIDGE] -add {RAMB18_X0Y40:RAMB18_X1Y59}
resize_pblock [get_pblocks AXI_BRIDGE] -add {RAMB36_X0Y20:RAMB36_X1Y29}

create_pblock pblock_AD9364
add_cells_to_pblock [get_pblocks pblock_AD9364] [get_cells -quiet [list design_1_i/AD9364]]
resize_pblock [get_pblocks pblock_AD9364] -add {SLICE_X0Y200:SLICE_X13Y249}
resize_pblock [get_pblocks pblock_AD9364] -add {DSP48_X0Y80:DSP48_X0Y99}
resize_pblock [get_pblocks pblock_AD9364] -add {RAMB18_X0Y80:RAMB18_X0Y99}
resize_pblock [get_pblocks pblock_AD9364] -add {RAMB36_X0Y40:RAMB36_X0Y49}

create_pblock pblock_AD9361_1
add_cells_to_pblock [get_pblocks pblock_AD9361_1] [get_cells -quiet [list design_1_i/AD9361_CTRL/AD9361_1]]
resize_pblock [get_pblocks pblock_AD9361_1] -add {SLICE_X0Y150:SLICE_X13Y199}
resize_pblock [get_pblocks pblock_AD9361_1] -add {DSP48_X0Y60:DSP48_X0Y79}
resize_pblock [get_pblocks pblock_AD9361_1] -add {RAMB18_X0Y60:RAMB18_X0Y79}
resize_pblock [get_pblocks pblock_AD9361_1] -add {RAMB36_X0Y30:RAMB36_X0Y39}

create_pblock pblock_SPI_MOD
add_cells_to_pblock [get_pblocks pblock_SPI_MOD] [get_cells -quiet [list design_1_i/SPI_MOD]]
resize_pblock [get_pblocks pblock_SPI_MOD] -add {SLICE_X0Y75:SLICE_X13Y99}
resize_pblock [get_pblocks pblock_SPI_MOD] -add {DSP48_X0Y30:DSP48_X0Y39}
resize_pblock [get_pblocks pblock_SPI_MOD] -add {RAMB18_X0Y30:RAMB18_X0Y39}
resize_pblock [get_pblocks pblock_SPI_MOD] -add {RAMB36_X0Y15:RAMB36_X0Y19}
#Area constrains


set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins design_1_i/CLK_AXI/CLK_COMMON/inst/mmcm_adv_inst/CLKOUT1]] -group [get_clocks prm_clk_ad1]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins design_1_i/CLK_AXI/CLK_COMMON/inst/mmcm_adv_inst/CLKOUT1]] -group [get_clocks prm_clk_ad2]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins design_1_i/CLK_AXI/CLK_COMMON/inst/mmcm_adv_inst/CLKOUT1]] -group [get_clocks prm_clk_ad3]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins design_1_i/CLK_AXI/CLK_COMMON/inst/mmcm_adv_inst/CLKOUT1]] -group [get_clocks prm_clk_ad4]



create_pblock pblock_IP_sync_0
resize_pblock [get_pblocks pblock_IP_sync_0] -add {CLOCKREGION_X0Y0:CLOCKREGION_X1Y6}







set_false_path -from [get_clocks -of_objects [get_pins design_1_i/AD9361_CTRL/ad9361_clk/clk_DSP/inst/mmcm_adv_inst/CLKOUT0]] -to [get_clocks -of_objects [get_pins design_1_i/CLK_AXI/CLK_COMMON/inst/mmcm_adv_inst/CLKOUT1]]


set_false_path -from [get_clocks -of_objects [get_pins design_1_i/CLK_AXI/CLK_COMMON/inst/mmcm_adv_inst/CLKOUT1]] -to [get_clocks -of_objects [get_pins design_1_i/AD9361_CTRL/ad9361_clk/clk_DSP/inst/mmcm_adv_inst/CLKOUT0]]





create_pblock pblock_IP_sync_0_1
add_cells_to_pblock [get_pblocks pblock_IP_sync_0_1] [get_cells -quiet [list design_1_i/IP_sync_0]]
resize_pblock [get_pblocks pblock_IP_sync_0_1] -add {SLICE_X18Y202:SLICE_X145Y348}
resize_pblock [get_pblocks pblock_IP_sync_0_1] -add {RAMB18_X1Y82:RAMB18_X5Y137}
resize_pblock [get_pblocks pblock_IP_sync_0_1] -add {RAMB36_X1Y41:RAMB36_X5Y68}





set_false_path -from [get_clocks -of_objects [get_pins design_1_i/CLK_AXI/CLK_COMMON/inst/mmcm_adv_inst/CLKOUT1]] -to [get_clocks -of_objects [get_pins design_1_i/clk_wiz_0/inst/CLK_CORE_DRP_I/clk_inst/mmcm_adv_inst/CLKOUT0]]

set_false_path -from [get_clocks -of_objects [get_pins design_1_i/clk_wiz_0/inst/CLK_CORE_DRP_I/clk_inst/mmcm_adv_inst/CLKOUT0]] -to [get_clocks -of_objects [get_pins design_1_i/CLK_AXI/CLK_COMMON/inst/mmcm_adv_inst/CLKOUT1]]


connect_debug_port dbg_hub/clk [get_nets u_ila_1_clk_out1]

