-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Jun 16 12:57:23 2022
-- Host        : TOR00094 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Current_turning_off_0_0_stub.vhdl
-- Design      : design_1_Current_turning_off_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    som_en_28v_l1 : in STD_LOGIC;
    som_en_28v_l2 : in STD_LOGIC;
    som_en_28v_s1 : in STD_LOGIC;
    som_en_28v_s2 : in STD_LOGIC;
    som_en_28v_s3 : in STD_LOGIC;
    som_en_28v_s4 : in STD_LOGIC;
    som_en_5v_s : in STD_LOGIC;
    fpga_en_28v_l1 : out STD_LOGIC;
    fpga_en_28v_l2 : out STD_LOGIC;
    fpga_en_28v_s1 : out STD_LOGIC;
    fpga_en_28v_s2 : out STD_LOGIC;
    fpga_en_28v_s3 : out STD_LOGIC;
    fpga_en_28v_s4 : out STD_LOGIC;
    fpga_en_5v_s : out STD_LOGIC;
    spi_cs_n_0 : out STD_LOGIC;
    spi_sclk_0 : out STD_LOGIC;
    spi_mosi_0 : out STD_LOGIC;
    spi_miso_0 : in STD_LOGIC;
    spi_cs_n_1 : out STD_LOGIC;
    spi_sclk_1 : out STD_LOGIC;
    spi_mosi_1 : out STD_LOGIC;
    spi_miso_1 : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
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
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
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
attribute black_box_pad_pin of stub : architecture is "som_en_28v_l1,som_en_28v_l2,som_en_28v_s1,som_en_28v_s2,som_en_28v_s3,som_en_28v_s4,som_en_5v_s,fpga_en_28v_l1,fpga_en_28v_l2,fpga_en_28v_s1,fpga_en_28v_s2,fpga_en_28v_s3,fpga_en_28v_s4,fpga_en_5v_s,spi_cs_n_0,spi_sclk_0,spi_mosi_0,spi_miso_0,spi_cs_n_1,spi_sclk_1,spi_mosi_1,spi_miso_1,s00_axi_awaddr[5:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[5:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Current_turning_off_v1_0,Vivado 2019.1";
begin
end;
