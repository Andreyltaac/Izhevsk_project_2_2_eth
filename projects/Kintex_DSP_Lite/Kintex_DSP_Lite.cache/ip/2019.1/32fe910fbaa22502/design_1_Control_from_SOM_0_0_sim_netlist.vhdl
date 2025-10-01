-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Jun 16 12:57:00 2022
-- Host        : TOR00094 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Control_from_SOM_0_0_sim_netlist.vhdl
-- Design      : design_1_Control_from_SOM_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_from_SOM_v1_0_S00_AXI is
  port (
    s00_axi_awready : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 19 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    live_status : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_from_SOM_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_from_SOM_v1_0_S00_AXI is
  signal \^q\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_reg0[0]_i_3\ : label is "soft_lutpair1";
begin
  Q(19 downto 0) <= \^q\(19 downto 0);
  SR(0) <= \^sr\(0);
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^s00_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => \^sr\(0)
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => \^sr\(0)
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => \^sr\(0)
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s00_axi_arready\,
      R => \^sr\(0)
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => \^sr\(0)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => \^sr\(0)
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s00_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s00_axi_awready\,
      R => \^sr\(0)
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_awready\,
      I3 => \^s00_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => \^sr\(0)
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => live_status,
      I2 => axi_araddr(2),
      I3 => slv_reg2(0),
      I4 => axi_araddr(3),
      I5 => \^q\(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => axi_araddr(2),
      I2 => slv_reg2(10),
      I3 => axi_araddr(3),
      I4 => \^q\(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => axi_araddr(2),
      I2 => slv_reg2(11),
      I3 => axi_araddr(3),
      I4 => \^q\(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => axi_araddr(2),
      I2 => slv_reg2(12),
      I3 => axi_araddr(3),
      I4 => \^q\(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => axi_araddr(2),
      I2 => slv_reg2(13),
      I3 => axi_araddr(3),
      I4 => \^q\(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => axi_araddr(2),
      I2 => slv_reg2(14),
      I3 => axi_araddr(3),
      I4 => \^q\(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => axi_araddr(2),
      I2 => slv_reg2(15),
      I3 => axi_araddr(3),
      I4 => \^q\(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(16),
      I1 => axi_araddr(2),
      I2 => slv_reg2(16),
      I3 => axi_araddr(3),
      I4 => \^q\(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(17),
      I1 => axi_araddr(2),
      I2 => slv_reg2(17),
      I3 => axi_araddr(3),
      I4 => \^q\(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(18),
      I1 => axi_araddr(2),
      I2 => slv_reg2(18),
      I3 => axi_araddr(3),
      I4 => \^q\(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(19),
      I1 => axi_araddr(2),
      I2 => slv_reg2(19),
      I3 => axi_araddr(3),
      I4 => \^q\(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => axi_araddr(2),
      I2 => slv_reg2(1),
      I3 => axi_araddr(3),
      I4 => \^q\(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => axi_araddr(2),
      I2 => slv_reg2(20),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[20]\,
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => axi_araddr(2),
      I2 => slv_reg2(21),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[21]\,
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => axi_araddr(2),
      I2 => slv_reg2(22),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[22]\,
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => axi_araddr(2),
      I2 => slv_reg2(23),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[23]\,
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => axi_araddr(2),
      I2 => slv_reg2(24),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[24]\,
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => axi_araddr(2),
      I2 => slv_reg2(25),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[25]\,
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => axi_araddr(2),
      I2 => slv_reg2(26),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[26]\,
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => axi_araddr(2),
      I2 => slv_reg2(27),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[27]\,
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => axi_araddr(2),
      I2 => slv_reg2(28),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[28]\,
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => axi_araddr(2),
      I2 => slv_reg2(29),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[29]\,
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => axi_araddr(2),
      I2 => slv_reg2(2),
      I3 => axi_araddr(3),
      I4 => \^q\(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(30),
      I1 => axi_araddr(2),
      I2 => slv_reg2(30),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[30]\,
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(31),
      I1 => axi_araddr(2),
      I2 => slv_reg2(31),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[31]\,
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => axi_araddr(2),
      I2 => slv_reg2(3),
      I3 => axi_araddr(3),
      I4 => \^q\(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => axi_araddr(2),
      I2 => slv_reg2(4),
      I3 => axi_araddr(3),
      I4 => \^q\(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => axi_araddr(2),
      I2 => slv_reg2(5),
      I3 => axi_araddr(3),
      I4 => \^q\(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => axi_araddr(2),
      I2 => slv_reg2(6),
      I3 => axi_araddr(3),
      I4 => \^q\(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => axi_araddr(2),
      I2 => slv_reg2(7),
      I3 => axi_araddr(3),
      I4 => \^q\(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => axi_araddr(2),
      I2 => slv_reg2(8),
      I3 => axi_araddr(3),
      I4 => \^q\(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => axi_araddr(2),
      I2 => slv_reg2(9),
      I3 => axi_araddr(3),
      I4 => \^q\(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => \^sr\(0)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => \^sr\(0)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => \^sr\(0)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => \^sr\(0)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => \^sr\(0)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => \^sr\(0)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => \^sr\(0)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => \^sr\(0)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => \^sr\(0)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => \^sr\(0)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => \^sr\(0)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => \^sr\(0)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => \^sr\(0)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => \^sr\(0)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => \^sr\(0)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => \^sr\(0)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => \^sr\(0)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => \^sr\(0)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => \^sr\(0)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => \^sr\(0)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => \^sr\(0)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => \^sr\(0)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => \^sr\(0)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => \^sr\(0)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => \^sr\(0)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => \^sr\(0)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => \^sr\(0)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => \^sr\(0)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => \^sr\(0)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => \^sr\(0)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => \^sr\(0)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => \^sr\(0)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => \^sr\(0)
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_wready\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s00_axi_wready\,
      R => \^sr\(0)
    );
\slv_reg0[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
\slv_reg0[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => p_1_in(0)
    );
\slv_reg0[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s00_axi_wready\,
      I1 => \^s00_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg0[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => p_1_in(16)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => p_1_in(8)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(10),
      Q => \^q\(10),
      S => \^sr\(0)
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(11),
      Q => \^q\(11),
      S => \^sr\(0)
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(12),
      Q => \^q\(12),
      R => \^sr\(0)
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(13),
      Q => \^q\(13),
      R => \^sr\(0)
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(14),
      Q => \^q\(14),
      R => \^sr\(0)
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(15),
      Q => \^q\(15),
      R => \^sr\(0)
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(16),
      Q => \^q\(16),
      R => \^sr\(0)
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(17),
      Q => \^q\(17),
      R => \^sr\(0)
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(18),
      Q => \^q\(18),
      R => \^sr\(0)
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(19),
      Q => \^q\(19),
      R => \^sr\(0)
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(3),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(4),
      Q => \^q\(4),
      R => \^sr\(0)
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(5),
      Q => \^q\(5),
      S => \^sr\(0)
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(6),
      Q => \^q\(6),
      S => \^sr\(0)
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(7),
      Q => \^q\(7),
      R => \^sr\(0)
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(8),
      Q => \^q\(8),
      S => \^sr\(0)
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(9),
      Q => \^q\(9),
      S => \^sr\(0)
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => \^sr\(0)
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => \^sr\(0)
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => \^sr\(0)
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => \^sr\(0)
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => \^sr\(0)
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => \^sr\(0)
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => \^sr\(0)
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => \^sr\(0)
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => \^sr\(0)
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => \^sr\(0)
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => \^sr\(0)
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => \^sr\(0)
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => \^sr\(0)
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => \^sr\(0)
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => \^sr\(0)
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => \^sr\(0)
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => \^sr\(0)
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => \^sr\(0)
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => \^sr\(0)
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => \^sr\(0)
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => \^sr\(0)
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => \^sr\(0)
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => \^sr\(0)
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => \^sr\(0)
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => \^sr\(0)
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => \^sr\(0)
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => \^sr\(0)
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => \^sr\(0)
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => \^sr\(0)
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => \^sr\(0)
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => \^sr\(0)
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => \^sr\(0)
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => \^sr\(0)
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => \^sr\(0)
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => \^sr\(0)
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => \^sr\(0)
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => \^sr\(0)
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => \^sr\(0)
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => \^sr\(0)
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => \^sr\(0)
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => \^sr\(0)
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => \^sr\(0)
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => \^sr\(0)
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => \^sr\(0)
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => \^sr\(0)
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => \^sr\(0)
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => \^sr\(0)
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => \^sr\(0)
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => \^sr\(0)
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => \^sr\(0)
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => \^sr\(0)
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => \^sr\(0)
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => \^sr\(0)
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => \^sr\(0)
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => \^sr\(0)
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => \^sr\(0)
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => \^sr\(0)
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => \^sr\(0)
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => \^sr\(0)
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => \^sr\(0)
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => \^sr\(0)
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => \^sr\(0)
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => \^sr\(0)
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => \^sr\(0)
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s00_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Live_status is
  port (
    live_status : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Live_status;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Live_status is
  signal count_clk_cycl : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \count_clk_cycl0_carry__0_n_0\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__0_n_1\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__0_n_2\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__0_n_3\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__1_n_0\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__1_n_1\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__1_n_2\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__1_n_3\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__2_n_0\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__2_n_1\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__2_n_2\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__2_n_3\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__3_n_0\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__3_n_1\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__3_n_2\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__3_n_3\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__4_n_0\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__4_n_1\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__4_n_2\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__4_n_3\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__5_n_0\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__5_n_1\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__5_n_2\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__5_n_3\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__6_n_2\ : STD_LOGIC;
  signal \count_clk_cycl0_carry__6_n_3\ : STD_LOGIC;
  signal count_clk_cycl0_carry_n_0 : STD_LOGIC;
  signal count_clk_cycl0_carry_n_1 : STD_LOGIC;
  signal count_clk_cycl0_carry_n_2 : STD_LOGIC;
  signal count_clk_cycl0_carry_n_3 : STD_LOGIC;
  signal count_clk_cycl_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^live_status\ : STD_LOGIC;
  signal live_status_reg_i_1_n_0 : STD_LOGIC;
  signal live_status_reg_i_2_n_0 : STD_LOGIC;
  signal live_status_reg_i_3_n_0 : STD_LOGIC;
  signal live_status_reg_i_4_n_0 : STD_LOGIC;
  signal live_status_reg_i_5_n_0 : STD_LOGIC;
  signal live_status_reg_i_6_n_0 : STD_LOGIC;
  signal live_status_reg_i_7_n_0 : STD_LOGIC;
  signal live_status_reg_i_8_n_0 : STD_LOGIC;
  signal live_status_reg_i_9_n_0 : STD_LOGIC;
  signal \NLW_count_clk_cycl0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_clk_cycl0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  live_status <= \^live_status\;
count_clk_cycl0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count_clk_cycl0_carry_n_0,
      CO(2) => count_clk_cycl0_carry_n_1,
      CO(1) => count_clk_cycl0_carry_n_2,
      CO(0) => count_clk_cycl0_carry_n_3,
      CYINIT => count_clk_cycl(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => count_clk_cycl(4 downto 1)
    );
\count_clk_cycl0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count_clk_cycl0_carry_n_0,
      CO(3) => \count_clk_cycl0_carry__0_n_0\,
      CO(2) => \count_clk_cycl0_carry__0_n_1\,
      CO(1) => \count_clk_cycl0_carry__0_n_2\,
      CO(0) => \count_clk_cycl0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => count_clk_cycl(8 downto 5)
    );
\count_clk_cycl0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_clk_cycl0_carry__0_n_0\,
      CO(3) => \count_clk_cycl0_carry__1_n_0\,
      CO(2) => \count_clk_cycl0_carry__1_n_1\,
      CO(1) => \count_clk_cycl0_carry__1_n_2\,
      CO(0) => \count_clk_cycl0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => count_clk_cycl(12 downto 9)
    );
\count_clk_cycl0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_clk_cycl0_carry__1_n_0\,
      CO(3) => \count_clk_cycl0_carry__2_n_0\,
      CO(2) => \count_clk_cycl0_carry__2_n_1\,
      CO(1) => \count_clk_cycl0_carry__2_n_2\,
      CO(0) => \count_clk_cycl0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => count_clk_cycl(16 downto 13)
    );
\count_clk_cycl0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_clk_cycl0_carry__2_n_0\,
      CO(3) => \count_clk_cycl0_carry__3_n_0\,
      CO(2) => \count_clk_cycl0_carry__3_n_1\,
      CO(1) => \count_clk_cycl0_carry__3_n_2\,
      CO(0) => \count_clk_cycl0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => count_clk_cycl(20 downto 17)
    );
\count_clk_cycl0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_clk_cycl0_carry__3_n_0\,
      CO(3) => \count_clk_cycl0_carry__4_n_0\,
      CO(2) => \count_clk_cycl0_carry__4_n_1\,
      CO(1) => \count_clk_cycl0_carry__4_n_2\,
      CO(0) => \count_clk_cycl0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => count_clk_cycl(24 downto 21)
    );
\count_clk_cycl0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_clk_cycl0_carry__4_n_0\,
      CO(3) => \count_clk_cycl0_carry__5_n_0\,
      CO(2) => \count_clk_cycl0_carry__5_n_1\,
      CO(1) => \count_clk_cycl0_carry__5_n_2\,
      CO(0) => \count_clk_cycl0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => count_clk_cycl(28 downto 25)
    );
\count_clk_cycl0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_clk_cycl0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_count_clk_cycl0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_clk_cycl0_carry__6_n_2\,
      CO(0) => \count_clk_cycl0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_clk_cycl0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => count_clk_cycl(31 downto 29)
    );
\count_clk_cycl[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_clk_cycl(0),
      O => count_clk_cycl_0(0)
    );
\count_clk_cycl[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(10),
      O => count_clk_cycl_0(10)
    );
\count_clk_cycl[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(11),
      O => count_clk_cycl_0(11)
    );
\count_clk_cycl[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(12),
      O => count_clk_cycl_0(12)
    );
\count_clk_cycl[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(13),
      O => count_clk_cycl_0(13)
    );
\count_clk_cycl[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(14),
      O => count_clk_cycl_0(14)
    );
\count_clk_cycl[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(15),
      O => count_clk_cycl_0(15)
    );
\count_clk_cycl[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(16),
      O => count_clk_cycl_0(16)
    );
\count_clk_cycl[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(17),
      O => count_clk_cycl_0(17)
    );
\count_clk_cycl[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(18),
      O => count_clk_cycl_0(18)
    );
\count_clk_cycl[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(19),
      O => count_clk_cycl_0(19)
    );
\count_clk_cycl[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(1),
      O => count_clk_cycl_0(1)
    );
\count_clk_cycl[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(20),
      O => count_clk_cycl_0(20)
    );
\count_clk_cycl[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(21),
      O => count_clk_cycl_0(21)
    );
\count_clk_cycl[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(22),
      O => count_clk_cycl_0(22)
    );
\count_clk_cycl[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(23),
      O => count_clk_cycl_0(23)
    );
\count_clk_cycl[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(24),
      O => count_clk_cycl_0(24)
    );
\count_clk_cycl[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(25),
      O => count_clk_cycl_0(25)
    );
\count_clk_cycl[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(26),
      O => count_clk_cycl_0(26)
    );
\count_clk_cycl[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(27),
      O => count_clk_cycl_0(27)
    );
\count_clk_cycl[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(28),
      O => count_clk_cycl_0(28)
    );
\count_clk_cycl[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(29),
      O => count_clk_cycl_0(29)
    );
\count_clk_cycl[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(2),
      O => count_clk_cycl_0(2)
    );
\count_clk_cycl[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(30),
      O => count_clk_cycl_0(30)
    );
\count_clk_cycl[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(31),
      O => count_clk_cycl_0(31)
    );
\count_clk_cycl[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(3),
      O => count_clk_cycl_0(3)
    );
\count_clk_cycl[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(4),
      O => count_clk_cycl_0(4)
    );
\count_clk_cycl[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(5),
      O => count_clk_cycl_0(5)
    );
\count_clk_cycl[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(6),
      O => count_clk_cycl_0(6)
    );
\count_clk_cycl[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(7),
      O => count_clk_cycl_0(7)
    );
\count_clk_cycl[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(8),
      O => count_clk_cycl_0(8)
    );
\count_clk_cycl[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => data0(9),
      O => count_clk_cycl_0(9)
    );
\count_clk_cycl_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(0),
      Q => count_clk_cycl(0),
      R => SR(0)
    );
\count_clk_cycl_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(10),
      Q => count_clk_cycl(10),
      R => SR(0)
    );
\count_clk_cycl_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(11),
      Q => count_clk_cycl(11),
      R => SR(0)
    );
\count_clk_cycl_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(12),
      Q => count_clk_cycl(12),
      R => SR(0)
    );
\count_clk_cycl_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(13),
      Q => count_clk_cycl(13),
      R => SR(0)
    );
\count_clk_cycl_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(14),
      Q => count_clk_cycl(14),
      R => SR(0)
    );
\count_clk_cycl_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(15),
      Q => count_clk_cycl(15),
      R => SR(0)
    );
\count_clk_cycl_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(16),
      Q => count_clk_cycl(16),
      R => SR(0)
    );
\count_clk_cycl_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(17),
      Q => count_clk_cycl(17),
      R => SR(0)
    );
\count_clk_cycl_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(18),
      Q => count_clk_cycl(18),
      R => SR(0)
    );
\count_clk_cycl_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(19),
      Q => count_clk_cycl(19),
      R => SR(0)
    );
\count_clk_cycl_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(1),
      Q => count_clk_cycl(1),
      R => SR(0)
    );
\count_clk_cycl_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(20),
      Q => count_clk_cycl(20),
      R => SR(0)
    );
\count_clk_cycl_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(21),
      Q => count_clk_cycl(21),
      R => SR(0)
    );
\count_clk_cycl_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(22),
      Q => count_clk_cycl(22),
      R => SR(0)
    );
\count_clk_cycl_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(23),
      Q => count_clk_cycl(23),
      R => SR(0)
    );
\count_clk_cycl_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(24),
      Q => count_clk_cycl(24),
      R => SR(0)
    );
