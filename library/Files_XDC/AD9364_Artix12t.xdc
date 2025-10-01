#-------------------------------------------------------------------------------
#DIO_ARTIX
#-------------------------------------------------------------------------------
#MGTX2
set_property PACKAGE_PIN D5 [get_ports gt_refclk_n]
set_property PACKAGE_PIN D6 [get_ports gt_refclk_p]

set_property PACKAGE_PIN E4 [get_ports {rxp[0]}]
set_property PACKAGE_PIN E3 [get_ports {rxn[0]}]
set_property PACKAGE_PIN A4 [get_ports {rxp[1]}]
set_property PACKAGE_PIN A3 [get_ports {rxn[1]}]

set_property PACKAGE_PIN H2 [get_ports {txp[0]}]
set_property PACKAGE_PIN H1 [get_ports {txn[0]}]
set_property PACKAGE_PIN F2 [get_ports {txp[1]}]
set_property PACKAGE_PIN F1 [get_ports {txn[1]}]
#MGTX2


#ad9364
#RX
set_property -dict {PACKAGE_PIN R2 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9364_DCLK_P]
set_property -dict {PACKAGE_PIN R1 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9364_DCLK_N]
set_property -dict {PACKAGE_PIN R3 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9364_RX_FRAME_P]
set_property -dict {PACKAGE_PIN T2 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ad9364_RX_FRAME_N]
                                              
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_P[0]}]
set_property -dict {PACKAGE_PIN M1 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_N[0]}]
set_property -dict {PACKAGE_PIN N3 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_P[1]}]
set_property -dict {PACKAGE_PIN N2 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_N[1]}]
set_property -dict {PACKAGE_PIN N1 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_P[2]}]
set_property -dict {PACKAGE_PIN P1 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_N[2]}]
set_property -dict {PACKAGE_PIN M4 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_P[3]}]
set_property -dict {PACKAGE_PIN N4 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_N[3]}]
set_property -dict {PACKAGE_PIN M6 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_P[4]}]
set_property -dict {PACKAGE_PIN N6 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_N[4]}]
set_property -dict {PACKAGE_PIN P4 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_P[5]}]
set_property -dict {PACKAGE_PIN P3 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {ad9364_P1_N[5]}]
#RX

#TX
set_property -dict {PACKAGE_PIN P6 IOSTANDARD LVDS_25} [get_ports ad9364_FB_CLK_P]
set_property -dict {PACKAGE_PIN P5 IOSTANDARD LVDS_25} [get_ports ad9364_FB_CLK_N]
set_property -dict {PACKAGE_PIN U6 IOSTANDARD LVDS_25} [get_ports ad9364_TX_FRAME_P]
set_property -dict {PACKAGE_PIN U5 IOSTANDARD LVDS_25} [get_ports ad9364_TX_FRAME_N]
                                              
set_property -dict {PACKAGE_PIN K6 IOSTANDARD LVDS_25} [get_ports {ad9364_P0_P[0]}]
set_property -dict {PACKAGE_PIN K5 IOSTANDARD LVDS_25} [get_ports {ad9364_P0_N[0]}]
set_property -dict {PACKAGE_PIN J5 IOSTANDARD LVDS_25} [get_ports {ad9364_P0_P[1]}]
set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVDS_25} [get_ports {ad9364_P0_N[1]}]
set_property -dict {PACKAGE_PIN K2 IOSTANDARD LVDS_25} [get_ports {ad9364_P0_P[2]}]
set_property -dict {PACKAGE_PIN K1 IOSTANDARD LVDS_25} [get_ports {ad9364_P0_N[2]}]
set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVDS_25} [get_ports {ad9364_P0_P[3]}]
set_property -dict {PACKAGE_PIN L2 IOSTANDARD LVDS_25} [get_ports {ad9364_P0_N[3]}]
set_property -dict {PACKAGE_PIN L4 IOSTANDARD LVDS_25} [get_ports {ad9364_P0_P[4]}]
set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVDS_25} [get_ports {ad9364_P0_N[4]}]
set_property -dict {PACKAGE_PIN L5 IOSTANDARD LVDS_25} [get_ports {ad9364_P0_P[5]}]
set_property -dict {PACKAGE_PIN M5 IOSTANDARD LVDS_25} [get_ports {ad9364_P0_N[5]}]

set_property -dict {PACKAGE_PIN J6 IOSTANDARD LVCMOS25} [get_ports ad9364_EN]
set_property -dict {PACKAGE_PIN R6 IOSTANDARD LVCMOS25} [get_ports ad9364_TXNRX]
set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVCMOS25} [get_ports ad9364_UP_EN]
set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVCMOS25} [get_ports ad9364_UP_TXNRX]
#TX
#ad9364

set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS25} [get_ports FPGA_REF_40MHZ]

#Primary clocks
create_clock -period 4.000 -name prm_clk_ad1 [get_ports ad9364_DCLK_P]
#create_clock -period 25.000 -name prm_clk_40 [get_ports FPGA_REF_40MHZ]
create_clock -period 6.400 -name prm_clk_sfp1 [get_ports gt_refclk_p]
#Primary clocks
