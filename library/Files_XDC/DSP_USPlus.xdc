#-------------------------------------------------------------------------------
#DIO_KINTEX_v1
#-------------------------------------------------------------------------------
#MGTX2
set_property PACKAGE_PIN Y5 [get_ports gt_refclk1_n]
set_property PACKAGE_PIN Y6 [get_ports gt_refclk1_p]
set_property PACKAGE_PIN V5 [get_ports gt_refclk2_n]
set_property PACKAGE_PIN V6 [get_ports gt_refclk2_p]


set_property -dict {PACKAGE_PIN Y2} [get_ports {rxp_1[0]}]
set_property -dict {PACKAGE_PIN Y1} [get_ports {rxn_1[0]}]
set_property -dict {PACKAGE_PIN W4} [get_ports {txp_1[0]}]
set_property -dict {PACKAGE_PIN W3} [get_ports {txn_1[0]}]

set_property -dict {PACKAGE_PIN V2} [get_ports {rxp_2[0]}]
set_property -dict {PACKAGE_PIN V1} [get_ports {rxn_2[0]}]
set_property -dict {PACKAGE_PIN U4} [get_ports {txp_2[0]}]
set_property -dict {PACKAGE_PIN U3} [get_ports {txn_2[0]}]

set_property -dict {PACKAGE_PIN T2} [get_ports {rxp_3[0]}]
set_property -dict {PACKAGE_PIN T1} [get_ports {rxn_3[0]}]
set_property -dict {PACKAGE_PIN R4} [get_ports {txp_3[0]}]
set_property -dict {PACKAGE_PIN R3} [get_ports {txn_3[0]}]
set_property -dict {PACKAGE_PIN P2} [get_ports {rxp_3[1]}]
set_property -dict {PACKAGE_PIN P1} [get_ports {rxn_3[1]}]
set_property -dict {PACKAGE_PIN N4} [get_ports {txp_3[1]}]
set_property -dict {PACKAGE_PIN N3} [get_ports {txn_3[1]}]


set_property -dict {PACKAGE_PIN AF12 IOSTANDARD LVCMOS33} [get_ports SFP_Disable_1]
set_property -dict {PACKAGE_PIN AC11 IOSTANDARD LVCMOS33} [get_ports SFP_Disable_2]

set_property -dict {PACKAGE_PIN AH12 IOSTANDARD LVCMOS33} [get_ports SFP1_TX_FAULT]
set_property -dict {PACKAGE_PIN AC12 IOSTANDARD LVCMOS33} [get_ports SFP2_TX_FAULT]

set_property -dict {PACKAGE_PIN AF10 IOSTANDARD LVCMOS33} [get_ports SFP1_RX_LOS]
set_property -dict {PACKAGE_PIN AE12 IOSTANDARD LVCMOS33} [get_ports SFP2_RX_LOS]

set_property -dict {PACKAGE_PIN AD10 IOSTANDARD LVCMOS33} [get_ports LED1]
set_property -dict {PACKAGE_PIN AB11 IOSTANDARD LVCMOS33} [get_ports LED2]
set_property -dict {PACKAGE_PIN AD11 IOSTANDARD LVCMOS33} [get_ports LED3]
#MGTX2

# Power on of links and services
# перенесены в PS
set_property -dict {PACKAGE_PIN H13 IOSTANDARD LVCMOS33} [get_ports fpga_28v_en_link1]
set_property -dict {PACKAGE_PIN H14 IOSTANDARD LVCMOS33} [get_ports fpga_28v_en_link2]
set_property -dict {PACKAGE_PIN W10 IOSTANDARD LVCMOS33} [get_ports fpga_28v_en_service1]
set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS33} [get_ports fpga_28v_en_service2]
set_property -dict {PACKAGE_PIN Y13 IOSTANDARD LVCMOS33} [get_ports fpga_28v_en_service3]
set_property -dict {PACKAGE_PIN Y9 IOSTANDARD LVCMOS33} [get_ports fpga_28v_en_service4]
set_property -dict {PACKAGE_PIN Y10 IOSTANDARD LVCMOS33} [get_ports fpga_5v_en_link]
# Power on of links and services