\count_clk_cycl_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(25),
      Q => count_clk_cycl(25),
      R => SR(0)
    );
\count_clk_cycl_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(26),
      Q => count_clk_cycl(26),
      R => SR(0)
    );
\count_clk_cycl_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(27),
      Q => count_clk_cycl(27),
      R => SR(0)
    );
\count_clk_cycl_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(28),
      Q => count_clk_cycl(28),
      R => SR(0)
    );
\count_clk_cycl_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(29),
      Q => count_clk_cycl(29),
      R => SR(0)
    );
\count_clk_cycl_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(2),
      Q => count_clk_cycl(2),
      R => SR(0)
    );
\count_clk_cycl_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(30),
      Q => count_clk_cycl(30),
      R => SR(0)
    );
\count_clk_cycl_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(31),
      Q => count_clk_cycl(31),
      R => SR(0)
    );
\count_clk_cycl_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(3),
      Q => count_clk_cycl(3),
      R => SR(0)
    );
\count_clk_cycl_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(4),
      Q => count_clk_cycl(4),
      R => SR(0)
    );
\count_clk_cycl_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(5),
      Q => count_clk_cycl(5),
      R => SR(0)
    );
\count_clk_cycl_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(6),
      Q => count_clk_cycl(6),
      R => SR(0)
    );
