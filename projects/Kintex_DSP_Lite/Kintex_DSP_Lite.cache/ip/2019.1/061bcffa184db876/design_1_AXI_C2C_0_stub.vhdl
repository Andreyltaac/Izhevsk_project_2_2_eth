-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Jun 16 12:44:27 2022
-- Host        : TOR00094 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_AXI_C2C_0_stub.vhdl
-- Design      : design_1_AXI_C2C_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    axi_c2c_m2s_intr_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_c2c_s2m_intr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    idelay_ref_clk : in STD_LOGIC;
    axi_c2c_phy_clk : in STD_LOGIC;
    axi_c2c_selio_tx_clk_out : out STD_LOGIC;
    axi_c2c_selio_tx_data_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    axi_c2c_selio_rx_clk_in : in STD_LOGIC;
    axi_c2c_selio_rx_data_in : in STD_LOGIC_VECTOR ( 14 downto 0 );
    axi_c2c_link_status_out : out STD_LOGIC;
    axi_c2c_multi_bit_error_out : out STD_LOGIC;
    axi_c2c_link_error_out : out STD_LOGIC;
    m_axi_lite_aclk : in STD_LOGIC;
    m_axi_lite_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_lite_awprot : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_lite_awvalid : out STD_LOGIC;
    m_axi_lite_awready : in STD_LOGIC;
    m_axi_lite_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_lite_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_lite_wvalid : out STD_LOGIC;
    m_axi_lite_wready : in STD_LOGIC;
    m_axi_lite_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_lite_bvalid : in STD_LOGIC;
    m_axi_lite_bready : out STD_LOGIC;
    m_axi_lite_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_lite_arprot : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_lite_arvalid : out STD_LOGIC;
    m_axi_lite_arready : in STD_LOGIC;
    m_axi_lite_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_lite_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_lite_rvalid : in STD_LOGIC;
    m_axi_lite_rready : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_aclk,s_aresetn,s_axi_awaddr[31:0],s_axi_awlen[7:0],s_axi_awsize[2:0],s_axi_awburst[1:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[31:0],s_axi_arlen[7:0],s_axi_arsize[2:0],s_axi_arburst[1:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rlast,s_axi_rvalid,s_axi_rready,axi_c2c_m2s_intr_in[3:0],axi_c2c_s2m_intr_out[3:0],idelay_ref_clk,axi_c2c_phy_clk,axi_c2c_selio_tx_clk_out,axi_c2c_selio_tx_data_out[14:0],axi_c2c_selio_rx_clk_in,axi_c2c_selio_rx_data_in[14:0],axi_c2c_link_status_out,axi_c2c_multi_bit_error_out,axi_c2c_link_error_out,m_axi_lite_aclk,m_axi_lite_awaddr[31:0],m_axi_lite_awprot[1:0],m_axi_lite_awvalid,m_axi_lite_awready,m_axi_lite_wdata[31:0],m_axi_lite_wstrb[3:0],m_axi_lite_wvalid,m_axi_lite_wready,m_axi_lite_bresp[1:0],m_axi_lite_bvalid,m_axi_lite_bready,m_axi_lite_araddr[31:0],m_axi_lite_arprot[1:0],m_axi_lite_arvalid,m_axi_lite_arready,m_axi_lite_rdata[31:0],m_axi_lite_rresp[1:0],m_axi_lite_rvalid,m_axi_lite_rready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_chip2chip_v5_0_5,Vivado 2019.1";
begin
end;