# SPI #0 signals
set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS33} [get_ports spi_cs_n_0]
set_property -dict {PACKAGE_PIN E15 IOSTANDARD LVCMOS33} [get_ports spi_sclk_0]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS33} [get_ports spi_mosi_0]
set_property -dict {PACKAGE_PIN G13 IOSTANDARD LVCMOS33} [get_ports spi_miso_0]
# SPI #0 signals

# SPI #1 signals
set_property -dict {PACKAGE_PIN AB14 IOSTANDARD LVCMOS33} [get_ports spi_cs_n_1]
set_property -dict {PACKAGE_PIN AB15 IOSTANDARD LVCMOS33} [get_ports spi_sclk_1]
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports spi_mosi_1]
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports spi_miso_1]
# SPI #0 signals


#ad9361_1. LINK.
#RX
set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports ad9361_DCLK_1_P]
set_property -dict {PACKAGE_PIN D6 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports ad9361_DCLK_1_N]
set_property -dict {PACKAGE_PIN G6 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports ad9361_RX_FRAME1_P]
set_property -dict {PACKAGE_PIN F6 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports ad9361_RX_FRAME1_N]

set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_1_P1_P[0]}]
set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_1_P1_N[0]}]
set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_1_P1_P[1]}]
set_property -dict {PACKAGE_PIN D1 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_1_P1_N[1]}]
set_property -dict {PACKAGE_PIN F2 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_1_P1_P[2]}]
set_property -dict {PACKAGE_PIN E2 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_1_P1_N[2]}]
set_property -dict {PACKAGE_PIN G3 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_1_P1_P[3]}]
set_property -dict {PACKAGE_PIN F3 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_1_P1_N[3]}]
set_property -dict {PACKAGE_PIN G5 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_1_P1_P[4]}]
set_property -dict {PACKAGE_PIN F5 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_1_P1_N[4]}]
set_property -dict {PACKAGE_PIN E4 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_1_P1_P[5]}]
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_1_P1_N[5]}]
#RX -ok

#TX
set_property -dict {PACKAGE_PIN F8 IOSTANDARD LVDS} [get_ports ad9361_FB_CLK_1_P]
set_property -dict {PACKAGE_PIN E8 IOSTANDARD LVDS} [get_ports ad9361_FB_CLK_1_N]
set_property -dict {PACKAGE_PIN E9 IOSTANDARD LVDS} [get_ports ad9361_TX_FRAME1_P]
set_property -dict {PACKAGE_PIN D9 IOSTANDARD LVDS} [get_ports ad9361_TX_FRAME1_N]

set_property -dict {PACKAGE_PIN C1 IOSTANDARD LVDS} [get_ports {ad9361_1_P0_P[0]}]
set_property -dict {PACKAGE_PIN B1 IOSTANDARD LVDS} [get_ports {ad9361_1_P0_N[0]}]
set_property -dict {PACKAGE_PIN A2 IOSTANDARD LVDS} [get_ports {ad9361_1_P0_P[1]}]
set_property -dict {PACKAGE_PIN A1 IOSTANDARD LVDS} [get_ports {ad9361_1_P0_N[1]}]
set_property -dict {PACKAGE_PIN B3 IOSTANDARD LVDS} [get_ports {ad9361_1_P0_P[2]}]
set_property -dict {PACKAGE_PIN A3 IOSTANDARD LVDS} [get_ports {ad9361_1_P0_N[2]}]
set_property -dict {PACKAGE_PIN C3 IOSTANDARD LVDS} [get_ports {ad9361_1_P0_P[3]}]
set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVDS} [get_ports {ad9361_1_P0_N[3]}]
set_property -dict {PACKAGE_PIN D4 IOSTANDARD LVDS} [get_ports {ad9361_1_P0_P[4]}]
set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVDS} [get_ports {ad9361_1_P0_N[4]}]
set_property -dict {PACKAGE_PIN B4 IOSTANDARD LVDS} [get_ports {ad9361_1_P0_P[5]}]
set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVDS} [get_ports {ad9361_1_P0_N[5]}]

set_property -dict {PACKAGE_PIN A8 IOSTANDARD LVCMOS18} [get_ports ad9361_EN_1]
set_property -dict {PACKAGE_PIN B8 IOSTANDARD LVCMOS18} [get_ports ad9361_TXNRX_1]
set_property -dict {PACKAGE_PIN A7 IOSTANDARD LVCMOS18} [get_ports ad9361_EN_AGC_1]
#set_property -dict {PACKAGE_PIN B15 IOSTANDARD LVCMOS18} [get_ports ad9361_RESET_1]  1111111

