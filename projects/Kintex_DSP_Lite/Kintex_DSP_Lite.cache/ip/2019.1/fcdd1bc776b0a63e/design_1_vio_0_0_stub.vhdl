-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Aug  7 12:04:23 2025
-- Host        : TOR00094 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_vio_0_0_stub.vhdl
-- Design      : design_1_vio_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    probe_in0 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe_in1 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe_in2 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe_in3 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe_in4 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    probe_out0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    probe_out1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    probe_out2 : out STD_LOGIC_VECTOR ( 13 downto 0 );
    probe_out3 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    probe_out4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    probe_out5 : out STD_LOGIC_VECTOR ( 0 to 0 );
    probe_out6 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    probe_out7 : out STD_LOGIC_VECTOR ( 0 to 0 );
    probe_out8 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    probe_out9 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe_in0[14:0],probe_in1[23:0],probe_in2[23:0],probe_in3[23:0],probe_in4[17:0],probe_out0[3:0],probe_out1[2:0],probe_out2[13:0],probe_out3[23:0],probe_out4[0:0],probe_out5[0:0],probe_out6[2:0],probe_out7[0:0],probe_out8[1:0],probe_out9[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vio,Vivado 2019.1";
begin
end;