\count_clk_cycl_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(7),
      Q => count_clk_cycl(7),
      R => SR(0)
    );
\count_clk_cycl_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(8),
      Q => count_clk_cycl(8),
      R => SR(0)
    );
\count_clk_cycl_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_clk_cycl_0(9),
      Q => count_clk_cycl(9),
      R => SR(0)
    );
live_status_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => live_status_reg_i_2_n_0,
      I1 => live_status_reg_i_3_n_0,
      I2 => live_status_reg_i_4_n_0,
      I3 => live_status_reg_i_5_n_0,
      I4 => \^live_status\,
      O => live_status_reg_i_1_n_0
    );
live_status_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => count_clk_cycl(18),
      I1 => count_clk_cycl(19),
      I2 => count_clk_cycl(16),
      I3 => count_clk_cycl(17),
      I4 => live_status_reg_i_6_n_0,
      O => live_status_reg_i_2_n_0
    );
live_status_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => count_clk_cycl(26),
      I1 => count_clk_cycl(27),
      I2 => count_clk_cycl(24),
      I3 => count_clk_cycl(25),
      I4 => live_status_reg_i_7_n_0,
      O => live_status_reg_i_3_n_0
    );
live_status_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => count_clk_cycl(2),
      I1 => count_clk_cycl(3),
      I2 => count_clk_cycl(0),
      I3 => count_clk_cycl(1),
      I4 => live_status_reg_i_8_n_0,
      O => live_status_reg_i_4_n_0
    );