set_property -dict {PACKAGE_PIN B9 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_CS_1]
set_property -dict {PACKAGE_PIN A9 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_CLK_1]
set_property -dict {PACKAGE_PIN C8 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_DI_1]
set_property -dict {PACKAGE_PIN C9 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_DO_1]
#TX -OK

#ad9361_1. LINK.

#ad9361_2. SERVICE.
#RX
set_property -dict {PACKAGE_PIN K4 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports ad9361_DCLK_2_P]
set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports ad9361_DCLK_2_N]
set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports ad9361_RX_FRAME2_P]
set_property -dict {PACKAGE_PIN L2 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports ad9361_RX_FRAME2_N]

set_property -dict {PACKAGE_PIN R6 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_2_P1_P[0]}]
set_property -dict {PACKAGE_PIN T6 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_2_P1_N[0]}]
set_property -dict {PACKAGE_PIN R7 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_2_P1_P[1]}]
set_property -dict {PACKAGE_PIN T7 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_2_P1_N[1]}]
set_property -dict {PACKAGE_PIN R8 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_2_P1_P[2]}]
set_property -dict {PACKAGE_PIN T8 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_2_P1_N[2]}]
set_property -dict {PACKAGE_PIN U8 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_2_P1_P[3]}]
set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_2_P1_N[3]}]
set_property -dict {PACKAGE_PIN U9 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_2_P1_P[4]}]
set_property -dict {PACKAGE_PIN V9 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_2_P1_N[4]}]
set_property -dict {PACKAGE_PIN W8 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_2_P1_P[5]}]
set_property -dict {PACKAGE_PIN Y8 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_2_P1_N[5]}]
#RX

#T
set_property -dict {PACKAGE_PIN J5 IOSTANDARD LVDS} [get_ports ad9361_FB_CLK_2_P]
set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVDS} [get_ports ad9361_FB_CLK_2_N]
set_property -dict {PACKAGE_PIN K8 IOSTANDARD LVDS} [get_ports ad9361_TX_FRAME2_P]
set_property -dict {PACKAGE_PIN K7 IOSTANDARD LVDS} [get_ports ad9361_TX_FRAME2_N]

set_property -dict {PACKAGE_PIN M8 IOSTANDARD LVDS} [get_ports {ad9361_2_P0_P[0]}]
set_property -dict {PACKAGE_PIN L8 IOSTANDARD LVDS} [get_ports {ad9361_2_P0_N[0]}]
set_property -dict {PACKAGE_PIN N9 IOSTANDARD LVDS} [get_ports {ad9361_2_P0_P[1]}]
set_property -dict {PACKAGE_PIN N8 IOSTANDARD LVDS} [get_ports {ad9361_2_P0_N[1]}]
set_property -dict {PACKAGE_PIN M6 IOSTANDARD LVDS} [get_ports {ad9361_2_P0_P[2]}]
set_property -dict {PACKAGE_PIN L5 IOSTANDARD LVDS} [get_ports {ad9361_2_P0_N[2]}]
set_property -dict {PACKAGE_PIN N7 IOSTANDARD LVDS} [get_ports {ad9361_2_P0_P[3]}]
set_property -dict {PACKAGE_PIN N6 IOSTANDARD LVDS} [get_ports {ad9361_2_P0_N[3]}]
set_property -dict {PACKAGE_PIN P7 IOSTANDARD LVDS} [get_ports {ad9361_2_P0_P[4]}]
set_property -dict {PACKAGE_PIN P6 IOSTANDARD LVDS} [get_ports {ad9361_2_P0_N[4]}]
set_property -dict {PACKAGE_PIN L7 IOSTANDARD LVDS} [get_ports {ad9361_2_P0_P[5]}]
set_property -dict {PACKAGE_PIN L6 IOSTANDARD LVDS} [get_ports {ad9361_2_P0_N[5]}]

set_property -dict {PACKAGE_PIN H1 IOSTANDARD LVCMOS18} [get_ports ad9361_EN_2]
set_property -dict {PACKAGE_PIN K5 IOSTANDARD LVCMOS18} [get_ports ad9361_TXNRX_2]
set_property -dict {PACKAGE_PIN J1 IOSTANDARD LVCMOS18} [get_ports ad9361_EN_AGC_2]
#set_property -dict {PACKAGE_PIN D11 IOSTANDARD LVCMOS18} [get_ports ad9361_RESET_2]

