-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Jun 16 12:57:00 2022
-- Host        : TOR00094 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Control_from_SOM_0_0_stub.vhdl
-- Design      : design_1_Control_from_SOM_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    op_mode_fsc_fsr : out STD_LOGIC;
    dl_lnk_sv_swap_iq : out STD_LOGIC;
    dl_lnk_lnk_swap_iq : out STD_LOGIC;
    ul_sv_lnk_swap_iq : out STD_LOGIC;
    ul_lnk_lnk_swap_iq : out STD_LOGIC;
    link_1_enable : out STD_LOGIC;
    link_2_enable : out STD_LOGIC;
    ad9361_1_reset : out STD_LOGIC;
    ad9361_2_reset : out STD_LOGIC;
    ad9361_3_reset : out STD_LOGIC;
    ad9364_reset : out STD_LOGIC;
    ad9361_1_en_agc : out STD_LOGIC;
    ad9361_2_en_agc : out STD_LOGIC;
    ad9361_3_en_agc : out STD_LOGIC;
    ad9364_en_agc : out STD_LOGIC;
    link_1_mode_rf_optic : out STD_LOGIC;
    link_2_mode_rf_optic : out STD_LOGIC;
    lte_downlink_simulation : out STD_LOGIC;
    lte_uplink_simulation : out STD_LOGIC;
    reset_FIR_core_26b : out STD_LOGIC;
    live_status : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "op_mode_fsc_fsr,dl_lnk_sv_swap_iq,dl_lnk_lnk_swap_iq,ul_sv_lnk_swap_iq,ul_lnk_lnk_swap_iq,link_1_enable,link_2_enable,ad9361_1_reset,ad9361_2_reset,ad9361_3_reset,ad9364_reset,ad9361_1_en_agc,ad9361_2_en_agc,ad9361_3_en_agc,ad9364_en_agc,link_1_mode_rf_optic,link_2_mode_rf_optic,lte_downlink_simulation,lte_uplink_simulation,reset_FIR_core_26b,live_status,s00_axi_awaddr[3:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[3:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Control_from_SOM_v1_0,Vivado 2019.1";
begin
end;