live_status_reg_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_clk_cycl(10),
      I1 => count_clk_cycl(11),
      I2 => count_clk_cycl(8),
      I3 => count_clk_cycl(9),
      I4 => live_status_reg_i_9_n_0,
      O => live_status_reg_i_5_n_0
    );
live_status_reg_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => count_clk_cycl(21),
      I1 => count_clk_cycl(20),
      I2 => count_clk_cycl(23),
      I3 => count_clk_cycl(22),
      O => live_status_reg_i_6_n_0
    );
live_status_reg_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_clk_cycl(29),
      I1 => count_clk_cycl(28),
      I2 => count_clk_cycl(31),
      I3 => count_clk_cycl(30),
      O => live_status_reg_i_7_n_0
    );
live_status_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => count_clk_cycl(5),
      I1 => count_clk_cycl(4),
      I2 => count_clk_cycl(6),
      I3 => count_clk_cycl(7),
      O => live_status_reg_i_8_n_0
    );
live_status_reg_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => count_clk_cycl(13),
      I1 => count_clk_cycl(12),
      I2 => count_clk_cycl(15),
      I3 => count_clk_cycl(14),
      O => live_status_reg_i_9_n_0
    );
live_status_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => live_status_reg_i_1_n_0,
      Q => \^live_status\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_from_SOM_v1_0 is
  port (
    live_status : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 19 downto 0 );
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_from_SOM_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_from_SOM_v1_0 is
  signal Control_from_SOM_v1_0_S00_AXI_inst_n_1 : STD_LOGIC;
  signal \^live_status\ : STD_LOGIC;