set_property -dict {PACKAGE_PIN K2 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_CS_2]
set_property -dict {PACKAGE_PIN J2 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_CLK_2]
set_property -dict {PACKAGE_PIN K1 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_DI_2]
set_property -dict {PACKAGE_PIN L1 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_DO_2]
#TX -OK
#ad9361_2. SERVICE.

#ad9361_3. SERVICE.
#RX
set_property -dict {PACKAGE_PIN AF7 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports ad9361_DCLK_3_P]
set_property -dict {PACKAGE_PIN AF6 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports ad9361_DCLK_3_N]
set_property -dict {PACKAGE_PIN AE5 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports ad9361_RX_FRAME3_P]
set_property -dict {PACKAGE_PIN AF5 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports ad9361_RX_FRAME3_N]

set_property -dict {PACKAGE_PIN AC9 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_3_P1_P[0]}]
set_property -dict {PACKAGE_PIN AD9 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_3_P1_N[0]}]
set_property -dict {PACKAGE_PIN AD7 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_3_P1_P[1]}]
set_property -dict {PACKAGE_PIN AE7 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_3_P1_N[1]}]
set_property -dict {PACKAGE_PIN AB7 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_3_P1_P[2]}]
set_property -dict {PACKAGE_PIN AC7 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_3_P1_N[2]}]
set_property -dict {PACKAGE_PIN AE9 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_3_P1_P[3]}]
set_property -dict {PACKAGE_PIN AE8 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_3_P1_N[3]}]
set_property -dict {PACKAGE_PIN AB6 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_3_P1_P[4]}]
set_property -dict {PACKAGE_PIN AC6 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_3_P1_N[4]}]
set_property -dict {PACKAGE_PIN AB8 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_3_P1_P[5]}]
set_property -dict {PACKAGE_PIN AC8 IOSTANDARD LVDS DIFF_TERM_ADV TERM_100} [get_ports {ad9361_3_P1_N[5]}]
#RX

#TX
set_property -dict {PACKAGE_PIN AG4 IOSTANDARD LVDS} [get_ports ad9361_FB_CLK_3_P]
set_property -dict {PACKAGE_PIN AH4 IOSTANDARD LVDS} [get_ports ad9361_FB_CLK_3_N]
set_property -dict {PACKAGE_PIN AE2 IOSTANDARD LVDS} [get_ports ad9361_TX_FRAME3_P]
set_property -dict {PACKAGE_PIN AF2 IOSTANDARD LVDS} [get_ports ad9361_TX_FRAME3_N]

set_property -dict {PACKAGE_PIN AD5 IOSTANDARD LVDS} [get_ports {ad9361_3_P0_P[0]}]
set_property -dict {PACKAGE_PIN AD4 IOSTANDARD LVDS} [get_ports {ad9361_3_P0_N[0]}]
set_property -dict {PACKAGE_PIN AC4 IOSTANDARD LVDS} [get_ports {ad9361_3_P0_P[1]}]
set_property -dict {PACKAGE_PIN AC3 IOSTANDARD LVDS} [get_ports {ad9361_3_P0_N[1]}]
set_property -dict {PACKAGE_PIN AB4 IOSTANDARD LVDS} [get_ports {ad9361_3_P0_P[2]}]
set_property -dict {PACKAGE_PIN AB3 IOSTANDARD LVDS} [get_ports {ad9361_3_P0_N[2]}]
set_property -dict {PACKAGE_PIN AD2 IOSTANDARD LVDS} [get_ports {ad9361_3_P0_P[3]}]
set_property -dict {PACKAGE_PIN AD1 IOSTANDARD LVDS} [get_ports {ad9361_3_P0_N[3]}]
set_property -dict {PACKAGE_PIN AB2 IOSTANDARD LVDS} [get_ports {ad9361_3_P0_P[4]}]
set_property -dict {PACKAGE_PIN AC2 IOSTANDARD LVDS} [get_ports {ad9361_3_P0_N[4]}]
set_property -dict {PACKAGE_PIN AB1 IOSTANDARD LVDS} [get_ports {ad9361_3_P0_P[5]}]
set_property -dict {PACKAGE_PIN AC1 IOSTANDARD LVDS} [get_ports {ad9361_3_P0_N[5]}]

set_property -dict {PACKAGE_PIN AB5 IOSTANDARD LVCMOS18} [get_ports ad9361_EN_3]
set_property -dict {PACKAGE_PIN AD6 IOSTANDARD LVCMOS18} [get_ports ad9361_TXNRX_3]
set_property -dict {PACKAGE_PIN AG1 IOSTANDARD LVCMOS18} [get_ports ad9361_EN_AGC_3]
#set_property -dict {PACKAGE_PIN K12 IOSTANDARD LVCMOS18} [get_ports ad9361_RESET_3]

set_property -dict {PACKAGE_PIN AG9 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_CS_3]
set_property -dict {PACKAGE_PIN AG8 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_CLK_3]
set_property -dict {PACKAGE_PIN AF8 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_DI_3]
set_property -dict {PACKAGE_PIN AH9 IOSTANDARD LVCMOS18} [get_ports ad9361_SPI_DO_3]
#TX -OK
#ad9361_3. SERVICE.



##Comment when ID=12
#set_property -dict {PACKAGE_PIN B25 IOSTANDARD LVCMOS33} [get_ports ip2intc_irpt]

set_property -dict {PACKAGE_PIN AC14 IOSTANDARD LVCMOS33} [get_ports FPGA_REF_40MHZ]



#Primary clocks
create_clock -period 4.000 -name prm_clk_ad1 [get_ports ad9361_DCLK_1_P]
create_clock -period 4.000 -name prm_clk_ad2 [get_ports ad9361_DCLK_2_P]
create_clock -period 4.000 -name prm_clk_ad3 [get_ports ad9361_DCLK_3_P]
#create_clock -period 25.000 -name prm_clk_40 [get_ports FPGA_REF_40MHZ]

create_clock -period 6.400 -name prm_clk_sfp1 [get_ports gt_refclk1_p]
create_clock -period 6.400 -name prm_clk_sfp2 [get_ports gt_refclk2_p]
#Primary clocks



#Attenuator F1956NGBI
set_property -dict {PACKAGE_PIN F12 IOSTANDARD LVCMOS33} [get_ports F1956_SPI_DI]
set_property -dict {PACKAGE_PIN F11 IOSTANDARD LVCMOS33} [get_ports F1956_SPI_CLK]
set_property -dict {PACKAGE_PIN F10 IOSTANDARD LVCMOS33} [get_ports F1956_SPI_CS]
#Attenuator F1956NGBI


set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets design_1_i/AD9361_CTRL/ad9361_clk/clk_DSP/inst/clk_in1_design_1_clk_common_1]