begin
  live_status <= \^live_status\;
Control_from_SOM_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_from_SOM_v1_0_S00_AXI
     port map (
      Q(19 downto 0) => Q(19 downto 0),
      SR(0) => Control_from_SOM_v1_0_S00_AXI_inst_n_1,
      live_status => \^live_status\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
Live_status_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Live_status
     port map (
      SR(0) => Control_from_SOM_v1_0_S00_AXI_inst_n_1,
      live_status => \^live_status\,
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_Control_from_SOM_0_0,Control_from_SOM_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Control_from_SOM_v1_0,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ad9361_1_reset : signal is "xilinx.com:signal:reset:1.0 ad9361_1_reset RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ad9361_1_reset : signal is "XIL_INTERFACENAME ad9361_1_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ad9361_2_reset : signal is "xilinx.com:signal:reset:1.0 ad9361_2_reset RST";
  attribute X_INTERFACE_PARAMETER of ad9361_2_reset : signal is "XIL_INTERFACENAME ad9361_2_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ad9361_3_reset : signal is "xilinx.com:signal:reset:1.0 ad9361_3_reset RST";
  attribute X_INTERFACE_PARAMETER of ad9361_3_reset : signal is "XIL_INTERFACENAME ad9361_3_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ad9364_reset : signal is "xilinx.com:signal:reset:1.0 ad9364_reset RST";
  attribute X_INTERFACE_PARAMETER of ad9364_reset : signal is "XIL_INTERFACENAME ad9364_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset_FIR_core_26b : signal is "xilinx.com:signal:reset:1.0 reset_FIR_core_26b RST";
  attribute X_INTERFACE_PARAMETER of reset_FIR_core_26b : signal is "XIL_INTERFACENAME reset_FIR_core_26b, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_CLK_COMMON_0_axi_periph_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_CLK_COMMON_0_axi" & LF &
 "_periph_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_from_SOM_v1_0
     port map (
      Q(19) => lte_uplink_simulation,
      Q(18) => lte_downlink_simulation,
      Q(17) => link_2_mode_rf_optic,
      Q(16) => link_1_mode_rf_optic,
      Q(15) => ad9364_en_agc,
      Q(14) => ad9361_3_en_agc,
      Q(13) => ad9361_2_en_agc,
      Q(12) => ad9361_1_en_agc,
      Q(11) => ad9364_reset,
      Q(10) => ad9361_3_reset,
      Q(9) => ad9361_2_reset,
      Q(8) => ad9361_1_reset,
      Q(7) => reset_FIR_core_26b,
      Q(6) => link_2_enable,
      Q(5) => link_1_enable,
      Q(4) => ul_lnk_lnk_swap_iq,
      Q(3) => ul_sv_lnk_swap_iq,
      Q(2) => dl_lnk_lnk_swap_iq,
      Q(1) => dl_lnk_sv_swap_iq,
      Q(0) => op_mode_fsc_fsr,
      live_status => live_status,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