create_pblock pblock_AD9361_2
add_cells_to_pblock [get_pblocks pblock_AD9361_2] [get_cells -quiet [list design_1_i/AD9361_CTRL/AD9361_2]]
resize_pblock [get_pblocks pblock_AD9361_2] -add {SLICE_X23Y120:SLICE_X28Y179}
resize_pblock [get_pblocks pblock_AD9361_2] -add {DSP48E2_X6Y48:DSP48E2_X6Y71}
resize_pblock [get_pblocks pblock_AD9361_2] -add {RAMB18_X0Y48:RAMB18_X0Y71}
resize_pblock [get_pblocks pblock_AD9361_2] -add {RAMB36_X0Y24:RAMB36_X0Y35}
create_pblock pblock_AD9361_3
add_cells_to_pblock [get_pblocks pblock_AD9361_3] [get_cells -quiet [list design_1_i/AD9361_CTRL/AD9361_3]]
resize_pblock [get_pblocks pblock_AD9361_3] -add {SLICE_X23Y60:SLICE_X28Y119}
resize_pblock [get_pblocks pblock_AD9361_3] -add {DSP48E2_X6Y24:DSP48E2_X6Y47}
resize_pblock [get_pblocks pblock_AD9361_3] -add {RAMB18_X0Y24:RAMB18_X0Y47}
resize_pblock [get_pblocks pblock_AD9361_3] -add {RAMB36_X0Y12:RAMB36_X0Y23}
create_pblock pblock_AD9361_1
add_cells_to_pblock [get_pblocks pblock_AD9361_1] [get_cells -quiet [list design_1_i/AD9361_CTRL/AD9361_1]]
resize_pblock [get_pblocks pblock_AD9361_1] -add {SLICE_X23Y180:SLICE_X28Y239}
resize_pblock [get_pblocks pblock_AD9361_1] -add {DSP48E2_X6Y72:DSP48E2_X6Y95}
resize_pblock [get_pblocks pblock_AD9361_1] -add {RAMB18_X0Y72:RAMB18_X0Y95}
resize_pblock [get_pblocks pblock_AD9361_1] -add {RAMB36_X0Y36:RAMB36_X0Y47}
create_pblock pblock_axi_chip2chip
add_cells_to_pblock [get_pblocks pblock_axi_chip2chip] [get_cells -quiet [list design_1_i/axi_chip2chip]]
resize_pblock [get_pblocks pblock_axi_chip2chip] -add {SLICE_X52Y60:SLICE_X60Y119}
resize_pblock [get_pblocks pblock_axi_chip2chip] -add {DSP48E2_X12Y24:DSP48E2_X12Y47}
resize_pblock [get_pblocks pblock_axi_chip2chip] -add {RAMB18_X2Y24:RAMB18_X2Y47}
resize_pblock [get_pblocks pblock_axi_chip2chip] -add {RAMB36_X2Y12:RAMB36_X2Y23}
create_pblock pblock_Aurora_2
add_cells_to_pblock [get_pblocks pblock_Aurora_2] [get_cells -quiet [list design_1_i/Aurora_2]]
resize_pblock [get_pblocks pblock_Aurora_2] -add {SLICE_X52Y30:SLICE_X60Y59}
resize_pblock [get_pblocks pblock_Aurora_2] -add {DSP48E2_X12Y12:DSP48E2_X12Y23}
resize_pblock [get_pblocks pblock_Aurora_2] -add {RAMB18_X2Y12:RAMB18_X2Y23}
resize_pblock [get_pblocks pblock_Aurora_2] -add {RAMB36_X2Y6:RAMB36_X2Y11}
create_pblock pblock_Aurora_1
add_cells_to_pblock [get_pblocks pblock_Aurora_1] [get_cells -quiet [list design_1_i/Aurora_1]]
resize_pblock [get_pblocks pblock_Aurora_1] -add {SLICE_X52Y120:SLICE_X60Y149}
resize_pblock [get_pblocks pblock_Aurora_1] -add {DSP48E2_X12Y48:DSP48E2_X12Y59}
resize_pblock [get_pblocks pblock_Aurora_1] -add {RAMB18_X2Y48:RAMB18_X2Y59}
resize_pblock [get_pblocks pblock_Aurora_1] -add {RAMB36_X2Y24:RAMB36_X2Y29}

create_pblock pblock_Power_meters
add_cells_to_pblock [get_pblocks pblock_Power_meters] [get_cells -quiet [list design_1_i/AD9361_CTRL/Power_meters]]
resize_pblock [get_pblocks pblock_Power_meters] -add {SLICE_X44Y180:SLICE_X60Y212}
resize_pblock [get_pblocks pblock_Power_meters] -add {DSP48E2_X12Y72:DSP48E2_X12Y83}
resize_pblock [get_pblocks pblock_Power_meters] -add {RAMB18_X1Y72:RAMB18_X2Y83}
resize_pblock [get_pblocks pblock_Power_meters] -add {RAMB36_X1Y36:RAMB36_X2Y41}
create_pblock pblock_gp_fr_cr_trnng_of
add_cells_to_pblock [get_pblocks pblock_gp_fr_cr_trnng_of] [get_cells -quiet [list design_1_i/gpio_for_curr_turning_off]]
resize_pblock [get_pblocks pblock_gp_fr_cr_trnng_of] -add {SLICE_X17Y153:SLICE_X22Y164}
resize_pblock [get_pblocks pblock_gp_fr_cr_trnng_of] -add {DSP48E2_X4Y62:DSP48E2_X5Y65}
create_pblock pblock_AXI_Peripheral
add_cells_to_pblock [get_pblocks pblock_AXI_Peripheral] [get_cells -quiet [list design_1_i/AXI_Peripheral]]
resize_pblock [get_pblocks pblock_AXI_Peripheral] -add {SLICE_X13Y120:SLICE_X22Y152}
resize_pblock [get_pblocks pblock_AXI_Peripheral] -add {DSP48E2_X3Y48:DSP48E2_X5Y59}


