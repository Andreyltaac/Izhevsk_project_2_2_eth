-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Jun 16 12:45:18 2022
-- Host        : TOR00094 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_AXI_DMA_0_sim_netlist.vhdl
-- Design      : design_1_AXI_DMA_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad_mem_asym is
  port (
    m_dest_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_aclk : in STD_LOGIC;
    fifo_wr_clk : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fifo_wr_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_ram_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dest_valid : in STD_LOGIC;
    m_ram_reg_1 : in STD_LOGIC;
    m_dest_axi_wready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad_mem_asym;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad_mem_asym is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_m_ram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_m_ram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of m_ram_reg : label is "p0_d32";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of m_ram_reg : label is "p0_d32";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of m_ram_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of m_ram_reg : label is 8192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of m_ram_reg : label is "m_ram";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of m_ram_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of m_ram_reg : label is 511;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of m_ram_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of m_ram_reg : label is 31;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of m_ram_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of m_ram_reg : label is 511;
  attribute ram_offset : integer;
  attribute ram_offset of m_ram_reg : label is 256;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of m_ram_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of m_ram_reg : label is 31;
begin
  E(0) <= \^e\(0);
m_ram_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13) => '1',
      ADDRARDADDR(12 downto 5) => ADDRARDADDR(7 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13) => '1',
      ADDRBWRADDR(12 downto 5) => ADDRBWRADDR(7 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CLKARDCLK => m_dest_axi_aclk,
      CLKBWRCLK => fifo_wr_clk,
      DIADI(15 downto 0) => fifo_wr_din(15 downto 0),
      DIBDI(15 downto 0) => fifo_wr_din(31 downto 16),
      DIPADIP(1 downto 0) => B"11",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => m_dest_axi_wdata(15 downto 0),
      DOBDO(15 downto 0) => m_dest_axi_wdata(31 downto 16),
      DOPADOP(1 downto 0) => NLW_m_ram_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_m_ram_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => \^e\(0),
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => m_ram_reg_0(0),
      WEBWE(2) => m_ram_reg_0(0),
      WEBWE(1) => m_ram_reg_0(0),
      WEBWE(0) => m_ram_reg_0(0)
    );
m_ram_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => dest_valid,
      I1 => m_ram_reg_1,
      I2 => m_dest_axi_wready,
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_address_generator is
  port (
    addr_valid_reg_0 : out STD_LOGIC;
    \id_reg[3]_0\ : out STD_LOGIC;
    \id_reg[2]_0\ : out STD_LOGIC;
    \id_reg[1]_0\ : out STD_LOGIC;
    \id_reg[0]_0\ : out STD_LOGIC;
    m_dest_axi_awaddr : out STD_LOGIC_VECTOR ( 27 downto 0 );
    address_enabled : out STD_LOGIC;
    dest_bl_ready : out STD_LOGIC;
    req_ready_reg_0 : out STD_LOGIC;
    \id_reg[2]_1\ : out STD_LOGIC;
    \id_reg[0]_1\ : out STD_LOGIC;
    \id_reg[1]_1\ : out STD_LOGIC;
    \id_reg[3]_1\ : out STD_LOGIC;
    dest_burst_valid : out STD_LOGIC;
    m_dest_axi_awlen : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_dest_axi_aclk : in STD_LOGIC;
    enabled_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dest_address_eot : in STD_LOGIC;
    data8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    enabled_reg_1 : in STD_LOGIC;
    m_dest_axi_awready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_rdata_reg[11]\ : in STD_LOGIC;
    \up_rdata_reg[11]_0\ : in STD_LOGIC;
    \address_reg[27]_0\ : in STD_LOGIC_VECTOR ( 27 downto 0 );
    \up_rdata_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_rdata_reg[11]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    addr_valid_i_2_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \dest_burst_len_data_reg[2]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bl_ready_reg_0 : in STD_LOGIC;
    cdc_sync_stage2 : in STD_LOGIC;
    req_ready_reg_1 : in STD_LOGIC;
    req_ready_reg_2 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_burst_len_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_address_generator;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_address_generator is
  signal addr_valid_d1 : STD_LOGIC;
  signal addr_valid_i_1_n_0 : STD_LOGIC;
  signal addr_valid_i_3_n_0 : STD_LOGIC;
  signal addr_valid_i_4_n_0 : STD_LOGIC;
  signal \^addr_valid_reg_0\ : STD_LOGIC;
  signal \address[0]_i_1_n_0\ : STD_LOGIC;
  signal \address[11]_i_2_n_0\ : STD_LOGIC;
  signal \address[11]_i_3_n_0\ : STD_LOGIC;
  signal \address[11]_i_4_n_0\ : STD_LOGIC;
  signal \address[11]_i_5_n_0\ : STD_LOGIC;
  signal \address[15]_i_2_n_0\ : STD_LOGIC;
  signal \address[15]_i_3_n_0\ : STD_LOGIC;
  signal \address[15]_i_4_n_0\ : STD_LOGIC;
  signal \address[15]_i_5_n_0\ : STD_LOGIC;
  signal \address[19]_i_2_n_0\ : STD_LOGIC;
  signal \address[19]_i_3_n_0\ : STD_LOGIC;
  signal \address[19]_i_4_n_0\ : STD_LOGIC;
  signal \address[19]_i_5_n_0\ : STD_LOGIC;
  signal \address[1]_i_1_n_0\ : STD_LOGIC;
  signal \address[23]_i_2_n_0\ : STD_LOGIC;
  signal \address[23]_i_3_n_0\ : STD_LOGIC;
  signal \address[23]_i_4_n_0\ : STD_LOGIC;
  signal \address[23]_i_5_n_0\ : STD_LOGIC;
  signal \address[27]_i_1_n_0\ : STD_LOGIC;
  signal \address[27]_i_3_n_0\ : STD_LOGIC;
  signal \address[27]_i_4_n_0\ : STD_LOGIC;
  signal \address[27]_i_5_n_0\ : STD_LOGIC;
  signal \address[27]_i_6_n_0\ : STD_LOGIC;
  signal \address[2]_i_1_n_0\ : STD_LOGIC;
  signal \address[3]_i_1_n_0\ : STD_LOGIC;
  signal \address[7]_i_2_n_0\ : STD_LOGIC;
  signal \address[7]_i_3_n_0\ : STD_LOGIC;
  signal \address[7]_i_4_n_0\ : STD_LOGIC;
  signal \address[7]_i_5_n_0\ : STD_LOGIC;
  signal \address[7]_i_6_n_0\ : STD_LOGIC;
  signal \^address_enabled\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[27]_i_2_n_1\ : STD_LOGIC;
  signal \address_reg[27]_i_2_n_2\ : STD_LOGIC;
  signal \address_reg[27]_i_2_n_3\ : STD_LOGIC;
  signal \address_reg[27]_i_2_n_4\ : STD_LOGIC;
  signal \address_reg[27]_i_2_n_5\ : STD_LOGIC;
  signal \address_reg[27]_i_2_n_6\ : STD_LOGIC;
  signal \address_reg[27]_i_2_n_7\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \bl_ready0__0\ : STD_LOGIC;
  signal bl_ready_i_1_n_0 : STD_LOGIC;
  signal \^dest_bl_ready\ : STD_LOGIC;
  signal \dest_id_next[3]_i_4_n_0\ : STD_LOGIC;
  signal enabled_i_1_n_0 : STD_LOGIC;
  signal id0 : STD_LOGIC;
  signal \id[0]_i_1_n_0\ : STD_LOGIC;
  signal \id[3]_i_2_n_0\ : STD_LOGIC;
  signal \^id_reg[0]_0\ : STD_LOGIC;
  signal \^id_reg[1]_0\ : STD_LOGIC;
  signal \^id_reg[2]_0\ : STD_LOGIC;
  signal \^id_reg[3]_0\ : STD_LOGIC;
  signal inc_id_return : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal last : STD_LOGIC;
  signal last_burst_len : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \length[4]_i_1_n_0\ : STD_LOGIC;
  signal \^m_dest_axi_awaddr\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal p_0_in0 : STD_LOGIC;
  signal req_ready_i_1_n_0 : STD_LOGIC;
  signal \^req_ready_reg_0\ : STD_LOGIC;
  signal \NLW_address_reg[27]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \address[0]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \address[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \address[2]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \address[3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \id[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \id[1]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \id[2]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \id[3]_i_2\ : label is "soft_lutpair45";
begin
  addr_valid_reg_0 <= \^addr_valid_reg_0\;
  address_enabled <= \^address_enabled\;
  dest_bl_ready <= \^dest_bl_ready\;
  \id_reg[0]_0\ <= \^id_reg[0]_0\;
  \id_reg[1]_0\ <= \^id_reg[1]_0\;
  \id_reg[2]_0\ <= \^id_reg[2]_0\;
  \id_reg[3]_0\ <= \^id_reg[3]_0\;
  m_dest_axi_awaddr(27 downto 0) <= \^m_dest_axi_awaddr\(27 downto 0);
  req_ready_reg_0 <= \^req_ready_reg_0\;
addr_valid_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \^addr_valid_reg_0\,
      Q => addr_valid_d1,
      R => '0'
    );
addr_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAABFAA"
    )
        port map (
      I0 => \^addr_valid_reg_0\,
      I1 => \^dest_bl_ready\,
      I2 => dest_address_eot,
      I3 => \bl_ready0__0\,
      I4 => \^req_ready_reg_0\,
      I5 => addr_valid_i_3_n_0,
      O => addr_valid_i_1_n_0
    );
addr_valid_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE00"
    )
        port map (
      I0 => addr_valid_i_4_n_0,
      I1 => data8(1),
      I2 => \^id_reg[3]_0\,
      I3 => enabled_reg_1,
      O => \bl_ready0__0\
    );
addr_valid_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAAA"
    )
        port map (
      I0 => enabled_reg_0(0),
      I1 => \^req_ready_reg_0\,
      I2 => \^addr_valid_reg_0\,
      I3 => m_dest_axi_awready,
      O => addr_valid_i_3_n_0
    );
addr_valid_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^id_reg[0]_0\,
      I1 => addr_valid_i_2_0(0),
      I2 => data8(0),
      I3 => \^id_reg[2]_0\,
      I4 => addr_valid_i_2_0(1),
      I5 => \^id_reg[1]_0\,
      O => addr_valid_i_4_n_0
    );
addr_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => addr_valid_i_1_n_0,
      Q => \^addr_valid_reg_0\,
      R => '0'
    );
\address[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(0),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(0),
      O => \address[0]_i_1_n_0\
    );
\address[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(11),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(11),
      O => \address[11]_i_2_n_0\
    );
\address[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(10),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(10),
      O => \address[11]_i_3_n_0\
    );
\address[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(9),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(9),
      O => \address[11]_i_4_n_0\
    );
\address[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(8),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(8),
      O => \address[11]_i_5_n_0\
    );
\address[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(15),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(15),
      O => \address[15]_i_2_n_0\
    );
\address[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(14),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(14),
      O => \address[15]_i_3_n_0\
    );
\address[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(13),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(13),
      O => \address[15]_i_4_n_0\
    );
\address[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(12),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(12),
      O => \address[15]_i_5_n_0\
    );
\address[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(19),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(19),
      O => \address[19]_i_2_n_0\
    );
\address[19]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(18),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(18),
      O => \address[19]_i_3_n_0\
    );
\address[19]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(17),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(17),
      O => \address[19]_i_4_n_0\
    );
\address[19]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(16),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(16),
      O => \address[19]_i_5_n_0\
    );
\address[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(1),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(1),
      O => \address[1]_i_1_n_0\
    );
\address[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(23),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(23),
      O => \address[23]_i_2_n_0\
    );
\address[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(22),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(22),
      O => \address[23]_i_3_n_0\
    );
\address[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(21),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(21),
      O => \address[23]_i_4_n_0\
    );
\address[23]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(20),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(20),
      O => \address[23]_i_5_n_0\
    );
\address[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^req_ready_reg_0\,
      I1 => m_dest_axi_awready,
      I2 => \^addr_valid_reg_0\,
      O => \address[27]_i_1_n_0\
    );
\address[27]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(27),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(27),
      O => \address[27]_i_3_n_0\
    );
\address[27]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(26),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(26),
      O => \address[27]_i_4_n_0\
    );
\address[27]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(25),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(25),
      O => \address[27]_i_5_n_0\
    );
\address[27]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(24),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(24),
      O => \address[27]_i_6_n_0\
    );
\address[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(2),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(2),
      O => \address[2]_i_1_n_0\
    );
\address[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(3),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(3),
      O => \address[3]_i_1_n_0\
    );
\address[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(5),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(5),
      O => \address[7]_i_2_n_0\
    );
\address[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(7),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(7),
      O => \address[7]_i_3_n_0\
    );
\address[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(6),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(6),
      O => \address[7]_i_4_n_0\
    );
\address[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^m_dest_axi_awaddr\(5),
      I1 => \address_reg[27]_0\(5),
      I2 => \^req_ready_reg_0\,
      O => \address[7]_i_5_n_0\
    );
\address[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \address_reg[27]_0\(4),
      I1 => \^req_ready_reg_0\,
      I2 => \^m_dest_axi_awaddr\(4),
      O => \address[7]_i_6_n_0\
    );
\address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address[0]_i_1_n_0\,
      Q => \^m_dest_axi_awaddr\(0),
      R => '0'
    );
\address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[11]_i_1_n_5\,
      Q => \^m_dest_axi_awaddr\(10),
      R => '0'
    );
\address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[11]_i_1_n_4\,
      Q => \^m_dest_axi_awaddr\(11),
      R => '0'
    );
\address_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[7]_i_1_n_0\,
      CO(3) => \address_reg[11]_i_1_n_0\,
      CO(2) => \address_reg[11]_i_1_n_1\,
      CO(1) => \address_reg[11]_i_1_n_2\,
      CO(0) => \address_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[11]_i_1_n_4\,
      O(2) => \address_reg[11]_i_1_n_5\,
      O(1) => \address_reg[11]_i_1_n_6\,
      O(0) => \address_reg[11]_i_1_n_7\,
      S(3) => \address[11]_i_2_n_0\,
      S(2) => \address[11]_i_3_n_0\,
      S(1) => \address[11]_i_4_n_0\,
      S(0) => \address[11]_i_5_n_0\
    );
\address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[15]_i_1_n_7\,
      Q => \^m_dest_axi_awaddr\(12),
      R => '0'
    );
\address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[15]_i_1_n_6\,
      Q => \^m_dest_axi_awaddr\(13),
      R => '0'
    );
\address_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[15]_i_1_n_5\,
      Q => \^m_dest_axi_awaddr\(14),
      R => '0'
    );
\address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[15]_i_1_n_4\,
      Q => \^m_dest_axi_awaddr\(15),
      R => '0'
    );
\address_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[11]_i_1_n_0\,
      CO(3) => \address_reg[15]_i_1_n_0\,
      CO(2) => \address_reg[15]_i_1_n_1\,
      CO(1) => \address_reg[15]_i_1_n_2\,
      CO(0) => \address_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[15]_i_1_n_4\,
      O(2) => \address_reg[15]_i_1_n_5\,
      O(1) => \address_reg[15]_i_1_n_6\,
      O(0) => \address_reg[15]_i_1_n_7\,
      S(3) => \address[15]_i_2_n_0\,
      S(2) => \address[15]_i_3_n_0\,
      S(1) => \address[15]_i_4_n_0\,
      S(0) => \address[15]_i_5_n_0\
    );
\address_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[19]_i_1_n_7\,
      Q => \^m_dest_axi_awaddr\(16),
      R => '0'
    );
\address_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[19]_i_1_n_6\,
      Q => \^m_dest_axi_awaddr\(17),
      R => '0'
    );
\address_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[19]_i_1_n_5\,
      Q => \^m_dest_axi_awaddr\(18),
      R => '0'
    );
\address_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[19]_i_1_n_4\,
      Q => \^m_dest_axi_awaddr\(19),
      R => '0'
    );
\address_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[15]_i_1_n_0\,
      CO(3) => \address_reg[19]_i_1_n_0\,
      CO(2) => \address_reg[19]_i_1_n_1\,
      CO(1) => \address_reg[19]_i_1_n_2\,
      CO(0) => \address_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[19]_i_1_n_4\,
      O(2) => \address_reg[19]_i_1_n_5\,
      O(1) => \address_reg[19]_i_1_n_6\,
      O(0) => \address_reg[19]_i_1_n_7\,
      S(3) => \address[19]_i_2_n_0\,
      S(2) => \address[19]_i_3_n_0\,
      S(1) => \address[19]_i_4_n_0\,
      S(0) => \address[19]_i_5_n_0\
    );
\address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address[1]_i_1_n_0\,
      Q => \^m_dest_axi_awaddr\(1),
      R => '0'
    );
\address_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[23]_i_1_n_7\,
      Q => \^m_dest_axi_awaddr\(20),
      R => '0'
    );
\address_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[23]_i_1_n_6\,
      Q => \^m_dest_axi_awaddr\(21),
      R => '0'
    );
\address_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[23]_i_1_n_5\,
      Q => \^m_dest_axi_awaddr\(22),
      R => '0'
    );
\address_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[23]_i_1_n_4\,
      Q => \^m_dest_axi_awaddr\(23),
      R => '0'
    );
\address_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[19]_i_1_n_0\,
      CO(3) => \address_reg[23]_i_1_n_0\,
      CO(2) => \address_reg[23]_i_1_n_1\,
      CO(1) => \address_reg[23]_i_1_n_2\,
      CO(0) => \address_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[23]_i_1_n_4\,
      O(2) => \address_reg[23]_i_1_n_5\,
      O(1) => \address_reg[23]_i_1_n_6\,
      O(0) => \address_reg[23]_i_1_n_7\,
      S(3) => \address[23]_i_2_n_0\,
      S(2) => \address[23]_i_3_n_0\,
      S(1) => \address[23]_i_4_n_0\,
      S(0) => \address[23]_i_5_n_0\
    );
\address_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[27]_i_2_n_7\,
      Q => \^m_dest_axi_awaddr\(24),
      R => '0'
    );
\address_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[27]_i_2_n_6\,
      Q => \^m_dest_axi_awaddr\(25),
      R => '0'
    );
\address_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[27]_i_2_n_5\,
      Q => \^m_dest_axi_awaddr\(26),
      R => '0'
    );
\address_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[27]_i_2_n_4\,
      Q => \^m_dest_axi_awaddr\(27),
      R => '0'
    );
\address_reg[27]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[23]_i_1_n_0\,
      CO(3) => \NLW_address_reg[27]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \address_reg[27]_i_2_n_1\,
      CO(1) => \address_reg[27]_i_2_n_2\,
      CO(0) => \address_reg[27]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[27]_i_2_n_4\,
      O(2) => \address_reg[27]_i_2_n_5\,
      O(1) => \address_reg[27]_i_2_n_6\,
      O(0) => \address_reg[27]_i_2_n_7\,
      S(3) => \address[27]_i_3_n_0\,
      S(2) => \address[27]_i_4_n_0\,
      S(1) => \address[27]_i_5_n_0\,
      S(0) => \address[27]_i_6_n_0\
    );
\address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address[2]_i_1_n_0\,
      Q => \^m_dest_axi_awaddr\(2),
      R => '0'
    );
\address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address[3]_i_1_n_0\,
      Q => \^m_dest_axi_awaddr\(3),
      R => '0'
    );
\address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[7]_i_1_n_7\,
      Q => \^m_dest_axi_awaddr\(4),
      R => '0'
    );
\address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[7]_i_1_n_6\,
      Q => \^m_dest_axi_awaddr\(5),
      R => '0'
    );
\address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[7]_i_1_n_5\,
      Q => \^m_dest_axi_awaddr\(6),
      R => '0'
    );
\address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[7]_i_1_n_4\,
      Q => \^m_dest_axi_awaddr\(7),
      R => '0'
    );
\address_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \address_reg[7]_i_1_n_0\,
      CO(2) => \address_reg[7]_i_1_n_1\,
      CO(1) => \address_reg[7]_i_1_n_2\,
      CO(0) => \address_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \address[7]_i_2_n_0\,
      DI(0) => '0',
      O(3) => \address_reg[7]_i_1_n_4\,
      O(2) => \address_reg[7]_i_1_n_5\,
      O(1) => \address_reg[7]_i_1_n_6\,
      O(0) => \address_reg[7]_i_1_n_7\,
      S(3) => \address[7]_i_3_n_0\,
      S(2) => \address[7]_i_4_n_0\,
      S(1) => \address[7]_i_5_n_0\,
      S(0) => \address[7]_i_6_n_0\
    );
\address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[11]_i_1_n_7\,
      Q => \^m_dest_axi_awaddr\(8),
      R => '0'
    );
\address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => \address[27]_i_1_n_0\,
      D => \address_reg[11]_i_1_n_6\,
      Q => \^m_dest_axi_awaddr\(9),
      R => '0'
    );
bl_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"909F909090909090"
    )
        port map (
      I0 => bl_ready_reg_0,
      I1 => cdc_sync_stage2,
      I2 => \^dest_bl_ready\,
      I3 => \^addr_valid_reg_0\,
      I4 => \bl_ready0__0\,
      I5 => dest_address_eot,
      O => bl_ready_i_1_n_0
    );
bl_ready_reg: unisim.vcomponents.FDSE
     port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => bl_ready_i_1_n_0,
      Q => \^dest_bl_ready\,
      S => enabled_reg_0(0)
    );
\dest_id_next[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \^id_reg[3]_0\,
      I1 => \dest_burst_len_data_reg[2]\(3),
      I2 => \dest_id_next[3]_i_4_n_0\,
      O => dest_burst_valid
    );
\dest_id_next[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^id_reg[0]_0\,
      I1 => \dest_burst_len_data_reg[2]\(0),
      I2 => \dest_burst_len_data_reg[2]\(2),
      I3 => \^id_reg[2]_0\,
      I4 => \dest_burst_len_data_reg[2]\(1),
      I5 => \^id_reg[1]_0\,
      O => \dest_id_next[3]_i_4_n_0\
    );
enabled_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => enabled_reg_1,
      I1 => \^addr_valid_reg_0\,
      I2 => \^address_enabled\,
      O => enabled_i_1_n_0
    );
enabled_reg: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => enabled_i_1_n_0,
      Q => \^address_enabled\,
      R => enabled_reg_0(0)
    );
\id[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^id_reg[1]_0\,
      I1 => \^id_reg[3]_0\,
      I2 => \^id_reg[2]_0\,
      O => \id[0]_i_1_n_0\
    );
\id[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"99F0"
    )
        port map (
      I0 => \^id_reg[2]_0\,
      I1 => \^id_reg[3]_0\,
      I2 => \^id_reg[1]_0\,
      I3 => \^id_reg[0]_0\,
      O => inc_id_return(1)
    );
\id[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1F0"
    )
        port map (
      I0 => \^id_reg[3]_0\,
      I1 => \^id_reg[0]_0\,
      I2 => \^id_reg[2]_0\,
      I3 => \^id_reg[1]_0\,
      O => inc_id_return(2)
    );
\id[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr_valid_reg_0\,
      I1 => addr_valid_d1,
      O => id0
    );
\id[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE04"
    )
        port map (
      I0 => \^id_reg[1]_0\,
      I1 => \^id_reg[2]_0\,
      I2 => \^id_reg[0]_0\,
      I3 => \^id_reg[3]_0\,
      O => \id[3]_i_2_n_0\
    );
\id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => \id[0]_i_1_n_0\,
      Q => \^id_reg[0]_0\,
      R => enabled_reg_0(0)
    );
\id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => inc_id_return(1),
      Q => \^id_reg[1]_0\,
      R => enabled_reg_0(0)
    );
\id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => inc_id_return(2),
      Q => \^id_reg[2]_0\,
      R => enabled_reg_0(0)
    );
\id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => \id[3]_i_2_n_0\,
      Q => \^id_reg[3]_0\,
      R => enabled_reg_0(0)
    );
\last_burst_len_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => E(0),
      D => \last_burst_len_reg[4]_0\(0),
      Q => last_burst_len(0),
      R => '0'
    );
\last_burst_len_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => E(0),
      D => \last_burst_len_reg[4]_0\(1),
      Q => last_burst_len(1),
      R => '0'
    );
\last_burst_len_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => E(0),
      D => \last_burst_len_reg[4]_0\(2),
      Q => last_burst_len(2),
      R => '0'
    );
\last_burst_len_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => E(0),
      D => \last_burst_len_reg[4]_0\(3),
      Q => last_burst_len(3),
      R => '0'
    );
\last_burst_len_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => E(0),
      D => \last_burst_len_reg[4]_0\(4),
      Q => last_burst_len(4),
      R => '0'
    );
last_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => p_0_in0,
      D => dest_address_eot,
      Q => last,
      R => '0'
    );
\length[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dest_address_eot,
      I1 => \^addr_valid_reg_0\,
      O => \length[4]_i_1_n_0\
    );
\length[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^addr_valid_reg_0\,
      O => p_0_in0
    );
\length_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => p_0_in0,
      D => last_burst_len(0),
      Q => m_dest_axi_awlen(0),
      S => \length[4]_i_1_n_0\
    );
\length_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => p_0_in0,
      D => last_burst_len(1),
      Q => m_dest_axi_awlen(1),
      S => \length[4]_i_1_n_0\
    );
\length_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => p_0_in0,
      D => last_burst_len(2),
      Q => m_dest_axi_awlen(2),
      S => \length[4]_i_1_n_0\
    );
\length_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => p_0_in0,
      D => last_burst_len(3),
      Q => m_dest_axi_awlen(3),
      S => \length[4]_i_1_n_0\
    );
\length_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => p_0_in0,
      D => last_burst_len(4),
      Q => m_dest_axi_awlen(4),
      S => \length[4]_i_1_n_0\
    );
req_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99F0990099009900"
    )
        port map (
      I0 => req_ready_reg_1,
      I1 => req_ready_reg_2,
      I2 => last,
      I3 => \^req_ready_reg_0\,
      I4 => m_dest_axi_awready,
      I5 => \^addr_valid_reg_0\,
      O => req_ready_i_1_n_0
    );
req_ready_reg: unisim.vcomponents.FDSE
     port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => req_ready_i_1_n_0,
      Q => \^req_ready_reg_0\,
      S => enabled_reg_0(0)
    );
\up_rdata[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AF30A030"
    )
        port map (
      I0 => \^id_reg[2]_0\,
      I1 => Q(0),
      I2 => \up_rdata_reg[11]\,
      I3 => \up_rdata_reg[11]_0\,
      I4 => \^m_dest_axi_awaddr\(8),
      O => \id_reg[2]_1\
    );
\up_rdata[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \^id_reg[3]_0\,
      I1 => \up_rdata_reg[11]_1\(0),
      I2 => \up_rdata_reg[11]\,
      I3 => \up_rdata_reg[11]_0\,
      I4 => \^m_dest_axi_awaddr\(9),
      O => \id_reg[3]_1\
    );
\up_rdata[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AF30A030"
    )
        port map (
      I0 => \^id_reg[0]_0\,
      I1 => enabled_reg_0(0),
      I2 => \up_rdata_reg[11]\,
      I3 => \up_rdata_reg[11]_0\,
      I4 => \^m_dest_axi_awaddr\(6),
      O => \id_reg[0]_1\
    );
\up_rdata[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AF30A030"
    )
        port map (
      I0 => \^id_reg[1]_0\,
      I1 => \up_rdata_reg[9]\(0),
      I2 => \up_rdata_reg[11]\,
      I3 => \up_rdata_reg[11]_0\,
      I4 => \^m_dest_axi_awaddr\(7),
      O => \id_reg[1]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_data_mover is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \id_reg[3]_0\ : out STD_LOGIC;
    last_non_eot_reg_0 : out STD_LOGIC;
    \id_reg[2]_0\ : out STD_LOGIC;
    \id_reg[1]_0\ : out STD_LOGIC;
    \id_reg[0]_0\ : out STD_LOGIC;
    active_reg_0 : out STD_LOGIC;
    src_bl_valid : out STD_LOGIC;
    \reset_gen[1].reset_sync_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    active_reg_1 : out STD_LOGIC;
    \measured_last_burst_length_reg[4]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    fifo_wr_clk : in STD_LOGIC;
    active_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    src_eot : in STD_LOGIC;
    fifo_wr_sync : in STD_LOGIC;
    fifo_wr_en : in STD_LOGIC;
    src_enable : in STD_LOGIC;
    active_reg_3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    bl_valid_reg_0 : in STD_LOGIC;
    bl_valid_reg_1 : in STD_LOGIC;
    last_eot_reg_0 : in STD_LOGIC;
    \last_burst_length_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_data_mover;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_data_mover is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal active_i_1_n_0 : STD_LOGIC;
  signal \^active_reg_0\ : STD_LOGIC;
  signal \beat_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal beat_counter_minus_one : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal beat_counter_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal bl_valid_i_1_n_0 : STD_LOGIC;
  signal \id[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \id[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \^id_reg[0]_0\ : STD_LOGIC;
  signal \^id_reg[1]_0\ : STD_LOGIC;
  signal \^id_reg[2]_0\ : STD_LOGIC;
  signal \^id_reg[3]_0\ : STD_LOGIC;
  signal inc_id_return : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal last_burst_length : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal last_eot_i_1_n_0 : STD_LOGIC;
  signal last_eot_i_3_n_0 : STD_LOGIC;
  signal last_eot_i_4_n_0 : STD_LOGIC;
  signal last_eot_reg_n_0 : STD_LOGIC;
  signal last_load : STD_LOGIC;
  signal last_non_eot : STD_LOGIC;
  signal last_non_eot_i_1_n_0 : STD_LOGIC;
  signal \^last_non_eot_reg_0\ : STD_LOGIC;
  signal needs_sync_i_1_n_0 : STD_LOGIC;
  signal needs_sync_reg_n_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal pending_burst : STD_LOGIC;
  signal pending_burst_i_1_n_0 : STD_LOGIC;
  signal pending_burst_i_2_n_0 : STD_LOGIC;
  signal pending_burst_i_3_n_0 : STD_LOGIC;
  signal pending_burst_i_4_n_0 : STD_LOGIC;
  signal pending_burst_i_5_n_0 : STD_LOGIC;
  signal \^src_bl_valid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \beat_counter[2]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \beat_counter[3]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \beat_counter[4]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \id[0]_i_1__1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \id[1]_i_1__2\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \id[2]_i_1__2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \id[3]_i_1__2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of last_non_eot_i_1 : label is "soft_lutpair70";
begin
  E(0) <= \^e\(0);
  SR(0) <= \^sr\(0);
  active_reg_0 <= \^active_reg_0\;
  \id_reg[0]_0\ <= \^id_reg[0]_0\;
  \id_reg[1]_0\ <= \^id_reg[1]_0\;
  \id_reg[2]_0\ <= \^id_reg[2]_0\;
  \id_reg[3]_0\ <= \^id_reg[3]_0\;
  last_non_eot_reg_0 <= \^last_non_eot_reg_0\;
  src_bl_valid <= \^src_bl_valid\;
active_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFAAAA"
    )
        port map (
      I0 => active_reg_3(0),
      I1 => src_eot,
      I2 => last_eot_reg_n_0,
      I3 => \^e\(0),
      I4 => \^active_reg_0\,
      O => active_i_1_n_0
    );
active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => active_i_1_n_0,
      Q => \^active_reg_0\,
      R => active_reg_2(0)
    );
\beat_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => beat_counter_reg(0),
      O => \p_0_in__0\(0)
    );
\beat_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => beat_counter_reg(0),
      I1 => beat_counter_reg(1),
      O => \p_0_in__0\(1)
    );
\beat_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => beat_counter_reg(1),
      I1 => beat_counter_reg(0),
      I2 => beat_counter_reg(2),
      O => \beat_counter[2]_i_1_n_0\
    );
\beat_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => beat_counter_reg(0),
      I1 => beat_counter_reg(1),
      I2 => beat_counter_reg(2),
      I3 => beat_counter_reg(3),
      O => \p_0_in__0\(3)
    );
\beat_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => beat_counter_reg(2),
      I1 => beat_counter_reg(1),
      I2 => beat_counter_reg(0),
      I3 => beat_counter_reg(3),
      I4 => beat_counter_reg(4),
      O => \p_0_in__0\(4)
    );
\beat_counter_minus_one[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => src_eot,
      I1 => last_eot_reg_n_0,
      I2 => \^e\(0),
      I3 => \^active_reg_0\,
      I4 => pending_burst,
      O => \^sr\(0)
    );
\beat_counter_minus_one_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \^e\(0),
      D => beat_counter_reg(0),
      Q => beat_counter_minus_one(0),
      R => \^sr\(0)
    );
\beat_counter_minus_one_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \^e\(0),
      D => beat_counter_reg(1),
      Q => beat_counter_minus_one(1),
      R => \^sr\(0)
    );
\beat_counter_minus_one_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \^e\(0),
      D => beat_counter_reg(2),
      Q => beat_counter_minus_one(2),
      R => \^sr\(0)
    );
\beat_counter_minus_one_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \^e\(0),
      D => beat_counter_reg(3),
      Q => beat_counter_minus_one(3),
      R => \^sr\(0)
    );
\beat_counter_minus_one_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \^e\(0),
      D => beat_counter_reg(4),
      Q => beat_counter_minus_one(4),
      R => \^sr\(0)
    );
\beat_counter_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \^e\(0),
      D => \p_0_in__0\(0),
      Q => beat_counter_reg(0),
      S => \^sr\(0)
    );
\beat_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \^e\(0),
      D => \p_0_in__0\(1),
      Q => beat_counter_reg(1),
      R => \^sr\(0)
    );
\beat_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \^e\(0),
      D => \beat_counter[2]_i_1_n_0\,
      Q => beat_counter_reg(2),
      R => \^sr\(0)
    );
\beat_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \^e\(0),
      D => \p_0_in__0\(3),
      Q => beat_counter_reg(3),
      R => \^sr\(0)
    );
\beat_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \^e\(0),
      D => \p_0_in__0\(4),
      Q => beat_counter_reg(4),
      R => \^sr\(0)
    );
bl_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF60606060606060"
    )
        port map (
      I0 => bl_valid_reg_0,
      I1 => bl_valid_reg_1,
      I2 => \^src_bl_valid\,
      I3 => src_eot,
      I4 => last_eot_reg_n_0,
      I5 => \^e\(0),
      O => bl_valid_i_1_n_0
    );
bl_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => bl_valid_i_1_n_0,
      Q => \^src_bl_valid\,
      R => '0'
    );
\id[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^id_reg[1]_0\,
      I1 => \^id_reg[3]_0\,
      I2 => \^id_reg[2]_0\,
      O => \id[0]_i_1__1_n_0\
    );
\id[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"99F0"
    )
        port map (
      I0 => \^id_reg[2]_0\,
      I1 => \^id_reg[3]_0\,
      I2 => \^id_reg[1]_0\,
      I3 => \^id_reg[0]_0\,
      O => inc_id_return(1)
    );
\id[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1F0"
    )
        port map (
      I0 => \^id_reg[3]_0\,
      I1 => \^id_reg[0]_0\,
      I2 => \^id_reg[2]_0\,
      I3 => \^id_reg[1]_0\,
      O => inc_id_return(2)
    );
\id[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE04"
    )
        port map (
      I0 => \^id_reg[1]_0\,
      I1 => \^id_reg[2]_0\,
      I2 => \^id_reg[0]_0\,
      I3 => \^id_reg[3]_0\,
      O => \id[3]_i_1__2_n_0\
    );
\id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \^last_non_eot_reg_0\,
      D => \id[0]_i_1__1_n_0\,
      Q => \^id_reg[0]_0\,
      R => active_reg_2(0)
    );
\id_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \^last_non_eot_reg_0\,
      D => inc_id_return(1),
      Q => \^id_reg[1]_0\,
      R => active_reg_2(0)
    );
\id_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \^last_non_eot_reg_0\,
      D => inc_id_return(2),
      Q => \^id_reg[2]_0\,
      R => active_reg_2(0)
    );
\id_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \^last_non_eot_reg_0\,
      D => \id[3]_i_1__2_n_0\,
      Q => \^id_reg[3]_0\,
      R => active_reg_2(0)
    );
\last_burst_length_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \^sr\(0),
      D => \last_burst_length_reg[4]_0\(0),
      Q => last_burst_length(0),
      R => '0'
    );
\last_burst_length_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \^sr\(0),
      D => \last_burst_length_reg[4]_0\(1),
      Q => last_burst_length(1),
      R => '0'
    );
\last_burst_length_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \^sr\(0),
      D => \last_burst_length_reg[4]_0\(2),
      Q => last_burst_length(2),
      R => '0'
    );
\last_burst_length_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \^sr\(0),
      D => \last_burst_length_reg[4]_0\(3),
      Q => last_burst_length(3),
      R => '0'
    );
\last_burst_length_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \^sr\(0),
      D => \last_burst_length_reg[4]_0\(4),
      Q => last_burst_length(4),
      R => '0'
    );
last_eot_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACAFACA0"
    )
        port map (
      I0 => last_eot_reg_0,
      I1 => last_eot_i_3_n_0,
      I2 => \^sr\(0),
      I3 => \^e\(0),
      I4 => last_eot_reg_n_0,
      O => last_eot_i_1_n_0
    );
last_eot_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000090"
    )
        port map (
      I0 => beat_counter_reg(3),
      I1 => last_burst_length(3),
      I2 => last_eot_i_4_n_0,
      I3 => last_burst_length(4),
      I4 => beat_counter_reg(4),
      O => last_eot_i_3_n_0
    );
last_eot_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => beat_counter_reg(0),
      I1 => last_burst_length(0),
      I2 => last_burst_length(2),
      I3 => beat_counter_reg(2),
      I4 => last_burst_length(1),
      I5 => beat_counter_reg(1),
      O => last_eot_i_4_n_0
    );
last_eot_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => last_eot_i_1_n_0,
      Q => last_eot_reg_n_0,
      R => '0'
    );
last_non_eot_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => beat_counter_reg(0),
      I1 => beat_counter_reg(1),
      I2 => beat_counter_reg(2),
      I3 => beat_counter_reg(3),
      I4 => beat_counter_reg(4),
      O => last_non_eot_i_1_n_0
    );
last_non_eot_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \^e\(0),
      D => last_non_eot_i_1_n_0,
      Q => last_non_eot,
      R => \^sr\(0)
    );
m_ram_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0000000"
    )
        port map (
      I0 => needs_sync_reg_n_0,
      I1 => fifo_wr_sync,
      I2 => fifo_wr_en,
      I3 => \^active_reg_0\,
      I4 => pending_burst,
      O => \^e\(0)
    );
\measured_last_burst_length[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^e\(0),
      I1 => last_eot_reg_n_0,
      I2 => src_eot,
      O => last_load
    );
\measured_last_burst_length_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => last_load,
      D => beat_counter_minus_one(0),
      Q => \measured_last_burst_length_reg[4]_0\(0),
      R => '0'
    );
\measured_last_burst_length_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => last_load,
      D => beat_counter_minus_one(1),
      Q => \measured_last_burst_length_reg[4]_0\(1),
      R => '0'
    );
\measured_last_burst_length_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => last_load,
      D => beat_counter_minus_one(2),
      Q => \measured_last_burst_length_reg[4]_0\(2),
      R => '0'
    );
\measured_last_burst_length_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => last_load,
      D => beat_counter_minus_one(3),
      Q => \measured_last_burst_length_reg[4]_0\(3),
      R => '0'
    );
\measured_last_burst_length_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => last_load,
      D => beat_counter_minus_one(4),
      Q => \measured_last_burst_length_reg[4]_0\(4),
      R => '0'
    );
needs_sync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222FFFFF2222222"
    )
        port map (
      I0 => pending_burst,
      I1 => \^active_reg_0\,
      I2 => last_eot_reg_n_0,
      I3 => src_eot,
      I4 => \^e\(0),
      I5 => needs_sync_reg_n_0,
      O => needs_sync_i_1_n_0
    );
needs_sync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => needs_sync_i_1_n_0,
      Q => needs_sync_reg_n_0,
      R => '0'
    );
overflow_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => \^active_reg_0\,
      I1 => pending_burst,
      I2 => src_enable,
      I3 => fifo_wr_en,
      O => active_reg_1
    );
pending_burst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pending_burst_i_2_n_0,
      I1 => pending_burst_i_3_n_0,
      I2 => pending_burst_i_4_n_0,
      I3 => pending_burst_i_5_n_0,
      O => pending_burst_i_1_n_0
    );
pending_burst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A5A5A5A565A9A"
    )
        port map (
      I0 => Q(3),
      I1 => \^last_non_eot_reg_0\,
      I2 => \^id_reg[3]_0\,
      I3 => \^id_reg[0]_0\,
      I4 => \^id_reg[2]_0\,
      I5 => \^id_reg[1]_0\,
      O => pending_burst_i_2_n_0
    );
pending_burst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565A9A5A9A5A565A"
    )
        port map (
      I0 => Q(1),
      I1 => \^last_non_eot_reg_0\,
      I2 => \^id_reg[1]_0\,
      I3 => \^id_reg[0]_0\,
      I4 => \^id_reg[3]_0\,
      I5 => \^id_reg[2]_0\,
      O => pending_burst_i_3_n_0
    );
pending_burst_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A9A5A5A5A565A"
    )
        port map (
      I0 => Q(2),
      I1 => \^last_non_eot_reg_0\,
      I2 => \^id_reg[2]_0\,
      I3 => \^id_reg[1]_0\,
      I4 => \^id_reg[0]_0\,
      I5 => \^id_reg[3]_0\,
      O => pending_burst_i_4_n_0
    );
pending_burst_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A56569A569A9A56"
    )
        port map (
      I0 => Q(0),
      I1 => \^last_non_eot_reg_0\,
      I2 => \^id_reg[0]_0\,
      I3 => \^id_reg[2]_0\,
      I4 => \^id_reg[3]_0\,
      I5 => \^id_reg[1]_0\,
      O => pending_burst_i_5_n_0
    );
pending_burst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => pending_burst_i_1_n_0,
      Q => pending_burst,
      R => '0'
    );
\src_beat_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => active_reg_2(0),
      I1 => last_eot_reg_n_0,
      I2 => src_eot,
      I3 => last_non_eot,
      I4 => \^e\(0),
      O => \reset_gen[1].reset_sync_reg[0]\(0)
    );
\src_id[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^e\(0),
      I1 => last_non_eot,
      I2 => src_eot,
      I3 => last_eot_reg_n_0,
      O => \^last_non_eot_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_request_generator is
  port (
    req_ready_reg_0 : out STD_LOGIC;
    request_eot : out STD_LOGIC;
    \id_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    \req_gen_valid__0\ : in STD_LOGIC;
    dbg_ids0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \burst_count_reg[0]_0\ : in STD_LOGIC;
    \burst_count_reg[16]_0\ : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_request_generator;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_request_generator is
  signal b2g2_return01_out : STD_LOGIC;
  signal b2g2_return03_out : STD_LOGIC;
  signal burst_count : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal burst_count0 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \burst_count0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__0_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__0_n_1\ : STD_LOGIC;
  signal \burst_count0_carry__0_n_2\ : STD_LOGIC;
  signal \burst_count0_carry__0_n_3\ : STD_LOGIC;
  signal \burst_count0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__1_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__1_n_1\ : STD_LOGIC;
  signal \burst_count0_carry__1_n_2\ : STD_LOGIC;
  signal \burst_count0_carry__1_n_3\ : STD_LOGIC;
  signal \burst_count0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \burst_count0_carry__2_n_1\ : STD_LOGIC;
  signal \burst_count0_carry__2_n_2\ : STD_LOGIC;
  signal \burst_count0_carry__2_n_3\ : STD_LOGIC;
  signal burst_count0_carry_i_1_n_0 : STD_LOGIC;
  signal burst_count0_carry_i_2_n_0 : STD_LOGIC;
  signal burst_count0_carry_i_3_n_0 : STD_LOGIC;
  signal burst_count0_carry_i_4_n_0 : STD_LOGIC;
  signal burst_count0_carry_n_0 : STD_LOGIC;
  signal burst_count0_carry_n_1 : STD_LOGIC;
  signal burst_count0_carry_n_2 : STD_LOGIC;
  signal burst_count0_carry_n_3 : STD_LOGIC;
  signal \burst_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[11]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[12]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[13]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[14]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[15]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[16]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[16]_i_2_n_0\ : STD_LOGIC;
  signal \burst_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[9]_i_1_n_0\ : STD_LOGIC;
  signal eot_mem_src_reg_0_15_0_0_i_2_n_0 : STD_LOGIC;
  signal eot_mem_src_reg_0_15_0_0_i_3_n_0 : STD_LOGIC;
  signal eot_mem_src_reg_0_15_0_0_i_4_n_0 : STD_LOGIC;
  signal id : STD_LOGIC;
  signal \id[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \^id_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal incr_id0 : STD_LOGIC;
  signal \nx_state__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_in2_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal \req_ready_i_1__0_n_0\ : STD_LOGIC;
  signal \^request_eot\ : STD_LOGIC;
  signal \state[0]_i_4_n_0\ : STD_LOGIC;
  signal \NLW_burst_count0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \burst_count[0]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \burst_count[10]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \burst_count[11]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \burst_count[12]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \burst_count[13]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \burst_count[14]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \burst_count[15]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \burst_count[1]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \burst_count[2]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \burst_count[3]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \burst_count[4]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \burst_count[5]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \burst_count[6]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \burst_count[7]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \burst_count[8]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \burst_count[9]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \id[0]_i_1__2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \id[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \id[2]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \id[3]_i_2__1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \req_ready_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair54";
begin
  \id_reg[3]_0\(3 downto 0) <= \^id_reg[3]_0\(3 downto 0);
  request_eot <= \^request_eot\;
burst_count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => burst_count0_carry_n_0,
      CO(2) => burst_count0_carry_n_1,
      CO(1) => burst_count0_carry_n_2,
      CO(0) => burst_count0_carry_n_3,
      CYINIT => burst_count(0),
      DI(3 downto 0) => burst_count(4 downto 1),
      O(3 downto 0) => burst_count0(4 downto 1),
      S(3) => burst_count0_carry_i_1_n_0,
      S(2) => burst_count0_carry_i_2_n_0,
      S(1) => burst_count0_carry_i_3_n_0,
      S(0) => burst_count0_carry_i_4_n_0
    );
\burst_count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => burst_count0_carry_n_0,
      CO(3) => \burst_count0_carry__0_n_0\,
      CO(2) => \burst_count0_carry__0_n_1\,
      CO(1) => \burst_count0_carry__0_n_2\,
      CO(0) => \burst_count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => burst_count(8 downto 5),
      O(3 downto 0) => burst_count0(8 downto 5),
      S(3) => \burst_count0_carry__0_i_1_n_0\,
      S(2) => \burst_count0_carry__0_i_2_n_0\,
      S(1) => \burst_count0_carry__0_i_3_n_0\,
      S(0) => \burst_count0_carry__0_i_4_n_0\
    );
\burst_count0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(8),
      O => \burst_count0_carry__0_i_1_n_0\
    );
\burst_count0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(7),
      O => \burst_count0_carry__0_i_2_n_0\
    );
\burst_count0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(6),
      O => \burst_count0_carry__0_i_3_n_0\
    );
\burst_count0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(5),
      O => \burst_count0_carry__0_i_4_n_0\
    );
\burst_count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \burst_count0_carry__0_n_0\,
      CO(3) => \burst_count0_carry__1_n_0\,
      CO(2) => \burst_count0_carry__1_n_1\,
      CO(1) => \burst_count0_carry__1_n_2\,
      CO(0) => \burst_count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => burst_count(12 downto 9),
      O(3 downto 0) => burst_count0(12 downto 9),
      S(3) => \burst_count0_carry__1_i_1_n_0\,
      S(2) => \burst_count0_carry__1_i_2_n_0\,
      S(1) => \burst_count0_carry__1_i_3_n_0\,
      S(0) => \burst_count0_carry__1_i_4_n_0\
    );
\burst_count0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(12),
      O => \burst_count0_carry__1_i_1_n_0\
    );
\burst_count0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(11),
      O => \burst_count0_carry__1_i_2_n_0\
    );
\burst_count0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(10),
      O => \burst_count0_carry__1_i_3_n_0\
    );
\burst_count0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(9),
      O => \burst_count0_carry__1_i_4_n_0\
    );
\burst_count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \burst_count0_carry__1_n_0\,
      CO(3) => \NLW_burst_count0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \burst_count0_carry__2_n_1\,
      CO(1) => \burst_count0_carry__2_n_2\,
      CO(0) => \burst_count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => burst_count(15 downto 13),
      O(3 downto 0) => burst_count0(16 downto 13),
      S(3) => \burst_count0_carry__2_i_1_n_0\,
      S(2) => \burst_count0_carry__2_i_2_n_0\,
      S(1) => \burst_count0_carry__2_i_3_n_0\,
      S(0) => \burst_count0_carry__2_i_4_n_0\
    );
\burst_count0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(16),
      O => \burst_count0_carry__2_i_1_n_0\
    );
\burst_count0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(15),
      O => \burst_count0_carry__2_i_2_n_0\
    );
\burst_count0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(14),
      O => \burst_count0_carry__2_i_3_n_0\
    );
\burst_count0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(13),
      O => \burst_count0_carry__2_i_4_n_0\
    );
burst_count0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(4),
      O => burst_count0_carry_i_1_n_0
    );
burst_count0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(3),
      O => burst_count0_carry_i_2_n_0
    );
burst_count0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(2),
      O => burst_count0_carry_i_3_n_0
    );
burst_count0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => burst_count(1),
      O => burst_count0_carry_i_4_n_0
    );
\burst_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(0),
      I1 => incr_id0,
      I2 => burst_count(0),
      O => \burst_count[0]_i_1_n_0\
    );
\burst_count[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(10),
      I1 => incr_id0,
      I2 => burst_count0(10),
      O => \burst_count[10]_i_1_n_0\
    );
\burst_count[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(11),
      I1 => incr_id0,
      I2 => burst_count0(11),
      O => \burst_count[11]_i_1_n_0\
    );
\burst_count[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(12),
      I1 => incr_id0,
      I2 => burst_count0(12),
      O => \burst_count[12]_i_1_n_0\
    );
\burst_count[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(13),
      I1 => incr_id0,
      I2 => burst_count0(13),
      O => \burst_count[13]_i_1_n_0\
    );
\burst_count[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(14),
      I1 => incr_id0,
      I2 => burst_count0(14),
      O => \burst_count[14]_i_1_n_0\
    );
\burst_count[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(15),
      I1 => incr_id0,
      I2 => burst_count0(15),
      O => \burst_count[15]_i_1_n_0\
    );
\burst_count[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => incr_id0,
      I1 => p_4_in,
      O => \burst_count[16]_i_1_n_0\
    );
\burst_count[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(16),
      I1 => incr_id0,
      I2 => burst_count0(16),
      O => \burst_count[16]_i_2_n_0\
    );
\burst_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(1),
      I1 => incr_id0,
      I2 => burst_count0(1),
      O => \burst_count[1]_i_1_n_0\
    );
\burst_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(2),
      I1 => incr_id0,
      I2 => burst_count0(2),
      O => \burst_count[2]_i_1_n_0\
    );
\burst_count[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(3),
      I1 => incr_id0,
      I2 => burst_count0(3),
      O => \burst_count[3]_i_1_n_0\
    );
\burst_count[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(4),
      I1 => incr_id0,
      I2 => burst_count0(4),
      O => \burst_count[4]_i_1_n_0\
    );
\burst_count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(5),
      I1 => incr_id0,
      I2 => burst_count0(5),
      O => \burst_count[5]_i_1_n_0\
    );
\burst_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(6),
      I1 => incr_id0,
      I2 => burst_count0(6),
      O => \burst_count[6]_i_1_n_0\
    );
\burst_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(7),
      I1 => incr_id0,
      I2 => burst_count0(7),
      O => \burst_count[7]_i_1_n_0\
    );
\burst_count[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(8),
      I1 => incr_id0,
      I2 => burst_count0(8),
      O => \burst_count[8]_i_1_n_0\
    );
\burst_count[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \burst_count_reg[16]_0\(9),
      I1 => incr_id0,
      I2 => burst_count0(9),
      O => \burst_count[9]_i_1_n_0\
    );
\burst_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[0]_i_1_n_0\,
      Q => burst_count(0),
      R => '0'
    );
\burst_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[10]_i_1_n_0\,
      Q => burst_count(10),
      R => '0'
    );
\burst_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[11]_i_1_n_0\,
      Q => burst_count(11),
      R => '0'
    );
\burst_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[12]_i_1_n_0\,
      Q => burst_count(12),
      R => '0'
    );
\burst_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[13]_i_1_n_0\,
      Q => burst_count(13),
      R => '0'
    );
\burst_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[14]_i_1_n_0\,
      Q => burst_count(14),
      R => '0'
    );
\burst_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[15]_i_1_n_0\,
      Q => burst_count(15),
      R => '0'
    );
\burst_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[16]_i_2_n_0\,
      Q => burst_count(16),
      R => '0'
    );
\burst_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[1]_i_1_n_0\,
      Q => burst_count(1),
      R => '0'
    );
\burst_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[2]_i_1_n_0\,
      Q => burst_count(2),
      R => '0'
    );
\burst_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[3]_i_1_n_0\,
      Q => burst_count(3),
      R => '0'
    );
\burst_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[4]_i_1_n_0\,
      Q => burst_count(4),
      R => '0'
    );
\burst_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[5]_i_1_n_0\,
      Q => burst_count(5),
      R => '0'
    );
\burst_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[6]_i_1_n_0\,
      Q => burst_count(6),
      R => '0'
    );
\burst_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[7]_i_1_n_0\,
      Q => burst_count(7),
      R => '0'
    );
\burst_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[8]_i_1_n_0\,
      Q => burst_count(8),
      R => '0'
    );
\burst_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \burst_count[16]_i_1_n_0\,
      D => \burst_count[9]_i_1_n_0\,
      Q => burst_count(9),
      R => '0'
    );
eot_mem_src_reg_0_15_0_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => eot_mem_src_reg_0_15_0_0_i_2_n_0,
      I1 => burst_count(15),
      I2 => burst_count(16),
      I3 => burst_count(14),
      I4 => burst_count(13),
      I5 => eot_mem_src_reg_0_15_0_0_i_3_n_0,
      O => \^request_eot\
    );
eot_mem_src_reg_0_15_0_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => burst_count(10),
      I1 => burst_count(9),
      I2 => burst_count(12),
      I3 => burst_count(11),
      O => eot_mem_src_reg_0_15_0_0_i_2_n_0
    );
eot_mem_src_reg_0_15_0_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => eot_mem_src_reg_0_15_0_0_i_4_n_0,
      I1 => burst_count(5),
      I2 => burst_count(6),
      I3 => burst_count(7),
      I4 => burst_count(8),
      O => eot_mem_src_reg_0_15_0_0_i_3_n_0
    );
eot_mem_src_reg_0_15_0_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => burst_count(4),
      I1 => burst_count(3),
      I2 => burst_count(0),
      I3 => burst_count(1),
      I4 => burst_count(2),
      O => eot_mem_src_reg_0_15_0_0_i_4_n_0
    );
\id[0]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^id_reg[3]_0\(1),
      I1 => \^id_reg[3]_0\(3),
      I2 => \^id_reg[3]_0\(2),
      O => \id[0]_i_1__2_n_0\
    );
\id[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"99F0"
    )
        port map (
      I0 => \^id_reg[3]_0\(2),
      I1 => \^id_reg[3]_0\(3),
      I2 => \^id_reg[3]_0\(1),
      I3 => \^id_reg[3]_0\(0),
      O => b2g2_return01_out
    );
\id[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1F0"
    )
        port map (
      I0 => \^id_reg[3]_0\(3),
      I1 => \^id_reg[3]_0\(0),
      I2 => \^id_reg[3]_0\(2),
      I3 => \^id_reg[3]_0\(1),
      O => b2g2_return03_out
    );
\id[3]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => incr_id0,
      I1 => p_4_in,
      O => id
    );
\id[3]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE04"
    )
        port map (
      I0 => \^id_reg[3]_0\(1),
      I1 => \^id_reg[3]_0\(2),
      I2 => \^id_reg[3]_0\(0),
      I3 => \^id_reg[3]_0\(3),
      O => p_1_in2_in
    );
\id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => id,
      D => \id[0]_i_1__2_n_0\,
      Q => \^id_reg[3]_0\(0),
      R => Q(0)
    );
\id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => id,
      D => b2g2_return01_out,
      Q => \^id_reg[3]_0\(1),
      R => Q(0)
    );
\id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => id,
      D => b2g2_return03_out,
      Q => \^id_reg[3]_0\(2),
      R => Q(0)
    );
\id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => id,
      D => p_1_in2_in,
      Q => \^id_reg[3]_0\(3),
      R => Q(0)
    );
\req_ready_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D111"
    )
        port map (
      I0 => \req_gen_valid__0\,
      I1 => incr_id0,
      I2 => \^request_eot\,
      I3 => p_4_in,
      O => \req_ready_i_1__0_n_0\
    );
req_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \req_ready_i_1__0_n_0\,
      Q => req_ready_reg_0,
      R => Q(0)
    );
\state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F70"
    )
        port map (
      I0 => p_4_in,
      I1 => \^request_eot\,
      I2 => incr_id0,
      I3 => \req_gen_valid__0\,
      O => \nx_state__0\(0)
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6FFFFF600000000"
    )
        port map (
      I0 => dbg_ids0(0),
      I1 => \id[0]_i_1__2_n_0\,
      I2 => \state[0]_i_4_n_0\,
      I3 => p_1_in2_in,
      I4 => dbg_ids0(3),
      I5 => \burst_count_reg[0]_0\,
      O => p_4_in
    );
\state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7BD7EDD77BBBEDEE"
    )
        port map (
      I0 => dbg_ids0(1),
      I1 => dbg_ids0(2),
      I2 => \^id_reg[3]_0\(3),
      I3 => \^id_reg[3]_0\(0),
      I4 => \^id_reg[3]_0\(2),
      I5 => \^id_reg[3]_0\(1),
      O => \state[0]_i_4_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \nx_state__0\(0),
      Q => incr_id0,
      R => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_response_handler is
  port (
    id : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dbg_status : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_bready : out STD_LOGIC;
    enabled_reg_0 : out STD_LOGIC;
    \id_reg[0]_0\ : out STD_LOGIC;
    \id_reg[1]_0\ : out STD_LOGIC;
    \id_reg[2]_0\ : out STD_LOGIC;
    \id_reg[3]_0\ : out STD_LOGIC;
    \active__6\ : out STD_LOGIC;
    enabled_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    id0 : in STD_LOGIC;
    m_dest_axi_aclk : in STD_LOGIC;
    m_dest_axi_bready_0 : in STD_LOGIC;
    m_dest_axi_bready_1 : in STD_LOGIC;
    dest_response_ready : in STD_LOGIC;
    \up_rdata_reg[27]\ : in STD_LOGIC;
    \up_rdata_reg[27]_0\ : in STD_LOGIC;
    m_dest_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dbg_ids0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    address_enabled : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_response_handler;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_response_handler is
  signal \^dbg_status\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \enabled_i_1__0_n_0\ : STD_LOGIC;
  signal enabled_i_2_n_0 : STD_LOGIC;
  signal \^id\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \id[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \id[3]_i_2__0_n_0\ : STD_LOGIC;
  signal inc_id_return : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal m_dest_axi_bready_INST_0_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \id[0]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \id[1]_i_1__1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \id[2]_i_1__1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \id[3]_i_2__0\ : label is "soft_lutpair48";
begin
  dbg_status(0) <= \^dbg_status\(0);
  id(3 downto 0) <= \^id\(3 downto 0);
\cdc_sync_fifo_ram[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6FFFFF6"
    )
        port map (
      I0 => \^id\(3),
      I1 => m_dest_axi_bready_1,
      I2 => m_dest_axi_bready_INST_0_i_1_n_0,
      I3 => m_dest_axi_bready_0,
      I4 => \^id\(0),
      O => \active__6\
    );
\enabled_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFAAAA"
    )
        port map (
      I0 => address_enabled,
      I1 => m_dest_axi_bready_1,
      I2 => \^id\(3),
      I3 => enabled_i_2_n_0,
      I4 => \^dbg_status\(0),
      O => \enabled_i_1__0_n_0\
    );
enabled_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^id\(1),
      I1 => dbg_ids0(0),
      I2 => \^id\(2),
      I3 => dbg_ids0(1),
      I4 => \^id\(0),
      I5 => m_dest_axi_bready_0,
      O => enabled_i_2_n_0
    );
enabled_reg: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \enabled_i_1__0_n_0\,
      Q => \^dbg_status\(0),
      R => enabled_reg_1(0)
    );
\id[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^id\(1),
      I1 => \^id\(3),
      I2 => \^id\(2),
      O => \id[0]_i_1__0_n_0\
    );
\id[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"99F0"
    )
        port map (
      I0 => \^id\(2),
      I1 => \^id\(3),
      I2 => \^id\(1),
      I3 => \^id\(0),
      O => inc_id_return(1)
    );
\id[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1F0"
    )
        port map (
      I0 => \^id\(3),
      I1 => \^id\(0),
      I2 => \^id\(2),
      I3 => \^id\(1),
      O => inc_id_return(2)
    );
\id[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE04"
    )
        port map (
      I0 => \^id\(1),
      I1 => \^id\(2),
      I2 => \^id\(0),
      I3 => \^id\(3),
      O => \id[3]_i_2__0_n_0\
    );
\id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => \id[0]_i_1__0_n_0\,
      Q => \^id\(0),
      R => enabled_reg_1(0)
    );
\id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => inc_id_return(1),
      Q => \^id\(1),
      R => enabled_reg_1(0)
    );
\id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => inc_id_return(2),
      Q => \^id\(2),
      R => enabled_reg_1(0)
    );
\id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => \id[3]_i_2__0_n_0\,
      Q => \^id\(3),
      R => enabled_reg_1(0)
    );
m_dest_axi_bready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6FFFFF600000000"
    )
        port map (
      I0 => \^id\(0),
      I1 => m_dest_axi_bready_0,
      I2 => m_dest_axi_bready_INST_0_i_1_n_0,
      I3 => m_dest_axi_bready_1,
      I4 => \^id\(3),
      I5 => dest_response_ready,
      O => m_dest_axi_bready
    );
m_dest_axi_bready_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^id\(1),
      I1 => dbg_ids0(0),
      I2 => \^id\(2),
      I3 => dbg_ids0(1),
      O => m_dest_axi_bready_INST_0_i_1_n_0
    );
\up_rdata[24]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^id\(0),
      I1 => \up_rdata_reg[27]\,
      I2 => \up_rdata_reg[27]_0\,
      I3 => m_dest_axi_awaddr(1),
      O => \id_reg[0]_0\
    );
\up_rdata[25]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^id\(1),
      I1 => \up_rdata_reg[27]\,
      I2 => \up_rdata_reg[27]_0\,
      I3 => m_dest_axi_awaddr(2),
      O => \id_reg[1]_0\
    );
\up_rdata[26]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^id\(2),
      I1 => \up_rdata_reg[27]\,
      I2 => \up_rdata_reg[27]_0\,
      I3 => m_dest_axi_awaddr(3),
      O => \id_reg[2]_0\
    );
\up_rdata[27]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^id\(3),
      I1 => \up_rdata_reg[27]\,
      I2 => \up_rdata_reg[27]_0\,
      I3 => m_dest_axi_awaddr(4),
      O => \id_reg[3]_0\
    );
\up_rdata[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \^dbg_status\(0),
      I1 => \up_rdata_reg[27]\,
      I2 => \up_rdata_reg[27]_0\,
      I3 => m_dest_axi_awaddr(0),
      O => enabled_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_address_sync is
  port (
    ctrl_enable_reg : out STD_LOGIC;
    up_tlf_s_valid_reg : out STD_LOGIC;
    m_mem_read : out STD_LOGIC;
    s_mem_write : out STD_LOGIC;
    m_axis_valid_reg_0 : out STD_LOGIC;
    response_valid_reg : out STD_LOGIC;
    ADDRD : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDRA : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \level_reg[2]_0\ : in STD_LOGIC;
    up_bl_partial : in STD_LOGIC;
    up_response_valid : in STD_LOGIC;
    response_ready_reg : in STD_LOGIC;
    up_tlf_valid : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    \m_axis_raddr_reg[0]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_address_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_address_sync is
  signal \^addra\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^addrd\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \_m_axis_valid\ : STD_LOGIC;
  signal \^ctrl_enable_reg\ : STD_LOGIC;
  signal level : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \level[0]_i_1_n_0\ : STD_LOGIC;
  signal \level[1]_i_1_n_0\ : STD_LOGIC;
  signal \level[2]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_raddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_raddr[1]_i_1_n_0\ : STD_LOGIC;
  signal m_axis_valid_i_1_n_0 : STD_LOGIC;
  signal \^m_mem_read\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \s_axis_waddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axis_waddr[1]_i_1_n_0\ : STD_LOGIC;
  signal up_tlf_s_ready : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data[25]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \level[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \level[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_raddr[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_raddr[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of response_ready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_axis_waddr[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_axis_waddr[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of up_tlf_s_valid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of valid_i_1 : label is "soft_lutpair3";
begin
  ADDRA(1 downto 0) <= \^addra\(1 downto 0);
  ADDRD(1 downto 0) <= \^addrd\(1 downto 0);
  ctrl_enable_reg <= \^ctrl_enable_reg\;
  m_mem_read <= \^m_mem_read\;
\data[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => up_tlf_valid,
      I1 => p_8_in,
      I2 => \_m_axis_valid\,
      O => \^m_mem_read\
    );
\level[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => \^m_mem_read\,
      I1 => \level_reg[2]_0\,
      I2 => up_tlf_s_ready,
      I3 => level(0),
      O => \level[0]_i_1_n_0\
    );
\level[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFD5402A"
    )
        port map (
      I0 => \^m_mem_read\,
      I1 => \level_reg[2]_0\,
      I2 => up_tlf_s_ready,
      I3 => level(0),
      I4 => level(1),
      O => \level[1]_i_1_n_0\
    );
\level[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \m_axis_raddr_reg[0]_0\,
      O => \^ctrl_enable_reg\
    );
\level[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFD54000002A"
    )
        port map (
      I0 => \^m_mem_read\,
      I1 => \level_reg[2]_0\,
      I2 => up_tlf_s_ready,
      I3 => level(0),
      I4 => level(1),
      I5 => level(2),
      O => \level[2]_i_2_n_0\
    );
\level_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \level[0]_i_1_n_0\,
      Q => level(0),
      R => \^ctrl_enable_reg\
    );
\level_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \level[1]_i_1_n_0\,
      Q => level(1),
      R => \^ctrl_enable_reg\
    );
\level_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \level[2]_i_2_n_0\,
      Q => level(2),
      R => \^ctrl_enable_reg\
    );
\m_axis_raddr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_mem_read\,
      I1 => \^addra\(0),
      O => \m_axis_raddr[0]_i_1_n_0\
    );
\m_axis_raddr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^addra\(0),
      I1 => \^m_mem_read\,
      I2 => \^addra\(1),
      O => \m_axis_raddr[1]_i_1_n_0\
    );
\m_axis_raddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \m_axis_raddr[0]_i_1_n_0\,
      Q => \^addra\(0),
      R => \^ctrl_enable_reg\
    );
\m_axis_raddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \m_axis_raddr[1]_i_1_n_0\,
      Q => \^addra\(1),
      R => \^ctrl_enable_reg\
    );
m_axis_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFD56A"
    )
        port map (
      I0 => \^m_mem_read\,
      I1 => \level_reg[2]_0\,
      I2 => up_tlf_s_ready,
      I3 => level(0),
      I4 => level(1),
      I5 => level(2),
      O => m_axis_valid_i_1_n_0
    );
m_axis_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => m_axis_valid_i_1_n_0,
      Q => \_m_axis_valid\,
      R => \^ctrl_enable_reg\
    );
ram_reg_0_3_0_5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => up_tlf_s_ready,
      I1 => \level_reg[2]_0\,
      O => s_mem_write
    );
response_ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => up_response_valid,
      I1 => response_ready_reg,
      I2 => up_tlf_s_ready,
      O => response_valid_reg
    );
s_axis_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD56ABFFFFFFF"
    )
        port map (
      I0 => \^m_mem_read\,
      I1 => \level_reg[2]_0\,
      I2 => up_tlf_s_ready,
      I3 => level(0),
      I4 => level(1),
      I5 => level(2),
      O => p_1_in
    );
s_axis_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_1_in,
      Q => up_tlf_s_ready,
      R => \^ctrl_enable_reg\
    );
\s_axis_waddr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \level_reg[2]_0\,
      I1 => up_tlf_s_ready,
      I2 => \^addrd\(0),
      O => \s_axis_waddr[0]_i_1_n_0\
    );
\s_axis_waddr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^addrd\(0),
      I1 => up_tlf_s_ready,
      I2 => \level_reg[2]_0\,
      I3 => \^addrd\(1),
      O => \s_axis_waddr[1]_i_1_n_0\
    );
\s_axis_waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axis_waddr[0]_i_1_n_0\,
      Q => \^addrd\(0),
      R => \^ctrl_enable_reg\
    );
\s_axis_waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axis_waddr[1]_i_1_n_0\,
      Q => \^addrd\(1),
      R => \^ctrl_enable_reg\
    );
up_tlf_s_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C000CAAA"
    )
        port map (
      I0 => \level_reg[2]_0\,
      I1 => up_bl_partial,
      I2 => up_response_valid,
      I3 => response_ready_reg,
      I4 => up_tlf_s_ready,
      O => up_tlf_s_valid_reg
    );
valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => \_m_axis_valid\,
      I1 => up_tlf_valid,
      I2 => p_8_in,
      O => m_axis_valid_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cdc_sync_stage2_reg[0]_0\ : out STD_LOGIC;
    src_enable : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ctrl_pause : in STD_LOGIC;
    \state_reg[0]\ : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    \FSM_onehot_state[5]_i_2_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state[5]_i_2_1\ : in STD_LOGIC;
    \up_rdata_reg[5]\ : in STD_LOGIC;
    \up_rdata_reg[5]_0\ : in STD_LOGIC;
    m_dest_axi_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0\ : entity is "sync_bits";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0\ is
  signal \FSM_onehot_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_4_n_0\ : STD_LOGIC;
  signal \cdc_sync_stage1_reg_n_0_[0]\ : STD_LOGIC;
  signal dbg_status : STD_LOGIC_VECTOR ( 5 to 5 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_3\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_4\ : label is "soft_lutpair86";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \cdc_sync_stage1_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage2_reg[0]\ : label is std.standard.true;
begin
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFA8"
    )
        port map (
      I0 => Q(3),
      I1 => ctrl_pause,
      I2 => \state_reg[0]\,
      I3 => Q(0),
      I4 => \FSM_onehot_state[5]_i_2_n_0\,
      O => E(0)
    );
\FSM_onehot_state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFA2"
    )
        port map (
      I0 => Q(1),
      I1 => ctrl_pause,
      I2 => \state_reg[0]\,
      I3 => \FSM_onehot_state[5]_i_3_n_0\,
      I4 => \FSM_onehot_state[5]_i_4_n_0\,
      I5 => \state_reg[0]_0\,
      O => \FSM_onehot_state[5]_i_2_n_0\
    );
\FSM_onehot_state[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Q(2),
      I1 => \FSM_onehot_state[5]_i_2_0\(0),
      I2 => dbg_status(5),
      I3 => \FSM_onehot_state[5]_i_2_1\,
      O => \FSM_onehot_state[5]_i_3_n_0\
    );
\FSM_onehot_state[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => Q(4),
      I1 => \FSM_onehot_state[5]_i_2_0\(0),
      I2 => dbg_status(5),
      I3 => \FSM_onehot_state[5]_i_2_1\,
      O => \FSM_onehot_state[5]_i_4_n_0\
    );
\cdc_sync_stage1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => src_enable,
      Q => \cdc_sync_stage1_reg_n_0_[0]\,
      R => '0'
    );
\cdc_sync_stage2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cdc_sync_stage1_reg_n_0_[0]\,
      Q => dbg_status(5),
      R => '0'
    );
\up_rdata[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => dbg_status(5),
      I1 => \up_rdata_reg[5]\,
      I2 => \up_rdata_reg[5]_0\,
      I3 => m_dest_axi_awaddr(0),
      O => \cdc_sync_stage2_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__1\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cdc_sync_stage2_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cdc_sync_stage2_reg[0]_1\ : out STD_LOGIC;
    \cdc_sync_stage2_reg[0]_2\ : out STD_LOGIC;
    src_dest_valid_hs_reg : out STD_LOGIC;
    \cdc_sync_stage1_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cdc_sync_stage1_reg[0]_1\ : in STD_LOGIC;
    fifo_wr_clk : in STD_LOGIC;
    src_dest_valid_hs_reg_0 : in STD_LOGIC;
    m_axis_raddr_reg : in STD_LOGIC;
    m_axis_raddr_reg_0 : in STD_LOGIC;
    src_req_ready : in STD_LOGIC;
    src_dest_valid_hs : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__1\ : entity is "sync_bits";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__1\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \cdc_sync_stage1_reg_n_0_[0]\ : STD_LOGIC;
  signal \cdc_sync_stage2_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cdc_sync_fifo_ram[28]_i_1\ : label is "soft_lutpair51";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \cdc_sync_stage1_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage2_reg[0]\ : label is std.standard.true;
  attribute SOFT_HLUTNM of \m_axis_raddr_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of src_dest_valid_hs_i_1 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \src_req_dest_address_cur[27]_i_1\ : label is "soft_lutpair50";
begin
  E(0) <= \^e\(0);
\cdc_sync_fifo_ram[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \cdc_sync_stage2_reg_n_0_[0]\,
      I1 => src_dest_valid_hs_reg_0,
      I2 => src_dest_valid_hs,
      O => \cdc_sync_stage2_reg[0]_0\(0)
    );
\cdc_sync_stage1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \cdc_sync_stage1_reg[0]_1\,
      Q => \cdc_sync_stage1_reg_n_0_[0]\,
      R => \cdc_sync_stage1_reg[0]_0\(0)
    );
\cdc_sync_stage2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \cdc_sync_stage1_reg_n_0_[0]\,
      Q => \cdc_sync_stage2_reg_n_0_[0]\,
      R => \cdc_sync_stage1_reg[0]_0\(0)
    );
\m_axis_raddr_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7D8200"
    )
        port map (
      I0 => src_req_ready,
      I1 => \cdc_sync_stage2_reg_n_0_[0]\,
      I2 => src_dest_valid_hs_reg_0,
      I3 => m_axis_raddr_reg,
      I4 => m_axis_raddr_reg_0,
      O => \cdc_sync_stage2_reg[0]_2\
    );
s_axis_waddr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"72"
    )
        port map (
      I0 => src_dest_valid_hs,
      I1 => \cdc_sync_stage2_reg_n_0_[0]\,
      I2 => src_dest_valid_hs_reg_0,
      O => src_dest_valid_hs_reg
    );
src_dest_valid_hs_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BEAA"
    )
        port map (
      I0 => \^e\(0),
      I1 => \cdc_sync_stage2_reg_n_0_[0]\,
      I2 => src_dest_valid_hs_reg_0,
      I3 => src_dest_valid_hs,
      O => \cdc_sync_stage2_reg[0]_1\
    );
\src_req_dest_address_cur[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09900000"
    )
        port map (
      I0 => \cdc_sync_stage2_reg_n_0_[0]\,
      I1 => src_dest_valid_hs_reg_0,
      I2 => m_axis_raddr_reg,
      I3 => m_axis_raddr_reg_0,
      I4 => src_req_ready,
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__2\ is
  port (
    \cdc_sync_stage2_reg[0]_0\ : out STD_LOGIC;
    req_ready_reg : out STD_LOGIC;
    \cdc_sync_stage1_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cdc_sync_stage1_reg[0]_1\ : in STD_LOGIC;
    m_dest_axi_aclk : in STD_LOGIC;
    dest_req_ready : in STD_LOGIC;
    m_axis_raddr_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__2\ : entity is "sync_bits";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__2\ is
  signal \cdc_sync_stage1_reg_n_0_[0]\ : STD_LOGIC;
  signal \^cdc_sync_stage2_reg[0]_0\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \cdc_sync_stage1_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage2_reg[0]\ : label is std.standard.true;
begin
  \cdc_sync_stage2_reg[0]_0\ <= \^cdc_sync_stage2_reg[0]_0\;
\cdc_sync_stage1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \cdc_sync_stage1_reg[0]_1\,
      Q => \cdc_sync_stage1_reg_n_0_[0]\,
      R => \cdc_sync_stage1_reg[0]_0\(0)
    );
\cdc_sync_stage2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \cdc_sync_stage1_reg_n_0_[0]\,
      Q => \^cdc_sync_stage2_reg[0]_0\,
      R => \cdc_sync_stage1_reg[0]_0\(0)
    );
\m_axis_raddr_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => dest_req_ready,
      I1 => \^cdc_sync_stage2_reg[0]_0\,
      I2 => m_axis_raddr_reg,
      O => req_ready_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__3\ is
  port (
    \cdc_sync_stage2_reg[0]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    bl_valid_reg : out STD_LOGIC;
    \cdc_sync_stage1_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cdc_sync_stage1_reg[0]_1\ : in STD_LOGIC;
    fifo_wr_clk : in STD_LOGIC;
    \cdc_sync_fifo_ram_reg[0]\ : in STD_LOGIC;
    src_bl_valid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__3\ : entity is "sync_bits";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__3\ is
  signal \cdc_sync_stage1_reg_n_0_[0]\ : STD_LOGIC;
  signal \^cdc_sync_stage2_reg[0]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cdc_sync_fifo_ram[4]_i_1\ : label is "soft_lutpair68";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \cdc_sync_stage1_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage2_reg[0]\ : label is std.standard.true;
  attribute SOFT_HLUTNM of \s_axis_waddr_i_1__1\ : label is "soft_lutpair68";
begin
  \cdc_sync_stage2_reg[0]_0\ <= \^cdc_sync_stage2_reg[0]_0\;
\cdc_sync_fifo_ram[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \^cdc_sync_stage2_reg[0]_0\,
      I1 => \cdc_sync_fifo_ram_reg[0]\,
      I2 => src_bl_valid,
      O => E(0)
    );
\cdc_sync_stage1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \cdc_sync_stage1_reg[0]_1\,
      Q => \cdc_sync_stage1_reg_n_0_[0]\,
      R => \cdc_sync_stage1_reg[0]_0\(0)
    );
\cdc_sync_stage2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \cdc_sync_stage1_reg_n_0_[0]\,
      Q => \^cdc_sync_stage2_reg[0]_0\,
      R => \cdc_sync_stage1_reg[0]_0\(0)
    );
\s_axis_waddr_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"72"
    )
        port map (
      I0 => src_bl_valid,
      I1 => \^cdc_sync_stage2_reg[0]_0\,
      I2 => \cdc_sync_fifo_ram_reg[0]\,
      O => bl_valid_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__4\ is
  port (
    cdc_sync_stage2 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    bl_ready_reg : out STD_LOGIC;
    \cdc_sync_stage1_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cdc_sync_stage1_reg[0]_1\ : in STD_LOGIC;
    m_dest_axi_aclk : in STD_LOGIC;
    \last_burst_len_reg[0]\ : in STD_LOGIC;
    dest_bl_ready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__4\ : entity is "sync_bits";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__4\ is
  signal \cdc_sync_stage1_reg_n_0_[0]\ : STD_LOGIC;
  signal \^cdc_sync_stage2\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \cdc_sync_stage1_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage2_reg[0]\ : label is std.standard.true;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \last_burst_len[4]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of m_axis_raddr_i_1 : label is "soft_lutpair69";
begin
  cdc_sync_stage2 <= \^cdc_sync_stage2\;
\cdc_sync_stage1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \cdc_sync_stage1_reg[0]_1\,
      Q => \cdc_sync_stage1_reg_n_0_[0]\,
      R => \cdc_sync_stage1_reg[0]_0\(0)
    );
\cdc_sync_stage2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \cdc_sync_stage1_reg_n_0_[0]\,
      Q => \^cdc_sync_stage2\,
      R => \cdc_sync_stage1_reg[0]_0\(0)
    );
\last_burst_len[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \last_burst_len_reg[0]\,
      I1 => \^cdc_sync_stage2\,
      I2 => dest_bl_ready,
      O => E(0)
    );
m_axis_raddr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => dest_bl_ready,
      I1 => \^cdc_sync_stage2\,
      I2 => \last_burst_len_reg[0]\,
      O => bl_ready_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__5\ is
  port (
    \cdc_sync_stage2_reg[0]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \req_gen_valid__0\ : out STD_LOGIC;
    up_dma_req_valid_reg : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cdc_sync_stage1_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axis_waddr_reg : in STD_LOGIC;
    s_axis_waddr_reg_0 : in STD_LOGIC;
    s_axis_waddr_reg_1 : in STD_LOGIC;
    up_dma_req_valid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__5\ : entity is "sync_bits";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__5\ is
  signal \cdc_sync_stage1_reg_n_0_[0]\ : STD_LOGIC;
  signal \^cdc_sync_stage2_reg[0]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cdc_sync_fifo_ram[64]_i_1\ : label is "soft_lutpair74";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \cdc_sync_stage1_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage2_reg[0]\ : label is std.standard.true;
  attribute SOFT_HLUTNM of \state[0]_i_3\ : label is "soft_lutpair74";
begin
  \cdc_sync_stage2_reg[0]_0\ <= \^cdc_sync_stage2_reg[0]_0\;
\cdc_sync_fifo_ram[64]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000000"
    )
        port map (
      I0 => s_axis_waddr_reg,
      I1 => \^cdc_sync_stage2_reg[0]_0\,
      I2 => s_axis_waddr_reg_0,
      I3 => s_axis_waddr_reg_1,
      I4 => up_dma_req_valid,
      O => E(0)
    );
\cdc_sync_stage1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cdc_sync_stage1_reg[0]_0\,
      Q => \cdc_sync_stage1_reg_n_0_[0]\,
      R => Q(0)
    );
\cdc_sync_stage2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cdc_sync_stage1_reg_n_0_[0]\,
      Q => \^cdc_sync_stage2_reg[0]_0\,
      R => Q(0)
    );
\s_axis_waddr_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0800"
    )
        port map (
      I0 => up_dma_req_valid,
      I1 => s_axis_waddr_reg_1,
      I2 => \^cdc_sync_stage2_reg[0]_0\,
      I3 => s_axis_waddr_reg,
      I4 => s_axis_waddr_reg_0,
      O => up_dma_req_valid_reg
    );
\state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80080000"
    )
        port map (
      I0 => up_dma_req_valid,
      I1 => s_axis_waddr_reg_1,
      I2 => s_axis_waddr_reg_0,
      I3 => \^cdc_sync_stage2_reg[0]_0\,
      I4 => s_axis_waddr_reg,
      O => \req_gen_valid__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__6\ is
  port (
    \cdc_sync_stage2_reg[0]_0\ : out STD_LOGIC;
    \cdc_sync_stage1_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cdc_sync_stage1_reg[0]_1\ : in STD_LOGIC;
    fifo_wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__6\ : entity is "sync_bits";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__6\ is
  signal \cdc_sync_stage1_reg_n_0_[0]\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \cdc_sync_stage1_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage2_reg[0]\ : label is std.standard.true;
begin
\cdc_sync_stage1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \cdc_sync_stage1_reg[0]_1\,
      Q => \cdc_sync_stage1_reg_n_0_[0]\,
      R => \cdc_sync_stage1_reg[0]_0\(0)
    );
\cdc_sync_stage2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \cdc_sync_stage1_reg_n_0_[0]\,
      Q => \cdc_sync_stage2_reg[0]_0\,
      R => \cdc_sync_stage1_reg[0]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__7\ is
  port (
    src_enable : out STD_LOGIC;
    \cdc_sync_stage1_reg[0]_0\ : in STD_LOGIC;
    fifo_wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__7\ : entity is "sync_bits";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__7\ is
  signal cdc_sync_stage1 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \cdc_sync_stage1_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage2_reg[0]\ : label is std.standard.true;
begin
\cdc_sync_stage1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \cdc_sync_stage1_reg[0]_0\,
      Q => cdc_sync_stage1,
      R => '0'
    );
\cdc_sync_stage2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => cdc_sync_stage1,
      Q => src_enable,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized1\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    src_request_id : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \src_throttled_request_id_reg[0]\ : in STD_LOGIC;
    \src_throttled_request_id_reg[0]_0\ : in STD_LOGIC;
    \cdc_sync_stage1_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    fifo_wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized1\ : entity is "sync_bits";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized1\ is
  signal \cdc_sync_stage1_reg_n_0_[0]\ : STD_LOGIC;
  signal \cdc_sync_stage1_reg_n_0_[1]\ : STD_LOGIC;
  signal \cdc_sync_stage1_reg_n_0_[2]\ : STD_LOGIC;
  signal \cdc_sync_stage1_reg_n_0_[3]\ : STD_LOGIC;
  signal \^src_request_id\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \src_throttled_request_id[3]_i_3_n_0\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \cdc_sync_stage1_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage1_reg[1]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage1_reg[2]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage1_reg[3]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage2_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage2_reg[1]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage2_reg[2]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage2_reg[3]\ : label is std.standard.true;
begin
  src_request_id(3 downto 0) <= \^src_request_id\(3 downto 0);
\cdc_sync_stage1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \cdc_sync_stage1_reg[3]_0\(0),
      Q => \cdc_sync_stage1_reg_n_0_[0]\,
      R => '0'
    );
\cdc_sync_stage1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \cdc_sync_stage1_reg[3]_0\(1),
      Q => \cdc_sync_stage1_reg_n_0_[1]\,
      R => '0'
    );
\cdc_sync_stage1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \cdc_sync_stage1_reg[3]_0\(2),
      Q => \cdc_sync_stage1_reg_n_0_[2]\,
      R => '0'
    );
\cdc_sync_stage1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \cdc_sync_stage1_reg[3]_0\(3),
      Q => \cdc_sync_stage1_reg_n_0_[3]\,
      R => '0'
    );
\cdc_sync_stage2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \cdc_sync_stage1_reg_n_0_[0]\,
      Q => \^src_request_id\(0),
      R => '0'
    );
\cdc_sync_stage2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \cdc_sync_stage1_reg_n_0_[1]\,
      Q => \^src_request_id\(1),
      R => '0'
    );
\cdc_sync_stage2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \cdc_sync_stage1_reg_n_0_[2]\,
      Q => \^src_request_id\(2),
      R => '0'
    );
\cdc_sync_stage2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \cdc_sync_stage1_reg_n_0_[3]\,
      Q => \^src_request_id\(3),
      R => '0'
    );
\src_throttled_request_id[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEBEBE00"
    )
        port map (
      I0 => \src_throttled_request_id[3]_i_3_n_0\,
      I1 => \^src_request_id\(3),
      I2 => Q(3),
      I3 => \src_throttled_request_id_reg[0]\,
      I4 => \src_throttled_request_id_reg[0]_0\,
      O => E(0)
    );
\src_throttled_request_id[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => Q(0),
      I1 => \^src_request_id\(0),
      I2 => \^src_request_id\(2),
      I3 => Q(2),
      I4 => \^src_request_id\(1),
      I5 => Q(1),
      O => \src_throttled_request_id[3]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized1__xdcDup__1\ is
  port (
    \cdc_sync_stage2_reg[2]_0\ : out STD_LOGIC;
    data8 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \cdc_sync_stage2_reg[3]_0\ : out STD_LOGIC;
    \cdc_sync_stage2_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \up_rdata_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_rdata_reg[3]\ : in STD_LOGIC;
    \up_rdata_reg[3]_0\ : in STD_LOGIC;
    m_dest_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_1_in : in STD_LOGIC;
    m_dest_axi_aclk : in STD_LOGIC;
    \cdc_sync_stage1_reg[2]_0\ : in STD_LOGIC;
    src_id_reduced : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized1__xdcDup__1\ : entity is "sync_bits";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized1__xdcDup__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized1__xdcDup__1\ is
  signal \cdc_sync_stage1_reg_n_0_[0]\ : STD_LOGIC;
  signal \cdc_sync_stage1_reg_n_0_[1]\ : STD_LOGIC;
  signal \cdc_sync_stage1_reg_n_0_[2]\ : STD_LOGIC;
  signal \cdc_sync_stage1_reg_n_0_[3]\ : STD_LOGIC;
  signal \^data8\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \cdc_sync_stage1_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage1_reg[1]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage1_reg[2]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage1_reg[3]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage2_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage2_reg[1]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage2_reg[2]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage2_reg[3]\ : label is std.standard.true;
begin
  data8(1 downto 0) <= \^data8\(1 downto 0);
\cdc_sync_stage1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => src_id_reduced(0),
      Q => \cdc_sync_stage1_reg_n_0_[0]\,
      R => '0'
    );
\cdc_sync_stage1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => src_id_reduced(1),
      Q => \cdc_sync_stage1_reg_n_0_[1]\,
      R => '0'
    );
\cdc_sync_stage1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \cdc_sync_stage1_reg[2]_0\,
      Q => \cdc_sync_stage1_reg_n_0_[2]\,
      R => '0'
    );
\cdc_sync_stage1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => p_1_in,
      Q => \cdc_sync_stage1_reg_n_0_[3]\,
      R => '0'
    );
\cdc_sync_stage2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \cdc_sync_stage1_reg_n_0_[0]\,
      Q => \cdc_sync_stage2_reg[1]_0\(0),
      R => '0'
    );
\cdc_sync_stage2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \cdc_sync_stage1_reg_n_0_[1]\,
      Q => \cdc_sync_stage2_reg[1]_0\(1),
      R => '0'
    );
\cdc_sync_stage2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \cdc_sync_stage1_reg_n_0_[2]\,
      Q => \^data8\(0),
      R => '0'
    );
\cdc_sync_stage2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \cdc_sync_stage1_reg_n_0_[3]\,
      Q => \^data8\(1),
      R => '0'
    );
\up_rdata[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \^data8\(0),
      I1 => \up_rdata_reg[2]\(0),
      I2 => \up_rdata_reg[3]\,
      I3 => \up_rdata_reg[3]_0\,
      I4 => m_dest_axi_awaddr(0),
      O => \cdc_sync_stage2_reg[2]_0\
    );
\up_rdata[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^data8\(1),
      I1 => \up_rdata_reg[3]\,
      I2 => \up_rdata_reg[3]_0\,
      I3 => m_dest_axi_awaddr(1),
      O => \cdc_sync_stage2_reg[3]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized1__xdcDup__2\ is
  port (
    \src_throttled_request_id_reg[2]\ : out STD_LOGIC;
    \src_throttled_request_id_reg[0]\ : out STD_LOGIC;
    \src_throttled_request_id_reg[0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    fifo_wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized1__xdcDup__2\ : entity is "sync_bits";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized1__xdcDup__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized1__xdcDup__2\ is
  signal \cdc_sync_stage1_reg_n_0_[0]\ : STD_LOGIC;
  signal \cdc_sync_stage1_reg_n_0_[1]\ : STD_LOGIC;
  signal \cdc_sync_stage1_reg_n_0_[2]\ : STD_LOGIC;
  signal \cdc_sync_stage1_reg_n_0_[3]\ : STD_LOGIC;
  signal \cdc_sync_stage2_reg_n_0_[0]\ : STD_LOGIC;
  signal \cdc_sync_stage2_reg_n_0_[1]\ : STD_LOGIC;
  signal \cdc_sync_stage2_reg_n_0_[3]\ : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \cdc_sync_stage1_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage1_reg[1]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage1_reg[2]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage1_reg[3]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage2_reg[0]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage2_reg[1]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage2_reg[2]\ : label is std.standard.true;
  attribute ASYNC_REG of \cdc_sync_stage2_reg[3]\ : label is std.standard.true;
begin
\cdc_sync_stage1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => Q(0),
      Q => \cdc_sync_stage1_reg_n_0_[0]\,
      R => '0'
    );
\cdc_sync_stage1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => Q(1),
      Q => \cdc_sync_stage1_reg_n_0_[1]\,
      R => '0'
    );
\cdc_sync_stage1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => Q(2),
      Q => \cdc_sync_stage1_reg_n_0_[2]\,
      R => '0'
    );
\cdc_sync_stage1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => Q(3),
      Q => \cdc_sync_stage1_reg_n_0_[3]\,
      R => '0'
    );
\cdc_sync_stage2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \cdc_sync_stage1_reg_n_0_[0]\,
      Q => \cdc_sync_stage2_reg_n_0_[0]\,
      R => '0'
    );
\cdc_sync_stage2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \cdc_sync_stage1_reg_n_0_[1]\,
      Q => \cdc_sync_stage2_reg_n_0_[1]\,
      R => '0'
    );
\cdc_sync_stage2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \cdc_sync_stage1_reg_n_0_[2]\,
      Q => p_0_in0_in,
      R => '0'
    );
\cdc_sync_stage2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \cdc_sync_stage1_reg_n_0_[3]\,
      Q => \cdc_sync_stage2_reg_n_0_[3]\,
      R => '0'
    );
\src_throttled_request_id[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F99F"
    )
        port map (
      I0 => \src_throttled_request_id_reg[0]_0\(2),
      I1 => p_0_in0_in,
      I2 => \src_throttled_request_id_reg[0]_0\(3),
      I3 => \cdc_sync_stage2_reg_n_0_[3]\,
      O => \src_throttled_request_id_reg[2]\
    );
\src_throttled_request_id[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \src_throttled_request_id_reg[0]_0\(0),
      I1 => \cdc_sync_stage2_reg_n_0_[0]\,
      I2 => \src_throttled_request_id_reg[0]_0\(1),
      I3 => \cdc_sync_stage2_reg_n_0_[1]\,
      O => \src_throttled_request_id_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_axi is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    up_wreq : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    up_rreq : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    up_axi_rvalid_int_reg_0 : out STD_LOGIC;
    up_dma_req_valid_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    up_wreq_int_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    up_wreq_int_reg_1 : out STD_LOGIC;
    up_wreq_int_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \up_scratch_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \up_raddr_int_reg[4]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    p_8_in : out STD_LOGIC;
    \up_raddr_int_reg[7]_0\ : out STD_LOGIC;
    \up_raddr_int_reg[6]_0\ : out STD_LOGIC;
    \up_waddr_int_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \up_wdata_int_reg[1]_0\ : out STD_LOGIC;
    \up_wdata_int_reg[2]_0\ : out STD_LOGIC;
    \up_wdata_int_reg[1]_1\ : out STD_LOGIC;
    \up_wdata_int_reg[0]_0\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    up_dma_req_valid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ctrl_enable_reg : in STD_LOGIC;
    \up_irq_source_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    up_eot : in STD_LOGIC;
    up_wack : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    up_rack : in STD_LOGIC;
    \up_rdata_reg[10]\ : in STD_LOGIC;
    \up_rdata_reg[8]\ : in STD_LOGIC;
    \up_rdata_reg[9]\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    \up_rdata_d_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    src_request_id : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \up_rdata[1]_i_4_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \up_rdata[31]_i_6_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \up_rdata[23]_i_4_0\ : in STD_LOGIC_VECTOR ( 21 downto 0 );
    \up_rdata_reg[0]\ : in STD_LOGIC;
    \up_rdata_reg[2]\ : in STD_LOGIC;
    \up_rdata_reg[2]_0\ : in STD_LOGIC;
    \up_rdata_reg[3]\ : in STD_LOGIC;
    \up_rdata_reg[3]_0\ : in STD_LOGIC;
    \up_rdata_reg[4]\ : in STD_LOGIC;
    \up_rdata_reg[5]\ : in STD_LOGIC;
    \up_rdata_reg[6]\ : in STD_LOGIC;
    \up_rdata_reg[11]\ : in STD_LOGIC;
    \up_rdata_reg[16]\ : in STD_LOGIC;
    \up_rdata_reg[17]\ : in STD_LOGIC;
    \up_rdata_reg[18]\ : in STD_LOGIC;
    \up_rdata_reg[19]\ : in STD_LOGIC;
    \up_rdata_reg[24]\ : in STD_LOGIC;
    dbg_ids1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \up_rdata_reg[29]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \up_rdata_reg[25]\ : in STD_LOGIC;
    \up_rdata_reg[26]\ : in STD_LOGIC;
    \up_rdata_reg[27]\ : in STD_LOGIC;
    \up_rdata_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \up_rdata_reg[0]_0\ : in STD_LOGIC;
    \up_rdata_reg[1]\ : in STD_LOGIC;
    p_3_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_rdata[4]_i_4_0\ : in STD_LOGIC;
    \up_rdata[5]_i_4_0\ : in STD_LOGIC;
    \up_rdata[6]_i_4_0\ : in STD_LOGIC;
    \up_rdata[7]_i_4_0\ : in STD_LOGIC;
    \up_rdata[8]_i_4_0\ : in STD_LOGIC;
    \up_rdata[9]_i_4_0\ : in STD_LOGIC;
    \up_rdata[10]_i_4_0\ : in STD_LOGIC;
    \up_rdata[11]_i_4_0\ : in STD_LOGIC;
    \up_rdata[12]_i_4_0\ : in STD_LOGIC;
    \up_rdata[13]_i_4_0\ : in STD_LOGIC;
    \up_rdata[14]_i_4_0\ : in STD_LOGIC;
    \up_rdata[15]_i_4_0\ : in STD_LOGIC;
    \up_rdata[16]_i_4_0\ : in STD_LOGIC;
    \up_rdata[17]_i_4_0\ : in STD_LOGIC;
    \up_rdata[18]_i_4_0\ : in STD_LOGIC;
    \up_rdata[19]_i_4_0\ : in STD_LOGIC;
    \up_rdata[20]_i_4_0\ : in STD_LOGIC;
    \up_rdata[21]_i_4_0\ : in STD_LOGIC;
    \up_rdata[22]_i_4_0\ : in STD_LOGIC;
    \up_rdata[23]_i_4_1\ : in STD_LOGIC;
    data8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dbg_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ctrl_pause : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    up_dma_last : in STD_LOGIC;
    \up_rdata[1]_i_4_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_rdata[1]_i_4_2\ : in STD_LOGIC;
    \up_rdata_reg[7]\ : in STD_LOGIC;
    m_dest_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_axi is
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ctrl_enable_i_2_n_0 : STD_LOGIC;
  signal ctrl_enable_i_3_n_0 : STD_LOGIC;
  signal data10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data[25]_i_3_n_0\ : STD_LOGIC;
  signal \data[25]_i_4_n_0\ : STD_LOGIC;
  signal \i_regmap_request/up_dma_last\ : STD_LOGIC;
  signal \i_regmap_request/up_dma_req_valid0\ : STD_LOGIC;
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_in7_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal up_axi_arready_int_i_1_n_0 : STD_LOGIC;
  signal up_axi_awready_int_i_2_n_0 : STD_LOGIC;
  signal up_axi_bvalid_int_i_1_n_0 : STD_LOGIC;
  signal \up_axi_rdata_int[31]_i_1_n_0\ : STD_LOGIC;
  signal up_axi_rvalid_int_i_1_n_0 : STD_LOGIC;
  signal \^up_axi_rvalid_int_reg_0\ : STD_LOGIC;
  signal up_axi_wready_int_i_1_n_0 : STD_LOGIC;
  signal \up_dma_dest_address[29]_i_2_n_0\ : STD_LOGIC;
  signal \up_dma_x_length[23]_i_2_n_0\ : STD_LOGIC;
  signal \up_dma_x_length[23]_i_3_n_0\ : STD_LOGIC;
  signal \up_irq_mask[1]_i_3_n_0\ : STD_LOGIC;
  signal \up_irq_mask[1]_i_4_n_0\ : STD_LOGIC;
  signal \up_irq_source[1]_i_3_n_0\ : STD_LOGIC;
  signal \up_irq_source_clear1__6\ : STD_LOGIC;
  signal up_rack_d : STD_LOGIC;
  signal up_rack_s : STD_LOGIC;
  signal up_raddr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^up_raddr_int_reg[4]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^up_raddr_int_reg[6]_0\ : STD_LOGIC;
  signal \^up_raddr_int_reg[7]_0\ : STD_LOGIC;
  signal \up_rcount[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_rcount[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_rcount[2]_i_1_n_0\ : STD_LOGIC;
  signal \up_rcount[3]_i_1_n_0\ : STD_LOGIC;
  signal \up_rcount[4]_i_1_n_0\ : STD_LOGIC;
  signal \up_rcount[4]_i_2_n_0\ : STD_LOGIC;
  signal \up_rcount_reg_n_0_[0]\ : STD_LOGIC;
  signal \up_rcount_reg_n_0_[1]\ : STD_LOGIC;
  signal \up_rcount_reg_n_0_[2]\ : STD_LOGIC;
  signal \up_rcount_reg_n_0_[3]\ : STD_LOGIC;
  signal \up_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[0]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[10]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[10]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[11]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[11]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[12]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[12]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[13]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[13]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[14]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[14]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[15]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[15]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[16]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[16]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[17]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[17]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[18]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[18]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[19]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[19]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[1]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[1]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[20]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[20]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[21]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[21]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[22]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[22]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[23]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[23]_i_6_n_0\ : STD_LOGIC;
  signal \up_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[27]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[28]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[29]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[29]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[2]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[2]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_10_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_11_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_12_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_13_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_14_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_15_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_16_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_17_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_18_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_19_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_20_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[3]_i_7_n_0\ : STD_LOGIC;
  signal \up_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[4]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[5]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[6]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[8]_i_5_n_0\ : STD_LOGIC;
  signal \up_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[9]_i_4_n_0\ : STD_LOGIC;
  signal \up_rdata[9]_i_5_n_0\ : STD_LOGIC;
  signal up_rdata_d : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \up_rdata_d[13]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[17]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[20]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[22]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[24]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[29]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[4]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[6]_i_1_n_0\ : STD_LOGIC;
  signal \up_rdata_d[8]_i_1_n_0\ : STD_LOGIC;
  signal up_rdata_s : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^up_rreq\ : STD_LOGIC;
  signal up_rreq_int_i_1_n_0 : STD_LOGIC;
  signal up_rsel_i_1_n_0 : STD_LOGIC;
  signal up_rsel_reg_n_0 : STD_LOGIC;
  signal \up_scratch[31]_i_2_n_0\ : STD_LOGIC;
  signal \up_scratch[31]_i_3_n_0\ : STD_LOGIC;
  signal up_wack_d : STD_LOGIC;
  signal up_wack_s : STD_LOGIC;
  signal up_wack_s_0 : STD_LOGIC;
  signal up_waddr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \up_wcount[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_wcount[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_wcount[2]_i_1_n_0\ : STD_LOGIC;
  signal \up_wcount[3]_i_1_n_0\ : STD_LOGIC;
  signal \up_wcount[4]_i_1_n_0\ : STD_LOGIC;
  signal \up_wcount[4]_i_2_n_0\ : STD_LOGIC;
  signal \up_wcount_reg_n_0_[0]\ : STD_LOGIC;
  signal \up_wcount_reg_n_0_[1]\ : STD_LOGIC;
  signal \up_wcount_reg_n_0_[2]\ : STD_LOGIC;
  signal \up_wcount_reg_n_0_[3]\ : STD_LOGIC;
  signal \^up_wreq\ : STD_LOGIC;
  signal up_wreq_int_i_1_n_0 : STD_LOGIC;
  signal up_wsel_i_1_n_0 : STD_LOGIC;
  signal up_wsel_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ctrl_enable_i_3 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of ctrl_pause_i_1 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \data[25]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data[25]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of up_axi_awready_int_i_2 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of up_axi_wready_int_i_1 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \up_dma_dest_address[29]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of up_dma_enable_tlen_reporting_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of up_dma_last_i_1 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \up_dma_x_length[23]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \up_dma_x_length[23]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \up_irq_mask[1]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \up_rcount[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \up_rcount[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \up_rdata[10]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \up_rdata[11]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \up_rdata[12]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \up_rdata[12]_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \up_rdata[13]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \up_rdata[13]_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \up_rdata[14]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \up_rdata[14]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \up_rdata[15]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \up_rdata[15]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \up_rdata[16]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \up_rdata[17]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \up_rdata[18]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \up_rdata[19]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \up_rdata[20]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \up_rdata[20]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \up_rdata[21]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \up_rdata[21]_i_3\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \up_rdata[22]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \up_rdata[22]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \up_rdata[23]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \up_rdata[23]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \up_rdata[23]_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \up_rdata[24]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \up_rdata[25]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \up_rdata[26]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \up_rdata[27]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \up_rdata[27]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \up_rdata[28]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \up_rdata[28]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \up_rdata[29]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \up_rdata[29]_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \up_rdata[2]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \up_rdata[2]_i_5\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \up_rdata[30]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \up_rdata[31]_i_12\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \up_rdata[31]_i_14\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \up_rdata[31]_i_17\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \up_rdata[31]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \up_rdata[31]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \up_rdata[31]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \up_rdata[3]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \up_rdata[3]_i_5\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \up_rdata[3]_i_7\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \up_rdata[4]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \up_rdata[4]_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \up_rdata[5]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \up_rdata[6]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \up_rdata[7]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \up_rdata[7]_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \up_rdata[8]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \up_rdata[9]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \up_scratch[31]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \up_scratch[31]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \up_wcount[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \up_wcount[2]_i_1\ : label is "soft_lutpair14";
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  SR(0) <= \^sr\(0);
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_wready <= \^s_axi_wready\;
  up_axi_rvalid_int_reg_0 <= \^up_axi_rvalid_int_reg_0\;
  \up_raddr_int_reg[4]_0\(3 downto 0) <= \^up_raddr_int_reg[4]_0\(3 downto 0);
  \up_raddr_int_reg[6]_0\ <= \^up_raddr_int_reg[6]_0\;
  \up_raddr_int_reg[7]_0\ <= \^up_raddr_int_reg[7]_0\;
  up_rreq <= \^up_rreq\;
  up_wreq <= \^up_wreq\;
ctrl_enable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(0),
      I1 => ctrl_enable_i_2_n_0,
      I2 => ctrl_enable_reg,
      O => \up_wdata_int_reg[0]_0\
    );
ctrl_enable_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \^up_wreq\,
      I1 => ctrl_enable_i_3_n_0,
      I2 => up_waddr(2),
      I3 => up_waddr(1),
      I4 => \up_scratch[31]_i_3_n_0\,
      I5 => up_waddr(8),
      O => ctrl_enable_i_2_n_0
    );
ctrl_enable_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => up_waddr(0),
      I1 => up_waddr(7),
      I2 => up_waddr(5),
      I3 => up_waddr(6),
      O => ctrl_enable_i_3_n_0
    );
ctrl_pause_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(1),
      I1 => ctrl_enable_i_2_n_0,
      I2 => ctrl_pause,
      O => \up_wdata_int_reg[1]_1\
    );
\data[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \data[25]_i_3_n_0\,
      I1 => up_raddr(7),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \data[25]_i_4_n_0\,
      I4 => \^up_raddr_int_reg[4]_0\(3),
      I5 => \^up_rreq\,
      O => p_8_in
    );
\data[25]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => up_raddr(6),
      I1 => up_raddr(5),
      O => \data[25]_i_3_n_0\
    );
\data[25]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => up_raddr(0),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => up_raddr(8),
      O => \data[25]_i_4_n_0\
    );
up_axi_arready_int_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => up_rack_s,
      O => up_axi_arready_int_i_1_n_0
    );
up_axi_arready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_axi_arready_int_i_1_n_0,
      Q => \^s_axi_arready\,
      R => \^sr\(0)
    );
up_axi_awready_int_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^sr\(0)
    );
up_axi_awready_int_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => up_wack_s_0,
      O => up_axi_awready_int_i_2_n_0
    );
up_axi_awready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_axi_awready_int_i_2_n_0,
      Q => \^s_axi_awready\,
      R => \^sr\(0)
    );
up_axi_bvalid_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C88"
    )
        port map (
      I0 => up_wack_d,
      I1 => s_axi_aresetn,
      I2 => s_axi_bready,
      I3 => \^s_axi_bvalid\,
      O => up_axi_bvalid_int_i_1_n_0
    );
up_axi_bvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_axi_bvalid_int_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => '0'
    );
\up_axi_rdata_int[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^up_axi_rvalid_int_reg_0\,
      I1 => s_axi_rready,
      I2 => s_axi_aresetn,
      O => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(0),
      Q => s_axi_rdata(0),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(10),
      Q => s_axi_rdata(10),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(11),
      Q => s_axi_rdata(11),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(12),
      Q => s_axi_rdata(12),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(13),
      Q => s_axi_rdata(13),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(14),
      Q => s_axi_rdata(14),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(15),
      Q => s_axi_rdata(15),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(16),
      Q => s_axi_rdata(16),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(17),
      Q => s_axi_rdata(17),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(18),
      Q => s_axi_rdata(18),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(19),
      Q => s_axi_rdata(19),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(1),
      Q => s_axi_rdata(1),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(20),
      Q => s_axi_rdata(20),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(21),
      Q => s_axi_rdata(21),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(22),
      Q => s_axi_rdata(22),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(23),
      Q => s_axi_rdata(23),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(24),
      Q => s_axi_rdata(24),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(25),
      Q => s_axi_rdata(25),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(26),
      Q => s_axi_rdata(26),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(27),
      Q => s_axi_rdata(27),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(28),
      Q => s_axi_rdata(28),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(29),
      Q => s_axi_rdata(29),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(2),
      Q => s_axi_rdata(2),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(30),
      Q => s_axi_rdata(30),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(31),
      Q => s_axi_rdata(31),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(3),
      Q => s_axi_rdata(3),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(4),
      Q => s_axi_rdata(4),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(5),
      Q => s_axi_rdata(5),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(6),
      Q => s_axi_rdata(6),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(7),
      Q => s_axi_rdata(7),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(8),
      Q => s_axi_rdata(8),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
\up_axi_rdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rack_d,
      D => up_rdata_d(9),
      Q => s_axi_rdata(9),
      R => \up_axi_rdata_int[31]_i_1_n_0\
    );
up_axi_rvalid_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C88"
    )
        port map (
      I0 => up_rack_d,
      I1 => s_axi_aresetn,
      I2 => s_axi_rready,
      I3 => \^up_axi_rvalid_int_reg_0\,
      O => up_axi_rvalid_int_i_1_n_0
    );
up_axi_rvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_axi_rvalid_int_i_1_n_0,
      Q => \^up_axi_rvalid_int_reg_0\,
      R => '0'
    );
up_axi_wready_int_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => up_wack_s_0,
      O => up_axi_wready_int_i_1_n_0
    );
up_axi_wready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_axi_wready_int_i_1_n_0,
      Q => \^s_axi_wready\,
      R => \^sr\(0)
    );
\up_dma_dest_address[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \^up_wreq\,
      I1 => \up_dma_dest_address[29]_i_2_n_0\,
      I2 => up_waddr(2),
      I3 => up_waddr(0),
      I4 => up_waddr(1),
      O => up_wreq_int_reg_0(0)
    );
\up_dma_dest_address[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => up_waddr(8),
      I1 => up_waddr(7),
      I2 => up_waddr(4),
      I3 => up_waddr(3),
      I4 => up_waddr(6),
      I5 => up_waddr(5),
      O => \up_dma_dest_address[29]_i_2_n_0\
    );
up_dma_enable_tlen_reporting_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \i_regmap_request/up_dma_last\,
      I2 => p_3_in(0),
      O => \up_wdata_int_reg[2]_0\
    );
up_dma_enable_tlen_reporting_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \up_dma_dest_address[29]_i_2_n_0\,
      I1 => up_waddr(2),
      I2 => up_waddr(0),
      I3 => up_waddr(1),
      I4 => \^up_wreq\,
      O => \i_regmap_request/up_dma_last\
    );
up_dma_last_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \i_regmap_request/up_dma_last\,
      I2 => up_dma_last,
      O => \up_wdata_int_reg[1]_0\
    );
up_dma_req_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000E0A000000000"
    )
        port map (
      I0 => up_dma_req_valid,
      I1 => \^q\(0),
      I2 => s_axi_aresetn,
      I3 => \i_regmap_request/up_dma_req_valid0\,
      I4 => E(0),
      I5 => ctrl_enable_reg,
      O => up_dma_req_valid_reg
    );
up_dma_req_valid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => ctrl_enable_i_3_n_0,
      I1 => up_waddr(2),
      I2 => up_waddr(8),
      I3 => \up_scratch[31]_i_3_n_0\,
      I4 => up_waddr(1),
      I5 => \^up_wreq\,
      O => \i_regmap_request/up_dma_req_valid0\
    );
\up_dma_x_length[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => up_waddr(0),
      I1 => up_waddr(3),
      I2 => \up_dma_x_length[23]_i_2_n_0\,
      I3 => \up_dma_x_length[23]_i_3_n_0\,
      O => \up_waddr_int_reg[0]_0\(0)
    );
\up_dma_x_length[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => up_waddr(2),
      I1 => up_waddr(8),
      I2 => \^up_wreq\,
      I3 => up_waddr(1),
      O => \up_dma_x_length[23]_i_2_n_0\
    );
\up_dma_x_length[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => up_waddr(6),
      I1 => up_waddr(7),
      I2 => up_waddr(4),
      I3 => up_waddr(5),
      O => \up_dma_x_length[23]_i_3_n_0\
    );
\up_irq_mask[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \^up_wreq\,
      I1 => up_waddr(6),
      I2 => up_waddr(0),
      I3 => \up_irq_mask[1]_i_3_n_0\,
      I4 => \up_irq_mask[1]_i_4_n_0\,
      I5 => up_waddr(5),
      O => up_wreq_int_reg_1
    );
\up_irq_mask[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => up_waddr(7),
      I1 => up_waddr(8),
      O => \up_irq_mask[1]_i_3_n_0\
    );
\up_irq_mask[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => up_waddr(3),
      I1 => up_waddr(4),
      I2 => up_waddr(1),
      I3 => up_waddr(2),
      O => \up_irq_mask[1]_i_4_n_0\
    );
\up_irq_source[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => E(0),
      I1 => \up_irq_source_clear1__6\,
      I2 => \^q\(0),
      I3 => \up_irq_source_reg[1]\(0),
      O => D(0)
    );
\up_irq_source[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => up_eot,
      I1 => \up_irq_source_clear1__6\,
      I2 => \^q\(1),
      I3 => \up_irq_source_reg[1]\(1),
      O => D(1)
    );
\up_irq_source[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \^up_wreq\,
      I1 => \up_irq_source[1]_i_3_n_0\,
      I2 => up_waddr(2),
      I3 => up_waddr(5),
      I4 => \up_scratch[31]_i_3_n_0\,
      I5 => up_waddr(0),
      O => \up_irq_source_clear1__6\
    );
\up_irq_source[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => up_waddr(8),
      I1 => up_waddr(7),
      I2 => up_waddr(1),
      I3 => up_waddr(6),
      O => \up_irq_source[1]_i_3_n_0\
    );
up_rack_d_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAA0000AAAA0000"
    )
        port map (
      I0 => up_rack,
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => \up_rcount_reg_n_0_[1]\,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => p_0_in6_in,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rack_s
    );
up_rack_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rack_s,
      Q => up_rack_d,
      R => \^sr\(0)
    );
\up_raddr_int[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => up_rsel_reg_n_0,
      O => p_1_in
    );
\up_raddr_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(0),
      Q => up_raddr(0),
      R => \^sr\(0)
    );
\up_raddr_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(1),
      Q => \^up_raddr_int_reg[4]_0\(0),
      R => \^sr\(0)
    );
\up_raddr_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(2),
      Q => \^up_raddr_int_reg[4]_0\(1),
      R => \^sr\(0)
    );
\up_raddr_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(3),
      Q => \^up_raddr_int_reg[4]_0\(2),
      R => \^sr\(0)
    );
\up_raddr_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(4),
      Q => \^up_raddr_int_reg[4]_0\(3),
      R => \^sr\(0)
    );
\up_raddr_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(5),
      Q => up_raddr(5),
      R => \^sr\(0)
    );
\up_raddr_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(6),
      Q => up_raddr(6),
      R => \^sr\(0)
    );
\up_raddr_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(7),
      Q => up_raddr(7),
      R => \^sr\(0)
    );
\up_raddr_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in,
      D => s_axi_araddr(8),
      Q => up_raddr(8),
      R => \^sr\(0)
    );
\up_rcount[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \up_rcount_reg_n_0_[0]\,
      I1 => p_0_in6_in,
      I2 => up_rack,
      O => \up_rcount[0]_i_1_n_0\
    );
\up_rcount[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => \up_rcount_reg_n_0_[1]\,
      I1 => \up_rcount_reg_n_0_[0]\,
      I2 => p_0_in6_in,
      I3 => up_rack,
      O => \up_rcount[1]_i_1_n_0\
    );
\up_rcount[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007080"
    )
        port map (
      I0 => \up_rcount_reg_n_0_[1]\,
      I1 => \up_rcount_reg_n_0_[0]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[2]\,
      I4 => up_rack,
      O => \up_rcount[2]_i_1_n_0\
    );
\up_rcount[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006A00AA00"
    )
        port map (
      I0 => \up_rcount_reg_n_0_[3]\,
      I1 => \up_rcount_reg_n_0_[1]\,
      I2 => \up_rcount_reg_n_0_[0]\,
      I3 => p_0_in6_in,
      I4 => \up_rcount_reg_n_0_[2]\,
      I5 => up_rack,
      O => \up_rcount[3]_i_1_n_0\
    );
\up_rcount[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in6_in,
      I1 => \^up_rreq\,
      O => \up_rcount[4]_i_1_n_0\
    );
\up_rcount[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF7FFFFFFF"
    )
        port map (
      I0 => \up_rcount_reg_n_0_[3]\,
      I1 => \up_rcount_reg_n_0_[1]\,
      I2 => \up_rcount_reg_n_0_[0]\,
      I3 => p_0_in6_in,
      I4 => \up_rcount_reg_n_0_[2]\,
      I5 => up_rack,
      O => \up_rcount[4]_i_2_n_0\
    );
\up_rcount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_rcount[4]_i_1_n_0\,
      D => \up_rcount[0]_i_1_n_0\,
      Q => \up_rcount_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\up_rcount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_rcount[4]_i_1_n_0\,
      D => \up_rcount[1]_i_1_n_0\,
      Q => \up_rcount_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\up_rcount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_rcount[4]_i_1_n_0\,
      D => \up_rcount[2]_i_1_n_0\,
      Q => \up_rcount_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\up_rcount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_rcount[4]_i_1_n_0\,
      D => \up_rcount[3]_i_1_n_0\,
      Q => \up_rcount_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\up_rcount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_rcount[4]_i_1_n_0\,
      D => \up_rcount[4]_i_2_n_0\,
      Q => p_0_in6_in,
      R => \^sr\(0)
    );
\up_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[0]_i_2_n_0\,
      I1 => \up_rdata[0]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(0),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => src_request_id(0),
      O => \up_scratch_reg[31]\(0)
    );
\up_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFA040F0C0A040F0"
    )
        port map (
      I0 => \up_rdata_reg[0]_0\,
      I1 => \up_irq_source_reg[1]\(0),
      I2 => \up_rdata[31]_i_7_n_0\,
      I3 => \^up_raddr_int_reg[7]_0\,
      I4 => \^up_raddr_int_reg[6]_0\,
      I5 => \up_rdata_reg[31]\(0),
      O => \up_rdata[0]_i_2_n_0\
    );
\up_rdata[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => data8(0),
      I1 => dbg_status(0),
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => ctrl_enable_reg,
      I4 => \^up_raddr_int_reg[6]_0\,
      O => \up_rdata[0]_i_3_n_0\
    );
\up_rdata[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002E22"
    )
        port map (
      I0 => \up_rdata[0]_i_5_n_0\,
      I1 => up_raddr(0),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \up_rdata_reg[0]\,
      I4 => \up_rdata[29]_i_4_n_0\,
      O => data10(0)
    );
\up_rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8888888888888"
    )
        port map (
      I0 => \up_rdata[0]_i_7_n_0\,
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \^up_raddr_int_reg[4]_0\(3),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \^up_raddr_int_reg[4]_0\(1),
      I5 => \up_rdata[1]_i_4_0\(22),
      O => \up_rdata[0]_i_5_n_0\
    );
\up_rdata[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05004F4F05004A4A"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(1),
      I1 => \up_rdata[31]_i_6_0\(0),
      I2 => \^up_raddr_int_reg[4]_0\(2),
      I3 => \up_rdata[23]_i_4_0\(0),
      I4 => \^up_raddr_int_reg[4]_0\(3),
      I5 => up_dma_req_valid,
      O => \up_rdata[0]_i_7_n_0\
    );
\up_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[10]_i_2_n_0\,
      I1 => \up_rdata_reg[10]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[10]_i_4_n_0\,
      O => \up_scratch_reg[31]\(10)
    );
\up_rdata[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(10),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[31]_i_7_n_0\,
      O => \up_rdata[10]_i_2_n_0\
    );
\up_rdata[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[1]_i_4_0\(8),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \up_rdata[23]_i_5_n_0\,
      I4 => up_raddr(0),
      I5 => \up_rdata[10]_i_5_n_0\,
      O => \up_rdata[10]_i_4_n_0\
    );
\up_rdata[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380000"
    )
        port map (
      I0 => \up_rdata[23]_i_4_0\(8),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[10]_i_4_0\,
      O => \up_rdata[10]_i_5_n_0\
    );
\up_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[11]_i_2_n_0\,
      I1 => \up_rdata_reg[11]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[11]_i_4_n_0\,
      O => \up_scratch_reg[31]\(11)
    );
\up_rdata[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(11),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[31]_i_7_n_0\,
      O => \up_rdata[11]_i_2_n_0\
    );
\up_rdata[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[1]_i_4_0\(9),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \up_rdata[23]_i_5_n_0\,
      I4 => up_raddr(0),
      I5 => \up_rdata[11]_i_5_n_0\,
      O => \up_rdata[11]_i_4_n_0\
    );
\up_rdata[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380000"
    )
        port map (
      I0 => \up_rdata[23]_i_4_0\(9),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[11]_i_4_0\,
      O => \up_rdata[11]_i_5_n_0\
    );
\up_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[12]_i_2_n_0\,
      I1 => \up_rdata[12]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[12]_i_4_n_0\,
      O => \up_scratch_reg[31]\(12)
    );
\up_rdata[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(12),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[31]_i_7_n_0\,
      O => \up_rdata[12]_i_2_n_0\
    );
\up_rdata[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_dest_axi_awaddr(0),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[12]_i_3_n_0\
    );
\up_rdata[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[1]_i_4_0\(10),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \up_rdata[23]_i_5_n_0\,
      I4 => up_raddr(0),
      I5 => \up_rdata[12]_i_5_n_0\,
      O => \up_rdata[12]_i_4_n_0\
    );
\up_rdata[12]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380000"
    )
        port map (
      I0 => \up_rdata[23]_i_4_0\(10),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[12]_i_4_0\,
      O => \up_rdata[12]_i_5_n_0\
    );
\up_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[13]_i_2_n_0\,
      I1 => \up_rdata[13]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[13]_i_4_n_0\,
      O => \up_scratch_reg[31]\(13)
    );
\up_rdata[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(13),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[31]_i_7_n_0\,
      O => \up_rdata[13]_i_2_n_0\
    );
\up_rdata[13]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_dest_axi_awaddr(1),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[13]_i_3_n_0\
    );
\up_rdata[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[1]_i_4_0\(11),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \up_rdata[23]_i_5_n_0\,
      I4 => up_raddr(0),
      I5 => \up_rdata[13]_i_5_n_0\,
      O => \up_rdata[13]_i_4_n_0\
    );
\up_rdata[13]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380000"
    )
        port map (
      I0 => \up_rdata[23]_i_4_0\(11),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[13]_i_4_0\,
      O => \up_rdata[13]_i_5_n_0\
    );
\up_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[14]_i_2_n_0\,
      I1 => \up_rdata[14]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[14]_i_4_n_0\,
      O => \up_scratch_reg[31]\(14)
    );
\up_rdata[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4202"
    )
        port map (
      I0 => \up_rdata[31]_i_7_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[6]_0\,
      I3 => \up_rdata_reg[31]\(14),
      O => \up_rdata[14]_i_2_n_0\
    );
\up_rdata[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_dest_axi_awaddr(2),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[14]_i_3_n_0\
    );
\up_rdata[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[1]_i_4_0\(12),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \up_rdata[23]_i_5_n_0\,
      I4 => up_raddr(0),
      I5 => \up_rdata[14]_i_5_n_0\,
      O => \up_rdata[14]_i_4_n_0\
    );
\up_rdata[14]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380000"
    )
        port map (
      I0 => \up_rdata[23]_i_4_0\(12),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[14]_i_4_0\,
      O => \up_rdata[14]_i_5_n_0\
    );
\up_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[15]_i_2_n_0\,
      I1 => \up_rdata[15]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[15]_i_4_n_0\,
      O => \up_scratch_reg[31]\(15)
    );
\up_rdata[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(15),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[31]_i_7_n_0\,
      O => \up_rdata[15]_i_2_n_0\
    );
\up_rdata[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_dest_axi_awaddr(3),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[15]_i_3_n_0\
    );
\up_rdata[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[1]_i_4_0\(13),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \up_rdata[23]_i_5_n_0\,
      I4 => up_raddr(0),
      I5 => \up_rdata[15]_i_5_n_0\,
      O => \up_rdata[15]_i_4_n_0\
    );
\up_rdata[15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380000"
    )
        port map (
      I0 => \up_rdata[23]_i_4_0\(13),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[15]_i_4_0\,
      O => \up_rdata[15]_i_5_n_0\
    );
\up_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[16]_i_2_n_0\,
      I1 => \up_rdata_reg[16]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[16]_i_4_n_0\,
      O => \up_scratch_reg[31]\(16)
    );
\up_rdata[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4202"
    )
        port map (
      I0 => \up_rdata[31]_i_7_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[6]_0\,
      I3 => \up_rdata_reg[31]\(16),
      O => \up_rdata[16]_i_2_n_0\
    );
\up_rdata[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[1]_i_4_0\(14),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \up_rdata[23]_i_5_n_0\,
      I4 => up_raddr(0),
      I5 => \up_rdata[16]_i_5_n_0\,
      O => \up_rdata[16]_i_4_n_0\
    );
\up_rdata[16]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380000"
    )
        port map (
      I0 => \up_rdata[23]_i_4_0\(14),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[16]_i_4_0\,
      O => \up_rdata[16]_i_5_n_0\
    );
\up_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[17]_i_2_n_0\,
      I1 => \up_rdata_reg[17]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[17]_i_4_n_0\,
      O => \up_scratch_reg[31]\(17)
    );
\up_rdata[17]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(17),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[31]_i_7_n_0\,
      O => \up_rdata[17]_i_2_n_0\
    );
\up_rdata[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[1]_i_4_0\(15),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \up_rdata[23]_i_5_n_0\,
      I4 => up_raddr(0),
      I5 => \up_rdata[17]_i_5_n_0\,
      O => \up_rdata[17]_i_4_n_0\
    );
\up_rdata[17]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380000"
    )
        port map (
      I0 => \up_rdata[23]_i_4_0\(15),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[17]_i_4_0\,
      O => \up_rdata[17]_i_5_n_0\
    );
\up_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[18]_i_2_n_0\,
      I1 => \up_rdata_reg[18]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[18]_i_4_n_0\,
      O => \up_scratch_reg[31]\(18)
    );
\up_rdata[18]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5313"
    )
        port map (
      I0 => \up_rdata[31]_i_7_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[6]_0\,
      I3 => \up_rdata_reg[31]\(18),
      O => \up_rdata[18]_i_2_n_0\
    );
\up_rdata[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[1]_i_4_0\(16),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \up_rdata[23]_i_5_n_0\,
      I4 => up_raddr(0),
      I5 => \up_rdata[18]_i_5_n_0\,
      O => \up_rdata[18]_i_4_n_0\
    );
\up_rdata[18]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380000"
    )
        port map (
      I0 => \up_rdata[23]_i_4_0\(16),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[18]_i_4_0\,
      O => \up_rdata[18]_i_5_n_0\
    );
\up_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[19]_i_2_n_0\,
      I1 => \up_rdata_reg[19]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[19]_i_4_n_0\,
      O => \up_scratch_reg[31]\(19)
    );
\up_rdata[19]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4202"
    )
        port map (
      I0 => \up_rdata[31]_i_7_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[6]_0\,
      I3 => \up_rdata_reg[31]\(19),
      O => \up_rdata[19]_i_2_n_0\
    );
\up_rdata[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[1]_i_4_0\(17),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \up_rdata[23]_i_5_n_0\,
      I4 => up_raddr(0),
      I5 => \up_rdata[19]_i_5_n_0\,
      O => \up_rdata[19]_i_4_n_0\
    );
\up_rdata[19]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380000"
    )
        port map (
      I0 => \up_rdata[23]_i_4_0\(17),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[19]_i_4_0\,
      O => \up_rdata[19]_i_5_n_0\
    );
\up_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[1]_i_2_n_0\,
      I1 => \up_rdata[1]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(1),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => src_request_id(1),
      O => \up_scratch_reg[31]\(1)
    );
\up_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAF40FFC0AF40FF"
    )
        port map (
      I0 => \up_rdata_reg[1]\,
      I1 => \up_irq_source_reg[1]\(1),
      I2 => \up_rdata[31]_i_7_n_0\,
      I3 => \^up_raddr_int_reg[7]_0\,
      I4 => \^up_raddr_int_reg[6]_0\,
      I5 => \up_rdata_reg[31]\(1),
      O => \up_rdata[1]_i_2_n_0\
    );
\up_rdata[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => data8(1),
      I1 => dbg_status(1),
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => ctrl_pause,
      I4 => \^up_raddr_int_reg[6]_0\,
      O => \up_rdata[1]_i_3_n_0\
    );
\up_rdata[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \up_rdata[1]_i_5_n_0\,
      I1 => up_raddr(0),
      I2 => \up_rdata[1]_i_6_n_0\,
      I3 => \up_rdata[29]_i_4_n_0\,
      O => data10(1)
    );
\up_rdata[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8888888888888"
    )
        port map (
      I0 => \up_rdata[1]_i_7_n_0\,
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \^up_raddr_int_reg[4]_0\(3),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \^up_raddr_int_reg[4]_0\(1),
      I5 => \up_rdata[1]_i_4_0\(23),
      O => \up_rdata[1]_i_5_n_0\
    );
\up_rdata[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF100010"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(3),
      I1 => \^up_raddr_int_reg[4]_0\(2),
      I2 => \up_rdata[1]_i_4_1\(0),
      I3 => \^up_raddr_int_reg[4]_0\(0),
      I4 => \up_rdata[1]_i_4_2\,
      I5 => \^up_raddr_int_reg[4]_0\(1),
      O => \up_rdata[1]_i_6_n_0\
    );
\up_rdata[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"054A004A"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(1),
      I1 => \up_rdata[31]_i_6_0\(1),
      I2 => \^up_raddr_int_reg[4]_0\(2),
      I3 => \^up_raddr_int_reg[4]_0\(3),
      I4 => \up_rdata[23]_i_4_0\(1),
      O => \up_rdata[1]_i_7_n_0\
    );
\up_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[20]_i_2_n_0\,
      I1 => \up_rdata[20]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[20]_i_4_n_0\,
      O => \up_scratch_reg[31]\(20)
    );
\up_rdata[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(20),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[31]_i_7_n_0\,
      O => \up_rdata[20]_i_2_n_0\
    );
\up_rdata[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_dest_axi_awaddr(4),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[20]_i_3_n_0\
    );
\up_rdata[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[1]_i_4_0\(18),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \up_rdata[23]_i_5_n_0\,
      I4 => up_raddr(0),
      I5 => \up_rdata[20]_i_5_n_0\,
      O => \up_rdata[20]_i_4_n_0\
    );
\up_rdata[20]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380000"
    )
        port map (
      I0 => \up_rdata[23]_i_4_0\(18),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[20]_i_4_0\,
      O => \up_rdata[20]_i_5_n_0\
    );
\up_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[21]_i_2_n_0\,
      I1 => \up_rdata[21]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[21]_i_4_n_0\,
      O => \up_scratch_reg[31]\(21)
    );
\up_rdata[21]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(21),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[31]_i_7_n_0\,
      O => \up_rdata[21]_i_2_n_0\
    );
\up_rdata[21]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_dest_axi_awaddr(5),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[21]_i_3_n_0\
    );
\up_rdata[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[1]_i_4_0\(19),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \up_rdata[23]_i_5_n_0\,
      I4 => up_raddr(0),
      I5 => \up_rdata[21]_i_5_n_0\,
      O => \up_rdata[21]_i_4_n_0\
    );
\up_rdata[21]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380000"
    )
        port map (
      I0 => \up_rdata[23]_i_4_0\(19),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[21]_i_4_0\,
      O => \up_rdata[21]_i_5_n_0\
    );
\up_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[22]_i_2_n_0\,
      I1 => \up_rdata[22]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[22]_i_4_n_0\,
      O => \up_scratch_reg[31]\(22)
    );
\up_rdata[22]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4202"
    )
        port map (
      I0 => \up_rdata[31]_i_7_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[6]_0\,
      I3 => \up_rdata_reg[31]\(22),
      O => \up_rdata[22]_i_2_n_0\
    );
\up_rdata[22]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_dest_axi_awaddr(6),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[22]_i_3_n_0\
    );
\up_rdata[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[1]_i_4_0\(20),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \up_rdata[23]_i_5_n_0\,
      I4 => up_raddr(0),
      I5 => \up_rdata[22]_i_5_n_0\,
      O => \up_rdata[22]_i_4_n_0\
    );
\up_rdata[22]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380000"
    )
        port map (
      I0 => \up_rdata[23]_i_4_0\(20),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[22]_i_4_0\,
      O => \up_rdata[22]_i_5_n_0\
    );
\up_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[23]_i_2_n_0\,
      I1 => \up_rdata[23]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[23]_i_4_n_0\,
      O => \up_scratch_reg[31]\(23)
    );
\up_rdata[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(23),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[31]_i_7_n_0\,
      O => \up_rdata[23]_i_2_n_0\
    );
\up_rdata[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_dest_axi_awaddr(7),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[23]_i_3_n_0\
    );
\up_rdata[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[1]_i_4_0\(21),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \up_rdata[23]_i_5_n_0\,
      I4 => up_raddr(0),
      I5 => \up_rdata[23]_i_6_n_0\,
      O => \up_rdata[23]_i_4_n_0\
    );
\up_rdata[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(1),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      O => \up_rdata[23]_i_5_n_0\
    );
\up_rdata[23]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380000"
    )
        port map (
      I0 => \up_rdata[23]_i_4_0\(21),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[23]_i_4_1\,
      O => \up_rdata[23]_i_6_n_0\
    );
\up_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[24]_i_2_n_0\,
      I1 => \up_rdata_reg[24]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(24),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => dbg_ids1(0),
      O => \up_scratch_reg[31]\(24)
    );
\up_rdata[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(24),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[31]_i_7_n_0\,
      O => \up_rdata[24]_i_2_n_0\
    );
\up_rdata[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => up_raddr(0),
      I1 => \^up_raddr_int_reg[4]_0\(2),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \up_rdata_reg[29]\(2),
      I4 => \up_rdata[27]_i_5_n_0\,
      I5 => \up_rdata[29]_i_4_n_0\,
      O => data10(24)
    );
\up_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[25]_i_2_n_0\,
      I1 => \up_rdata_reg[25]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(25),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => dbg_ids1(1),
      O => \up_scratch_reg[31]\(25)
    );
\up_rdata[25]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(25),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[31]_i_7_n_0\,
      O => \up_rdata[25]_i_2_n_0\
    );
\up_rdata[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => up_raddr(0),
      I1 => \^up_raddr_int_reg[4]_0\(2),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \up_rdata_reg[29]\(3),
      I4 => \up_rdata[27]_i_5_n_0\,
      I5 => \up_rdata[29]_i_4_n_0\,
      O => data10(25)
    );
\up_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[26]_i_2_n_0\,
      I1 => \up_rdata_reg[26]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(26),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => dbg_ids1(2),
      O => \up_scratch_reg[31]\(26)
    );
\up_rdata[26]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4202"
    )
        port map (
      I0 => \up_rdata[31]_i_7_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[6]_0\,
      I3 => \up_rdata_reg[31]\(26),
      O => \up_rdata[26]_i_2_n_0\
    );
\up_rdata[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => up_raddr(0),
      I1 => \^up_raddr_int_reg[4]_0\(2),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \up_rdata_reg[29]\(4),
      I4 => \up_rdata[27]_i_5_n_0\,
      I5 => \up_rdata[29]_i_4_n_0\,
      O => data10(26)
    );
\up_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[27]_i_2_n_0\,
      I1 => \up_rdata_reg[27]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(27),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => dbg_ids1(3),
      O => \up_scratch_reg[31]\(27)
    );
\up_rdata[27]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(27),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[31]_i_7_n_0\,
      O => \up_rdata[27]_i_2_n_0\
    );
\up_rdata[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => up_raddr(0),
      I1 => \^up_raddr_int_reg[4]_0\(2),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \up_rdata_reg[29]\(5),
      I4 => \up_rdata[27]_i_5_n_0\,
      I5 => \up_rdata[29]_i_4_n_0\,
      O => data10(27)
    );
\up_rdata[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(0),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      O => \up_rdata[27]_i_5_n_0\
    );
\up_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[28]_i_2_n_0\,
      I1 => \up_rdata[28]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[28]_i_4_n_0\,
      O => \up_scratch_reg[31]\(28)
    );
\up_rdata[28]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(28),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[31]_i_7_n_0\,
      O => \up_rdata[28]_i_2_n_0\
    );
\up_rdata[28]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_dest_axi_awaddr(8),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[28]_i_3_n_0\
    );
\up_rdata[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(3),
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \up_rdata_reg[29]\(6),
      I3 => \^up_raddr_int_reg[4]_0\(1),
      I4 => \^up_raddr_int_reg[4]_0\(2),
      I5 => up_raddr(0),
      O => \up_rdata[28]_i_4_n_0\
    );
\up_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[29]_i_2_n_0\,
      I1 => \up_rdata[29]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[29]_i_5_n_0\,
      O => \up_scratch_reg[31]\(29)
    );
\up_rdata[29]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(29),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[31]_i_7_n_0\,
      O => \up_rdata[29]_i_2_n_0\
    );
\up_rdata[29]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_dest_axi_awaddr(9),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[29]_i_3_n_0\
    );
\up_rdata[29]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => up_raddr(8),
      I1 => up_raddr(7),
      I2 => up_raddr(5),
      I3 => up_raddr(6),
      O => \up_rdata[29]_i_4_n_0\
    );
\up_rdata[29]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(3),
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \up_rdata_reg[29]\(7),
      I3 => \^up_raddr_int_reg[4]_0\(1),
      I4 => \^up_raddr_int_reg[4]_0\(2),
      I5 => up_raddr(0),
      O => \up_rdata[29]_i_5_n_0\
    );
\up_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[2]_i_2_n_0\,
      I1 => \up_rdata_reg[2]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(2),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => src_request_id(2),
      O => \up_scratch_reg[31]\(2)
    );
\up_rdata[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(2),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[31]_i_7_n_0\,
      O => \up_rdata[2]_i_2_n_0\
    );
\up_rdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \up_rdata[2]_i_5_n_0\,
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \up_rdata_reg[2]_0\,
      I3 => up_raddr(0),
      I4 => \up_rdata[2]_i_7_n_0\,
      I5 => \up_rdata[29]_i_4_n_0\,
      O => data10(2)
    );
\up_rdata[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \up_rdata_reg[29]\(0),
      O => \up_rdata[2]_i_5_n_0\
    );
\up_rdata[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010100000001000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \^up_raddr_int_reg[4]_0\(1),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => p_3_in(0),
      I4 => \^up_raddr_int_reg[4]_0\(3),
      I5 => \up_rdata[1]_i_4_0\(0),
      O => \up_rdata[2]_i_7_n_0\
    );
\up_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A80808000000000"
    )
        port map (
      I0 => \up_rdata[31]_i_4_n_0\,
      I1 => \up_rdata[30]_i_2_n_0\,
      I2 => \up_rdata[31]_i_2_n_0\,
      I3 => \up_rdata[31]_i_3_n_0\,
      I4 => \up_rdata_reg[31]\(30),
      I5 => \up_rdata[31]_i_5_n_0\,
      O => \up_scratch_reg[31]\(30)
    );
\up_rdata[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \up_rdata[31]_i_7_n_0\,
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[30]_i_2_n_0\
    );
\up_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FF000040000000"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => \up_rdata[31]_i_3_n_0\,
      I2 => \up_rdata_reg[31]\(31),
      I3 => \up_rdata[31]_i_4_n_0\,
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => data10(31),
      O => \up_scratch_reg[31]\(31)
    );
\up_rdata[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFE0000"
    )
        port map (
      I0 => \up_rdata[31]_i_18_n_0\,
      I1 => up_raddr(8),
      I2 => up_raddr(6),
      I3 => up_raddr(7),
      I4 => \up_rdata[31]_i_19_n_0\,
      I5 => \up_rdata[31]_i_20_n_0\,
      O => \up_rdata[31]_i_10_n_0\
    );
\up_rdata[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(1),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => up_raddr(0),
      I5 => \up_rdata[31]_i_6_0\(2),
      O => \up_rdata[31]_i_11_n_0\
    );
\up_rdata[31]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B5"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(1),
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => up_raddr(8),
      O => \up_rdata[31]_i_12_n_0\
    );
\up_rdata[31]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF6F66666666"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \^up_raddr_int_reg[4]_0\(1),
      I2 => up_raddr(8),
      I3 => up_raddr(0),
      I4 => \^up_raddr_int_reg[4]_0\(0),
      I5 => \^up_raddr_int_reg[4]_0\(3),
      O => \up_rdata[31]_i_13_n_0\
    );
\up_rdata[31]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC37"
    )
        port map (
      I0 => up_raddr(8),
      I1 => up_raddr(0),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \^up_raddr_int_reg[4]_0\(1),
      O => \up_rdata[31]_i_14_n_0\
    );
\up_rdata[31]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000A000B414"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(1),
      I1 => up_raddr(0),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => up_raddr(8),
      I5 => \^up_raddr_int_reg[4]_0\(3),
      O => \up_rdata[31]_i_15_n_0\
    );
\up_rdata[31]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFFEF8A"
    )
        port map (
      I0 => up_raddr(5),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => up_raddr(0),
      I3 => \^up_raddr_int_reg[4]_0\(0),
      I4 => \^up_raddr_int_reg[4]_0\(1),
      O => \up_rdata[31]_i_16_n_0\
    );
\up_rdata[31]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFDFBAEF"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(1),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => up_raddr(8),
      I3 => up_raddr(0),
      I4 => \^up_raddr_int_reg[4]_0\(2),
      O => \up_rdata[31]_i_17_n_0\
    );
\up_rdata[31]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => up_raddr(5),
      I4 => \^up_raddr_int_reg[4]_0\(1),
      O => \up_rdata[31]_i_18_n_0\
    );
\up_rdata[31]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFC"
    )
        port map (
      I0 => up_raddr(5),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => up_raddr(8),
      O => \up_rdata[31]_i_19_n_0\
    );
\up_rdata[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \up_rdata[31]_i_7_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[31]_i_2_n_0\
    );
\up_rdata[31]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(0),
      I1 => up_raddr(0),
      I2 => up_raddr(7),
      I3 => up_raddr(6),
      O => \up_rdata[31]_i_20_n_0\
    );
\up_rdata[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \up_rdata[31]_i_7_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[6]_0\,
      O => \up_rdata[31]_i_3_n_0\
    );
\up_rdata[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \up_rdata[31]_i_7_n_0\,
      I1 => \up_rdata[31]_i_10_n_0\,
      O => \up_rdata[31]_i_4_n_0\
    );
\up_rdata[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D5"
    )
        port map (
      I0 => \up_rdata[31]_i_10_n_0\,
      I1 => \up_rdata[31]_i_7_n_0\,
      I2 => \^up_raddr_int_reg[6]_0\,
      O => \up_rdata[31]_i_5_n_0\
    );
\up_rdata[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \up_rdata[31]_i_11_n_0\,
      I1 => up_raddr(6),
      I2 => up_raddr(5),
      I3 => up_raddr(7),
      I4 => up_raddr(8),
      O => data10(31)
    );
\up_rdata[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \up_rdata[31]_i_12_n_0\,
      I1 => up_raddr(7),
      I2 => \up_rdata[31]_i_13_n_0\,
      I3 => up_raddr(6),
      I4 => up_raddr(5),
      I5 => \up_rdata[31]_i_14_n_0\,
      O => \up_rdata[31]_i_7_n_0\
    );
\up_rdata[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000015100000000"
    )
        port map (
      I0 => up_raddr(7),
      I1 => \^up_raddr_int_reg[4]_0\(2),
      I2 => up_raddr(8),
      I3 => up_raddr(5),
      I4 => up_raddr(6),
      I5 => \up_rdata[31]_i_15_n_0\,
      O => \^up_raddr_int_reg[7]_0\
    );
\up_rdata[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEFE"
    )
        port map (
      I0 => up_raddr(6),
      I1 => up_raddr(7),
      I2 => \^up_raddr_int_reg[4]_0\(3),
      I3 => up_raddr(8),
      I4 => \up_rdata[31]_i_16_n_0\,
      I5 => \up_rdata[31]_i_17_n_0\,
      O => \^up_raddr_int_reg[6]_0\
    );
\up_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \up_rdata[3]_i_2_n_0\,
      I1 => \up_rdata_reg[3]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => data10(3),
      I4 => \up_rdata[31]_i_5_n_0\,
      I5 => src_request_id(3),
      O => \up_scratch_reg[31]\(3)
    );
\up_rdata[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(3),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[31]_i_7_n_0\,
      O => \up_rdata[3]_i_2_n_0\
    );
\up_rdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \up_rdata[3]_i_5_n_0\,
      I1 => \^up_raddr_int_reg[4]_0\(0),
      I2 => \up_rdata_reg[3]_0\,
      I3 => up_raddr(0),
      I4 => \up_rdata[3]_i_7_n_0\,
      I5 => \up_rdata[29]_i_4_n_0\,
      O => data10(3)
    );
\up_rdata[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \up_rdata_reg[29]\(1),
      O => \up_rdata[3]_i_5_n_0\
    );
\up_rdata[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[1]_i_4_0\(1),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \^up_raddr_int_reg[4]_0\(1),
      I4 => \^up_raddr_int_reg[4]_0\(3),
      O => \up_rdata[3]_i_7_n_0\
    );
\up_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[4]_i_2_n_0\,
      I1 => \up_rdata_reg[4]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[4]_i_4_n_0\,
      O => \up_scratch_reg[31]\(4)
    );
\up_rdata[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(4),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[31]_i_7_n_0\,
      O => \up_rdata[4]_i_2_n_0\
    );
\up_rdata[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[1]_i_4_0\(2),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \up_rdata[23]_i_5_n_0\,
      I4 => up_raddr(0),
      I5 => \up_rdata[4]_i_5_n_0\,
      O => \up_rdata[4]_i_4_n_0\
    );
\up_rdata[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380000"
    )
        port map (
      I0 => \up_rdata[23]_i_4_0\(2),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[4]_i_4_0\,
      O => \up_rdata[4]_i_5_n_0\
    );
\up_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[5]_i_2_n_0\,
      I1 => \up_rdata_reg[5]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[5]_i_4_n_0\,
      O => \up_scratch_reg[31]\(5)
    );
\up_rdata[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5111"
    )
        port map (
      I0 => \up_rdata[31]_i_7_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[6]_0\,
      I3 => \up_rdata_reg[31]\(5),
      O => \up_rdata[5]_i_2_n_0\
    );
\up_rdata[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[1]_i_4_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \up_rdata[23]_i_5_n_0\,
      I4 => up_raddr(0),
      I5 => \up_rdata[5]_i_5_n_0\,
      O => \up_rdata[5]_i_4_n_0\
    );
\up_rdata[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380000"
    )
        port map (
      I0 => \up_rdata[23]_i_4_0\(3),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[5]_i_4_0\,
      O => \up_rdata[5]_i_5_n_0\
    );
\up_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[6]_i_2_n_0\,
      I1 => \up_rdata_reg[6]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[6]_i_4_n_0\,
      O => \up_scratch_reg[31]\(6)
    );
\up_rdata[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5313"
    )
        port map (
      I0 => \up_rdata[31]_i_7_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[6]_0\,
      I3 => \up_rdata_reg[31]\(6),
      O => \up_rdata[6]_i_2_n_0\
    );
\up_rdata[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[1]_i_4_0\(4),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \up_rdata[23]_i_5_n_0\,
      I4 => up_raddr(0),
      I5 => \up_rdata[6]_i_5_n_0\,
      O => \up_rdata[6]_i_4_n_0\
    );
\up_rdata[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380000"
    )
        port map (
      I0 => \up_rdata[23]_i_4_0\(4),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[6]_i_4_0\,
      O => \up_rdata[6]_i_5_n_0\
    );
\up_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[7]_i_2_n_0\,
      I1 => \up_rdata[7]_i_3_n_0\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[7]_i_4_n_0\,
      O => \up_scratch_reg[31]\(7)
    );
\up_rdata[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \up_rdata_reg[31]\(7),
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      I3 => \up_rdata[31]_i_7_n_0\,
      O => \up_rdata[7]_i_2_n_0\
    );
\up_rdata[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \up_rdata_reg[7]\,
      I1 => \^up_raddr_int_reg[6]_0\,
      I2 => \^up_raddr_int_reg[7]_0\,
      O => \up_rdata[7]_i_3_n_0\
    );
\up_rdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[1]_i_4_0\(5),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \up_rdata[23]_i_5_n_0\,
      I4 => up_raddr(0),
      I5 => \up_rdata[7]_i_5_n_0\,
      O => \up_rdata[7]_i_4_n_0\
    );
\up_rdata[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380000"
    )
        port map (
      I0 => \up_rdata[23]_i_4_0\(5),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[7]_i_4_0\,
      O => \up_rdata[7]_i_5_n_0\
    );
\up_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[8]_i_2_n_0\,
      I1 => \up_rdata_reg[8]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[8]_i_4_n_0\,
      O => \up_scratch_reg[31]\(8)
    );
\up_rdata[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4202"
    )
        port map (
      I0 => \up_rdata[31]_i_7_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[6]_0\,
      I3 => \up_rdata_reg[31]\(8),
      O => \up_rdata[8]_i_2_n_0\
    );
\up_rdata[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[1]_i_4_0\(6),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \up_rdata[23]_i_5_n_0\,
      I4 => up_raddr(0),
      I5 => \up_rdata[8]_i_5_n_0\,
      O => \up_rdata[8]_i_4_n_0\
    );
\up_rdata[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380000"
    )
        port map (
      I0 => \up_rdata[23]_i_4_0\(6),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[8]_i_4_0\,
      O => \up_rdata[8]_i_5_n_0\
    );
\up_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0AFC0A0C0A0C0"
    )
        port map (
      I0 => \up_rdata[9]_i_2_n_0\,
      I1 => \up_rdata_reg[9]\,
      I2 => \up_rdata[31]_i_4_n_0\,
      I3 => \up_rdata[31]_i_5_n_0\,
      I4 => \up_rdata[29]_i_4_n_0\,
      I5 => \up_rdata[9]_i_4_n_0\,
      O => \up_scratch_reg[31]\(9)
    );
\up_rdata[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5111"
    )
        port map (
      I0 => \up_rdata[31]_i_7_n_0\,
      I1 => \^up_raddr_int_reg[7]_0\,
      I2 => \^up_raddr_int_reg[6]_0\,
      I3 => \up_rdata_reg[31]\(9),
      O => \up_rdata[9]_i_2_n_0\
    );
\up_rdata[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \^up_raddr_int_reg[4]_0\(2),
      I1 => \up_rdata[1]_i_4_0\(7),
      I2 => \^up_raddr_int_reg[4]_0\(0),
      I3 => \up_rdata[23]_i_5_n_0\,
      I4 => up_raddr(0),
      I5 => \up_rdata[9]_i_5_n_0\,
      O => \up_rdata[9]_i_4_n_0\
    );
\up_rdata[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380000"
    )
        port map (
      I0 => \up_rdata[23]_i_4_0\(7),
      I1 => \^up_raddr_int_reg[4]_0\(3),
      I2 => \^up_raddr_int_reg[4]_0\(1),
      I3 => \^up_raddr_int_reg[4]_0\(2),
      I4 => \up_rdata[9]_i_4_0\,
      O => \up_rdata[9]_i_5_n_0\
    );
\up_rdata_d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(0),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(0)
    );
\up_rdata_d[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(10),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(10)
    );
\up_rdata_d[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(11),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(11)
    );
\up_rdata_d[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(12),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(12)
    );
\up_rdata_d[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(13),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[13]_i_1_n_0\
    );
\up_rdata_d[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(14),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(14)
    );
\up_rdata_d[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(15),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(15)
    );
\up_rdata_d[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(16),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(16)
    );
\up_rdata_d[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(17),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[17]_i_1_n_0\
    );
\up_rdata_d[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(18),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(18)
    );
\up_rdata_d[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(19),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(19)
    );
\up_rdata_d[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(1),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[1]_i_1_n_0\
    );
\up_rdata_d[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(20),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[20]_i_1_n_0\
    );
\up_rdata_d[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(21),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(21)
    );
\up_rdata_d[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(22),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[22]_i_1_n_0\
    );
\up_rdata_d[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(23),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(23)
    );
\up_rdata_d[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(24),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[24]_i_1_n_0\
    );
\up_rdata_d[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(25),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(25)
    );
\up_rdata_d[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(26),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(26)
    );
\up_rdata_d[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(27),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(27)
    );
\up_rdata_d[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(28),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(28)
    );
\up_rdata_d[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(29),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[29]_i_1_n_0\
    );
\up_rdata_d[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(2),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(2)
    );
\up_rdata_d[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(30),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(30)
    );
\up_rdata_d[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(31),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(31)
    );
\up_rdata_d[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(3),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(3)
    );
\up_rdata_d[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(4),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[4]_i_1_n_0\
    );
\up_rdata_d[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(5),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(5)
    );
\up_rdata_d[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(6),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[6]_i_1_n_0\
    );
\up_rdata_d[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(7),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(7)
    );
\up_rdata_d[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(8),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => \up_rdata_d[8]_i_1_n_0\
    );
\up_rdata_d[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \up_rdata_d_reg[31]_0\(9),
      I1 => \up_rcount_reg_n_0_[2]\,
      I2 => p_0_in6_in,
      I3 => \up_rcount_reg_n_0_[0]\,
      I4 => \up_rcount_reg_n_0_[1]\,
      I5 => \up_rcount_reg_n_0_[3]\,
      O => up_rdata_s(9)
    );
\up_rdata_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(0),
      Q => up_rdata_d(0),
      R => \^sr\(0)
    );
\up_rdata_d_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(10),
      Q => up_rdata_d(10),
      R => \^sr\(0)
    );
\up_rdata_d_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(11),
      Q => up_rdata_d(11),
      R => \^sr\(0)
    );
\up_rdata_d_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(12),
      Q => up_rdata_d(12),
      R => \^sr\(0)
    );
\up_rdata_d_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[13]_i_1_n_0\,
      Q => up_rdata_d(13),
      R => \^sr\(0)
    );
\up_rdata_d_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(14),
      Q => up_rdata_d(14),
      R => \^sr\(0)
    );
\up_rdata_d_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(15),
      Q => up_rdata_d(15),
      R => \^sr\(0)
    );
\up_rdata_d_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(16),
      Q => up_rdata_d(16),
      R => \^sr\(0)
    );
\up_rdata_d_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[17]_i_1_n_0\,
      Q => up_rdata_d(17),
      R => \^sr\(0)
    );
\up_rdata_d_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(18),
      Q => up_rdata_d(18),
      R => \^sr\(0)
    );
\up_rdata_d_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(19),
      Q => up_rdata_d(19),
      R => \^sr\(0)
    );
\up_rdata_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[1]_i_1_n_0\,
      Q => up_rdata_d(1),
      R => \^sr\(0)
    );
\up_rdata_d_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[20]_i_1_n_0\,
      Q => up_rdata_d(20),
      R => \^sr\(0)
    );
\up_rdata_d_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(21),
      Q => up_rdata_d(21),
      R => \^sr\(0)
    );
\up_rdata_d_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[22]_i_1_n_0\,
      Q => up_rdata_d(22),
      R => \^sr\(0)
    );
\up_rdata_d_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(23),
      Q => up_rdata_d(23),
      R => \^sr\(0)
    );
\up_rdata_d_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[24]_i_1_n_0\,
      Q => up_rdata_d(24),
      R => \^sr\(0)
    );
\up_rdata_d_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(25),
      Q => up_rdata_d(25),
      R => \^sr\(0)
    );
\up_rdata_d_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(26),
      Q => up_rdata_d(26),
      R => \^sr\(0)
    );
\up_rdata_d_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(27),
      Q => up_rdata_d(27),
      R => \^sr\(0)
    );
\up_rdata_d_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(28),
      Q => up_rdata_d(28),
      R => \^sr\(0)
    );
\up_rdata_d_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[29]_i_1_n_0\,
      Q => up_rdata_d(29),
      R => \^sr\(0)
    );
\up_rdata_d_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(2),
      Q => up_rdata_d(2),
      R => \^sr\(0)
    );
\up_rdata_d_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(30),
      Q => up_rdata_d(30),
      R => \^sr\(0)
    );
\up_rdata_d_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(31),
      Q => up_rdata_d(31),
      R => \^sr\(0)
    );
\up_rdata_d_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(3),
      Q => up_rdata_d(3),
      R => \^sr\(0)
    );
\up_rdata_d_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[4]_i_1_n_0\,
      Q => up_rdata_d(4),
      R => \^sr\(0)
    );
\up_rdata_d_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(5),
      Q => up_rdata_d(5),
      R => \^sr\(0)
    );
\up_rdata_d_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[6]_i_1_n_0\,
      Q => up_rdata_d(6),
      R => \^sr\(0)
    );
\up_rdata_d_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(7),
      Q => up_rdata_d(7),
      R => \^sr\(0)
    );
\up_rdata_d_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_rdata_d[8]_i_1_n_0\,
      Q => up_rdata_d(8),
      R => \^sr\(0)
    );
\up_rdata_d_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rdata_s(9),
      Q => up_rdata_d(9),
      R => \^sr\(0)
    );
up_rreq_int_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_aresetn,
      I2 => up_rsel_reg_n_0,
      O => up_rreq_int_i_1_n_0
    );
up_rreq_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rreq_int_i_1_n_0,
      Q => \^up_rreq\,
      R => '0'
    );
up_rsel_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FAA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^up_axi_rvalid_int_reg_0\,
      I2 => s_axi_rready,
      I3 => up_rsel_reg_n_0,
      O => up_rsel_i_1_n_0
    );
up_rsel_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rsel_i_1_n_0,
      Q => up_rsel_reg_n_0,
      R => \^sr\(0)
    );
\up_scratch[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \^up_wreq\,
      I1 => \up_scratch[31]_i_2_n_0\,
      I2 => up_waddr(2),
      I3 => up_waddr(0),
      I4 => \up_scratch[31]_i_3_n_0\,
      I5 => up_waddr(1),
      O => up_wreq_int_reg_2(0)
    );
\up_scratch[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => up_waddr(8),
      I1 => up_waddr(7),
      I2 => up_waddr(5),
      I3 => up_waddr(6),
      O => \up_scratch[31]_i_2_n_0\
    );
\up_scratch[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => up_waddr(4),
      I1 => up_waddr(3),
      O => \up_scratch[31]_i_3_n_0\
    );
up_wack_d_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAA0000AAAA0000"
    )
        port map (
      I0 => up_wack,
      I1 => \up_wcount_reg_n_0_[2]\,
      I2 => \up_wcount_reg_n_0_[1]\,
      I3 => \up_wcount_reg_n_0_[0]\,
      I4 => p_0_in7_in,
      I5 => \up_wcount_reg_n_0_[3]\,
      O => up_wack_s_0
    );
up_wack_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_wack_s_0,
      Q => up_wack_d,
      R => \^sr\(0)
    );
\up_waddr_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(0),
      Q => up_waddr(0),
      R => \^sr\(0)
    );
\up_waddr_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(1),
      Q => up_waddr(1),
      R => \^sr\(0)
    );
\up_waddr_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(2),
      Q => up_waddr(2),
      R => \^sr\(0)
    );
\up_waddr_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(3),
      Q => up_waddr(3),
      R => \^sr\(0)
    );
\up_waddr_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(4),
      Q => up_waddr(4),
      R => \^sr\(0)
    );
\up_waddr_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(5),
      Q => up_waddr(5),
      R => \^sr\(0)
    );
\up_waddr_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(6),
      Q => up_waddr(6),
      R => \^sr\(0)
    );
\up_waddr_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(7),
      Q => up_waddr(7),
      R => \^sr\(0)
    );
\up_waddr_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_awaddr(8),
      Q => up_waddr(8),
      R => \^sr\(0)
    );
\up_wcount[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \up_wcount_reg_n_0_[0]\,
      I1 => p_0_in7_in,
      I2 => up_wack,
      O => \up_wcount[0]_i_1_n_0\
    );
\up_wcount[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => \up_wcount_reg_n_0_[1]\,
      I1 => \up_wcount_reg_n_0_[0]\,
      I2 => p_0_in7_in,
      I3 => up_wack,
      O => \up_wcount[1]_i_1_n_0\
    );
\up_wcount[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007080"
    )
        port map (
      I0 => \up_wcount_reg_n_0_[1]\,
      I1 => \up_wcount_reg_n_0_[0]\,
      I2 => p_0_in7_in,
      I3 => \up_wcount_reg_n_0_[2]\,
      I4 => up_wack,
      O => \up_wcount[2]_i_1_n_0\
    );
\up_wcount[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006A00AA00"
    )
        port map (
      I0 => \up_wcount_reg_n_0_[3]\,
      I1 => \up_wcount_reg_n_0_[1]\,
      I2 => \up_wcount_reg_n_0_[0]\,
      I3 => p_0_in7_in,
      I4 => \up_wcount_reg_n_0_[2]\,
      I5 => up_wack,
      O => \up_wcount[3]_i_1_n_0\
    );
\up_wcount[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => up_wack_s,
      I1 => \^up_wreq\,
      I2 => p_0_in7_in,
      O => \up_wcount[4]_i_1_n_0\
    );
\up_wcount[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF7FFFFFFF"
    )
        port map (
      I0 => \up_wcount_reg_n_0_[3]\,
      I1 => \up_wcount_reg_n_0_[1]\,
      I2 => \up_wcount_reg_n_0_[0]\,
      I3 => p_0_in7_in,
      I4 => \up_wcount_reg_n_0_[2]\,
      I5 => up_wack,
      O => \up_wcount[4]_i_2_n_0\
    );
\up_wcount[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0A0A0A0A0A0A0A0"
    )
        port map (
      I0 => up_wack,
      I1 => \up_wcount_reg_n_0_[2]\,
      I2 => p_0_in7_in,
      I3 => \up_wcount_reg_n_0_[0]\,
      I4 => \up_wcount_reg_n_0_[1]\,
      I5 => \up_wcount_reg_n_0_[3]\,
      O => up_wack_s
    );
\up_wcount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_wcount[4]_i_1_n_0\,
      D => \up_wcount[0]_i_1_n_0\,
      Q => \up_wcount_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\up_wcount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_wcount[4]_i_1_n_0\,
      D => \up_wcount[1]_i_1_n_0\,
      Q => \up_wcount_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\up_wcount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_wcount[4]_i_1_n_0\,
      D => \up_wcount[2]_i_1_n_0\,
      Q => \up_wcount_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\up_wcount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_wcount[4]_i_1_n_0\,
      D => \up_wcount[3]_i_1_n_0\,
      Q => \up_wcount_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\up_wcount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_wcount[4]_i_1_n_0\,
      D => \up_wcount[4]_i_2_n_0\,
      Q => p_0_in7_in,
      R => \^sr\(0)
    );
\up_wdata_int[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => up_wsel_reg_n_0,
      O => p_5_in
    );
\up_wdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\up_wdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(10),
      Q => \^q\(10),
      R => \^sr\(0)
    );
\up_wdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(11),
      Q => \^q\(11),
      R => \^sr\(0)
    );
\up_wdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(12),
      Q => \^q\(12),
      R => \^sr\(0)
    );
\up_wdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(13),
      Q => \^q\(13),
      R => \^sr\(0)
    );
\up_wdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(14),
      Q => \^q\(14),
      R => \^sr\(0)
    );
\up_wdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(15),
      Q => \^q\(15),
      R => \^sr\(0)
    );
\up_wdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(16),
      Q => \^q\(16),
      R => \^sr\(0)
    );
\up_wdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(17),
      Q => \^q\(17),
      R => \^sr\(0)
    );
\up_wdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(18),
      Q => \^q\(18),
      R => \^sr\(0)
    );
\up_wdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(19),
      Q => \^q\(19),
      R => \^sr\(0)
    );
\up_wdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\up_wdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(20),
      Q => \^q\(20),
      R => \^sr\(0)
    );
\up_wdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(21),
      Q => \^q\(21),
      R => \^sr\(0)
    );
\up_wdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(22),
      Q => \^q\(22),
      R => \^sr\(0)
    );
\up_wdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(23),
      Q => \^q\(23),
      R => \^sr\(0)
    );
\up_wdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(24),
      Q => \^q\(24),
      R => \^sr\(0)
    );
\up_wdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(25),
      Q => \^q\(25),
      R => \^sr\(0)
    );
\up_wdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(26),
      Q => \^q\(26),
      R => \^sr\(0)
    );
\up_wdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(27),
      Q => \^q\(27),
      R => \^sr\(0)
    );
\up_wdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(28),
      Q => \^q\(28),
      R => \^sr\(0)
    );
\up_wdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(29),
      Q => \^q\(29),
      R => \^sr\(0)
    );
\up_wdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\up_wdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(30),
      Q => \^q\(30),
      R => \^sr\(0)
    );
\up_wdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(31),
      Q => \^q\(31),
      R => \^sr\(0)
    );
\up_wdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(3),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\up_wdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(4),
      Q => \^q\(4),
      R => \^sr\(0)
    );
\up_wdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(5),
      Q => \^q\(5),
      R => \^sr\(0)
    );
\up_wdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(6),
      Q => \^q\(6),
      R => \^sr\(0)
    );
\up_wdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(7),
      Q => \^q\(7),
      R => \^sr\(0)
    );
\up_wdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(8),
      Q => \^q\(8),
      R => \^sr\(0)
    );
\up_wdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_5_in,
      D => s_axi_wdata(9),
      Q => \^q\(9),
      R => \^sr\(0)
    );
up_wreq_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_aresetn,
      I3 => up_wsel_reg_n_0,
      O => up_wreq_int_i_1_n_0
    );
up_wreq_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_wreq_int_i_1_n_0,
      Q => \^up_wreq\,
      R => '0'
    );
up_wsel_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF8888"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \^s_axi_bvalid\,
      I3 => s_axi_bready,
      I4 => up_wsel_reg_n_0,
      O => up_wsel_i_1_n_0
    );
up_wsel_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_wsel_i_1_n_0,
      Q => up_wsel_reg_n_0,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized3\ is
  port (
    id0 : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dest_response_ready : out STD_LOGIC;
    response_ready_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cdc_sync_fifo_ram_reg[8]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axis_waddr_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    \active__6\ : in STD_LOGIC;
    m_dest_axi_bvalid : in STD_LOGIC;
    \state_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    up_response_ready : in STD_LOGIC;
    \state_reg[0]\ : in STD_LOGIC;
    nx_state15_in : in STD_LOGIC;
    response_valid_reg : in STD_LOGIC;
    transfer_id : in STD_LOGIC_VECTOR ( 1 downto 0 );
    response_dest_ready : in STD_LOGIC;
    \cdc_sync_fifo_ram_reg[8]_1\ : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized3\ : entity is "util_axis_fifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized3\ is
  signal \^d\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cdc_sync_fifo_ram0 : STD_LOGIC;
  signal \^dest_response_ready\ : STD_LOGIC;
  signal \m_axis_raddr_i_1__2_n_0\ : STD_LOGIC;
  signal m_axis_raddr_reg_n_0 : STD_LOGIC;
  signal \s_axis_waddr_i_1__2_n_0\ : STD_LOGIC;
  signal s_axis_waddr_reg_n_0 : STD_LOGIC;
  signal \state[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \id[3]_i_1__0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \m_axis_raddr_i_1__2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \req_response_dest_data_burst_length[6]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of response_dest_ready_i_1 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of response_valid_i_1 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \s_axis_waddr_i_1__2\ : label is "soft_lutpair64";
begin
  D(2 downto 0) <= \^d\(2 downto 0);
  dest_response_ready <= \^dest_response_ready\;
\cdc_sync_fifo_ram[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9000"
    )
        port map (
      I0 => m_axis_raddr_reg_n_0,
      I1 => s_axis_waddr_reg_n_0,
      I2 => m_dest_axi_bvalid,
      I3 => \active__6\,
      O => cdc_sync_fifo_ram0
    );
\cdc_sync_fifo_ram_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[8]_1\(0),
      Q => \cdc_sync_fifo_ram_reg[8]_0\(0),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[8]_1\(1),
      Q => \cdc_sync_fifo_ram_reg[8]_0\(1),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[8]_1\(2),
      Q => \cdc_sync_fifo_ram_reg[8]_0\(2),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[8]_1\(3),
      Q => \cdc_sync_fifo_ram_reg[8]_0\(3),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[8]_1\(4),
      Q => \cdc_sync_fifo_ram_reg[8]_0\(4),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[8]_1\(5),
      Q => \cdc_sync_fifo_ram_reg[8]_0\(5),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[8]_1\(6),
      Q => \cdc_sync_fifo_ram_reg[8]_0\(6),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[8]_1\(7),
      Q => \cdc_sync_fifo_ram_reg[8]_0\(7),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_dest_axi_aclk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[8]_1\(8),
      Q => \cdc_sync_fifo_ram_reg[8]_0\(8),
      R => '0'
    );
\id[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9000"
    )
        port map (
      I0 => s_axis_waddr_reg_n_0,
      I1 => m_axis_raddr_reg_n_0,
      I2 => \active__6\,
      I3 => m_dest_axi_bvalid,
      O => id0
    );
\m_axis_raddr_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_waddr_reg_n_0,
      I1 => response_dest_ready,
      I2 => m_axis_raddr_reg_n_0,
      O => \m_axis_raddr_i_1__2_n_0\
    );
m_axis_raddr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \m_axis_raddr_i_1__2_n_0\,
      Q => m_axis_raddr_reg_n_0,
      R => Q(0)
    );
m_dest_axi_bready_INST_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_waddr_reg_n_0,
      I1 => m_axis_raddr_reg_n_0,
      O => \^dest_response_ready\
    );
\req_response_dest_data_burst_length[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => response_dest_ready,
      I1 => m_axis_raddr_reg_n_0,
      I2 => s_axis_waddr_reg_n_0,
      O => E(0)
    );
response_dest_ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^d\(2),
      I1 => \^d\(0),
      I2 => \^d\(1),
      O => \state_reg[1]\
    );
response_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"12FF1212"
    )
        port map (
      I0 => \^d\(2),
      I1 => \^d\(0),
      I2 => \^d\(1),
      I3 => up_response_ready,
      I4 => response_valid_reg,
      O => response_ready_reg
    );
\s_axis_waddr_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CCC"
    )
        port map (
      I0 => m_axis_raddr_reg_n_0,
      I1 => s_axis_waddr_reg_n_0,
      I2 => m_dest_axi_bvalid,
      I3 => \active__6\,
      O => \s_axis_waddr_i_1__2_n_0\
    );
s_axis_waddr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \s_axis_waddr_i_1__2_n_0\,
      Q => s_axis_waddr_reg_n_0,
      R => s_axis_waddr_reg_0(0)
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \state[0]_i_2__0_n_0\,
      I1 => \state_reg[2]\(1),
      I2 => \state_reg[2]\(2),
      I3 => up_response_ready,
      I4 => \state_reg[2]\(0),
      O => \^d\(0)
    );
\state[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CCCCBB030303"
    )
        port map (
      I0 => up_response_ready,
      I1 => \state_reg[2]\(1),
      I2 => \^dest_response_ready\,
      I3 => \state_reg[0]\,
      I4 => nx_state15_in,
      I5 => \state_reg[2]\(0),
      O => \state[0]_i_2__0_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => \state_reg[2]\(1),
      I2 => \state_reg[2]\(2),
      I3 => up_response_ready,
      I4 => \state_reg[2]\(0),
      O => \^d\(1)
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F34F4F43C34F4F4"
    )
        port map (
      I0 => up_response_ready,
      I1 => \state_reg[2]\(1),
      I2 => \state_reg[2]\(0),
      I3 => \state_reg[0]\,
      I4 => nx_state15_in,
      I5 => \^dest_response_ready\,
      O => \state[1]_i_2_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C000C0000A0F0A"
    )
        port map (
      I0 => \state[2]_i_2_n_0\,
      I1 => nx_state15_in,
      I2 => \state_reg[2]\(1),
      I3 => \state_reg[2]\(2),
      I4 => up_response_ready,
      I5 => \state_reg[2]\(0),
      O => \^d\(2)
    );
\state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090909090900090"
    )
        port map (
      I0 => m_axis_raddr_reg_n_0,
      I1 => s_axis_waddr_reg_n_0,
      I2 => \state_reg[2]\(2),
      I3 => nx_state15_in,
      I4 => transfer_id(0),
      I5 => transfer_id(1),
      O => \state[2]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_burst_memory is
  port (
    m_dest_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_burst_info_write : out STD_LOGIC;
    \dest_id_next_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_mem_data_valid_reg_0 : out STD_LOGIC;
    m_dest_axi_wlast : out STD_LOGIC;
    \src_throttled_request_id_reg[2]\ : out STD_LOGIC;
    \cdc_sync_stage2_reg[2]\ : out STD_LOGIC;
    data8 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \cdc_sync_stage2_reg[3]\ : out STD_LOGIC;
    \dest_id_reg[0]_0\ : out STD_LOGIC;
    \dest_id_reg[1]_0\ : out STD_LOGIC;
    \dest_id_reg[2]_0\ : out STD_LOGIC;
    \dest_id_reg[3]_0\ : out STD_LOGIC;
    \dest_burst_len_data_reg[7]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \src_throttled_request_id_reg[0]\ : out STD_LOGIC;
    \cdc_sync_stage2_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dest_axi_aclk : in STD_LOGIC;
    fifo_wr_clk : in STD_LOGIC;
    fifo_wr_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \src_id_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    dest_valid_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \src_last_beat__0\ : in STD_LOGIC;
    m_dest_axi_wready : in STD_LOGIC;
    \src_throttled_request_id_reg[0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \up_rdata_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_rdata_reg[3]\ : in STD_LOGIC;
    \up_rdata_reg[3]_0\ : in STD_LOGIC;
    m_dest_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dest_burst_valid : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_burst_memory;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_burst_memory is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal b2g0_return017_out : STD_LOGIC;
  signal b2g0_return018_out : STD_LOGIC;
  signal b2g1_return07_out : STD_LOGIC;
  signal b2g1_return09_out : STD_LOGIC;
  signal dest_beat : STD_LOGIC;
  signal dest_beat_counter0 : STD_LOGIC;
  signal dest_beat_counter_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal dest_burst_len_data : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \^dest_burst_len_data_reg[7]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal dest_burst_ready : STD_LOGIC;
  signal \dest_id_next[0]_i_1_n_0\ : STD_LOGIC;
  signal \^dest_id_next_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dest_id_reduced_msb : STD_LOGIC;
  signal dest_id_reduced_msb_next_i_1_n_0 : STD_LOGIC;
  signal dest_id_reduced_next : STD_LOGIC_VECTOR ( 2 to 2 );
  signal dest_last : STD_LOGIC;
  signal dest_mem_data_last_i_1_n_0 : STD_LOGIC;
  signal dest_mem_data_last_i_3_n_0 : STD_LOGIC;
  signal dest_mem_data_valid_i_1_n_0 : STD_LOGIC;
  signal \^dest_mem_data_valid_reg_0\ : STD_LOGIC;
  signal dest_valid : STD_LOGIC;
  signal dest_valid_i_1_n_0 : STD_LOGIC;
  signal id0 : STD_LOGIC;
  signal \^m_dest_axi_wlast\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal p_1_in8_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal \src_id[0]_i_1_n_0\ : STD_LOGIC;
  signal src_id_reduced : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal src_id_reduced_msb_i_1_n_0 : STD_LOGIC;
  signal \src_id_reg_n_0_[2]\ : STD_LOGIC;
  signal NLW_burst_len_mem_reg_0_7_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of burst_len_mem_reg_0_7_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of burst_len_mem_reg_0_7_0_5 : label is 48;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of burst_len_mem_reg_0_7_0_5 : label is "i_transfer/i_request_arb/i_store_and_forward/burst_len_mem";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of burst_len_mem_reg_0_7_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of burst_len_mem_reg_0_7_0_5 : label is 7;
  attribute ram_offset : integer;
  attribute ram_offset of burst_len_mem_reg_0_7_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of burst_len_mem_reg_0_7_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of burst_len_mem_reg_0_7_0_5 : label is 5;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dest_beat_counter[1]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \dest_beat_counter[2]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \dest_beat_counter[3]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \dest_beat_counter[4]_i_2\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \dest_id_next[1]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \dest_id_next[2]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \dest_id_next[3]_i_2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of dest_id_reduced_msb_next_i_1 : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of dest_mem_data_valid_i_1 : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of dest_valid_i_1 : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \src_beat_counter[1]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \src_beat_counter[2]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \src_beat_counter[3]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \src_beat_counter[4]_i_2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \src_id[0]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \src_id[1]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \src_id[2]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \src_id[3]_i_2\ : label is "soft_lutpair81";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \dest_burst_len_data_reg[7]_0\(5 downto 0) <= \^dest_burst_len_data_reg[7]_0\(5 downto 0);
  \dest_id_next_reg[3]_0\(3 downto 0) <= \^dest_id_next_reg[3]_0\(3 downto 0);
  dest_mem_data_valid_reg_0 <= \^dest_mem_data_valid_reg_0\;
  m_dest_axi_wlast <= \^m_dest_axi_wlast\;
burst_len_mem_reg_0_7_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2) => dest_id_reduced_next(2),
      ADDRA(1 downto 0) => \^dest_id_next_reg[3]_0\(1 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2) => dest_id_reduced_next(2),
      ADDRB(1 downto 0) => \^dest_id_next_reg[3]_0\(1 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2) => dest_id_reduced_next(2),
      ADDRC(1 downto 0) => \^dest_id_next_reg[3]_0\(1 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => src_id_reduced(2 downto 0),
      DIA(1 downto 0) => p_0_in_0(1 downto 0),
      DIB(1 downto 0) => p_0_in_0(3 downto 2),
      DIC(1) => '0',
      DIC(0) => p_0_in_0(4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dest_burst_len_data(3 downto 2),
      DOB(1 downto 0) => dest_burst_len_data(5 downto 4),
      DOC(1 downto 0) => dest_burst_len_data(7 downto 6),
      DOD(1 downto 0) => NLW_burst_len_mem_reg_0_7_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => fifo_wr_clk,
      WE => \src_last_beat__0\
    );
\dest_beat_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dest_beat_counter_reg(0),
      O => \p_0_in__1\(0)
    );
\dest_beat_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dest_beat_counter_reg(0),
      I1 => dest_beat_counter_reg(1),
      O => \p_0_in__1\(1)
    );
\dest_beat_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => dest_beat_counter_reg(0),
      I1 => dest_beat_counter_reg(1),
      I2 => dest_beat_counter_reg(2),
      O => \p_0_in__1\(2)
    );
\dest_beat_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => dest_beat_counter_reg(1),
      I1 => dest_beat_counter_reg(0),
      I2 => dest_beat_counter_reg(2),
      I3 => dest_beat_counter_reg(3),
      O => \p_0_in__1\(3)
    );
\dest_beat_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8A00"
    )
        port map (
      I0 => dest_last,
      I1 => m_dest_axi_wready,
      I2 => \^dest_mem_data_valid_reg_0\,
      I3 => dest_valid,
      I4 => dest_valid_reg_0(0),
      O => dest_beat_counter0
    );
\dest_beat_counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => dest_beat_counter_reg(2),
      I1 => dest_beat_counter_reg(0),
      I2 => dest_beat_counter_reg(1),
      I3 => dest_beat_counter_reg(3),
      I4 => dest_beat_counter_reg(4),
      O => \p_0_in__1\(4)
    );
\dest_beat_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => dest_beat,
      D => \p_0_in__1\(0),
      Q => dest_beat_counter_reg(0),
      R => dest_beat_counter0
    );
\dest_beat_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => dest_beat,
      D => \p_0_in__1\(1),
      Q => dest_beat_counter_reg(1),
      R => dest_beat_counter0
    );
\dest_beat_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => dest_beat,
      D => \p_0_in__1\(2),
      Q => dest_beat_counter_reg(2),
      R => dest_beat_counter0
    );
\dest_beat_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => dest_beat,
      D => \p_0_in__1\(3),
      Q => dest_beat_counter_reg(3),
      R => dest_beat_counter0
    );
\dest_beat_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => dest_beat,
      D => \p_0_in__1\(4),
      Q => dest_beat_counter_reg(4),
      R => dest_beat_counter0
    );
dest_burst_info_write_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => id0,
      Q => dest_burst_info_write,
      R => '0'
    );
\dest_burst_len_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => dest_burst_len_data(2),
      Q => \^dest_burst_len_data_reg[7]_0\(0),
      R => '0'
    );
\dest_burst_len_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => dest_burst_len_data(3),
      Q => \^dest_burst_len_data_reg[7]_0\(1),
      R => '0'
    );
\dest_burst_len_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => dest_burst_len_data(4),
      Q => \^dest_burst_len_data_reg[7]_0\(2),
      R => '0'
    );
\dest_burst_len_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => dest_burst_len_data(5),
      Q => \^dest_burst_len_data_reg[7]_0\(3),
      R => '0'
    );
\dest_burst_len_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => dest_burst_len_data(6),
      Q => \^dest_burst_len_data_reg[7]_0\(4),
      R => '0'
    );
\dest_burst_len_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => dest_burst_len_data(7),
      Q => \^dest_burst_len_data_reg[7]_0\(5),
      R => '0'
    );
\dest_id[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => \^dest_mem_data_valid_reg_0\,
      I1 => m_dest_axi_wready,
      I2 => dest_last,
      I3 => dest_valid,
      O => dest_burst_ready
    );
\dest_id_next[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^dest_id_next_reg[3]_0\(1),
      I1 => \^dest_id_next_reg[3]_0\(3),
      I2 => \^dest_id_next_reg[3]_0\(2),
      O => \dest_id_next[0]_i_1_n_0\
    );
\dest_id_next[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"99F0"
    )
        port map (
      I0 => \^dest_id_next_reg[3]_0\(2),
      I1 => \^dest_id_next_reg[3]_0\(3),
      I2 => \^dest_id_next_reg[3]_0\(1),
      I3 => \^dest_id_next_reg[3]_0\(0),
      O => b2g1_return07_out
    );
\dest_id_next[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1F0"
    )
        port map (
      I0 => \^dest_id_next_reg[3]_0\(3),
      I1 => \^dest_id_next_reg[3]_0\(0),
      I2 => \^dest_id_next_reg[3]_0\(2),
      I3 => \^dest_id_next_reg[3]_0\(1),
      O => b2g1_return09_out
    );
\dest_id_next[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FF0000"
    )
        port map (
      I0 => \^dest_mem_data_valid_reg_0\,
      I1 => m_dest_axi_wready,
      I2 => dest_last,
      I3 => dest_valid,
      I4 => dest_burst_valid,
      O => id0
    );
\dest_id_next[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE04"
    )
        port map (
      I0 => \^dest_id_next_reg[3]_0\(1),
      I1 => \^dest_id_next_reg[3]_0\(2),
      I2 => \^dest_id_next_reg[3]_0\(0),
      I3 => \^dest_id_next_reg[3]_0\(3),
      O => p_1_in8_in
    );
\dest_id_next_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => \dest_id_next[0]_i_1_n_0\,
      Q => \^dest_id_next_reg[3]_0\(0),
      R => dest_valid_reg_0(0)
    );
\dest_id_next_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => b2g1_return07_out,
      Q => \^dest_id_next_reg[3]_0\(1),
      R => dest_valid_reg_0(0)
    );
\dest_id_next_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => b2g1_return09_out,
      Q => \^dest_id_next_reg[3]_0\(2),
      R => dest_valid_reg_0(0)
    );
\dest_id_next_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => p_1_in8_in,
      Q => \^dest_id_next_reg[3]_0\(3),
      R => dest_valid_reg_0(0)
    );
dest_id_reduced_msb_next_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3ACA"
    )
        port map (
      I0 => \^dest_id_next_reg[3]_0\(1),
      I1 => \^dest_id_next_reg[3]_0\(2),
      I2 => \^dest_id_next_reg[3]_0\(0),
      I3 => \^dest_id_next_reg[3]_0\(3),
      O => dest_id_reduced_msb_next_i_1_n_0
    );
dest_id_reduced_msb_next_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => id0,
      D => dest_id_reduced_msb_next_i_1_n_0,
      Q => dest_id_reduced_next(2),
      R => dest_valid_reg_0(0)
    );
dest_id_reduced_msb_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => dest_burst_ready,
      D => dest_id_reduced_next(2),
      Q => dest_id_reduced_msb,
      R => '0'
    );
\dest_id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => dest_burst_ready,
      D => \^dest_id_next_reg[3]_0\(0),
      Q => \^q\(0),
      R => '0'
    );
\dest_id_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => dest_burst_ready,
      D => \^dest_id_next_reg[3]_0\(1),
      Q => \^q\(1),
      R => '0'
    );
\dest_id_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => dest_burst_ready,
      D => \^dest_id_next_reg[3]_0\(2),
      Q => \^q\(2),
      R => '0'
    );
\dest_id_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => dest_burst_ready,
      D => \^dest_id_next_reg[3]_0\(3),
      Q => \^q\(3),
      R => '0'
    );
dest_mem_data_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CACC0A0A"
    )
        port map (
      I0 => \^m_dest_axi_wlast\,
      I1 => dest_last,
      I2 => m_dest_axi_wready,
      I3 => \^dest_mem_data_valid_reg_0\,
      I4 => dest_valid,
      I5 => dest_valid_reg_0(0),
      O => dest_mem_data_last_i_1_n_0
    );
dest_mem_data_last_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000090"
    )
        port map (
      I0 => dest_beat_counter_reg(3),
      I1 => \^dest_burst_len_data_reg[7]_0\(3),
      I2 => dest_mem_data_last_i_3_n_0,
      I3 => \^dest_burst_len_data_reg[7]_0\(4),
      I4 => dest_beat_counter_reg(4),
      O => dest_last
    );
dest_mem_data_last_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => dest_beat_counter_reg(0),
      I1 => \^dest_burst_len_data_reg[7]_0\(0),
      I2 => \^dest_burst_len_data_reg[7]_0\(2),
      I3 => dest_beat_counter_reg(2),
      I4 => \^dest_burst_len_data_reg[7]_0\(1),
      I5 => dest_beat_counter_reg(1),
      O => dest_mem_data_last_i_3_n_0
    );
dest_mem_data_last_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => dest_mem_data_last_i_1_n_0,
      Q => \^m_dest_axi_wlast\,
      R => '0'
    );
dest_mem_data_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => dest_valid,
      I1 => m_dest_axi_wready,
      I2 => \^dest_mem_data_valid_reg_0\,
      O => dest_mem_data_valid_i_1_n_0
    );
dest_mem_data_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => dest_mem_data_valid_i_1_n_0,
      Q => \^dest_mem_data_valid_reg_0\,
      R => dest_valid_reg_0(0)
    );
dest_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7500"
    )
        port map (
      I0 => dest_last,
      I1 => m_dest_axi_wready,
      I2 => \^dest_mem_data_valid_reg_0\,
      I3 => dest_valid,
      I4 => dest_burst_valid,
      O => dest_valid_i_1_n_0
    );
dest_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => dest_valid_i_1_n_0,
      Q => dest_valid,
      R => dest_valid_reg_0(0)
    );
i_dest_sync_id: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized1__xdcDup__1\
     port map (
      \cdc_sync_stage1_reg[2]_0\ => \src_id_reg_n_0_[2]\,
      \cdc_sync_stage2_reg[1]_0\(1 downto 0) => \cdc_sync_stage2_reg[1]\(1 downto 0),
      \cdc_sync_stage2_reg[2]_0\ => \cdc_sync_stage2_reg[2]\,
      \cdc_sync_stage2_reg[3]_0\ => \cdc_sync_stage2_reg[3]\,
      data8(1 downto 0) => data8(1 downto 0),
      m_dest_axi_aclk => m_dest_axi_aclk,
      m_dest_axi_awaddr(1 downto 0) => m_dest_axi_awaddr(1 downto 0),
      p_1_in => p_1_in,
      src_id_reduced(1 downto 0) => src_id_reduced(1 downto 0),
      \up_rdata_reg[2]\(0) => \up_rdata_reg[2]\(0),
      \up_rdata_reg[3]\ => \up_rdata_reg[3]\,
      \up_rdata_reg[3]_0\ => \up_rdata_reg[3]_0\
    );
i_mem: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad_mem_asym
     port map (
      ADDRARDADDR(7) => dest_id_reduced_msb,
      ADDRARDADDR(6 downto 5) => \^q\(1 downto 0),
      ADDRARDADDR(4 downto 0) => dest_beat_counter_reg(4 downto 0),
      ADDRBWRADDR(7 downto 5) => src_id_reduced(2 downto 0),
      ADDRBWRADDR(4 downto 0) => p_0_in_0(4 downto 0),
      E(0) => dest_beat,
      dest_valid => dest_valid,
      fifo_wr_clk => fifo_wr_clk,
      fifo_wr_din(31 downto 0) => fifo_wr_din(31 downto 0),
      m_dest_axi_aclk => m_dest_axi_aclk,
      m_dest_axi_wdata(31 downto 0) => m_dest_axi_wdata(31 downto 0),
      m_dest_axi_wready => m_dest_axi_wready,
      m_ram_reg_0(0) => E(0),
      m_ram_reg_1 => \^dest_mem_data_valid_reg_0\
    );
i_src_sync_id: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized1__xdcDup__2\
     port map (
      Q(3 downto 0) => \^q\(3 downto 0),
      fifo_wr_clk => fifo_wr_clk,
      \src_throttled_request_id_reg[0]\ => \src_throttled_request_id_reg[0]\,
      \src_throttled_request_id_reg[0]_0\(3 downto 0) => \src_throttled_request_id_reg[0]_0\(3 downto 0),
      \src_throttled_request_id_reg[2]\ => \src_throttled_request_id_reg[2]\
    );
\src_beat_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in_0(0),
      O => p_0_in(0)
    );
\src_beat_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(1),
      O => p_0_in(1)
    );
\src_beat_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(2),
      O => p_0_in(2)
    );
\src_beat_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(3),
      O => p_0_in(3)
    );
\src_beat_counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(3),
      I4 => p_0_in_0(4),
      O => p_0_in(4)
    );
\src_beat_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => E(0),
      D => p_0_in(0),
      Q => p_0_in_0(0),
      R => SR(0)
    );
\src_beat_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => E(0),
      D => p_0_in(1),
      Q => p_0_in_0(1),
      R => SR(0)
    );
\src_beat_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => E(0),
      D => p_0_in(2),
      Q => p_0_in_0(2),
      R => SR(0)
    );
\src_beat_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => E(0),
      D => p_0_in(3),
      Q => p_0_in_0(3),
      R => SR(0)
    );
\src_beat_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => E(0),
      D => p_0_in(4),
      Q => p_0_in_0(4),
      R => SR(0)
    );
\src_id[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => src_id_reduced(1),
      I1 => p_1_in,
      I2 => \src_id_reg_n_0_[2]\,
      O => \src_id[0]_i_1_n_0\
    );
\src_id[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"99F0"
    )
        port map (
      I0 => \src_id_reg_n_0_[2]\,
      I1 => p_1_in,
      I2 => src_id_reduced(1),
      I3 => src_id_reduced(0),
      O => b2g0_return017_out
    );
\src_id[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1F0"
    )
        port map (
      I0 => p_1_in,
      I1 => src_id_reduced(0),
      I2 => \src_id_reg_n_0_[2]\,
      I3 => src_id_reduced(1),
      O => b2g0_return018_out
    );
\src_id[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE04"
    )
        port map (
      I0 => src_id_reduced(1),
      I1 => \src_id_reg_n_0_[2]\,
      I2 => src_id_reduced(0),
      I3 => p_1_in,
      O => p_3_in
    );
src_id_reduced_msb_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55D1AAE2"
    )
        port map (
      I0 => \src_id_reg_n_0_[2]\,
      I1 => \src_last_beat__0\,
      I2 => src_id_reduced(1),
      I3 => src_id_reduced(0),
      I4 => p_1_in,
      O => src_id_reduced_msb_i_1_n_0
    );
src_id_reduced_msb_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => src_id_reduced_msb_i_1_n_0,
      Q => src_id_reduced(2),
      R => \src_id_reg[0]_0\(0)
    );
\src_id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \src_last_beat__0\,
      D => \src_id[0]_i_1_n_0\,
      Q => src_id_reduced(0),
      R => \src_id_reg[0]_0\(0)
    );
\src_id_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \src_last_beat__0\,
      D => b2g0_return017_out,
      Q => src_id_reduced(1),
      R => \src_id_reg[0]_0\(0)
    );
\src_id_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \src_last_beat__0\,
      D => b2g0_return018_out,
      Q => \src_id_reg_n_0_[2]\,
      R => \src_id_reg[0]_0\(0)
    );
\src_id_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \src_last_beat__0\,
      D => p_3_in,
      Q => p_1_in,
      R => \src_id_reg[0]_0\(0)
    );
\up_rdata[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^q\(0),
      I1 => \up_rdata_reg[3]\,
      I2 => \up_rdata_reg[3]_0\,
      I3 => m_dest_axi_awaddr(2),
      O => \dest_id_reg[0]_0\
    );
\up_rdata[17]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^q\(1),
      I1 => \up_rdata_reg[3]\,
      I2 => \up_rdata_reg[3]_0\,
      I3 => m_dest_axi_awaddr(3),
      O => \dest_id_reg[1]_0\
    );
\up_rdata[18]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^q\(2),
      I1 => \up_rdata_reg[3]\,
      I2 => \up_rdata_reg[3]_0\,
      I3 => m_dest_axi_awaddr(4),
      O => \dest_id_reg[2]_0\
    );
\up_rdata[19]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => \^q\(3),
      I1 => \up_rdata_reg[3]\,
      I2 => \up_rdata_reg[3]_0\,
      I3 => m_dest_axi_awaddr(5),
      O => \dest_id_reg[3]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_reset_manager is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \reset_gen[1].reset_sync_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    do_enable_reg_0 : out STD_LOGIC;
    src_enable : out STD_LOGIC;
    needs_reset_reg_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \reset_gen[2].reset_sync_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    do_enable_reg_1 : out STD_LOGIC;
    \cdc_sync_stage2_reg[0]\ : out STD_LOGIC;
    m_dest_axi_aclk : in STD_LOGIC;
    fifo_wr_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \FSM_onehot_state[5]_i_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ctrl_pause : in STD_LOGIC;
    ctrl_enable : in STD_LOGIC;
    \up_rdata_reg[5]\ : in STD_LOGIC;
    \up_rdata_reg[5]_0\ : in STD_LOGIC;
    m_dest_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_reset_manager;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_reset_manager is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal do_enable0 : STD_LOGIC;
  signal \^do_enable_reg_0\ : STD_LOGIC;
  signal do_reset : STD_LOGIC;
  signal do_reset_0 : STD_LOGIC;
  signal needs_reset : STD_LOGIC;
  signal needs_reset_i_1_n_0 : STD_LOGIC;
  signal \^needs_reset_reg_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \reset_gen[0].reset_async_reg_n_0_[0]\ : STD_LOGIC;
  signal \reset_gen[0].reset_async_reg_n_0_[1]\ : STD_LOGIC;
  signal \reset_gen[0].reset_async_reg_n_0_[2]\ : STD_LOGIC;
  signal \reset_gen[0].reset_async_reg_n_0_[3]\ : STD_LOGIC;
  signal \reset_gen[0].reset_sync_in\ : STD_LOGIC;
  signal \reset_gen[0].reset_sync_reg_n_0_[1]\ : STD_LOGIC;
  signal \reset_gen[1].reset_async_reg_n_0_[0]\ : STD_LOGIC;
  signal \reset_gen[1].reset_async_reg_n_0_[1]\ : STD_LOGIC;
  signal \reset_gen[1].reset_async_reg_n_0_[2]\ : STD_LOGIC;
  signal \reset_gen[1].reset_async_reg_n_0_[3]\ : STD_LOGIC;
  signal \reset_gen[1].reset_sync_in\ : STD_LOGIC;
  signal \^reset_gen[1].reset_sync_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \reset_gen[1].reset_sync_reg_n_0_[1]\ : STD_LOGIC;
  signal \reset_gen[2].reset_async_reg_n_0_[1]\ : STD_LOGIC;
  signal \reset_gen[2].reset_async_reg_n_0_[2]\ : STD_LOGIC;
  signal \reset_gen[2].reset_async_reg_n_0_[3]\ : STD_LOGIC;
  signal \reset_gen[2].reset_sync_in\ : STD_LOGIC;
  signal \^reset_gen[2].reset_sync_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \reset_gen[2].reset_sync_reg_n_0_[1]\ : STD_LOGIC;
  signal reset_sync_chain_0 : STD_LOGIC;
  signal \^src_enable\ : STD_LOGIC;
  signal state : STD_LOGIC;
  signal \state[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \^state_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_5\ : label is "soft_lutpair87";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001";
  attribute SOFT_HLUTNM of needs_reset_i_1 : label is "soft_lutpair87";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \reset_gen[0].reset_async_reg[0]\ : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of \reset_gen[0].reset_async_reg[0]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[0].reset_async_reg[1]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[0].reset_async_reg[1]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[0].reset_async_reg[2]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[0].reset_async_reg[2]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[0].reset_async_reg[3]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[0].reset_async_reg[3]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[0].reset_sync_reg[0]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[0].reset_sync_reg[0]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[0].reset_sync_reg[1]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[0].reset_sync_reg[1]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[1].reset_async_reg[0]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[1].reset_async_reg[0]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[1].reset_async_reg[1]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[1].reset_async_reg[1]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[1].reset_async_reg[2]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[1].reset_async_reg[2]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[1].reset_async_reg[3]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[1].reset_async_reg[3]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[1].reset_sync_reg[0]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[1].reset_sync_reg[0]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[1].reset_sync_reg[1]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[1].reset_sync_reg[1]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[2].reset_async_reg[0]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[2].reset_async_reg[0]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[2].reset_async_reg[1]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[2].reset_async_reg[1]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[2].reset_async_reg[2]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[2].reset_async_reg[2]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[2].reset_async_reg[3]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[2].reset_async_reg[3]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[2].reset_sync_reg[0]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[2].reset_sync_reg[0]\ : label is "no";
  attribute ASYNC_REG of \reset_gen[2].reset_sync_reg[1]\ : label is std.standard.true;
  attribute SHREG_EXTRACT of \reset_gen[2].reset_sync_reg[1]\ : label is "no";
  attribute SOFT_HLUTNM of \state[0]_i_1__1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \state[1]_i_1__0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \state[2]_i_1__0\ : label is "soft_lutpair88";
begin
  Q(0) <= \^q\(0);
  do_enable_reg_0 <= \^do_enable_reg_0\;
  needs_reset_reg_0(1 downto 0) <= \^needs_reset_reg_0\(1 downto 0);
  \reset_gen[1].reset_sync_reg[0]_0\(0) <= \^reset_gen[1].reset_sync_reg[0]_0\(0);
  \reset_gen[2].reset_sync_reg[0]_0\(0) <= \^reset_gen[2].reset_sync_reg[0]_0\(0);
  src_enable <= \^src_enable\;
  \state_reg[1]_0\(1 downto 0) <= \^state_reg[1]_0\(1 downto 0);
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^needs_reset_reg_0\(1),
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => needs_reset,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^needs_reset_reg_0\(1),
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => needs_reset,
      I1 => \^reset_gen[2].reset_sync_reg[0]_0\(0),
      I2 => ctrl_enable,
      O => \FSM_onehot_state[5]_i_5_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => do_reset_0,
      S => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => do_reset_0,
      Q => needs_reset,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \FSM_onehot_state_reg_n_0_[3]\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => SR(0)
    );
do_enable_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      O => do_enable0
    );
do_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => do_enable0,
      Q => \^do_enable_reg_0\,
      R => '0'
    );
do_reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => do_reset_0,
      Q => do_reset,
      R => '0'
    );
i_sync_control_src: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__7\
     port map (
      \cdc_sync_stage1_reg[0]_0\ => \^do_enable_reg_0\,
      fifo_wr_clk => fifo_wr_clk,
      src_enable => \^src_enable\
    );
i_sync_status_src: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0\
     port map (
      E(0) => state,
      \FSM_onehot_state[5]_i_2_0\(0) => \FSM_onehot_state[5]_i_2\(0),
      \FSM_onehot_state[5]_i_2_1\ => \^do_enable_reg_0\,
      Q(4) => \FSM_onehot_state_reg_n_0_[5]\,
      Q(3) => \FSM_onehot_state_reg_n_0_[4]\,
      Q(2) => \FSM_onehot_state_reg_n_0_[3]\,
      Q(1) => \FSM_onehot_state_reg_n_0_[2]\,
      Q(0) => do_reset_0,
      \cdc_sync_stage2_reg[0]_0\ => \cdc_sync_stage2_reg[0]\,
      ctrl_pause => ctrl_pause,
      m_dest_axi_awaddr(0) => m_dest_axi_awaddr(0),
      s_axi_aclk => s_axi_aclk,
      src_enable => \^src_enable\,
      \state_reg[0]\ => \^needs_reset_reg_0\(1),
      \state_reg[0]_0\ => \FSM_onehot_state[5]_i_5_n_0\,
      \up_rdata_reg[5]\ => \up_rdata_reg[5]\,
      \up_rdata_reg[5]_0\ => \up_rdata_reg[5]_0\
    );
needs_reset_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => ctrl_enable,
      I1 => \^needs_reset_reg_0\(1),
      I2 => needs_reset,
      O => needs_reset_i_1_n_0
    );
needs_reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => needs_reset_i_1_n_0,
      Q => \^needs_reset_reg_0\(1),
      R => '0'
    );
\reset_gen[0].reset_async_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \reset_gen[0].reset_async_reg_n_0_[1]\,
      PRE => do_reset,
      Q => \reset_gen[0].reset_async_reg_n_0_[0]\
    );
\reset_gen[0].reset_async_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \reset_gen[0].reset_async_reg_n_0_[2]\,
      PRE => do_reset,
      Q => \reset_gen[0].reset_async_reg_n_0_[1]\
    );
\reset_gen[0].reset_async_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \reset_gen[0].reset_async_reg_n_0_[3]\,
      PRE => do_reset,
      Q => \reset_gen[0].reset_async_reg_n_0_[2]\
    );
\reset_gen[0].reset_async_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => '0',
      PRE => do_reset,
      Q => \reset_gen[0].reset_async_reg_n_0_[3]\
    );
\reset_gen[0].reset_sync_in_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \reset_gen[0].reset_async_reg_n_0_[0]\,
      PRE => reset_sync_chain_0,
      Q => \reset_gen[0].reset_sync_in\
    );
\reset_gen[0].reset_sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \reset_gen[0].reset_sync_reg_n_0_[1]\,
      Q => \^q\(0),
      R => '0'
    );
\reset_gen[0].reset_sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => \reset_gen[0].reset_sync_in\,
      Q => \reset_gen[0].reset_sync_reg_n_0_[1]\,
      R => '0'
    );
\reset_gen[1].reset_async_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \reset_gen[1].reset_async_reg_n_0_[1]\,
      PRE => do_reset,
      Q => \reset_gen[1].reset_async_reg_n_0_[0]\
    );
\reset_gen[1].reset_async_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \reset_gen[1].reset_async_reg_n_0_[2]\,
      PRE => do_reset,
      Q => \reset_gen[1].reset_async_reg_n_0_[1]\
    );
\reset_gen[1].reset_async_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \reset_gen[1].reset_async_reg_n_0_[3]\,
      PRE => do_reset,
      Q => \reset_gen[1].reset_async_reg_n_0_[2]\
    );
\reset_gen[1].reset_async_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \reset_gen[0].reset_async_reg_n_0_[0]\,
      PRE => do_reset,
      Q => \reset_gen[1].reset_async_reg_n_0_[3]\
    );
\reset_gen[1].reset_sync_in_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \reset_gen[1].reset_async_reg_n_0_[0]\,
      PRE => \^q\(0),
      Q => \reset_gen[1].reset_sync_in\
    );
\reset_gen[1].reset_sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \reset_gen[1].reset_sync_reg_n_0_[1]\,
      Q => \^reset_gen[1].reset_sync_reg[0]_0\(0),
      R => '0'
    );
\reset_gen[1].reset_sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => \reset_gen[1].reset_sync_in\,
      Q => \reset_gen[1].reset_sync_reg_n_0_[1]\,
      R => '0'
    );
\reset_gen[2].reset_async_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \reset_gen[2].reset_async_reg_n_0_[1]\,
      PRE => do_reset,
      Q => reset_sync_chain_0
    );
\reset_gen[2].reset_async_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \reset_gen[2].reset_async_reg_n_0_[2]\,
      PRE => do_reset,
      Q => \reset_gen[2].reset_async_reg_n_0_[1]\
    );
\reset_gen[2].reset_async_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \reset_gen[2].reset_async_reg_n_0_[3]\,
      PRE => do_reset,
      Q => \reset_gen[2].reset_async_reg_n_0_[2]\
    );
\reset_gen[2].reset_async_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \reset_gen[1].reset_async_reg_n_0_[0]\,
      PRE => do_reset,
      Q => \reset_gen[2].reset_async_reg_n_0_[3]\
    );
\reset_gen[2].reset_sync_in_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => reset_sync_chain_0,
      PRE => \^reset_gen[1].reset_sync_reg[0]_0\(0),
      Q => \reset_gen[2].reset_sync_in\
    );
\reset_gen[2].reset_sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \reset_gen[2].reset_sync_reg_n_0_[1]\,
      Q => \^reset_gen[2].reset_sync_reg[0]_0\(0),
      R => '0'
    );
\reset_gen[2].reset_sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \reset_gen[2].reset_sync_in\,
      Q => \reset_gen[2].reset_sync_reg_n_0_[1]\,
      R => '0'
    );
\state[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \^state_reg[1]_0\(0),
      I1 => \^needs_reset_reg_0\(1),
      I2 => \^state_reg[1]_0\(1),
      O => \state[0]_i_1__1_n_0\
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => \^state_reg[1]_0\(0),
      I1 => \^state_reg[1]_0\(1),
      I2 => \^needs_reset_reg_0\(1),
      O => \state[1]_i_1__0_n_0\
    );
\state[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^state_reg[1]_0\(1),
      I1 => \^state_reg[1]_0\(0),
      I2 => \^needs_reset_reg_0\(0),
      O => \state[2]_i_1__0_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \state[0]_i_1__1_n_0\,
      Q => \^state_reg[1]_0\(0),
      R => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \state[1]_i_1__0_n_0\,
      Q => \^state_reg[1]_0\(1),
      R => SR(0)
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => state,
      D => \state[2]_i_1__0_n_0\,
      Q => \^needs_reset_reg_0\(0),
      R => SR(0)
    );
\up_rdata[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \^do_enable_reg_0\,
      I1 => \up_rdata_reg[5]\,
      I2 => \up_rdata_reg[5]_0\,
      I3 => m_dest_axi_awaddr(1),
      O => do_enable_reg_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_response_manager is
  port (
    req_eot_reg_0 : out STD_LOGIC;
    response_valid_reg_0 : out STD_LOGIC;
    up_eot : out STD_LOGIC;
    \state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    up_bl_partial : out STD_LOGIC;
    p_7_in : out STD_LOGIC;
    id0 : out STD_LOGIC;
    dest_response_ready : out STD_LOGIC;
    \state_reg[1]_0\ : out STD_LOGIC;
    \measured_burst_length_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axis_waddr_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_aclk : in STD_LOGIC;
    up_response_ready : in STD_LOGIC;
    p_3_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \active__6\ : in STD_LOGIC;
    m_dest_axi_bvalid : in STD_LOGIC;
    up_clear_tl : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_response_manager;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_response_manager is
  signal i_dest_response_fifo_n_1 : STD_LOGIC;
  signal i_dest_response_fifo_n_16 : STD_LOGIC;
  signal i_dest_response_fifo_n_2 : STD_LOGIC;
  signal i_dest_response_fifo_n_3 : STD_LOGIC;
  signal i_dest_response_fifo_n_4 : STD_LOGIC;
  signal i_dest_response_fifo_n_6 : STD_LOGIC;
  signal i_dest_response_fifo_n_7 : STD_LOGIC;
  signal \measured_burst_length[6]_i_1_n_0\ : STD_LOGIC;
  signal \measured_burst_length[6]_i_2_n_0\ : STD_LOGIC;
  signal nx_state15_in : STD_LOGIC;
  signal \^p_7_in\ : STD_LOGIC;
  signal \^req_eot_reg_0\ : STD_LOGIC;
  signal req_response_dest_data_burst_length : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal req_response_partial : STD_LOGIC;
  signal response_dest_data_burst_length : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal response_dest_partial : STD_LOGIC;
  signal response_dest_ready : STD_LOGIC;
  signal \^response_valid_reg_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \^state_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal to_complete_count : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \to_complete_count0__3\ : STD_LOGIC;
  signal \to_complete_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \to_complete_count[1]_i_1_n_0\ : STD_LOGIC;
  signal transfer_id : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \transfer_id[0]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_id[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \state[1]_i_3\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \to_complete_count[0]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \transfer_id[1]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \transfer_id[1]_i_2\ : label is "soft_lutpair67";
begin
  p_7_in <= \^p_7_in\;
  req_eot_reg_0 <= \^req_eot_reg_0\;
  response_valid_reg_0 <= \^response_valid_reg_0\;
  \state_reg[2]_0\(2 downto 0) <= \^state_reg[2]_0\(2 downto 0);
i_dest_response_fifo: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized3\
     port map (
      D(2) => i_dest_response_fifo_n_2,
      D(1) => i_dest_response_fifo_n_3,
      D(0) => i_dest_response_fifo_n_4,
      E(0) => i_dest_response_fifo_n_7,
      Q(0) => Q(0),
      \active__6\ => \active__6\,
      \cdc_sync_fifo_ram_reg[8]_0\(8 downto 2) => response_dest_data_burst_length(6 downto 0),
      \cdc_sync_fifo_ram_reg[8]_0\(1) => response_dest_partial,
      \cdc_sync_fifo_ram_reg[8]_0\(0) => i_dest_response_fifo_n_16,
      \cdc_sync_fifo_ram_reg[8]_1\(8 downto 0) => D(8 downto 0),
      dest_response_ready => dest_response_ready,
      id0 => id0,
      m_dest_axi_aclk => m_dest_axi_aclk,
      m_dest_axi_bvalid => m_dest_axi_bvalid,
      nx_state15_in => nx_state15_in,
      response_dest_ready => response_dest_ready,
      response_ready_reg => i_dest_response_fifo_n_6,
      response_valid_reg => \^response_valid_reg_0\,
      s_axi_aclk => s_axi_aclk,
      s_axis_waddr_reg_0(0) => s_axis_waddr_reg(0),
      \state_reg[0]\ => \state[1]_i_3_n_0\,
      \state_reg[1]\ => i_dest_response_fifo_n_1,
      \state_reg[2]\(2 downto 0) => \^state_reg[2]_0\(2 downto 0),
      transfer_id(1 downto 0) => transfer_id(1 downto 0),
      up_response_ready => up_response_ready
    );
\measured_burst_length[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^state_reg[2]_0\(2),
      I1 => \^state_reg[2]_0\(0),
      I2 => \^state_reg[2]_0\(1),
      O => \measured_burst_length[6]_i_1_n_0\
    );
\measured_burst_length[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^state_reg[2]_0\(0),
      I1 => \^state_reg[2]_0\(2),
      I2 => \^state_reg[2]_0\(1),
      O => \measured_burst_length[6]_i_2_n_0\
    );
\measured_burst_length_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \measured_burst_length[6]_i_2_n_0\,
      D => req_response_dest_data_burst_length(0),
      Q => \measured_burst_length_reg[6]_0\(0),
      S => \measured_burst_length[6]_i_1_n_0\
    );
\measured_burst_length_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \measured_burst_length[6]_i_2_n_0\,
      D => req_response_dest_data_burst_length(1),
      Q => \measured_burst_length_reg[6]_0\(1),
      S => \measured_burst_length[6]_i_1_n_0\
    );
\measured_burst_length_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \measured_burst_length[6]_i_2_n_0\,
      D => req_response_dest_data_burst_length(2),
      Q => \measured_burst_length_reg[6]_0\(2),
      S => \measured_burst_length[6]_i_1_n_0\
    );
\measured_burst_length_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \measured_burst_length[6]_i_2_n_0\,
      D => req_response_dest_data_burst_length(3),
      Q => \measured_burst_length_reg[6]_0\(3),
      S => \measured_burst_length[6]_i_1_n_0\
    );
\measured_burst_length_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \measured_burst_length[6]_i_2_n_0\,
      D => req_response_dest_data_burst_length(4),
      Q => \measured_burst_length_reg[6]_0\(4),
      S => \measured_burst_length[6]_i_1_n_0\
    );
\measured_burst_length_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \measured_burst_length[6]_i_2_n_0\,
      D => req_response_dest_data_burst_length(5),
      Q => \measured_burst_length_reg[6]_0\(5),
      S => \measured_burst_length[6]_i_1_n_0\
    );
\measured_burst_length_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \measured_burst_length[6]_i_2_n_0\,
      D => req_response_dest_data_burst_length(6),
      Q => \measured_burst_length_reg[6]_0\(6),
      S => \measured_burst_length[6]_i_1_n_0\
    );
req_eot_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_dest_response_fifo_n_7,
      D => i_dest_response_fifo_n_16,
      Q => \^req_eot_reg_0\,
      R => '0'
    );
\req_response_dest_data_burst_length_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_dest_response_fifo_n_7,
      D => response_dest_data_burst_length(0),
      Q => req_response_dest_data_burst_length(0),
      R => '0'
    );
\req_response_dest_data_burst_length_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_dest_response_fifo_n_7,
      D => response_dest_data_burst_length(1),
      Q => req_response_dest_data_burst_length(1),
      R => '0'
    );
\req_response_dest_data_burst_length_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_dest_response_fifo_n_7,
      D => response_dest_data_burst_length(2),
      Q => req_response_dest_data_burst_length(2),
      R => '0'
    );
\req_response_dest_data_burst_length_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_dest_response_fifo_n_7,
      D => response_dest_data_burst_length(3),
      Q => req_response_dest_data_burst_length(3),
      R => '0'
    );
\req_response_dest_data_burst_length_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_dest_response_fifo_n_7,
      D => response_dest_data_burst_length(4),
      Q => req_response_dest_data_burst_length(4),
      R => '0'
    );
\req_response_dest_data_burst_length_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_dest_response_fifo_n_7,
      D => response_dest_data_burst_length(5),
      Q => req_response_dest_data_burst_length(5),
      R => '0'
    );
\req_response_dest_data_burst_length_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_dest_response_fifo_n_7,
      D => response_dest_data_burst_length(6),
      Q => req_response_dest_data_burst_length(6),
      R => '0'
    );
req_response_partial_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_dest_response_fifo_n_7,
      D => response_dest_partial,
      Q => req_response_partial,
      R => '0'
    );
response_dest_ready_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_dest_response_fifo_n_1,
      Q => response_dest_ready,
      S => Q(0)
    );
response_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_dest_response_fifo_n_6,
      Q => \^response_valid_reg_0\,
      R => Q(0)
    );
\state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => transfer_id(0),
      I1 => transfer_id(1),
      O => \state[1]_i_3_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => to_complete_count(0),
      I1 => to_complete_count(1),
      O => nx_state15_in
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_dest_response_fifo_n_4,
      Q => \^state_reg[2]_0\(0),
      R => Q(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_dest_response_fifo_n_3,
      Q => \^state_reg[2]_0\(1),
      R => Q(0)
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_dest_response_fifo_n_2,
      Q => \^state_reg[2]_0\(2),
      R => Q(0)
    );
\to_complete_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70008"
    )
        port map (
      I0 => up_response_ready,
      I1 => \^state_reg[2]_0\(2),
      I2 => \^state_reg[2]_0\(0),
      I3 => \^state_reg[2]_0\(1),
      I4 => to_complete_count(0),
      O => \to_complete_count[0]_i_1_n_0\
    );
\to_complete_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF01000000"
    )
        port map (
      I0 => to_complete_count(0),
      I1 => \^state_reg[2]_0\(1),
      I2 => \^state_reg[2]_0\(0),
      I3 => \^state_reg[2]_0\(2),
      I4 => up_response_ready,
      I5 => to_complete_count(1),
      O => \to_complete_count[1]_i_1_n_0\
    );
\to_complete_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \to_complete_count[0]_i_1_n_0\,
      Q => to_complete_count(0),
      R => Q(0)
    );
\to_complete_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \to_complete_count[1]_i_1_n_0\,
      Q => to_complete_count(1),
      R => Q(0)
    );
\transfer_id[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBFBEFFF14041000"
    )
        port map (
      I0 => \^state_reg[2]_0\(1),
      I1 => \^state_reg[2]_0\(0),
      I2 => \^state_reg[2]_0\(2),
      I3 => up_response_ready,
      I4 => \^req_eot_reg_0\,
      I5 => transfer_id(0),
      O => \transfer_id[0]_i_1_n_0\
    );
\transfer_id[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"557FAA80"
    )
        port map (
      I0 => transfer_id(0),
      I1 => \^req_eot_reg_0\,
      I2 => \measured_burst_length[6]_i_2_n_0\,
      I3 => \to_complete_count0__3\,
      I4 => transfer_id(1),
      O => \transfer_id[1]_i_1_n_0\
    );
\transfer_id[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^state_reg[2]_0\(1),
      I1 => \^state_reg[2]_0\(0),
      I2 => \^state_reg[2]_0\(2),
      I3 => up_response_ready,
      O => \to_complete_count0__3\
    );
\transfer_id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \transfer_id[0]_i_1_n_0\,
      Q => transfer_id(0),
      R => Q(0)
    );
\transfer_id_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \transfer_id[1]_i_1_n_0\,
      Q => transfer_id(1),
      R => Q(0)
    );
up_clear_tl_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFD0000"
    )
        port map (
      I0 => \^state_reg[2]_0\(1),
      I1 => \^state_reg[2]_0\(2),
      I2 => \^state_reg[2]_0\(0),
      I3 => \^req_eot_reg_0\,
      I4 => \^p_7_in\,
      I5 => up_clear_tl,
      O => \state_reg[1]_0\
    );
\up_measured_transfer_length[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^response_valid_reg_0\,
      I1 => up_response_ready,
      O => \^p_7_in\
    );
up_tlf_s_valid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => p_3_in(0),
      I1 => \^state_reg[2]_0\(0),
      I2 => \^state_reg[2]_0\(2),
      I3 => \^state_reg[2]_0\(1),
      I4 => req_response_partial,
      I5 => \^p_7_in\,
      O => up_bl_partial
    );
\up_transfer_id_eot[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888088888888"
    )
        port map (
      I0 => up_response_ready,
      I1 => \^response_valid_reg_0\,
      I2 => \^req_eot_reg_0\,
      I3 => \^state_reg[2]_0\(0),
      I4 => \^state_reg[2]_0\(2),
      I5 => \^state_reg[2]_0\(1),
      O => up_eot
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_dest_mm_axi is
  port (
    addr_valid_reg : out STD_LOGIC;
    dbg_ids0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_dest_axi_awaddr : out STD_LOGIC_VECTOR ( 27 downto 0 );
    dbg_status : out STD_LOGIC_VECTOR ( 0 to 0 );
    dest_bl_ready : out STD_LOGIC;
    dest_req_ready : out STD_LOGIC;
    m_dest_axi_bready : out STD_LOGIC;
    \id_reg[2]\ : out STD_LOGIC;
    \id_reg[0]\ : out STD_LOGIC;
    \id_reg[1]\ : out STD_LOGIC;
    enabled_reg : out STD_LOGIC;
    \id_reg[3]\ : out STD_LOGIC;
    \id_reg[0]_0\ : out STD_LOGIC;
    \id_reg[1]_0\ : out STD_LOGIC;
    \id_reg[2]_0\ : out STD_LOGIC;
    \id_reg[3]_0\ : out STD_LOGIC;
    \active__6\ : out STD_LOGIC;
    dest_burst_valid : out STD_LOGIC;
    response_data_burst_length : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_dest_axi_awlen : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_dest_axi_aclk : in STD_LOGIC;
    enabled_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    id0 : in STD_LOGIC;
    dest_address_eot : in STD_LOGIC;
    data8 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    enabled_reg_1 : in STD_LOGIC;
    m_dest_axi_awready : in STD_LOGIC;
    dest_response_ready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_rdata_reg[27]\ : in STD_LOGIC;
    \up_rdata_reg[27]_0\ : in STD_LOGIC;
    \address_reg[27]\ : in STD_LOGIC_VECTOR ( 27 downto 0 );
    \up_rdata_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_rdata_reg[11]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    addr_valid_i_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \dest_burst_len_data_reg[2]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bl_ready_reg : in STD_LOGIC;
    cdc_sync_stage2 : in STD_LOGIC;
    req_ready_reg : in STD_LOGIC;
    req_ready_reg_0 : in STD_LOGIC;
    dest_burst_info_write : in STD_LOGIC;
    \cdc_sync_fifo_ram_reg[1]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \cdc_sync_fifo_ram_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_burst_len_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_dest_mm_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_dest_mm_axi is
  signal address_enabled : STD_LOGIC;
  signal \^dbg_ids0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^m_dest_axi_awaddr\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal NLW_bl_mem_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_bl_mem_reg_0_15_6_7_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_bl_mem_reg_0_15_6_7_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_bl_mem_reg_0_15_6_7_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of bl_mem_reg_0_15_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of bl_mem_reg_0_15_0_5 : label is 128;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of bl_mem_reg_0_15_0_5 : label is "i_transfer/i_request_arb/i_dest_dma_mm/bl_mem";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of bl_mem_reg_0_15_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of bl_mem_reg_0_15_0_5 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of bl_mem_reg_0_15_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of bl_mem_reg_0_15_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of bl_mem_reg_0_15_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of bl_mem_reg_0_15_6_7 : label is "";
  attribute RTL_RAM_BITS of bl_mem_reg_0_15_6_7 : label is 128;
  attribute RTL_RAM_NAME of bl_mem_reg_0_15_6_7 : label is "i_transfer/i_request_arb/i_dest_dma_mm/bl_mem";
  attribute ram_addr_begin of bl_mem_reg_0_15_6_7 : label is 0;
  attribute ram_addr_end of bl_mem_reg_0_15_6_7 : label is 15;
  attribute ram_offset of bl_mem_reg_0_15_6_7 : label is 0;
  attribute ram_slice_begin of bl_mem_reg_0_15_6_7 : label is 6;
  attribute ram_slice_end of bl_mem_reg_0_15_6_7 : label is 7;
begin
  dbg_ids0(7 downto 0) <= \^dbg_ids0\(7 downto 0);
  m_dest_axi_awaddr(27 downto 0) <= \^m_dest_axi_awaddr\(27 downto 0);
bl_mem_reg_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \^dbg_ids0\(7 downto 4),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \^dbg_ids0\(7 downto 4),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \^dbg_ids0\(7 downto 4),
      ADDRD(4) => '0',
      ADDRD(3 downto 2) => data8(3 downto 2),
      ADDRD(1 downto 0) => \cdc_sync_fifo_ram_reg[1]_0\(1 downto 0),
      DIA(1 downto 0) => B"11",
      DIB(1 downto 0) => \cdc_sync_fifo_ram_reg[1]\(1 downto 0),
      DIC(1 downto 0) => \cdc_sync_fifo_ram_reg[1]\(3 downto 2),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => response_data_burst_length(1 downto 0),
      DOB(1 downto 0) => response_data_burst_length(3 downto 2),
      DOC(1 downto 0) => response_data_burst_length(5 downto 4),
      DOD(1 downto 0) => NLW_bl_mem_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => m_dest_axi_aclk,
      WE => dest_burst_info_write
    );
bl_mem_reg_0_15_6_7: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \^dbg_ids0\(7 downto 4),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \^dbg_ids0\(7 downto 4),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \^dbg_ids0\(7 downto 4),
      ADDRD(4) => '0',
      ADDRD(3 downto 2) => data8(3 downto 2),
      ADDRD(1 downto 0) => \cdc_sync_fifo_ram_reg[1]_0\(1 downto 0),
      DIA(1 downto 0) => \cdc_sync_fifo_ram_reg[1]\(5 downto 4),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => response_data_burst_length(7 downto 6),
      DOB(1 downto 0) => NLW_bl_mem_reg_0_15_6_7_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_bl_mem_reg_0_15_6_7_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_bl_mem_reg_0_15_6_7_DOD_UNCONNECTED(1 downto 0),
      WCLK => m_dest_axi_aclk,
      WE => dest_burst_info_write
    );
i_addr_gen: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_address_generator
     port map (
      E(0) => E(0),
      Q(0) => Q(0),
      addr_valid_i_2_0(1 downto 0) => addr_valid_i_2(1 downto 0),
      addr_valid_reg_0 => addr_valid_reg,
      address_enabled => address_enabled,
      \address_reg[27]_0\(27 downto 0) => \address_reg[27]\(27 downto 0),
      bl_ready_reg_0 => bl_ready_reg,
      cdc_sync_stage2 => cdc_sync_stage2,
      data8(1 downto 0) => data8(1 downto 0),
      dest_address_eot => dest_address_eot,
      dest_bl_ready => dest_bl_ready,
      \dest_burst_len_data_reg[2]\(3 downto 0) => \dest_burst_len_data_reg[2]\(3 downto 0),
      dest_burst_valid => dest_burst_valid,
      enabled_reg_0(0) => enabled_reg_0(0),
      enabled_reg_1 => enabled_reg_1,
      \id_reg[0]_0\ => \^dbg_ids0\(0),
      \id_reg[0]_1\ => \id_reg[0]\,
      \id_reg[1]_0\ => \^dbg_ids0\(1),
      \id_reg[1]_1\ => \id_reg[1]\,
      \id_reg[2]_0\ => \^dbg_ids0\(2),
      \id_reg[2]_1\ => \id_reg[2]\,
      \id_reg[3]_0\ => \^dbg_ids0\(3),
      \id_reg[3]_1\ => \id_reg[3]\,
      \last_burst_len_reg[4]_0\(4 downto 0) => \last_burst_len_reg[4]\(4 downto 0),
      m_dest_axi_aclk => m_dest_axi_aclk,
      m_dest_axi_awaddr(27 downto 0) => \^m_dest_axi_awaddr\(27 downto 0),
      m_dest_axi_awlen(4 downto 0) => m_dest_axi_awlen(4 downto 0),
      m_dest_axi_awready => m_dest_axi_awready,
      req_ready_reg_0 => dest_req_ready,
      req_ready_reg_1 => req_ready_reg,
      req_ready_reg_2 => req_ready_reg_0,
      \up_rdata_reg[11]\ => \up_rdata_reg[27]\,
      \up_rdata_reg[11]_0\ => \up_rdata_reg[27]_0\,
      \up_rdata_reg[11]_1\(0) => \up_rdata_reg[11]\(0),
      \up_rdata_reg[9]\(0) => \up_rdata_reg[9]\(0)
    );
i_response_handler: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_response_handler
     port map (
      \active__6\ => \active__6\,
      address_enabled => address_enabled,
      dbg_ids0(1 downto 0) => \^dbg_ids0\(2 downto 1),
      dbg_status(0) => dbg_status(0),
      dest_response_ready => dest_response_ready,
      enabled_reg_0 => enabled_reg,
      enabled_reg_1(0) => enabled_reg_0(0),
      id(3 downto 0) => \^dbg_ids0\(7 downto 4),
      id0 => id0,
      \id_reg[0]_0\ => \id_reg[0]_0\,
      \id_reg[1]_0\ => \id_reg[1]_0\,
      \id_reg[2]_0\ => \id_reg[2]_0\,
      \id_reg[3]_0\ => \id_reg[3]_0\,
      m_dest_axi_aclk => m_dest_axi_aclk,
      m_dest_axi_awaddr(4 downto 1) => \^m_dest_axi_awaddr\(25 downto 22),
      m_dest_axi_awaddr(0) => \^m_dest_axi_awaddr\(2),
      m_dest_axi_bready => m_dest_axi_bready,
      m_dest_axi_bready_0 => \^dbg_ids0\(0),
      m_dest_axi_bready_1 => \^dbg_ids0\(3),
      \up_rdata_reg[27]\ => \up_rdata_reg[27]\,
      \up_rdata_reg[27]_0\ => \up_rdata_reg[27]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_src_fifo_inf is
  port (
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    src_valid : out STD_LOGIC;
    fifo_wr_overflow : out STD_LOGIC;
    \id_reg[3]\ : out STD_LOGIC;
    \src_last_beat__0\ : out STD_LOGIC;
    \id_reg[2]\ : out STD_LOGIC;
    \id_reg[1]\ : out STD_LOGIC;
    \id_reg[0]\ : out STD_LOGIC;
    active_reg : out STD_LOGIC;
    src_bl_valid : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \measured_last_burst_length_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    fifo_wr_clk : in STD_LOGIC;
    active_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    src_eot : in STD_LOGIC;
    fifo_wr_sync : in STD_LOGIC;
    fifo_wr_en : in STD_LOGIC;
    src_enable : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    bl_valid_reg : in STD_LOGIC;
    bl_valid_reg_0 : in STD_LOGIC;
    last_eot_reg : in STD_LOGIC;
    \last_burst_length_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_src_fifo_inf;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_src_fifo_inf is
  signal i_data_mover_n_10 : STD_LOGIC;
begin
i_data_mover: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_data_mover
     port map (
      E(0) => src_valid,
      Q(3 downto 0) => Q(3 downto 0),
      SR(0) => SS(0),
      active_reg_0 => active_reg,
      active_reg_1 => i_data_mover_n_10,
      active_reg_2(0) => active_reg_0(0),
      active_reg_3(0) => E(0),
      bl_valid_reg_0 => bl_valid_reg,
      bl_valid_reg_1 => bl_valid_reg_0,
      fifo_wr_clk => fifo_wr_clk,
      fifo_wr_en => fifo_wr_en,
      fifo_wr_sync => fifo_wr_sync,
      \id_reg[0]_0\ => \id_reg[0]\,
      \id_reg[1]_0\ => \id_reg[1]\,
      \id_reg[2]_0\ => \id_reg[2]\,
      \id_reg[3]_0\ => \id_reg[3]\,
      \last_burst_length_reg[4]_0\(4 downto 0) => \last_burst_length_reg[4]\(4 downto 0),
      last_eot_reg_0 => last_eot_reg,
      last_non_eot_reg_0 => \src_last_beat__0\,
      \measured_last_burst_length_reg[4]_0\(4 downto 0) => \measured_last_burst_length_reg[4]\(4 downto 0),
      \reset_gen[1].reset_sync_reg[0]\(0) => SR(0),
      src_bl_valid => src_bl_valid,
      src_enable => src_enable,
      src_eot => src_eot
    );
overflow_reg: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => '1',
      D => i_data_mover_n_10,
      Q => fifo_wr_overflow,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo is
  port (
    ctrl_enable_reg : out STD_LOGIC;
    up_tlf_s_valid_reg : out STD_LOGIC;
    \up_transfer_id_eot_reg[0]\ : out STD_LOGIC;
    \up_transfer_id_eot_reg[1]\ : out STD_LOGIC;
    response_valid_reg : out STD_LOGIC;
    valid_reg_0 : out STD_LOGIC;
    \data_reg[25]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \level_reg[2]\ : in STD_LOGIC;
    up_bl_partial : in STD_LOGIC;
    up_response_valid : in STD_LOGIC;
    response_ready_reg : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    \m_axis_raddr_reg[0]\ : in STD_LOGIC;
    up_transfer_id_eot : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    up_transfer_id : in STD_LOGIC_VECTOR ( 0 to 0 );
    up_dma_last : in STD_LOGIC;
    up_partial_length_valid_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_data : in STD_LOGIC_VECTOR ( 25 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo is
  signal \^ctrl_enable_reg\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \data_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_reg_n_0_[1]\ : STD_LOGIC;
  signal i_address_sync_n_4 : STD_LOGIC;
  signal m_axis_raddr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_mem_read : STD_LOGIC;
  signal s_axis_waddr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_mem_write : STD_LOGIC;
  signal up_tlf_valid : STD_LOGIC;
  signal NLW_ram_reg_0_3_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_3_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_3_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_3_24_25_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_3_24_25_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_3_24_25_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_0_3_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_3_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg_0_3_0_5 : label is 104;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg_0_3_0_5 : label is "i_regmap/i_regmap_request/i_transfer_lenghts_fifo/ram";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_0_3_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_0_3_0_5 : label is 3;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg_0_3_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_0_3_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_0_3_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_3_12_17 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_3_12_17 : label is 104;
  attribute RTL_RAM_NAME of ram_reg_0_3_12_17 : label is "i_regmap/i_regmap_request/i_transfer_lenghts_fifo/ram";
  attribute ram_addr_begin of ram_reg_0_3_12_17 : label is 0;
  attribute ram_addr_end of ram_reg_0_3_12_17 : label is 3;
  attribute ram_offset of ram_reg_0_3_12_17 : label is 0;
  attribute ram_slice_begin of ram_reg_0_3_12_17 : label is 12;
  attribute ram_slice_end of ram_reg_0_3_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_3_18_23 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_3_18_23 : label is 104;
  attribute RTL_RAM_NAME of ram_reg_0_3_18_23 : label is "i_regmap/i_regmap_request/i_transfer_lenghts_fifo/ram";
  attribute ram_addr_begin of ram_reg_0_3_18_23 : label is 0;
  attribute ram_addr_end of ram_reg_0_3_18_23 : label is 3;
  attribute ram_offset of ram_reg_0_3_18_23 : label is 0;
  attribute ram_slice_begin of ram_reg_0_3_18_23 : label is 18;
  attribute ram_slice_end of ram_reg_0_3_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_3_24_25 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_3_24_25 : label is 104;
  attribute RTL_RAM_NAME of ram_reg_0_3_24_25 : label is "i_regmap/i_regmap_request/i_transfer_lenghts_fifo/ram";
  attribute ram_addr_begin of ram_reg_0_3_24_25 : label is 0;
  attribute ram_addr_end of ram_reg_0_3_24_25 : label is 3;
  attribute ram_offset of ram_reg_0_3_24_25 : label is 0;
  attribute ram_slice_begin of ram_reg_0_3_24_25 : label is 24;
  attribute ram_slice_end of ram_reg_0_3_24_25 : label is 25;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_3_6_11 : label is "";
  attribute RTL_RAM_BITS of ram_reg_0_3_6_11 : label is 104;
  attribute RTL_RAM_NAME of ram_reg_0_3_6_11 : label is "i_regmap/i_regmap_request/i_transfer_lenghts_fifo/ram";
  attribute ram_addr_begin of ram_reg_0_3_6_11 : label is 0;
  attribute ram_addr_end of ram_reg_0_3_6_11 : label is 3;
  attribute ram_offset of ram_reg_0_3_6_11 : label is 0;
  attribute ram_slice_begin of ram_reg_0_3_6_11 : label is 6;
  attribute ram_slice_end of ram_reg_0_3_6_11 : label is 11;
begin
  ctrl_enable_reg <= \^ctrl_enable_reg\;
\data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(0),
      Q => \data_reg_n_0_[0]\,
      R => '0'
    );
\data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(10),
      Q => \data_reg[25]_0\(8),
      R => '0'
    );
\data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(11),
      Q => \data_reg[25]_0\(9),
      R => '0'
    );
\data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(12),
      Q => \data_reg[25]_0\(10),
      R => '0'
    );
\data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(13),
      Q => \data_reg[25]_0\(11),
      R => '0'
    );
\data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(14),
      Q => \data_reg[25]_0\(12),
      R => '0'
    );
\data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(15),
      Q => \data_reg[25]_0\(13),
      R => '0'
    );
\data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(16),
      Q => \data_reg[25]_0\(14),
      R => '0'
    );
\data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(17),
      Q => \data_reg[25]_0\(15),
      R => '0'
    );
\data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(18),
      Q => \data_reg[25]_0\(16),
      R => '0'
    );
\data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(19),
      Q => \data_reg[25]_0\(17),
      R => '0'
    );
\data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(1),
      Q => \data_reg_n_0_[1]\,
      R => '0'
    );
\data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(20),
      Q => \data_reg[25]_0\(18),
      R => '0'
    );
\data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(21),
      Q => \data_reg[25]_0\(19),
      R => '0'
    );
\data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(22),
      Q => \data_reg[25]_0\(20),
      R => '0'
    );
\data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(23),
      Q => \data_reg[25]_0\(21),
      R => '0'
    );
\data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(24),
      Q => \data_reg[25]_0\(22),
      R => '0'
    );
\data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(25),
      Q => \data_reg[25]_0\(23),
      R => '0'
    );
\data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(2),
      Q => \data_reg[25]_0\(0),
      R => '0'
    );
\data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(3),
      Q => \data_reg[25]_0\(1),
      R => '0'
    );
\data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(4),
      Q => \data_reg[25]_0\(2),
      R => '0'
    );
\data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(5),
      Q => \data_reg[25]_0\(3),
      R => '0'
    );
\data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(6),
      Q => \data_reg[25]_0\(4),
      R => '0'
    );
\data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(7),
      Q => \data_reg[25]_0\(5),
      R => '0'
    );
\data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(8),
      Q => \data_reg[25]_0\(6),
      R => '0'
    );
\data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => m_mem_read,
      D => data0(9),
      Q => \data_reg[25]_0\(7),
      R => '0'
    );
i_address_sync: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_address_sync
     port map (
      ADDRA(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRD(1 downto 0) => s_axis_waddr(1 downto 0),
      ctrl_enable_reg => \^ctrl_enable_reg\,
      \level_reg[2]_0\ => \level_reg[2]\,
      \m_axis_raddr_reg[0]_0\ => \m_axis_raddr_reg[0]\,
      m_axis_valid_reg_0 => i_address_sync_n_4,
      m_mem_read => m_mem_read,
      p_8_in => p_8_in,
      response_ready_reg => response_ready_reg,
      response_valid_reg => response_valid_reg,
      s_axi_aclk => s_axi_aclk,
      s_mem_write => s_mem_write,
      up_bl_partial => up_bl_partial,
      up_response_valid => up_response_valid,
      up_tlf_s_valid_reg => up_tlf_s_valid_reg,
      up_tlf_valid => up_tlf_valid
    );
ram_reg_0_3_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => s_axis_waddr(1 downto 0),
      DIA(1 downto 0) => s_axis_data(1 downto 0),
      DIB(1 downto 0) => s_axis_data(3 downto 2),
      DIC(1 downto 0) => s_axis_data(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => data0(1 downto 0),
      DOB(1 downto 0) => data0(3 downto 2),
      DOC(1 downto 0) => data0(5 downto 4),
      DOD(1 downto 0) => NLW_ram_reg_0_3_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => s_mem_write
    );
ram_reg_0_3_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => s_axis_waddr(1 downto 0),
      DIA(1 downto 0) => s_axis_data(13 downto 12),
      DIB(1 downto 0) => s_axis_data(15 downto 14),
      DIC(1 downto 0) => s_axis_data(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => data0(13 downto 12),
      DOB(1 downto 0) => data0(15 downto 14),
      DOC(1 downto 0) => data0(17 downto 16),
      DOD(1 downto 0) => NLW_ram_reg_0_3_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => s_mem_write
    );
ram_reg_0_3_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => s_axis_waddr(1 downto 0),
      DIA(1 downto 0) => s_axis_data(19 downto 18),
      DIB(1 downto 0) => s_axis_data(21 downto 20),
      DIC(1 downto 0) => s_axis_data(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => data0(19 downto 18),
      DOB(1 downto 0) => data0(21 downto 20),
      DOC(1 downto 0) => data0(23 downto 22),
      DOD(1 downto 0) => NLW_ram_reg_0_3_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => s_mem_write
    );
ram_reg_0_3_24_25: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => s_axis_waddr(1 downto 0),
      DIA(1 downto 0) => s_axis_data(25 downto 24),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => data0(25 downto 24),
      DOB(1 downto 0) => NLW_ram_reg_0_3_24_25_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_ram_reg_0_3_24_25_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_ram_reg_0_3_24_25_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => s_mem_write
    );
ram_reg_0_3_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => m_axis_raddr(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => s_axis_waddr(1 downto 0),
      DIA(1 downto 0) => s_axis_data(7 downto 6),
      DIB(1 downto 0) => s_axis_data(9 downto 8),
      DIC(1 downto 0) => s_axis_data(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => data0(7 downto 6),
      DOB(1 downto 0) => data0(9 downto 8),
      DOC(1 downto 0) => data0(11 downto 10),
      DOD(1 downto 0) => NLW_ram_reg_0_3_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => s_mem_write
    );
up_partial_length_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AFAE"
    )
        port map (
      I0 => up_bl_partial,
      I1 => up_tlf_valid,
      I2 => p_8_in,
      I3 => up_partial_length_valid_reg(0),
      O => valid_reg_0
    );
\up_rdata[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C0C0A0A00F00"
    )
        port map (
      I0 => up_transfer_id_eot(0),
      I1 => \data_reg_n_0_[0]\,
      I2 => Q(0),
      I3 => up_transfer_id(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \up_transfer_id_eot_reg[0]\
    );
\up_rdata[1]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => up_transfer_id_eot(1),
      I1 => Q(1),
      I2 => \data_reg_n_0_[1]\,
      I3 => Q(2),
      I4 => up_dma_last,
      O => \up_transfer_id_eot_reg[1]\
    );
valid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_address_sync_n_4,
      Q => up_tlf_valid,
      R => \^ctrl_enable_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized0\ is
  port (
    s_axis_waddr_reg_0 : out STD_LOGIC;
    cdc_sync_stage2 : out STD_LOGIC;
    m_axis_raddr_reg_0 : out STD_LOGIC;
    \cdc_sync_stage2_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \cdc_sync_stage1_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_aclk : in STD_LOGIC;
    \cdc_sync_stage1_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_wr_clk : in STD_LOGIC;
    dest_bl_ready : in STD_LOGIC;
    src_bl_valid : in STD_LOGIC;
    \cdc_sync_fifo_ram_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized0\ : entity is "util_axis_fifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized0\ is
  signal cdc_sync_fifo_ram0 : STD_LOGIC;
  signal i_raddr_sync_n_2 : STD_LOGIC;
  signal i_waddr_sync_n_2 : STD_LOGIC;
  signal \^m_axis_raddr_reg_0\ : STD_LOGIC;
  signal \^s_axis_waddr_reg_0\ : STD_LOGIC;
begin
  m_axis_raddr_reg_0 <= \^m_axis_raddr_reg_0\;
  s_axis_waddr_reg_0 <= \^s_axis_waddr_reg_0\;
\cdc_sync_fifo_ram_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[4]_0\(0),
      Q => Q(0),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[4]_0\(1),
      Q => Q(1),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[4]_0\(2),
      Q => Q(2),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[4]_0\(3),
      Q => Q(3),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[4]_0\(4),
      Q => Q(4),
      R => '0'
    );
i_raddr_sync: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__3\
     port map (
      E(0) => cdc_sync_fifo_ram0,
      bl_valid_reg => i_raddr_sync_n_2,
      \cdc_sync_fifo_ram_reg[0]\ => \^s_axis_waddr_reg_0\,
      \cdc_sync_stage1_reg[0]_0\(0) => \cdc_sync_stage1_reg[0]_0\(0),
      \cdc_sync_stage1_reg[0]_1\ => \^m_axis_raddr_reg_0\,
      \cdc_sync_stage2_reg[0]_0\ => \cdc_sync_stage2_reg[0]\,
      fifo_wr_clk => fifo_wr_clk,
      src_bl_valid => src_bl_valid
    );
i_waddr_sync: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__4\
     port map (
      E(0) => E(0),
      bl_ready_reg => i_waddr_sync_n_2,
      \cdc_sync_stage1_reg[0]_0\(0) => \cdc_sync_stage1_reg[0]\(0),
      \cdc_sync_stage1_reg[0]_1\ => \^s_axis_waddr_reg_0\,
      cdc_sync_stage2 => cdc_sync_stage2,
      dest_bl_ready => dest_bl_ready,
      \last_burst_len_reg[0]\ => \^m_axis_raddr_reg_0\,
      m_dest_axi_aclk => m_dest_axi_aclk
    );
m_axis_raddr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => i_waddr_sync_n_2,
      Q => \^m_axis_raddr_reg_0\,
      R => \cdc_sync_stage1_reg[0]\(0)
    );
s_axis_waddr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => i_raddr_sync_n_2,
      Q => \^s_axis_waddr_reg_0\,
      R => \cdc_sync_stage1_reg[0]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized1\ is
  port (
    \cdc_sync_stage2_reg[0]\ : out STD_LOGIC;
    m_axis_raddr_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cdc_sync_stage2_reg[0]_0\ : out STD_LOGIC;
    \cdc_sync_stage2_reg[0]_1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 27 downto 0 );
    \cdc_sync_stage1_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_aclk : in STD_LOGIC;
    \cdc_sync_stage1_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_wr_clk : in STD_LOGIC;
    m_axis_raddr_reg_1 : in STD_LOGIC;
    m_axis_raddr_reg_2 : in STD_LOGIC;
    src_req_ready : in STD_LOGIC;
    src_dest_valid_hs : in STD_LOGIC;
    dest_req_ready : in STD_LOGIC;
    \cdc_sync_fifo_ram_reg[28]_0\ : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized1\ : entity is "util_axis_fifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized1\ is
  signal cdc_sync_fifo_ram0 : STD_LOGIC;
  signal i_raddr_sync_n_4 : STD_LOGIC;
  signal i_waddr_sync_n_1 : STD_LOGIC;
  signal \^m_axis_raddr_reg_0\ : STD_LOGIC;
  signal s_axis_waddr_reg_n_0 : STD_LOGIC;
begin
  m_axis_raddr_reg_0 <= \^m_axis_raddr_reg_0\;
\cdc_sync_fifo_ram_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(9),
      Q => Q(9),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(10),
      Q => Q(10),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(11),
      Q => Q(11),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(12),
      Q => Q(12),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(13),
      Q => Q(13),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(14),
      Q => Q(14),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(15),
      Q => Q(15),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(16),
      Q => Q(16),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(17),
      Q => Q(17),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(18),
      Q => Q(18),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(0),
      Q => Q(0),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(19),
      Q => Q(19),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(20),
      Q => Q(20),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(21),
      Q => Q(21),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(22),
      Q => Q(22),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(23),
      Q => Q(23),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(24),
      Q => Q(24),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(25),
      Q => Q(25),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(26),
      Q => Q(26),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(27),
      Q => Q(27),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(1),
      Q => Q(1),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(2),
      Q => Q(2),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(3),
      Q => Q(3),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(4),
      Q => Q(4),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(5),
      Q => Q(5),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(6),
      Q => Q(6),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(7),
      Q => Q(7),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => cdc_sync_fifo_ram0,
      D => \cdc_sync_fifo_ram_reg[28]_0\(8),
      Q => Q(8),
      R => '0'
    );
i_raddr_sync: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__1\
     port map (
      E(0) => E(0),
      \cdc_sync_stage1_reg[0]_0\(0) => \cdc_sync_stage1_reg[0]_0\(0),
      \cdc_sync_stage1_reg[0]_1\ => \^m_axis_raddr_reg_0\,
      \cdc_sync_stage2_reg[0]_0\(0) => cdc_sync_fifo_ram0,
      \cdc_sync_stage2_reg[0]_1\ => \cdc_sync_stage2_reg[0]_0\,
      \cdc_sync_stage2_reg[0]_2\ => \cdc_sync_stage2_reg[0]_1\,
      fifo_wr_clk => fifo_wr_clk,
      m_axis_raddr_reg => m_axis_raddr_reg_1,
      m_axis_raddr_reg_0 => m_axis_raddr_reg_2,
      src_dest_valid_hs => src_dest_valid_hs,
      src_dest_valid_hs_reg => i_raddr_sync_n_4,
      src_dest_valid_hs_reg_0 => s_axis_waddr_reg_n_0,
      src_req_ready => src_req_ready
    );
i_waddr_sync: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__2\
     port map (
      \cdc_sync_stage1_reg[0]_0\(0) => \cdc_sync_stage1_reg[0]\(0),
      \cdc_sync_stage1_reg[0]_1\ => s_axis_waddr_reg_n_0,
      \cdc_sync_stage2_reg[0]_0\ => \cdc_sync_stage2_reg[0]\,
      dest_req_ready => dest_req_ready,
      m_axis_raddr_reg => \^m_axis_raddr_reg_0\,
      m_dest_axi_aclk => m_dest_axi_aclk,
      req_ready_reg => i_waddr_sync_n_1
    );
m_axis_raddr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_dest_axi_aclk,
      CE => '1',
      D => i_waddr_sync_n_1,
      Q => \^m_axis_raddr_reg_0\,
      R => \cdc_sync_stage1_reg[0]\(0)
    );
s_axis_waddr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => i_raddr_sync_n_4,
      Q => s_axis_waddr_reg_n_0,
      R => \cdc_sync_stage1_reg[0]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized2\ is
  port (
    s_axis_waddr_reg_0 : out STD_LOGIC;
    \cdc_sync_stage2_reg[0]\ : out STD_LOGIC;
    m_axis_raddr_reg_0 : out STD_LOGIC;
    \cdc_sync_stage2_reg[0]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \req_gen_valid__0\ : out STD_LOGIC;
    \cdc_sync_fifo_ram_reg[7]_0\ : out STD_LOGIC;
    \cdc_sync_fifo_ram_reg[64]_0\ : out STD_LOGIC_VECTOR ( 32 downto 0 );
    \cdc_sync_stage1_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_wr_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    m_axis_raddr_reg_1 : in STD_LOGIC;
    s_axis_waddr_reg_1 : in STD_LOGIC;
    s_axis_waddr_reg_2 : in STD_LOGIC;
    up_dma_req_valid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 32 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized2\ : entity is "util_axis_fifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized2\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^cdc_sync_fifo_ram_reg[64]_0\ : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal i_raddr_sync_n_3 : STD_LOGIC;
  signal \^m_axis_raddr_reg_0\ : STD_LOGIC;
  signal \^s_axis_waddr_reg_0\ : STD_LOGIC;
begin
  E(0) <= \^e\(0);
  \cdc_sync_fifo_ram_reg[64]_0\(32 downto 0) <= \^cdc_sync_fifo_ram_reg[64]_0\(32 downto 0);
  m_axis_raddr_reg_0 <= \^m_axis_raddr_reg_0\;
  s_axis_waddr_reg_0 <= \^s_axis_waddr_reg_0\;
\cdc_sync_fifo_ram_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(5),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(5),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(6),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(6),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(7),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(7),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(8),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(8),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(9),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(9),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(10),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(10),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(11),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(11),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(12),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(12),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(13),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(13),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(14),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(14),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(15),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(15),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(16),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(16),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(17),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(17),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(0),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(0),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(18),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(18),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(19),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(19),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(20),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(20),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(21),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(21),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(22),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(22),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(23),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(23),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(24),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(24),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(25),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(25),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(26),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(26),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(27),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(27),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(1),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(1),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(28),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(28),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(29),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(29),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(30),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(30),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(31),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(31),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(32),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(32),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(2),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(2),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(3),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(3),
      R => '0'
    );
\cdc_sync_fifo_ram_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(4),
      Q => \^cdc_sync_fifo_ram_reg[64]_0\(4),
      R => '0'
    );
i_raddr_sync: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__5\
     port map (
      E(0) => \^e\(0),
      Q(0) => Q(0),
      \cdc_sync_stage1_reg[0]_0\ => \^m_axis_raddr_reg_0\,
      \cdc_sync_stage2_reg[0]_0\ => \cdc_sync_stage2_reg[0]_0\,
      \req_gen_valid__0\ => \req_gen_valid__0\,
      s_axi_aclk => s_axi_aclk,
      s_axis_waddr_reg => s_axis_waddr_reg_1,
      s_axis_waddr_reg_0 => \^s_axis_waddr_reg_0\,
      s_axis_waddr_reg_1 => s_axis_waddr_reg_2,
      up_dma_req_valid => up_dma_req_valid,
      up_dma_req_valid_reg => i_raddr_sync_n_3
    );
i_waddr_sync: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__6\
     port map (
      \cdc_sync_stage1_reg[0]_0\(0) => \cdc_sync_stage1_reg[0]\(0),
      \cdc_sync_stage1_reg[0]_1\ => \^s_axis_waddr_reg_0\,
      \cdc_sync_stage2_reg[0]_0\ => \cdc_sync_stage2_reg[0]\,
      fifo_wr_clk => fifo_wr_clk
    );
last_eot_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^cdc_sync_fifo_ram_reg[64]_0\(3),
      I1 => \^cdc_sync_fifo_ram_reg[64]_0\(4),
      I2 => \^cdc_sync_fifo_ram_reg[64]_0\(0),
      I3 => \^cdc_sync_fifo_ram_reg[64]_0\(1),
      I4 => \^cdc_sync_fifo_ram_reg[64]_0\(2),
      O => \cdc_sync_fifo_ram_reg[7]_0\
    );
m_axis_raddr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => m_axis_raddr_reg_1,
      Q => \^m_axis_raddr_reg_0\,
      R => \cdc_sync_stage1_reg[0]\(0)
    );
s_axis_waddr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_raddr_sync_n_3,
      Q => \^s_axis_waddr_reg_0\,
      R => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_regmap_request is
  port (
    p_3_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    up_dma_req_valid_reg_0 : out STD_LOGIC;
    response_ready_reg_0 : out STD_LOGIC;
    up_clear_tl : out STD_LOGIC;
    up_dma_last : out STD_LOGIC;
    up_partial_length_valid_reg_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \up_transfer_id_eot_reg[0]_0\ : out STD_LOGIC;
    \up_transfer_id_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \up_transfer_id_eot_reg[1]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[2]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 32 downto 0 );
    \up_measured_transfer_length_reg[23]_0\ : out STD_LOGIC_VECTOR ( 21 downto 0 );
    \up_dma_x_length_reg[3]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[4]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[5]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[6]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[7]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[23]_0\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    \up_dma_x_length_reg[8]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[9]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[10]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[11]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[12]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[13]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[14]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[15]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[16]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[17]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[18]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[19]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[20]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[21]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[22]_0\ : out STD_LOGIC;
    \up_dma_x_length_reg[23]_1\ : out STD_LOGIC;
    \data_reg[25]\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    up_dma_enable_tlen_reporting_reg_0 : in STD_LOGIC;
    up_dma_req_valid_reg_1 : in STD_LOGIC;
    up_clear_tl_reg_0 : in STD_LOGIC;
    up_dma_last_reg_0 : in STD_LOGIC;
    up_bl_partial : in STD_LOGIC;
    up_response_valid : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    \m_axis_raddr_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    up_eot : in STD_LOGIC;
    \up_transfer_id_eot_reg[0]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    req_eot : in STD_LOGIC;
    p_7_in : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    dbg_status : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_transfer_id_reg[0]_0\ : in STD_LOGIC;
    \up_transfer_id_reg[0]_1\ : in STD_LOGIC;
    req_gen_ready : in STD_LOGIC;
    \up_dma_x_length_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_dma_dest_address_reg[29]_0\ : in STD_LOGIC_VECTOR ( 27 downto 0 );
    \up_dma_dest_address_reg[29]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \up_measured_transfer_length_reg[7]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_regmap_request;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_regmap_request is
  signal \^d\ : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal i_transfer_lenghts_fifo_n_0 : STD_LOGIC;
  signal i_transfer_lenghts_fifo_n_1 : STD_LOGIC;
  signal i_transfer_lenghts_fifo_n_4 : STD_LOGIC;
  signal i_transfer_lenghts_fifo_n_5 : STD_LOGIC;
  signal \^response_ready_reg_0\ : STD_LOGIC;
  signal \^up_clear_tl\ : STD_LOGIC;
  signal \^up_dma_last\ : STD_LOGIC;
  signal \^up_dma_req_valid_reg_0\ : STD_LOGIC;
  signal \^up_dma_x_length_reg[23]_0\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal up_measured_transfer_length : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \up_measured_transfer_length[23]_i_1_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length[3]_i_2_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length[3]_i_3_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length[3]_i_4_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length[3]_i_5_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length[7]_i_2_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length[7]_i_3_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length[7]_i_4_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \^up_measured_transfer_length_reg[23]_0\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \up_measured_transfer_length_reg[23]_i_3_n_1\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[23]_i_3_n_2\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[23]_i_3_n_3\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[23]_i_3_n_4\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[23]_i_3_n_5\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[23]_i_3_n_6\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[23]_i_3_n_7\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \up_measured_transfer_length_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^up_partial_length_valid_reg_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal up_tlf_s_valid_reg_n_0 : STD_LOGIC;
  signal \up_transfer_done_bitmap[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[0]_i_2_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[1]_i_2_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[2]_i_1_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[2]_i_2_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[3]_i_1_n_0\ : STD_LOGIC;
  signal \up_transfer_done_bitmap[3]_i_2_n_0\ : STD_LOGIC;
  signal up_transfer_id : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \up_transfer_id[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_transfer_id[1]_i_1_n_0\ : STD_LOGIC;
  signal up_transfer_id_eot : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \up_transfer_id_eot[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_transfer_id_eot[1]_i_1_n_0\ : STD_LOGIC;
  signal up_transfer_id_eot_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \up_transfer_id_eot_d[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_transfer_id_eot_d[1]_i_1_n_0\ : STD_LOGIC;
  signal \^up_transfer_id_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_up_measured_transfer_length_reg[23]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \up_transfer_done_bitmap[0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \up_transfer_done_bitmap[1]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \up_transfer_done_bitmap[3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \up_transfer_id_eot[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \up_transfer_id_eot_d[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \up_transfer_id_eot_d[1]_i_1\ : label is "soft_lutpair6";
begin
  D(32 downto 0) <= \^d\(32 downto 0);
  response_ready_reg_0 <= \^response_ready_reg_0\;
  up_clear_tl <= \^up_clear_tl\;
  up_dma_last <= \^up_dma_last\;
  up_dma_req_valid_reg_0 <= \^up_dma_req_valid_reg_0\;
  \up_dma_x_length_reg[23]_0\(16 downto 0) <= \^up_dma_x_length_reg[23]_0\(16 downto 0);
  \up_measured_transfer_length_reg[23]_0\(21 downto 0) <= \^up_measured_transfer_length_reg[23]_0\(21 downto 0);
  up_partial_length_valid_reg_0(2 downto 0) <= \^up_partial_length_valid_reg_0\(2 downto 0);
  \up_transfer_id_reg[1]_0\(0) <= \^up_transfer_id_reg[1]_0\(0);
i_transfer_lenghts_fifo: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo
     port map (
      Q(2 downto 1) => Q(3 downto 2),
      Q(0) => Q(0),
      ctrl_enable_reg => i_transfer_lenghts_fifo_n_0,
      \data_reg[25]_0\(23 downto 0) => \data_reg[25]\(23 downto 0),
      \level_reg[2]\ => up_tlf_s_valid_reg_n_0,
      \m_axis_raddr_reg[0]\ => \m_axis_raddr_reg[0]\,
      p_8_in => p_8_in,
      response_ready_reg => \^response_ready_reg_0\,
      response_valid_reg => i_transfer_lenghts_fifo_n_4,
      s_axi_aclk => s_axi_aclk,
      s_axis_data(25 downto 24) => up_transfer_id_eot_d(1 downto 0),
      s_axis_data(23 downto 4) => \^up_measured_transfer_length_reg[23]_0\(21 downto 2),
      s_axis_data(3 downto 2) => up_measured_transfer_length(3 downto 2),
      s_axis_data(1 downto 0) => \^up_measured_transfer_length_reg[23]_0\(1 downto 0),
      up_bl_partial => up_bl_partial,
      up_dma_last => \^up_dma_last\,
      up_partial_length_valid_reg(0) => \^up_partial_length_valid_reg_0\(2),
      up_response_valid => up_response_valid,
      up_tlf_s_valid_reg => i_transfer_lenghts_fifo_n_1,
      up_transfer_id(0) => up_transfer_id(0),
      up_transfer_id_eot(1 downto 0) => up_transfer_id_eot(1 downto 0),
      \up_transfer_id_eot_reg[0]\ => \up_transfer_id_eot_reg[0]_0\,
      \up_transfer_id_eot_reg[1]\ => \up_transfer_id_eot_reg[1]_0\,
      valid_reg_0 => i_transfer_lenghts_fifo_n_5
    );
response_ready_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_transfer_lenghts_fifo_n_4,
      Q => \^response_ready_reg_0\,
      S => i_transfer_lenghts_fifo_n_0
    );
up_clear_tl_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_clear_tl_reg_0,
      Q => \^up_clear_tl\,
      R => '0'
    );
\up_dma_dest_address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(8),
      Q => \^d\(13),
      R => SR(0)
    );
\up_dma_dest_address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(9),
      Q => \^d\(14),
      R => SR(0)
    );
\up_dma_dest_address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(10),
      Q => \^d\(15),
      R => SR(0)
    );
\up_dma_dest_address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(11),
      Q => \^d\(16),
      R => SR(0)
    );
\up_dma_dest_address_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(12),
      Q => \^d\(17),
      R => SR(0)
    );
\up_dma_dest_address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(13),
      Q => \^d\(18),
      R => SR(0)
    );
\up_dma_dest_address_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(14),
      Q => \^d\(19),
      R => SR(0)
    );
\up_dma_dest_address_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(15),
      Q => \^d\(20),
      R => SR(0)
    );
\up_dma_dest_address_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(16),
      Q => \^d\(21),
      R => SR(0)
    );
\up_dma_dest_address_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(17),
      Q => \^d\(22),
      R => SR(0)
    );
\up_dma_dest_address_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(18),
      Q => \^d\(23),
      R => SR(0)
    );
\up_dma_dest_address_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(19),
      Q => \^d\(24),
      R => SR(0)
    );
\up_dma_dest_address_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(20),
      Q => \^d\(25),
      R => SR(0)
    );
\up_dma_dest_address_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(21),
      Q => \^d\(26),
      R => SR(0)
    );
\up_dma_dest_address_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(22),
      Q => \^d\(27),
      R => SR(0)
    );
\up_dma_dest_address_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(23),
      Q => \^d\(28),
      R => SR(0)
    );
\up_dma_dest_address_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(24),
      Q => \^d\(29),
      R => SR(0)
    );
\up_dma_dest_address_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(25),
      Q => \^d\(30),
      R => SR(0)
    );
\up_dma_dest_address_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(26),
      Q => \^d\(31),
      R => SR(0)
    );
\up_dma_dest_address_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(27),
      Q => \^d\(32),
      R => SR(0)
    );
\up_dma_dest_address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(0),
      Q => \^d\(5),
      R => SR(0)
    );
\up_dma_dest_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(1),
      Q => \^d\(6),
      R => SR(0)
    );
\up_dma_dest_address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(2),
      Q => \^d\(7),
      R => SR(0)
    );
\up_dma_dest_address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(3),
      Q => \^d\(8),
      R => SR(0)
    );
\up_dma_dest_address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(4),
      Q => \^d\(9),
      R => SR(0)
    );
\up_dma_dest_address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(5),
      Q => \^d\(10),
      R => SR(0)
    );
\up_dma_dest_address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(6),
      Q => \^d\(11),
      R => SR(0)
    );
\up_dma_dest_address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_dest_address_reg[29]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(7),
      Q => \^d\(12),
      R => SR(0)
    );
up_dma_enable_tlen_reporting_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_dma_enable_tlen_reporting_reg_0,
      Q => p_3_in(0),
      R => SR(0)
    );
up_dma_last_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_dma_last_reg_0,
      Q => \^up_dma_last\,
      S => SR(0)
    );
up_dma_req_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_dma_req_valid_reg_1,
      Q => \^up_dma_req_valid_reg_0\,
      R => '0'
    );
\up_dma_x_length_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(8),
      Q => \^up_dma_x_length_reg[23]_0\(3),
      R => SR(0)
    );
\up_dma_x_length_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(9),
      Q => \^up_dma_x_length_reg[23]_0\(4),
      R => SR(0)
    );
\up_dma_x_length_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(10),
      Q => \^up_dma_x_length_reg[23]_0\(5),
      R => SR(0)
    );
\up_dma_x_length_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(11),
      Q => \^up_dma_x_length_reg[23]_0\(6),
      R => SR(0)
    );
\up_dma_x_length_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(12),
      Q => \^up_dma_x_length_reg[23]_0\(7),
      R => SR(0)
    );
\up_dma_x_length_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(13),
      Q => \^up_dma_x_length_reg[23]_0\(8),
      R => SR(0)
    );
\up_dma_x_length_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(14),
      Q => \^up_dma_x_length_reg[23]_0\(9),
      R => SR(0)
    );
\up_dma_x_length_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(15),
      Q => \^up_dma_x_length_reg[23]_0\(10),
      R => SR(0)
    );
\up_dma_x_length_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(16),
      Q => \^up_dma_x_length_reg[23]_0\(11),
      R => SR(0)
    );
\up_dma_x_length_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(17),
      Q => \^up_dma_x_length_reg[23]_0\(12),
      R => SR(0)
    );
\up_dma_x_length_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(18),
      Q => \^up_dma_x_length_reg[23]_0\(13),
      R => SR(0)
    );
\up_dma_x_length_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(19),
      Q => \^up_dma_x_length_reg[23]_0\(14),
      R => SR(0)
    );
\up_dma_x_length_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(20),
      Q => \^up_dma_x_length_reg[23]_0\(15),
      R => SR(0)
    );
\up_dma_x_length_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(21),
      Q => \^up_dma_x_length_reg[23]_0\(16),
      R => SR(0)
    );
\up_dma_x_length_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(0),
      Q => \^d\(0),
      R => SR(0)
    );
\up_dma_x_length_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(1),
      Q => \^d\(1),
      R => SR(0)
    );
\up_dma_x_length_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(2),
      Q => \^d\(2),
      R => SR(0)
    );
\up_dma_x_length_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(3),
      Q => \^d\(3),
      R => SR(0)
    );
\up_dma_x_length_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(4),
      Q => \^d\(4),
      R => SR(0)
    );
\up_dma_x_length_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(5),
      Q => \^up_dma_x_length_reg[23]_0\(0),
      R => SR(0)
    );
\up_dma_x_length_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(6),
      Q => \^up_dma_x_length_reg[23]_0\(1),
      R => SR(0)
    );
\up_dma_x_length_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \up_dma_x_length_reg[2]_1\(0),
      D => \up_dma_dest_address_reg[29]_0\(7),
      Q => \^up_dma_x_length_reg[23]_0\(2),
      R => SR(0)
    );
\up_measured_transfer_length[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"70FF"
    )
        port map (
      I0 => up_response_valid,
      I1 => \^response_ready_reg_0\,
      I2 => \^up_clear_tl\,
      I3 => \m_axis_raddr_reg[0]\,
      O => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => up_measured_transfer_length(3),
      I1 => \up_measured_transfer_length_reg[7]_0\(3),
      O => \up_measured_transfer_length[3]_i_2_n_0\
    );
\up_measured_transfer_length[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => up_measured_transfer_length(2),
      I1 => \up_measured_transfer_length_reg[7]_0\(2),
      O => \up_measured_transfer_length[3]_i_3_n_0\
    );
\up_measured_transfer_length[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^up_measured_transfer_length_reg[23]_0\(1),
      I1 => \up_measured_transfer_length_reg[7]_0\(1),
      O => \up_measured_transfer_length[3]_i_4_n_0\
    );
\up_measured_transfer_length[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^up_measured_transfer_length_reg[23]_0\(0),
      I1 => \up_measured_transfer_length_reg[7]_0\(0),
      O => \up_measured_transfer_length[3]_i_5_n_0\
    );
\up_measured_transfer_length[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^up_measured_transfer_length_reg[23]_0\(4),
      I1 => \up_measured_transfer_length_reg[7]_0\(6),
      O => \up_measured_transfer_length[7]_i_2_n_0\
    );
\up_measured_transfer_length[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^up_measured_transfer_length_reg[23]_0\(3),
      I1 => \up_measured_transfer_length_reg[7]_0\(5),
      O => \up_measured_transfer_length[7]_i_3_n_0\
    );
\up_measured_transfer_length[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^up_measured_transfer_length_reg[23]_0\(2),
      I1 => \up_measured_transfer_length_reg[7]_0\(4),
      O => \up_measured_transfer_length[7]_i_4_n_0\
    );
\up_measured_transfer_length_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[3]_i_1_n_7\,
      Q => \^up_measured_transfer_length_reg[23]_0\(0),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[11]_i_1_n_5\,
      Q => \^up_measured_transfer_length_reg[23]_0\(8),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[11]_i_1_n_4\,
      Q => \^up_measured_transfer_length_reg[23]_0\(9),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \up_measured_transfer_length_reg[7]_i_1_n_0\,
      CO(3) => \up_measured_transfer_length_reg[11]_i_1_n_0\,
      CO(2) => \up_measured_transfer_length_reg[11]_i_1_n_1\,
      CO(1) => \up_measured_transfer_length_reg[11]_i_1_n_2\,
      CO(0) => \up_measured_transfer_length_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \up_measured_transfer_length_reg[11]_i_1_n_4\,
      O(2) => \up_measured_transfer_length_reg[11]_i_1_n_5\,
      O(1) => \up_measured_transfer_length_reg[11]_i_1_n_6\,
      O(0) => \up_measured_transfer_length_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^up_measured_transfer_length_reg[23]_0\(9 downto 6)
    );
\up_measured_transfer_length_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[15]_i_1_n_7\,
      Q => \^up_measured_transfer_length_reg[23]_0\(10),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[15]_i_1_n_6\,
      Q => \^up_measured_transfer_length_reg[23]_0\(11),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[15]_i_1_n_5\,
      Q => \^up_measured_transfer_length_reg[23]_0\(12),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[15]_i_1_n_4\,
      Q => \^up_measured_transfer_length_reg[23]_0\(13),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \up_measured_transfer_length_reg[11]_i_1_n_0\,
      CO(3) => \up_measured_transfer_length_reg[15]_i_1_n_0\,
      CO(2) => \up_measured_transfer_length_reg[15]_i_1_n_1\,
      CO(1) => \up_measured_transfer_length_reg[15]_i_1_n_2\,
      CO(0) => \up_measured_transfer_length_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \up_measured_transfer_length_reg[15]_i_1_n_4\,
      O(2) => \up_measured_transfer_length_reg[15]_i_1_n_5\,
      O(1) => \up_measured_transfer_length_reg[15]_i_1_n_6\,
      O(0) => \up_measured_transfer_length_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^up_measured_transfer_length_reg[23]_0\(13 downto 10)
    );
\up_measured_transfer_length_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[19]_i_1_n_7\,
      Q => \^up_measured_transfer_length_reg[23]_0\(14),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[19]_i_1_n_6\,
      Q => \^up_measured_transfer_length_reg[23]_0\(15),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[19]_i_1_n_5\,
      Q => \^up_measured_transfer_length_reg[23]_0\(16),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[19]_i_1_n_4\,
      Q => \^up_measured_transfer_length_reg[23]_0\(17),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \up_measured_transfer_length_reg[15]_i_1_n_0\,
      CO(3) => \up_measured_transfer_length_reg[19]_i_1_n_0\,
      CO(2) => \up_measured_transfer_length_reg[19]_i_1_n_1\,
      CO(1) => \up_measured_transfer_length_reg[19]_i_1_n_2\,
      CO(0) => \up_measured_transfer_length_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \up_measured_transfer_length_reg[19]_i_1_n_4\,
      O(2) => \up_measured_transfer_length_reg[19]_i_1_n_5\,
      O(1) => \up_measured_transfer_length_reg[19]_i_1_n_6\,
      O(0) => \up_measured_transfer_length_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^up_measured_transfer_length_reg[23]_0\(17 downto 14)
    );
\up_measured_transfer_length_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[3]_i_1_n_6\,
      Q => \^up_measured_transfer_length_reg[23]_0\(1),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[23]_i_3_n_7\,
      Q => \^up_measured_transfer_length_reg[23]_0\(18),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[23]_i_3_n_6\,
      Q => \^up_measured_transfer_length_reg[23]_0\(19),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[23]_i_3_n_5\,
      Q => \^up_measured_transfer_length_reg[23]_0\(20),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[23]_i_3_n_4\,
      Q => \^up_measured_transfer_length_reg[23]_0\(21),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[23]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \up_measured_transfer_length_reg[19]_i_1_n_0\,
      CO(3) => \NLW_up_measured_transfer_length_reg[23]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \up_measured_transfer_length_reg[23]_i_3_n_1\,
      CO(1) => \up_measured_transfer_length_reg[23]_i_3_n_2\,
      CO(0) => \up_measured_transfer_length_reg[23]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \up_measured_transfer_length_reg[23]_i_3_n_4\,
      O(2) => \up_measured_transfer_length_reg[23]_i_3_n_5\,
      O(1) => \up_measured_transfer_length_reg[23]_i_3_n_6\,
      O(0) => \up_measured_transfer_length_reg[23]_i_3_n_7\,
      S(3 downto 0) => \^up_measured_transfer_length_reg[23]_0\(21 downto 18)
    );
\up_measured_transfer_length_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[3]_i_1_n_5\,
      Q => up_measured_transfer_length(2),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[3]_i_1_n_4\,
      Q => up_measured_transfer_length(3),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \up_measured_transfer_length_reg[3]_i_1_n_0\,
      CO(2) => \up_measured_transfer_length_reg[3]_i_1_n_1\,
      CO(1) => \up_measured_transfer_length_reg[3]_i_1_n_2\,
      CO(0) => \up_measured_transfer_length_reg[3]_i_1_n_3\,
      CYINIT => '1',
      DI(3 downto 2) => up_measured_transfer_length(3 downto 2),
      DI(1 downto 0) => \^up_measured_transfer_length_reg[23]_0\(1 downto 0),
      O(3) => \up_measured_transfer_length_reg[3]_i_1_n_4\,
      O(2) => \up_measured_transfer_length_reg[3]_i_1_n_5\,
      O(1) => \up_measured_transfer_length_reg[3]_i_1_n_6\,
      O(0) => \up_measured_transfer_length_reg[3]_i_1_n_7\,
      S(3) => \up_measured_transfer_length[3]_i_2_n_0\,
      S(2) => \up_measured_transfer_length[3]_i_3_n_0\,
      S(1) => \up_measured_transfer_length[3]_i_4_n_0\,
      S(0) => \up_measured_transfer_length[3]_i_5_n_0\
    );
\up_measured_transfer_length_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[7]_i_1_n_7\,
      Q => \^up_measured_transfer_length_reg[23]_0\(2),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[7]_i_1_n_6\,
      Q => \^up_measured_transfer_length_reg[23]_0\(3),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[7]_i_1_n_5\,
      Q => \^up_measured_transfer_length_reg[23]_0\(4),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[7]_i_1_n_4\,
      Q => \^up_measured_transfer_length_reg[23]_0\(5),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \up_measured_transfer_length_reg[3]_i_1_n_0\,
      CO(3) => \up_measured_transfer_length_reg[7]_i_1_n_0\,
      CO(2) => \up_measured_transfer_length_reg[7]_i_1_n_1\,
      CO(1) => \up_measured_transfer_length_reg[7]_i_1_n_2\,
      CO(0) => \up_measured_transfer_length_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^up_measured_transfer_length_reg[23]_0\(4 downto 2),
      O(3) => \up_measured_transfer_length_reg[7]_i_1_n_4\,
      O(2) => \up_measured_transfer_length_reg[7]_i_1_n_5\,
      O(1) => \up_measured_transfer_length_reg[7]_i_1_n_6\,
      O(0) => \up_measured_transfer_length_reg[7]_i_1_n_7\,
      S(3) => \^up_measured_transfer_length_reg[23]_0\(5),
      S(2) => \up_measured_transfer_length[7]_i_2_n_0\,
      S(1) => \up_measured_transfer_length[7]_i_3_n_0\,
      S(0) => \up_measured_transfer_length[7]_i_4_n_0\
    );
\up_measured_transfer_length_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[11]_i_1_n_7\,
      Q => \^up_measured_transfer_length_reg[23]_0\(6),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
\up_measured_transfer_length_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_7_in,
      D => \up_measured_transfer_length_reg[11]_i_1_n_6\,
      Q => \^up_measured_transfer_length_reg[23]_0\(7),
      R => \up_measured_transfer_length[23]_i_1_n_0\
    );
up_partial_length_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_transfer_lenghts_fifo_n_5,
      Q => \^up_partial_length_valid_reg_0\(2),
      R => i_transfer_lenghts_fifo_n_0
    );
\up_rdata[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^d\(13),
      O => \up_dma_x_length_reg[10]_0\
    );
\up_rdata[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(4),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^d\(14),
      O => \up_dma_x_length_reg[11]_0\
    );
\up_rdata[12]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(5),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^d\(15),
      O => \up_dma_x_length_reg[12]_0\
    );
\up_rdata[13]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(6),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^d\(16),
      O => \up_dma_x_length_reg[13]_0\
    );
\up_rdata[14]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(7),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^d\(17),
      O => \up_dma_x_length_reg[14]_0\
    );
\up_rdata[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(8),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^d\(18),
      O => \up_dma_x_length_reg[15]_0\
    );
\up_rdata[16]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(9),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^d\(19),
      O => \up_dma_x_length_reg[16]_0\
    );
\up_rdata[17]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(10),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^d\(20),
      O => \up_dma_x_length_reg[17]_0\
    );
\up_rdata[18]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(11),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^d\(21),
      O => \up_dma_x_length_reg[18]_0\
    );
\up_rdata[19]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(12),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^d\(22),
      O => \up_dma_x_length_reg[19]_0\
    );
\up_rdata[20]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(13),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^d\(23),
      O => \up_dma_x_length_reg[20]_0\
    );
\up_rdata[21]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(14),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^d\(24),
      O => \up_dma_x_length_reg[21]_0\
    );
\up_rdata[22]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(15),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^d\(25),
      O => \up_dma_x_length_reg[22]_0\
    );
\up_rdata[23]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(16),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^d\(26),
      O => \up_dma_x_length_reg[23]_1\
    );
\up_rdata[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033308800003088"
    )
        port map (
      I0 => \^d\(0),
      I1 => Q(1),
      I2 => data5(2),
      I3 => Q(2),
      I4 => Q(3),
      I5 => up_measured_transfer_length(2),
      O => \up_dma_x_length_reg[2]_0\
    );
\up_rdata[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033308800003088"
    )
        port map (
      I0 => \^d\(1),
      I1 => Q(1),
      I2 => data5(3),
      I3 => Q(2),
      I4 => Q(3),
      I5 => up_measured_transfer_length(3),
      O => \up_dma_x_length_reg[3]_0\
    );
\up_rdata[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \^d\(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^d\(7),
      O => \up_dma_x_length_reg[4]_0\
    );
\up_rdata[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \^d\(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^d\(8),
      O => \up_dma_x_length_reg[5]_0\
    );
\up_rdata[6]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \^d\(4),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^d\(9),
      O => \up_dma_x_length_reg[6]_0\
    );
\up_rdata[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(0),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^d\(10),
      O => \up_dma_x_length_reg[7]_0\
    );
\up_rdata[8]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(1),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^d\(11),
      O => \up_dma_x_length_reg[8]_0\
    );
\up_rdata[9]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC8C"
    )
        port map (
      I0 => \^up_dma_x_length_reg[23]_0\(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^d\(12),
      O => \up_dma_x_length_reg[9]_0\
    );
up_tlf_s_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_transfer_lenghts_fifo_n_1,
      Q => up_tlf_s_valid_reg_n_0,
      R => '0'
    );
\up_transfer_done_bitmap[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF8F88888888"
    )
        port map (
      I0 => \up_transfer_done_bitmap[0]_i_2_n_0\,
      I1 => up_eot,
      I2 => E(0),
      I3 => up_transfer_id(0),
      I4 => \^up_transfer_id_reg[1]_0\(0),
      I5 => \^up_partial_length_valid_reg_0\(0),
      O => \up_transfer_done_bitmap[0]_i_1_n_0\
    );
\up_transfer_done_bitmap[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => up_transfer_id_eot(1),
      I1 => up_transfer_id_eot(0),
      O => \up_transfer_done_bitmap[0]_i_2_n_0\
    );
\up_transfer_done_bitmap[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8FFFFF88888888"
    )
        port map (
      I0 => \up_transfer_done_bitmap[1]_i_2_n_0\,
      I1 => up_eot,
      I2 => E(0),
      I3 => \^up_transfer_id_reg[1]_0\(0),
      I4 => up_transfer_id(0),
      I5 => \^up_partial_length_valid_reg_0\(1),
      O => \up_transfer_done_bitmap[1]_i_1_n_0\
    );
\up_transfer_done_bitmap[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => up_transfer_id_eot(0),
      I1 => up_transfer_id_eot(1),
      O => \up_transfer_done_bitmap[1]_i_2_n_0\
    );
\up_transfer_done_bitmap[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8FFFFF88888888"
    )
        port map (
      I0 => \up_transfer_done_bitmap[2]_i_2_n_0\,
      I1 => up_eot,
      I2 => E(0),
      I3 => up_transfer_id(0),
      I4 => \^up_transfer_id_reg[1]_0\(0),
      I5 => data5(2),
      O => \up_transfer_done_bitmap[2]_i_1_n_0\
    );
\up_transfer_done_bitmap[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => up_transfer_id_eot(1),
      I1 => up_transfer_id_eot(0),
      O => \up_transfer_done_bitmap[2]_i_2_n_0\
    );
\up_transfer_done_bitmap[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFFFFFF88888888"
    )
        port map (
      I0 => \up_transfer_done_bitmap[3]_i_2_n_0\,
      I1 => up_eot,
      I2 => E(0),
      I3 => up_transfer_id(0),
      I4 => \^up_transfer_id_reg[1]_0\(0),
      I5 => data5(3),
      O => \up_transfer_done_bitmap[3]_i_1_n_0\
    );
\up_transfer_done_bitmap[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => up_transfer_id_eot(1),
      I1 => up_transfer_id_eot(0),
      O => \up_transfer_done_bitmap[3]_i_2_n_0\
    );
\up_transfer_done_bitmap_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_done_bitmap[0]_i_1_n_0\,
      Q => \^up_partial_length_valid_reg_0\(0),
      R => i_transfer_lenghts_fifo_n_0
    );
\up_transfer_done_bitmap_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_done_bitmap[1]_i_1_n_0\,
      Q => \^up_partial_length_valid_reg_0\(1),
      R => i_transfer_lenghts_fifo_n_0
    );
\up_transfer_done_bitmap_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_done_bitmap[2]_i_1_n_0\,
      Q => data5(2),
      R => i_transfer_lenghts_fifo_n_0
    );
\up_transfer_done_bitmap_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_done_bitmap[3]_i_1_n_0\,
      Q => data5(3),
      R => i_transfer_lenghts_fifo_n_0
    );
\up_transfer_id[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FF7FFFF80080000"
    )
        port map (
      I0 => \^up_dma_req_valid_reg_0\,
      I1 => dbg_status(0),
      I2 => \up_transfer_id_reg[0]_0\,
      I3 => \up_transfer_id_reg[0]_1\,
      I4 => req_gen_ready,
      I5 => up_transfer_id(0),
      O => \up_transfer_id[0]_i_1_n_0\
    );
\up_transfer_id[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => up_transfer_id(0),
      I1 => E(0),
      I2 => \^up_transfer_id_reg[1]_0\(0),
      O => \up_transfer_id[1]_i_1_n_0\
    );
\up_transfer_id_eot[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFFFFFD0000"
    )
        port map (
      I0 => \up_transfer_id_eot_reg[0]_1\(1),
      I1 => \up_transfer_id_eot_reg[0]_1\(2),
      I2 => \up_transfer_id_eot_reg[0]_1\(0),
      I3 => req_eot,
      I4 => p_7_in,
      I5 => up_transfer_id_eot(0),
      O => \up_transfer_id_eot[0]_i_1_n_0\
    );
\up_transfer_id_eot[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => up_transfer_id_eot(0),
      I1 => up_eot,
      I2 => up_transfer_id_eot(1),
      O => \up_transfer_id_eot[1]_i_1_n_0\
    );
\up_transfer_id_eot_d[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => up_transfer_id_eot(0),
      I1 => up_response_valid,
      I2 => \^response_ready_reg_0\,
      I3 => up_transfer_id_eot_d(0),
      O => \up_transfer_id_eot_d[0]_i_1_n_0\
    );
\up_transfer_id_eot_d[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => up_transfer_id_eot(1),
      I1 => up_response_valid,
      I2 => \^response_ready_reg_0\,
      I3 => up_transfer_id_eot_d(1),
      O => \up_transfer_id_eot_d[1]_i_1_n_0\
    );
\up_transfer_id_eot_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_id_eot_d[0]_i_1_n_0\,
      Q => up_transfer_id_eot_d(0),
      R => '0'
    );
\up_transfer_id_eot_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_id_eot_d[1]_i_1_n_0\,
      Q => up_transfer_id_eot_d(1),
      R => '0'
    );
\up_transfer_id_eot_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_id_eot[0]_i_1_n_0\,
      Q => up_transfer_id_eot(0),
      R => i_transfer_lenghts_fifo_n_0
    );
\up_transfer_id_eot_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_id_eot[1]_i_1_n_0\,
      Q => up_transfer_id_eot(1),
      R => i_transfer_lenghts_fifo_n_0
    );
\up_transfer_id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_id[0]_i_1_n_0\,
      Q => up_transfer_id(0),
      R => i_transfer_lenghts_fifo_n_0
    );
\up_transfer_id_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_transfer_id[1]_i_1_n_0\,
      Q => \^up_transfer_id_reg[1]_0\(0),
      R => i_transfer_lenghts_fifo_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_request_arb is
  port (
    m_dest_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    addr_valid_reg : out STD_LOGIC;
    fifo_wr_overflow : out STD_LOGIC;
    s_axis_waddr_reg : out STD_LOGIC;
    \cdc_sync_stage2_reg[0]\ : out STD_LOGIC;
    req_ready_reg : out STD_LOGIC;
    req_eot_reg : out STD_LOGIC;
    m_dest_axi_awaddr : out STD_LOGIC_VECTOR ( 27 downto 0 );
    response_valid_reg : out STD_LOGIC;
    dbg_status : out STD_LOGIC_VECTOR ( 0 to 0 );
    active_reg : out STD_LOGIC;
    dest_mem_data_valid_reg : out STD_LOGIC;
    m_dest_axi_wlast : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    up_eot : out STD_LOGIC;
    \state_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    up_bl_partial : out STD_LOGIC;
    p_7_in : out STD_LOGIC;
    m_dest_axi_bready : out STD_LOGIC;
    src_request_id : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \id_reg[2]\ : out STD_LOGIC;
    \id_reg[0]\ : out STD_LOGIC;
    \id_reg[1]\ : out STD_LOGIC;
    enabled_reg : out STD_LOGIC;
    \cdc_sync_stage2_reg[2]\ : out STD_LOGIC;
    \cdc_sync_stage2_reg[3]\ : out STD_LOGIC;
    \id_reg[3]\ : out STD_LOGIC;
    \dest_id_reg[0]\ : out STD_LOGIC;
    \dest_id_reg[1]\ : out STD_LOGIC;
    \dest_id_reg[2]\ : out STD_LOGIC;
    \dest_id_reg[3]\ : out STD_LOGIC;
    \id_reg[0]_0\ : out STD_LOGIC;
    \id_reg[1]_0\ : out STD_LOGIC;
    \id_reg[2]_0\ : out STD_LOGIC;
    \id_reg[3]_0\ : out STD_LOGIC;
    \cdc_sync_stage2_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[1]\ : out STD_LOGIC;
    \measured_burst_length_reg[6]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_dest_axi_awlen : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_dest_axi_aclk : in STD_LOGIC;
    fifo_wr_clk : in STD_LOGIC;
    fifo_wr_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    \src_id_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    dest_valid_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_wready : in STD_LOGIC;
    s_axis_waddr_reg_0 : in STD_LOGIC;
    up_dma_req_valid : in STD_LOGIC;
    up_response_ready : in STD_LOGIC;
    p_3_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_awready : in STD_LOGIC;
    m_dest_axi_bvalid : in STD_LOGIC;
    fifo_wr_sync : in STD_LOGIC;
    fifo_wr_en : in STD_LOGIC;
    src_enable : in STD_LOGIC;
    \up_rdata_reg[3]\ : in STD_LOGIC;
    \up_rdata_reg[3]_0\ : in STD_LOGIC;
    \burst_count_reg[16]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \up_rdata_reg[11]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    up_clear_tl : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 32 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_request_arb;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_request_arb is
  signal cdc_sync_stage2 : STD_LOGIC;
  signal \^cdc_sync_stage2_reg[1]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data : STD_LOGIC_VECTOR ( 29 downto 2 );
  signal data8 : STD_LOGIC_VECTOR ( 19 downto 2 );
  signal dbg_ids0 : STD_LOGIC_VECTOR ( 27 downto 8 );
  signal dest_address_eot : STD_LOGIC;
  signal dest_bl_ready : STD_LOGIC;
  signal dest_burst_info_write : STD_LOGIC;
  signal dest_burst_len : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal dest_burst_valid : STD_LOGIC;
  signal dest_id_reduced_next : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dest_req_ready : STD_LOGIC;
  signal dest_response_eot : STD_LOGIC;
  signal dest_response_ready : STD_LOGIC;
  signal \^g\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \i_addr_gen/last_burst_len0\ : STD_LOGIC;
  signal \i_data_mover/active0\ : STD_LOGIC;
  signal i_dest_req_fifo_n_0 : STD_LOGIC;
  signal i_dest_req_fifo_n_1 : STD_LOGIC;
  signal i_dest_req_fifo_n_3 : STD_LOGIC;
  signal i_dest_req_fifo_n_4 : STD_LOGIC;
  signal \i_response_handler/active__6\ : STD_LOGIC;
  signal \i_response_handler/id0\ : STD_LOGIC;
  signal i_src_dest_bl_fifo_n_0 : STD_LOGIC;
  signal i_src_dest_bl_fifo_n_2 : STD_LOGIC;
  signal i_src_dest_bl_fifo_n_3 : STD_LOGIC;
  signal i_src_dest_bl_fifo_n_5 : STD_LOGIC;
  signal i_src_dest_bl_fifo_n_6 : STD_LOGIC;
  signal i_src_dest_bl_fifo_n_7 : STD_LOGIC;
  signal i_src_dest_bl_fifo_n_8 : STD_LOGIC;
  signal i_src_dest_bl_fifo_n_9 : STD_LOGIC;
  signal i_src_req_fifo_n_1 : STD_LOGIC;
  signal i_src_req_fifo_n_2 : STD_LOGIC;
  signal i_src_req_fifo_n_6 : STD_LOGIC;
  signal i_store_and_forward_n_37 : STD_LOGIC;
  signal i_store_and_forward_n_43 : STD_LOGIC;
  signal i_store_and_forward_n_52 : STD_LOGIC;
  signal i_store_and_forward_n_58 : STD_LOGIC;
  signal inc_id_return : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^m_dest_axi_awaddr\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal measured_last_burst_length : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_in12_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \req_gen_valid__0\ : STD_LOGIC;
  signal req_last_burst_length : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^req_ready_reg\ : STD_LOGIC;
  signal request_eot : STD_LOGIC;
  signal request_id : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal response_data_burst_length : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \s_axis_data__0\ : STD_LOGIC_VECTOR ( 28 downto 1 );
  signal src_beat_counter0 : STD_LOGIC;
  signal src_bl_valid : STD_LOGIC;
  signal src_dest_valid_hs : STD_LOGIC;
  signal src_eot : STD_LOGIC;
  signal \src_last_beat__0\ : STD_LOGIC;
  signal src_req_dest_address : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal src_req_ready : STD_LOGIC;
  signal src_throttled_request_id0 : STD_LOGIC;
  signal \src_throttled_request_id[0]_i_1_n_0\ : STD_LOGIC;
  signal \src_throttled_request_id[3]_i_2_n_0\ : STD_LOGIC;
  signal \src_throttled_request_id_reg_n_0_[0]\ : STD_LOGIC;
  signal \src_throttled_request_id_reg_n_0_[1]\ : STD_LOGIC;
  signal src_valid : STD_LOGIC;
  signal NLW_eot_mem_dest_reg_r1_0_15_0_0_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_eot_mem_dest_reg_r2_0_15_0_0_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_eot_mem_src_reg_0_15_0_0_SPO_UNCONNECTED : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of eot_mem_dest_reg_r1_0_15_0_0 : label is "RAM16X1D";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of eot_mem_dest_reg_r1_0_15_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of eot_mem_dest_reg_r1_0_15_0_0 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of eot_mem_dest_reg_r1_0_15_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of eot_mem_dest_reg_r1_0_15_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of eot_mem_dest_reg_r1_0_15_0_0 : label is 0;
  attribute XILINX_LEGACY_PRIM of eot_mem_dest_reg_r2_0_15_0_0 : label is "RAM16X1D";
  attribute ram_addr_begin of eot_mem_dest_reg_r2_0_15_0_0 : label is 0;
  attribute ram_addr_end of eot_mem_dest_reg_r2_0_15_0_0 : label is 15;
  attribute ram_offset of eot_mem_dest_reg_r2_0_15_0_0 : label is 0;
  attribute ram_slice_begin of eot_mem_dest_reg_r2_0_15_0_0 : label is 0;
  attribute ram_slice_end of eot_mem_dest_reg_r2_0_15_0_0 : label is 0;
  attribute XILINX_LEGACY_PRIM of eot_mem_src_reg_0_15_0_0 : label is "RAM16X1D";
  attribute ram_addr_begin of eot_mem_src_reg_0_15_0_0 : label is 0;
  attribute ram_addr_end of eot_mem_src_reg_0_15_0_0 : label is 15;
  attribute ram_offset of eot_mem_src_reg_0_15_0_0 : label is 0;
  attribute ram_slice_begin of eot_mem_src_reg_0_15_0_0 : label is 0;
  attribute ram_slice_end of eot_mem_src_reg_0_15_0_0 : label is 0;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_throttled_request_id[0]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \src_throttled_request_id[1]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \src_throttled_request_id[2]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \src_throttled_request_id[3]_i_2\ : label is "soft_lutpair85";
begin
  \cdc_sync_stage2_reg[1]\(1 downto 0) <= \^cdc_sync_stage2_reg[1]\(1 downto 0);
  g(3 downto 0) <= \^g\(3 downto 0);
  m_dest_axi_awaddr(27 downto 0) <= \^m_dest_axi_awaddr\(27 downto 0);
  req_ready_reg <= \^req_ready_reg\;
eot_mem_dest_reg_r1_0_15_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^g\(0),
      A1 => \^g\(1),
      A2 => \^g\(2),
      A3 => \^g\(3),
      A4 => '0',
      D => src_eot,
      DPO => dest_response_eot,
      DPRA0 => dbg_ids0(24),
      DPRA1 => dbg_ids0(25),
      DPRA2 => dbg_ids0(26),
      DPRA3 => dbg_ids0(27),
      DPRA4 => '0',
      SPO => NLW_eot_mem_dest_reg_r1_0_15_0_0_SPO_UNCONNECTED,
      WCLK => fifo_wr_clk,
      WE => '1'
    );
eot_mem_dest_reg_r2_0_15_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^g\(0),
      A1 => \^g\(1),
      A2 => \^g\(2),
      A3 => \^g\(3),
      A4 => '0',
      D => src_eot,
      DPO => dest_address_eot,
      DPRA0 => dbg_ids0(8),
      DPRA1 => dbg_ids0(9),
      DPRA2 => dbg_ids0(10),
      DPRA3 => dbg_ids0(11),
      DPRA4 => '0',
      SPO => NLW_eot_mem_dest_reg_r2_0_15_0_0_SPO_UNCONNECTED,
      WCLK => fifo_wr_clk,
      WE => '1'
    );
eot_mem_src_reg_0_15_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => request_id(0),
      A1 => request_id(1),
      A2 => request_id(2),
      A3 => request_id(3),
      A4 => '0',
      D => request_eot,
      DPO => src_eot,
      DPRA0 => \^g\(0),
      DPRA1 => \^g\(1),
      DPRA2 => \^g\(2),
      DPRA3 => \^g\(3),
      DPRA4 => '0',
      SPO => NLW_eot_mem_src_reg_0_15_0_0_SPO_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => '1'
    );
i_dest_dma_mm: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_dest_mm_axi
     port map (
      E(0) => \i_addr_gen/last_burst_len0\,
      Q(0) => Q(0),
      \active__6\ => \i_response_handler/active__6\,
      addr_valid_i_2(1 downto 0) => \^cdc_sync_stage2_reg[1]\(1 downto 0),
      addr_valid_reg => addr_valid_reg,
      \address_reg[27]\(27 downto 0) => data(29 downto 2),
      bl_ready_reg => i_src_dest_bl_fifo_n_2,
      \cdc_sync_fifo_ram_reg[1]\(5) => i_store_and_forward_n_52,
      \cdc_sync_fifo_ram_reg[1]\(4 downto 0) => dest_burst_len(4 downto 0),
      \cdc_sync_fifo_ram_reg[1]_0\(1 downto 0) => dbg_ids0(17 downto 16),
      cdc_sync_stage2 => cdc_sync_stage2,
      data8(3 downto 2) => data8(19 downto 18),
      data8(1 downto 0) => data8(3 downto 2),
      dbg_ids0(7 downto 4) => dbg_ids0(27 downto 24),
      dbg_ids0(3 downto 0) => dbg_ids0(11 downto 8),
      dbg_status(0) => dbg_status(0),
      dest_address_eot => dest_address_eot,
      dest_bl_ready => dest_bl_ready,
      dest_burst_info_write => dest_burst_info_write,
      \dest_burst_len_data_reg[2]\(3) => i_store_and_forward_n_37,
      \dest_burst_len_data_reg[2]\(2) => p_0_in12_in,
      \dest_burst_len_data_reg[2]\(1 downto 0) => dest_id_reduced_next(1 downto 0),
      dest_burst_valid => dest_burst_valid,
      dest_req_ready => dest_req_ready,
      dest_response_ready => dest_response_ready,
      enabled_reg => enabled_reg,
      enabled_reg_0(0) => dest_valid_reg(0),
      enabled_reg_1 => s_axis_waddr_reg_0,
      id0 => \i_response_handler/id0\,
      \id_reg[0]\ => \id_reg[0]\,
      \id_reg[0]_0\ => \id_reg[0]_0\,
      \id_reg[1]\ => \id_reg[1]\,
      \id_reg[1]_0\ => \id_reg[1]_0\,
      \id_reg[2]\ => \id_reg[2]\,
      \id_reg[2]_0\ => \id_reg[2]_0\,
      \id_reg[3]\ => \id_reg[3]\,
      \id_reg[3]_0\ => \id_reg[3]_0\,
      \last_burst_len_reg[4]\(4) => i_src_dest_bl_fifo_n_5,
      \last_burst_len_reg[4]\(3) => i_src_dest_bl_fifo_n_6,
      \last_burst_len_reg[4]\(2) => i_src_dest_bl_fifo_n_7,
      \last_burst_len_reg[4]\(1) => i_src_dest_bl_fifo_n_8,
      \last_burst_len_reg[4]\(0) => i_src_dest_bl_fifo_n_9,
      m_dest_axi_aclk => m_dest_axi_aclk,
      m_dest_axi_awaddr(27 downto 0) => \^m_dest_axi_awaddr\(27 downto 0),
      m_dest_axi_awlen(4 downto 0) => m_dest_axi_awlen(4 downto 0),
      m_dest_axi_awready => m_dest_axi_awready,
      m_dest_axi_bready => m_dest_axi_bready,
      req_ready_reg => i_dest_req_fifo_n_1,
      req_ready_reg_0 => i_dest_req_fifo_n_0,
      response_data_burst_length(7 downto 0) => response_data_burst_length(7 downto 0),
      \up_rdata_reg[11]\(0) => \up_rdata_reg[11]\(1),
      \up_rdata_reg[27]\ => \up_rdata_reg[3]\,
      \up_rdata_reg[27]_0\ => \up_rdata_reg[3]_0\,
      \up_rdata_reg[9]\(0) => \src_id_reg[0]\(0)
    );
i_dest_req_fifo: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized1\
     port map (
      E(0) => \i_data_mover/active0\,
      Q(27 downto 0) => data(29 downto 2),
      \cdc_sync_fifo_ram_reg[28]_0\(27 downto 0) => \s_axis_data__0\(28 downto 1),
      \cdc_sync_stage1_reg[0]\(0) => dest_valid_reg(0),
      \cdc_sync_stage1_reg[0]_0\(0) => \src_id_reg[0]\(0),
      \cdc_sync_stage2_reg[0]\ => i_dest_req_fifo_n_0,
      \cdc_sync_stage2_reg[0]_0\ => i_dest_req_fifo_n_3,
      \cdc_sync_stage2_reg[0]_1\ => i_dest_req_fifo_n_4,
      dest_req_ready => dest_req_ready,
      fifo_wr_clk => fifo_wr_clk,
      m_axis_raddr_reg_0 => i_dest_req_fifo_n_1,
      m_axis_raddr_reg_1 => i_src_req_fifo_n_1,
      m_axis_raddr_reg_2 => i_src_req_fifo_n_2,
      m_dest_axi_aclk => m_dest_axi_aclk,
      src_dest_valid_hs => src_dest_valid_hs,
      src_req_ready => src_req_ready
    );
i_req_gen: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_request_generator
     port map (
      Q(0) => Q(0),
      \burst_count_reg[0]_0\ => s_axis_waddr_reg_0,
      \burst_count_reg[16]_0\(16 downto 0) => \burst_count_reg[16]\(16 downto 0),
      dbg_ids0(3 downto 0) => dbg_ids0(27 downto 24),
      \id_reg[3]_0\(3 downto 0) => request_id(3 downto 0),
      \req_gen_valid__0\ => \req_gen_valid__0\,
      req_ready_reg_0 => \^req_ready_reg\,
      request_eot => request_eot,
      s_axi_aclk => s_axi_aclk
    );
i_response_manager: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_response_manager
     port map (
      D(8 downto 2) => response_data_burst_length(6 downto 0),
      D(1) => response_data_burst_length(7),
      D(0) => dest_response_eot,
      Q(0) => Q(0),
      \active__6\ => \i_response_handler/active__6\,
      dest_response_ready => dest_response_ready,
      id0 => \i_response_handler/id0\,
      m_dest_axi_aclk => m_dest_axi_aclk,
      m_dest_axi_bvalid => m_dest_axi_bvalid,
      \measured_burst_length_reg[6]_0\(6 downto 0) => \measured_burst_length_reg[6]\(6 downto 0),
      p_3_in(0) => p_3_in(0),
      p_7_in => p_7_in,
      req_eot_reg_0 => req_eot_reg,
      response_valid_reg_0 => response_valid_reg,
      s_axi_aclk => s_axi_aclk,
      s_axis_waddr_reg(0) => dest_valid_reg(0),
      \state_reg[1]_0\ => \state_reg[1]\,
      \state_reg[2]_0\(2 downto 0) => \state_reg[2]\(2 downto 0),
      up_bl_partial => up_bl_partial,
      up_clear_tl => up_clear_tl,
      up_eot => up_eot,
      up_response_ready => up_response_ready
    );
i_src_dest_bl_fifo: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized0\
     port map (
      E(0) => \i_addr_gen/last_burst_len0\,
      Q(4) => i_src_dest_bl_fifo_n_5,
      Q(3) => i_src_dest_bl_fifo_n_6,
      Q(2) => i_src_dest_bl_fifo_n_7,
      Q(1) => i_src_dest_bl_fifo_n_8,
      Q(0) => i_src_dest_bl_fifo_n_9,
      \cdc_sync_fifo_ram_reg[4]_0\(4 downto 0) => measured_last_burst_length(4 downto 0),
      \cdc_sync_stage1_reg[0]\(0) => dest_valid_reg(0),
      \cdc_sync_stage1_reg[0]_0\(0) => \src_id_reg[0]\(0),
      cdc_sync_stage2 => cdc_sync_stage2,
      \cdc_sync_stage2_reg[0]\ => i_src_dest_bl_fifo_n_3,
      dest_bl_ready => dest_bl_ready,
      fifo_wr_clk => fifo_wr_clk,
      m_axis_raddr_reg_0 => i_src_dest_bl_fifo_n_2,
      m_dest_axi_aclk => m_dest_axi_aclk,
      s_axis_waddr_reg_0 => i_src_dest_bl_fifo_n_0,
      src_bl_valid => src_bl_valid
    );
i_src_dma_fifo: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_src_fifo_inf
     port map (
      E(0) => \i_data_mover/active0\,
      Q(3) => p_1_in,
      Q(2) => p_0_in1_in,
      Q(1) => \src_throttled_request_id_reg_n_0_[1]\,
      Q(0) => \src_throttled_request_id_reg_n_0_[0]\,
      SR(0) => src_beat_counter0,
      SS(0) => src_req_ready,
      active_reg => active_reg,
      active_reg_0(0) => \src_id_reg[0]\(0),
      bl_valid_reg => i_src_dest_bl_fifo_n_0,
      bl_valid_reg_0 => i_src_dest_bl_fifo_n_3,
      fifo_wr_clk => fifo_wr_clk,
      fifo_wr_en => fifo_wr_en,
      fifo_wr_overflow => fifo_wr_overflow,
      fifo_wr_sync => fifo_wr_sync,
      \id_reg[0]\ => \^g\(0),
      \id_reg[1]\ => \^g\(1),
      \id_reg[2]\ => \^g\(2),
      \id_reg[3]\ => \^g\(3),
      \last_burst_length_reg[4]\(4 downto 0) => req_last_burst_length(4 downto 0),
      last_eot_reg => i_src_req_fifo_n_6,
      \measured_last_burst_length_reg[4]\(4 downto 0) => measured_last_burst_length(4 downto 0),
      src_bl_valid => src_bl_valid,
      src_enable => src_enable,
      src_eot => src_eot,
      \src_last_beat__0\ => \src_last_beat__0\,
      src_valid => src_valid
    );
i_src_req_fifo: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized2\
     port map (
      D(32 downto 0) => D(32 downto 0),
      E(0) => E(0),
      Q(0) => Q(0),
      \cdc_sync_fifo_ram_reg[64]_0\(32 downto 5) => src_req_dest_address(27 downto 0),
      \cdc_sync_fifo_ram_reg[64]_0\(4 downto 0) => req_last_burst_length(4 downto 0),
      \cdc_sync_fifo_ram_reg[7]_0\ => i_src_req_fifo_n_6,
      \cdc_sync_stage1_reg[0]\(0) => \src_id_reg[0]\(0),
      \cdc_sync_stage2_reg[0]\ => i_src_req_fifo_n_1,
      \cdc_sync_stage2_reg[0]_0\ => \cdc_sync_stage2_reg[0]\,
      fifo_wr_clk => fifo_wr_clk,
      m_axis_raddr_reg_0 => i_src_req_fifo_n_2,
      m_axis_raddr_reg_1 => i_dest_req_fifo_n_4,
      \req_gen_valid__0\ => \req_gen_valid__0\,
      s_axi_aclk => s_axi_aclk,
      s_axis_waddr_reg_0 => s_axis_waddr_reg,
      s_axis_waddr_reg_1 => \^req_ready_reg\,
      s_axis_waddr_reg_2 => s_axis_waddr_reg_0,
      up_dma_req_valid => up_dma_req_valid
    );
i_store_and_forward: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_burst_memory
     port map (
      E(0) => src_valid,
      Q(3 downto 2) => data8(19 downto 18),
      Q(1 downto 0) => dbg_ids0(17 downto 16),
      SR(0) => src_beat_counter0,
      \cdc_sync_stage2_reg[1]\(1 downto 0) => \^cdc_sync_stage2_reg[1]\(1 downto 0),
      \cdc_sync_stage2_reg[2]\ => \cdc_sync_stage2_reg[2]\,
      \cdc_sync_stage2_reg[3]\ => \cdc_sync_stage2_reg[3]\,
      data8(1 downto 0) => data8(3 downto 2),
      dest_burst_info_write => dest_burst_info_write,
      \dest_burst_len_data_reg[7]_0\(5) => i_store_and_forward_n_52,
      \dest_burst_len_data_reg[7]_0\(4 downto 0) => dest_burst_len(4 downto 0),
      dest_burst_valid => dest_burst_valid,
      \dest_id_next_reg[3]_0\(3) => i_store_and_forward_n_37,
      \dest_id_next_reg[3]_0\(2) => p_0_in12_in,
      \dest_id_next_reg[3]_0\(1 downto 0) => dest_id_reduced_next(1 downto 0),
      \dest_id_reg[0]_0\ => \dest_id_reg[0]\,
      \dest_id_reg[1]_0\ => \dest_id_reg[1]\,
      \dest_id_reg[2]_0\ => \dest_id_reg[2]\,
      \dest_id_reg[3]_0\ => \dest_id_reg[3]\,
      dest_mem_data_valid_reg_0 => dest_mem_data_valid_reg,
      dest_valid_reg_0(0) => dest_valid_reg(0),
      fifo_wr_clk => fifo_wr_clk,
      fifo_wr_din(31 downto 0) => fifo_wr_din(31 downto 0),
      m_dest_axi_aclk => m_dest_axi_aclk,
      m_dest_axi_awaddr(5 downto 2) => \^m_dest_axi_awaddr\(17 downto 14),
      m_dest_axi_awaddr(1 downto 0) => \^m_dest_axi_awaddr\(1 downto 0),
      m_dest_axi_wdata(31 downto 0) => m_dest_axi_wdata(31 downto 0),
      m_dest_axi_wlast => m_dest_axi_wlast,
      m_dest_axi_wready => m_dest_axi_wready,
      \src_id_reg[0]_0\(0) => \src_id_reg[0]\(0),
      \src_last_beat__0\ => \src_last_beat__0\,
      \src_throttled_request_id_reg[0]\ => i_store_and_forward_n_58,
      \src_throttled_request_id_reg[0]_0\(3) => p_1_in,
      \src_throttled_request_id_reg[0]_0\(2) => p_0_in1_in,
      \src_throttled_request_id_reg[0]_0\(1) => \src_throttled_request_id_reg_n_0_[1]\,
      \src_throttled_request_id_reg[0]_0\(0) => \src_throttled_request_id_reg_n_0_[0]\,
      \src_throttled_request_id_reg[2]\ => i_store_and_forward_n_43,
      \up_rdata_reg[2]\(0) => \up_rdata_reg[11]\(0),
      \up_rdata_reg[3]\ => \up_rdata_reg[3]\,
      \up_rdata_reg[3]_0\ => \up_rdata_reg[3]_0\
    );
i_sync_src_request_id: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized1\
     port map (
      E(0) => src_throttled_request_id0,
      Q(3) => p_1_in,
      Q(2) => p_0_in1_in,
      Q(1) => \src_throttled_request_id_reg_n_0_[1]\,
      Q(0) => \src_throttled_request_id_reg_n_0_[0]\,
      \cdc_sync_stage1_reg[3]_0\(3 downto 0) => request_id(3 downto 0),
      fifo_wr_clk => fifo_wr_clk,
      src_request_id(3 downto 0) => src_request_id(3 downto 0),
      \src_throttled_request_id_reg[0]\ => i_store_and_forward_n_43,
      \src_throttled_request_id_reg[0]_0\ => i_store_and_forward_n_58
    );
src_dest_valid_hs_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => '1',
      D => i_dest_req_fifo_n_3,
      Q => src_dest_valid_hs,
      R => \src_id_reg[0]\(0)
    );
\src_req_dest_address_cur_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(0),
      Q => \s_axis_data__0\(1),
      R => '0'
    );
\src_req_dest_address_cur_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(10),
      Q => \s_axis_data__0\(11),
      R => '0'
    );
\src_req_dest_address_cur_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(11),
      Q => \s_axis_data__0\(12),
      R => '0'
    );
\src_req_dest_address_cur_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(12),
      Q => \s_axis_data__0\(13),
      R => '0'
    );
\src_req_dest_address_cur_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(13),
      Q => \s_axis_data__0\(14),
      R => '0'
    );
\src_req_dest_address_cur_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(14),
      Q => \s_axis_data__0\(15),
      R => '0'
    );
\src_req_dest_address_cur_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(15),
      Q => \s_axis_data__0\(16),
      R => '0'
    );
\src_req_dest_address_cur_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(16),
      Q => \s_axis_data__0\(17),
      R => '0'
    );
\src_req_dest_address_cur_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(17),
      Q => \s_axis_data__0\(18),
      R => '0'
    );
\src_req_dest_address_cur_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(18),
      Q => \s_axis_data__0\(19),
      R => '0'
    );
\src_req_dest_address_cur_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(19),
      Q => \s_axis_data__0\(20),
      R => '0'
    );
\src_req_dest_address_cur_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(1),
      Q => \s_axis_data__0\(2),
      R => '0'
    );
\src_req_dest_address_cur_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(20),
      Q => \s_axis_data__0\(21),
      R => '0'
    );
\src_req_dest_address_cur_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(21),
      Q => \s_axis_data__0\(22),
      R => '0'
    );
\src_req_dest_address_cur_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(22),
      Q => \s_axis_data__0\(23),
      R => '0'
    );
\src_req_dest_address_cur_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(23),
      Q => \s_axis_data__0\(24),
      R => '0'
    );
\src_req_dest_address_cur_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(24),
      Q => \s_axis_data__0\(25),
      R => '0'
    );
\src_req_dest_address_cur_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(25),
      Q => \s_axis_data__0\(26),
      R => '0'
    );
\src_req_dest_address_cur_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(26),
      Q => \s_axis_data__0\(27),
      R => '0'
    );
\src_req_dest_address_cur_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(27),
      Q => \s_axis_data__0\(28),
      R => '0'
    );
\src_req_dest_address_cur_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(2),
      Q => \s_axis_data__0\(3),
      R => '0'
    );
\src_req_dest_address_cur_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(3),
      Q => \s_axis_data__0\(4),
      R => '0'
    );
\src_req_dest_address_cur_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(4),
      Q => \s_axis_data__0\(5),
      R => '0'
    );
\src_req_dest_address_cur_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(5),
      Q => \s_axis_data__0\(6),
      R => '0'
    );
\src_req_dest_address_cur_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(6),
      Q => \s_axis_data__0\(7),
      R => '0'
    );
\src_req_dest_address_cur_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(7),
      Q => \s_axis_data__0\(8),
      R => '0'
    );
\src_req_dest_address_cur_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(8),
      Q => \s_axis_data__0\(9),
      R => '0'
    );
\src_req_dest_address_cur_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => fifo_wr_clk,
      CE => \i_data_mover/active0\,
      D => src_req_dest_address(9),
      Q => \s_axis_data__0\(10),
      R => '0'
    );
\src_throttled_request_id[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \src_throttled_request_id_reg_n_0_[1]\,
      I1 => p_1_in,
      I2 => p_0_in1_in,
      O => \src_throttled_request_id[0]_i_1_n_0\
    );
\src_throttled_request_id[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"99F0"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => p_1_in,
      I2 => \src_throttled_request_id_reg_n_0_[1]\,
      I3 => \src_throttled_request_id_reg_n_0_[0]\,
      O => inc_id_return(1)
    );
\src_throttled_request_id[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1F0"
    )
        port map (
      I0 => p_1_in,
      I1 => \src_throttled_request_id_reg_n_0_[0]\,
      I2 => p_0_in1_in,
      I3 => \src_throttled_request_id_reg_n_0_[1]\,
      O => inc_id_return(2)
    );
\src_throttled_request_id[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE04"
    )
        port map (
      I0 => \src_throttled_request_id_reg_n_0_[1]\,
      I1 => p_0_in1_in,
      I2 => \src_throttled_request_id_reg_n_0_[0]\,
      I3 => p_1_in,
      O => \src_throttled_request_id[3]_i_2_n_0\
    );
\src_throttled_request_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => src_throttled_request_id0,
      D => \src_throttled_request_id[0]_i_1_n_0\,
      Q => \src_throttled_request_id_reg_n_0_[0]\,
      R => \src_id_reg[0]\(0)
    );
\src_throttled_request_id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => src_throttled_request_id0,
      D => inc_id_return(1),
      Q => \src_throttled_request_id_reg_n_0_[1]\,
      R => \src_id_reg[0]\(0)
    );
\src_throttled_request_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => src_throttled_request_id0,
      D => inc_id_return(2),
      Q => p_0_in1_in,
      R => \src_id_reg[0]\(0)
    );
\src_throttled_request_id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => fifo_wr_clk,
      CE => src_throttled_request_id0,
      D => \src_throttled_request_id[3]_i_2_n_0\,
      Q => p_1_in,
      R => \src_id_reg[0]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_regmap is
  port (
    s_axi_aresetn_0 : out STD_LOGIC;
    irq : out STD_LOGIC;
    ctrl_enable : out STD_LOGIC;
    p_3_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    up_dma_req_valid : out STD_LOGIC;
    up_response_ready : out STD_LOGIC;
    up_clear_tl : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    ctrl_pause : out STD_LOGIC;
    up_axi_rvalid_int_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 32 downto 0 );
    \up_raddr_int_reg[7]\ : out STD_LOGIC;
    \up_raddr_int_reg[6]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    up_clear_tl_reg : in STD_LOGIC;
    up_bl_partial : in STD_LOGIC;
    up_response_valid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    up_eot : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    \up_rdata_reg[10]_0\ : in STD_LOGIC;
    \up_rdata_reg[8]_0\ : in STD_LOGIC;
    \up_rdata_reg[9]_0\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    src_request_id : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \up_rdata_reg[2]_0\ : in STD_LOGIC;
    \up_rdata_reg[3]_0\ : in STD_LOGIC;
    \up_rdata_reg[4]_0\ : in STD_LOGIC;
    \up_rdata_reg[5]_0\ : in STD_LOGIC;
    \up_rdata_reg[6]_0\ : in STD_LOGIC;
    \up_rdata_reg[11]_0\ : in STD_LOGIC;
    \up_rdata_reg[16]_0\ : in STD_LOGIC;
    \up_rdata_reg[17]_0\ : in STD_LOGIC;
    \up_rdata_reg[18]_0\ : in STD_LOGIC;
    \up_rdata_reg[19]_0\ : in STD_LOGIC;
    \up_rdata_reg[24]_0\ : in STD_LOGIC;
    dbg_ids1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \up_rdata_reg[25]_0\ : in STD_LOGIC;
    \up_rdata_reg[26]_0\ : in STD_LOGIC;
    \up_rdata_reg[27]_0\ : in STD_LOGIC;
    data8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dbg_status : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC;
    \up_rdata_reg[7]_0\ : in STD_LOGIC;
    m_dest_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \up_transfer_id_eot_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    req_eot : in STD_LOGIC;
    p_7_in : in STD_LOGIC;
    \up_transfer_id_reg[0]\ : in STD_LOGIC;
    \up_transfer_id_reg[0]_0\ : in STD_LOGIC;
    req_gen_ready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \up_measured_transfer_length_reg[7]\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_regmap;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_regmap is
  signal \^d\ : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal \^ctrl_enable\ : STD_LOGIC;
  signal \^ctrl_pause\ : STD_LOGIC;
  signal data5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data9 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i_regmap_request_n_10 : STD_LOGIC;
  signal i_regmap_request_n_100 : STD_LOGIC;
  signal i_regmap_request_n_101 : STD_LOGIC;
  signal i_regmap_request_n_102 : STD_LOGIC;
  signal i_regmap_request_n_103 : STD_LOGIC;
  signal i_regmap_request_n_104 : STD_LOGIC;
  signal i_regmap_request_n_107 : STD_LOGIC;
  signal i_regmap_request_n_108 : STD_LOGIC;
  signal i_regmap_request_n_109 : STD_LOGIC;
  signal i_regmap_request_n_11 : STD_LOGIC;
  signal i_regmap_request_n_110 : STD_LOGIC;
  signal i_regmap_request_n_111 : STD_LOGIC;
  signal i_regmap_request_n_112 : STD_LOGIC;
  signal i_regmap_request_n_113 : STD_LOGIC;
  signal i_regmap_request_n_114 : STD_LOGIC;
  signal i_regmap_request_n_115 : STD_LOGIC;
  signal i_regmap_request_n_116 : STD_LOGIC;
  signal i_regmap_request_n_117 : STD_LOGIC;
  signal i_regmap_request_n_118 : STD_LOGIC;
  signal i_regmap_request_n_119 : STD_LOGIC;
  signal i_regmap_request_n_120 : STD_LOGIC;
  signal i_regmap_request_n_121 : STD_LOGIC;
  signal i_regmap_request_n_122 : STD_LOGIC;
  signal i_regmap_request_n_123 : STD_LOGIC;
  signal i_regmap_request_n_124 : STD_LOGIC;
  signal i_regmap_request_n_125 : STD_LOGIC;
  signal i_regmap_request_n_126 : STD_LOGIC;
  signal i_regmap_request_n_127 : STD_LOGIC;
  signal i_regmap_request_n_128 : STD_LOGIC;
  signal i_regmap_request_n_67 : STD_LOGIC;
  signal i_regmap_request_n_68 : STD_LOGIC;
  signal i_regmap_request_n_69 : STD_LOGIC;
  signal i_regmap_request_n_70 : STD_LOGIC;
  signal i_regmap_request_n_71 : STD_LOGIC;
  signal i_regmap_request_n_8 : STD_LOGIC;
  signal i_regmap_request_n_89 : STD_LOGIC;
  signal i_regmap_request_n_90 : STD_LOGIC;
  signal i_regmap_request_n_91 : STD_LOGIC;
  signal i_regmap_request_n_92 : STD_LOGIC;
  signal i_regmap_request_n_93 : STD_LOGIC;
  signal i_regmap_request_n_94 : STD_LOGIC;
  signal i_regmap_request_n_95 : STD_LOGIC;
  signal i_regmap_request_n_96 : STD_LOGIC;
  signal i_regmap_request_n_97 : STD_LOGIC;
  signal i_regmap_request_n_98 : STD_LOGIC;
  signal i_regmap_request_n_99 : STD_LOGIC;
  signal i_up_axi_n_10 : STD_LOGIC;
  signal i_up_axi_n_11 : STD_LOGIC;
  signal i_up_axi_n_12 : STD_LOGIC;
  signal i_up_axi_n_13 : STD_LOGIC;
  signal i_up_axi_n_14 : STD_LOGIC;
  signal i_up_axi_n_15 : STD_LOGIC;
  signal i_up_axi_n_16 : STD_LOGIC;
  signal i_up_axi_n_39 : STD_LOGIC;
  signal i_up_axi_n_40 : STD_LOGIC;
  signal i_up_axi_n_41 : STD_LOGIC;
  signal i_up_axi_n_42 : STD_LOGIC;
  signal i_up_axi_n_44 : STD_LOGIC;
  signal i_up_axi_n_45 : STD_LOGIC;
  signal i_up_axi_n_8 : STD_LOGIC;
  signal i_up_axi_n_85 : STD_LOGIC;
  signal i_up_axi_n_86 : STD_LOGIC;
  signal i_up_axi_n_87 : STD_LOGIC;
  signal i_up_axi_n_88 : STD_LOGIC;
  signal i_up_axi_n_89 : STD_LOGIC;
  signal i_up_axi_n_9 : STD_LOGIC;
  signal irq_i_1_n_0 : STD_LOGIC;
  signal \^p_3_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_8_in : STD_LOGIC;
  signal \^s_axi_aresetn_0\ : STD_LOGIC;
  signal up_dma_dest_address : STD_LOGIC;
  signal up_dma_last : STD_LOGIC;
  signal \^up_dma_req_valid\ : STD_LOGIC;
  signal up_dma_x_length0_in : STD_LOGIC_VECTOR ( 23 downto 2 );
  signal \up_irq_mask[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_irq_mask[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_irq_mask_reg_n_0_[0]\ : STD_LOGIC;
  signal \up_irq_mask_reg_n_0_[1]\ : STD_LOGIC;
  signal up_irq_source : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal up_measured_transfer_length : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal up_rack : STD_LOGIC;
  signal up_raddr : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal up_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal up_rdata_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal up_rreq : STD_LOGIC;
  signal up_scratch : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal up_transfer_id : STD_LOGIC_VECTOR ( 1 to 1 );
  signal up_wack : STD_LOGIC;
  signal up_wreq : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \up_irq_mask[0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \up_irq_mask[1]_i_1\ : label is "soft_lutpair43";
begin
  D(32 downto 0) <= \^d\(32 downto 0);
  ctrl_enable <= \^ctrl_enable\;
  ctrl_pause <= \^ctrl_pause\;
  p_3_in(0) <= \^p_3_in\(0);
  s_axi_aresetn_0 <= \^s_axi_aresetn_0\;
  up_dma_req_valid <= \^up_dma_req_valid\;
ctrl_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_89,
      Q => \^ctrl_enable\,
      R => \^s_axi_aresetn_0\
    );
ctrl_pause_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_88,
      Q => \^ctrl_pause\,
      R => \^s_axi_aresetn_0\
    );
i_regmap_request: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_regmap_request
     port map (
      D(32 downto 0) => \^d\(32 downto 0),
      E(0) => E(0),
      Q(3 downto 0) => up_raddr(4 downto 1),
      SR(0) => \^s_axi_aresetn_0\,
      \data_reg[25]\(23 downto 22) => data9(1 downto 0),
      \data_reg[25]\(21) => i_regmap_request_n_107,
      \data_reg[25]\(20) => i_regmap_request_n_108,
      \data_reg[25]\(19) => i_regmap_request_n_109,
      \data_reg[25]\(18) => i_regmap_request_n_110,
      \data_reg[25]\(17) => i_regmap_request_n_111,
      \data_reg[25]\(16) => i_regmap_request_n_112,
      \data_reg[25]\(15) => i_regmap_request_n_113,
      \data_reg[25]\(14) => i_regmap_request_n_114,
      \data_reg[25]\(13) => i_regmap_request_n_115,
      \data_reg[25]\(12) => i_regmap_request_n_116,
      \data_reg[25]\(11) => i_regmap_request_n_117,
      \data_reg[25]\(10) => i_regmap_request_n_118,
      \data_reg[25]\(9) => i_regmap_request_n_119,
      \data_reg[25]\(8) => i_regmap_request_n_120,
      \data_reg[25]\(7) => i_regmap_request_n_121,
      \data_reg[25]\(6) => i_regmap_request_n_122,
      \data_reg[25]\(5) => i_regmap_request_n_123,
      \data_reg[25]\(4) => i_regmap_request_n_124,
      \data_reg[25]\(3) => i_regmap_request_n_125,
      \data_reg[25]\(2) => i_regmap_request_n_126,
      \data_reg[25]\(1) => i_regmap_request_n_127,
      \data_reg[25]\(0) => i_regmap_request_n_128,
      dbg_status(0) => dbg_status(2),
      \m_axis_raddr_reg[0]\ => \^ctrl_enable\,
      p_3_in(0) => \^p_3_in\(0),
      p_7_in => p_7_in,
      p_8_in => p_8_in,
      req_eot => req_eot,
      req_gen_ready => req_gen_ready,
      response_ready_reg_0 => up_response_ready,
      s_axi_aclk => s_axi_aclk,
      up_bl_partial => up_bl_partial,
      up_clear_tl => up_clear_tl,
      up_clear_tl_reg_0 => up_clear_tl_reg,
      \up_dma_dest_address_reg[29]_0\(27) => i_up_axi_n_11,
      \up_dma_dest_address_reg[29]_0\(26) => i_up_axi_n_12,
      \up_dma_dest_address_reg[29]_0\(25) => i_up_axi_n_13,
      \up_dma_dest_address_reg[29]_0\(24) => i_up_axi_n_14,
      \up_dma_dest_address_reg[29]_0\(23) => i_up_axi_n_15,
      \up_dma_dest_address_reg[29]_0\(22) => i_up_axi_n_16,
      \up_dma_dest_address_reg[29]_0\(21 downto 0) => up_dma_x_length0_in(23 downto 2),
      \up_dma_dest_address_reg[29]_1\(0) => up_dma_dest_address,
      up_dma_enable_tlen_reporting_reg_0 => i_up_axi_n_87,
      up_dma_last => up_dma_last,
      up_dma_last_reg_0 => i_up_axi_n_86,
      up_dma_req_valid_reg_0 => \^up_dma_req_valid\,
      up_dma_req_valid_reg_1 => i_up_axi_n_8,
      \up_dma_x_length_reg[10]_0\ => i_regmap_request_n_91,
      \up_dma_x_length_reg[11]_0\ => i_regmap_request_n_92,
      \up_dma_x_length_reg[12]_0\ => i_regmap_request_n_93,
      \up_dma_x_length_reg[13]_0\ => i_regmap_request_n_94,
      \up_dma_x_length_reg[14]_0\ => i_regmap_request_n_95,
      \up_dma_x_length_reg[15]_0\ => i_regmap_request_n_96,
      \up_dma_x_length_reg[16]_0\ => i_regmap_request_n_97,
      \up_dma_x_length_reg[17]_0\ => i_regmap_request_n_98,
      \up_dma_x_length_reg[18]_0\ => i_regmap_request_n_99,
      \up_dma_x_length_reg[19]_0\ => i_regmap_request_n_100,
      \up_dma_x_length_reg[20]_0\ => i_regmap_request_n_101,
      \up_dma_x_length_reg[21]_0\ => i_regmap_request_n_102,
      \up_dma_x_length_reg[22]_0\ => i_regmap_request_n_103,
      \up_dma_x_length_reg[23]_0\(16 downto 0) => Q(16 downto 0),
      \up_dma_x_length_reg[23]_1\ => i_regmap_request_n_104,
      \up_dma_x_length_reg[2]_0\ => i_regmap_request_n_11,
      \up_dma_x_length_reg[2]_1\(0) => i_up_axi_n_85,
      \up_dma_x_length_reg[3]_0\ => i_regmap_request_n_67,
      \up_dma_x_length_reg[4]_0\ => i_regmap_request_n_68,
      \up_dma_x_length_reg[5]_0\ => i_regmap_request_n_69,
      \up_dma_x_length_reg[6]_0\ => i_regmap_request_n_70,
      \up_dma_x_length_reg[7]_0\ => i_regmap_request_n_71,
      \up_dma_x_length_reg[8]_0\ => i_regmap_request_n_89,
      \up_dma_x_length_reg[9]_0\ => i_regmap_request_n_90,
      up_eot => up_eot,
      \up_measured_transfer_length_reg[23]_0\(21 downto 2) => up_measured_transfer_length(23 downto 4),
      \up_measured_transfer_length_reg[23]_0\(1 downto 0) => up_measured_transfer_length(1 downto 0),
      \up_measured_transfer_length_reg[7]_0\(6 downto 0) => \up_measured_transfer_length_reg[7]\(6 downto 0),
      up_partial_length_valid_reg_0(2) => data5(31),
      up_partial_length_valid_reg_0(1 downto 0) => data5(1 downto 0),
      up_response_valid => up_response_valid,
      \up_transfer_id_eot_reg[0]_0\ => i_regmap_request_n_8,
      \up_transfer_id_eot_reg[0]_1\(2 downto 0) => \up_transfer_id_eot_reg[0]\(2 downto 0),
      \up_transfer_id_eot_reg[1]_0\ => i_regmap_request_n_10,
      \up_transfer_id_reg[0]_0\ => \up_transfer_id_reg[0]\,
      \up_transfer_id_reg[0]_1\ => \up_transfer_id_reg[0]_0\,
      \up_transfer_id_reg[1]_0\(0) => up_transfer_id(1)
    );
i_up_axi: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_axi
     port map (
      D(1) => i_up_axi_n_41,
      D(0) => i_up_axi_n_42,
      E(0) => E(0),
      Q(31) => i_up_axi_n_9,
      Q(30) => i_up_axi_n_10,
      Q(29) => i_up_axi_n_11,
      Q(28) => i_up_axi_n_12,
      Q(27) => i_up_axi_n_13,
      Q(26) => i_up_axi_n_14,
      Q(25) => i_up_axi_n_15,
      Q(24) => i_up_axi_n_16,
      Q(23 downto 2) => up_dma_x_length0_in(23 downto 2),
      Q(1) => i_up_axi_n_39,
      Q(0) => i_up_axi_n_40,
      SR(0) => \^s_axi_aresetn_0\,
      ctrl_enable_reg => \^ctrl_enable\,
      ctrl_pause => \^ctrl_pause\,
      data8(1 downto 0) => data8(1 downto 0),
      dbg_ids1(3 downto 0) => dbg_ids1(3 downto 0),
      dbg_status(1 downto 0) => dbg_status(1 downto 0),
      m_dest_axi_awaddr(9 downto 0) => m_dest_axi_awaddr(9 downto 0),
      p_3_in(0) => \^p_3_in\(0),
      p_8_in => p_8_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      src_request_id(3 downto 0) => src_request_id(3 downto 0),
      up_axi_rvalid_int_reg_0 => up_axi_rvalid_int_reg,
      up_dma_last => up_dma_last,
      up_dma_req_valid => \^up_dma_req_valid\,
      up_dma_req_valid_reg => i_up_axi_n_8,
      up_eot => up_eot,
      \up_irq_source_reg[1]\(1 downto 0) => up_irq_source(1 downto 0),
      up_rack => up_rack,
      \up_raddr_int_reg[4]_0\(3 downto 0) => up_raddr(4 downto 1),
      \up_raddr_int_reg[6]_0\ => \up_raddr_int_reg[6]\,
      \up_raddr_int_reg[7]_0\ => \up_raddr_int_reg[7]\,
      \up_rdata[10]_i_4_0\ => i_regmap_request_n_91,
      \up_rdata[11]_i_4_0\ => i_regmap_request_n_92,
      \up_rdata[12]_i_4_0\ => i_regmap_request_n_93,
      \up_rdata[13]_i_4_0\ => i_regmap_request_n_94,
      \up_rdata[14]_i_4_0\ => i_regmap_request_n_95,
      \up_rdata[15]_i_4_0\ => i_regmap_request_n_96,
      \up_rdata[16]_i_4_0\ => i_regmap_request_n_97,
      \up_rdata[17]_i_4_0\ => i_regmap_request_n_98,
      \up_rdata[18]_i_4_0\ => i_regmap_request_n_99,
      \up_rdata[19]_i_4_0\ => i_regmap_request_n_100,
      \up_rdata[1]_i_4_0\(23 downto 22) => data9(1 downto 0),
      \up_rdata[1]_i_4_0\(21) => i_regmap_request_n_107,
      \up_rdata[1]_i_4_0\(20) => i_regmap_request_n_108,
      \up_rdata[1]_i_4_0\(19) => i_regmap_request_n_109,
      \up_rdata[1]_i_4_0\(18) => i_regmap_request_n_110,
      \up_rdata[1]_i_4_0\(17) => i_regmap_request_n_111,
      \up_rdata[1]_i_4_0\(16) => i_regmap_request_n_112,
      \up_rdata[1]_i_4_0\(15) => i_regmap_request_n_113,
      \up_rdata[1]_i_4_0\(14) => i_regmap_request_n_114,
      \up_rdata[1]_i_4_0\(13) => i_regmap_request_n_115,
      \up_rdata[1]_i_4_0\(12) => i_regmap_request_n_116,
      \up_rdata[1]_i_4_0\(11) => i_regmap_request_n_117,
      \up_rdata[1]_i_4_0\(10) => i_regmap_request_n_118,
      \up_rdata[1]_i_4_0\(9) => i_regmap_request_n_119,
      \up_rdata[1]_i_4_0\(8) => i_regmap_request_n_120,
      \up_rdata[1]_i_4_0\(7) => i_regmap_request_n_121,
      \up_rdata[1]_i_4_0\(6) => i_regmap_request_n_122,
      \up_rdata[1]_i_4_0\(5) => i_regmap_request_n_123,
      \up_rdata[1]_i_4_0\(4) => i_regmap_request_n_124,
      \up_rdata[1]_i_4_0\(3) => i_regmap_request_n_125,
      \up_rdata[1]_i_4_0\(2) => i_regmap_request_n_126,
      \up_rdata[1]_i_4_0\(1) => i_regmap_request_n_127,
      \up_rdata[1]_i_4_0\(0) => i_regmap_request_n_128,
      \up_rdata[1]_i_4_1\(0) => up_transfer_id(1),
      \up_rdata[1]_i_4_2\ => i_regmap_request_n_10,
      \up_rdata[20]_i_4_0\ => i_regmap_request_n_101,
      \up_rdata[21]_i_4_0\ => i_regmap_request_n_102,
      \up_rdata[22]_i_4_0\ => i_regmap_request_n_103,
      \up_rdata[23]_i_4_0\(21 downto 2) => up_measured_transfer_length(23 downto 4),
      \up_rdata[23]_i_4_0\(1 downto 0) => up_measured_transfer_length(1 downto 0),
      \up_rdata[23]_i_4_1\ => i_regmap_request_n_104,
      \up_rdata[31]_i_6_0\(2) => data5(31),
      \up_rdata[31]_i_6_0\(1 downto 0) => data5(1 downto 0),
      \up_rdata[4]_i_4_0\ => i_regmap_request_n_68,
      \up_rdata[5]_i_4_0\ => i_regmap_request_n_69,
      \up_rdata[6]_i_4_0\ => i_regmap_request_n_70,
      \up_rdata[7]_i_4_0\ => i_regmap_request_n_71,
      \up_rdata[8]_i_4_0\ => i_regmap_request_n_89,
      \up_rdata[9]_i_4_0\ => i_regmap_request_n_90,
      \up_rdata_d_reg[31]_0\(31 downto 0) => up_rdata(31 downto 0),
      \up_rdata_reg[0]\ => i_regmap_request_n_8,
      \up_rdata_reg[0]_0\ => \up_irq_mask_reg_n_0_[0]\,
      \up_rdata_reg[10]\ => \up_rdata_reg[10]_0\,
      \up_rdata_reg[11]\ => \up_rdata_reg[11]_0\,
      \up_rdata_reg[16]\ => \up_rdata_reg[16]_0\,
      \up_rdata_reg[17]\ => \up_rdata_reg[17]_0\,
      \up_rdata_reg[18]\ => \up_rdata_reg[18]_0\,
      \up_rdata_reg[19]\ => \up_rdata_reg[19]_0\,
      \up_rdata_reg[1]\ => \up_irq_mask_reg_n_0_[1]\,
      \up_rdata_reg[24]\ => \up_rdata_reg[24]_0\,
      \up_rdata_reg[25]\ => \up_rdata_reg[25]_0\,
      \up_rdata_reg[26]\ => \up_rdata_reg[26]_0\,
      \up_rdata_reg[27]\ => \up_rdata_reg[27]_0\,
      \up_rdata_reg[29]\(7 downto 2) => \^d\(32 downto 27),
      \up_rdata_reg[29]\(1 downto 0) => \^d\(6 downto 5),
      \up_rdata_reg[2]\ => \up_rdata_reg[2]_0\,
      \up_rdata_reg[2]_0\ => i_regmap_request_n_11,
      \up_rdata_reg[31]\(31 downto 0) => up_scratch(31 downto 0),
      \up_rdata_reg[3]\ => \up_rdata_reg[3]_0\,
      \up_rdata_reg[3]_0\ => i_regmap_request_n_67,
      \up_rdata_reg[4]\ => \up_rdata_reg[4]_0\,
      \up_rdata_reg[5]\ => \up_rdata_reg[5]_0\,
      \up_rdata_reg[6]\ => \up_rdata_reg[6]_0\,
      \up_rdata_reg[7]\ => \up_rdata_reg[7]_0\,
      \up_rdata_reg[8]\ => \up_rdata_reg[8]_0\,
      \up_rdata_reg[9]\ => \up_rdata_reg[9]_0\,
      up_rreq => up_rreq,
      \up_scratch_reg[31]\(31 downto 0) => up_rdata_0(31 downto 0),
      up_wack => up_wack,
      \up_waddr_int_reg[0]_0\(0) => i_up_axi_n_85,
      \up_wdata_int_reg[0]_0\ => i_up_axi_n_89,
      \up_wdata_int_reg[1]_0\ => i_up_axi_n_86,
      \up_wdata_int_reg[1]_1\ => i_up_axi_n_88,
      \up_wdata_int_reg[2]_0\ => i_up_axi_n_87,
      up_wreq => up_wreq,
      up_wreq_int_reg_0(0) => up_dma_dest_address,
      up_wreq_int_reg_1 => i_up_axi_n_44,
      up_wreq_int_reg_2(0) => i_up_axi_n_45
    );
irq_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \up_irq_mask_reg_n_0_[0]\,
      I1 => up_irq_source(0),
      I2 => \up_irq_mask_reg_n_0_[1]\,
      I3 => up_irq_source(1),
      O => irq_i_1_n_0
    );
irq_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irq_i_1_n_0,
      Q => irq,
      R => \^s_axi_aresetn_0\
    );
\up_irq_mask[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_up_axi_n_40,
      I1 => i_up_axi_n_44,
      I2 => \up_irq_mask_reg_n_0_[0]\,
      O => \up_irq_mask[0]_i_1_n_0\
    );
\up_irq_mask[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_up_axi_n_39,
      I1 => i_up_axi_n_44,
      I2 => \up_irq_mask_reg_n_0_[1]\,
      O => \up_irq_mask[1]_i_1_n_0\
    );
\up_irq_mask_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_irq_mask[0]_i_1_n_0\,
      Q => \up_irq_mask_reg_n_0_[0]\,
      S => \^s_axi_aresetn_0\
    );
\up_irq_mask_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \up_irq_mask[1]_i_1_n_0\,
      Q => \up_irq_mask_reg_n_0_[1]\,
      S => \^s_axi_aresetn_0\
    );
\up_irq_source_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_42,
      Q => up_irq_source(0),
      R => \^s_axi_aresetn_0\
    );
\up_irq_source_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => i_up_axi_n_41,
      Q => up_irq_source(1),
      R => \^s_axi_aresetn_0\
    );
up_rack_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_rreq,
      Q => up_rack,
      R => \^s_axi_aresetn_0\
    );
\up_rdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(0),
      Q => up_rdata(0),
      R => '0'
    );
\up_rdata_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(10),
      Q => up_rdata(10),
      R => '0'
    );
\up_rdata_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(11),
      Q => up_rdata(11),
      R => '0'
    );
\up_rdata_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(12),
      Q => up_rdata(12),
      R => '0'
    );
\up_rdata_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(13),
      Q => up_rdata(13),
      R => '0'
    );
\up_rdata_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(14),
      Q => up_rdata(14),
      R => '0'
    );
\up_rdata_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(15),
      Q => up_rdata(15),
      R => '0'
    );
\up_rdata_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(16),
      Q => up_rdata(16),
      R => '0'
    );
\up_rdata_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(17),
      Q => up_rdata(17),
      R => '0'
    );
\up_rdata_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(18),
      Q => up_rdata(18),
      R => '0'
    );
\up_rdata_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(19),
      Q => up_rdata(19),
      R => '0'
    );
\up_rdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(1),
      Q => up_rdata(1),
      R => '0'
    );
\up_rdata_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(20),
      Q => up_rdata(20),
      R => '0'
    );
\up_rdata_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(21),
      Q => up_rdata(21),
      R => '0'
    );
\up_rdata_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(22),
      Q => up_rdata(22),
      R => '0'
    );
\up_rdata_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(23),
      Q => up_rdata(23),
      R => '0'
    );
\up_rdata_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(24),
      Q => up_rdata(24),
      R => '0'
    );
\up_rdata_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(25),
      Q => up_rdata(25),
      R => '0'
    );
\up_rdata_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(26),
      Q => up_rdata(26),
      R => '0'
    );
\up_rdata_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(27),
      Q => up_rdata(27),
      R => '0'
    );
\up_rdata_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(28),
      Q => up_rdata(28),
      R => '0'
    );
\up_rdata_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(29),
      Q => up_rdata(29),
      R => '0'
    );
\up_rdata_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(2),
      Q => up_rdata(2),
      R => '0'
    );
\up_rdata_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(30),
      Q => up_rdata(30),
      R => '0'
    );
\up_rdata_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(31),
      Q => up_rdata(31),
      R => '0'
    );
\up_rdata_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(3),
      Q => up_rdata(3),
      R => '0'
    );
\up_rdata_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(4),
      Q => up_rdata(4),
      R => '0'
    );
\up_rdata_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(5),
      Q => up_rdata(5),
      R => '0'
    );
\up_rdata_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(6),
      Q => up_rdata(6),
      R => '0'
    );
\up_rdata_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(7),
      Q => up_rdata(7),
      R => '0'
    );
\up_rdata_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(8),
      Q => up_rdata(8),
      R => '0'
    );
\up_rdata_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_rreq,
      D => up_rdata_0(9),
      Q => up_rdata(9),
      R => '0'
    );
\up_scratch_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => i_up_axi_n_40,
      Q => up_scratch(0),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(10),
      Q => up_scratch(10),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(11),
      Q => up_scratch(11),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(12),
      Q => up_scratch(12),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(13),
      Q => up_scratch(13),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(14),
      Q => up_scratch(14),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(15),
      Q => up_scratch(15),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(16),
      Q => up_scratch(16),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(17),
      Q => up_scratch(17),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(18),
      Q => up_scratch(18),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(19),
      Q => up_scratch(19),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => i_up_axi_n_39,
      Q => up_scratch(1),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(20),
      Q => up_scratch(20),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(21),
      Q => up_scratch(21),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(22),
      Q => up_scratch(22),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(23),
      Q => up_scratch(23),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => i_up_axi_n_16,
      Q => up_scratch(24),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => i_up_axi_n_15,
      Q => up_scratch(25),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => i_up_axi_n_14,
      Q => up_scratch(26),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => i_up_axi_n_13,
      Q => up_scratch(27),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => i_up_axi_n_12,
      Q => up_scratch(28),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => i_up_axi_n_11,
      Q => up_scratch(29),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(2),
      Q => up_scratch(2),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => i_up_axi_n_10,
      Q => up_scratch(30),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => i_up_axi_n_9,
      Q => up_scratch(31),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(3),
      Q => up_scratch(3),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(4),
      Q => up_scratch(4),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(5),
      Q => up_scratch(5),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(6),
      Q => up_scratch(6),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(7),
      Q => up_scratch(7),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(8),
      Q => up_scratch(8),
      R => \^s_axi_aresetn_0\
    );
\up_scratch_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => i_up_axi_n_45,
      D => up_dma_x_length0_in(9),
      Q => up_scratch(9),
      R => \^s_axi_aresetn_0\
    );
up_wack_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => up_wreq,
      Q => up_wack,
      R => \^s_axi_aresetn_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_transfer is
  port (
    m_dest_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    do_enable_reg : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dbg_ids1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    addr_valid_reg : out STD_LOGIC;
    fifo_wr_overflow : out STD_LOGIC;
    s_axis_waddr_reg : out STD_LOGIC;
    \cdc_sync_stage2_reg[0]\ : out STD_LOGIC;
    req_gen_ready : out STD_LOGIC;
    req_eot : out STD_LOGIC;
    m_dest_axi_awaddr : out STD_LOGIC_VECTOR ( 27 downto 0 );
    up_response_valid : out STD_LOGIC;
    active_reg : out STD_LOGIC;
    dest_mem_data_valid_reg : out STD_LOGIC;
    m_dest_axi_wlast : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    up_eot : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    up_bl_partial : out STD_LOGIC;
    p_7_in : out STD_LOGIC;
    \cdc_sync_stage2_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dest_axi_bready : out STD_LOGIC;
    src_request_id : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \id_reg[2]\ : out STD_LOGIC;
    \id_reg[0]\ : out STD_LOGIC;
    \id_reg[1]\ : out STD_LOGIC;
    do_enable_reg_0 : out STD_LOGIC;
    \cdc_sync_stage2_reg[0]_0\ : out STD_LOGIC;
    enabled_reg : out STD_LOGIC;
    \cdc_sync_stage2_reg[2]\ : out STD_LOGIC;
    \cdc_sync_stage2_reg[3]\ : out STD_LOGIC;
    \id_reg[3]\ : out STD_LOGIC;
    \dest_id_reg[0]\ : out STD_LOGIC;
    \dest_id_reg[1]\ : out STD_LOGIC;
    \dest_id_reg[2]\ : out STD_LOGIC;
    \dest_id_reg[3]\ : out STD_LOGIC;
    \id_reg[0]_0\ : out STD_LOGIC;
    \id_reg[1]_0\ : out STD_LOGIC;
    \id_reg[2]_0\ : out STD_LOGIC;
    \id_reg[3]_0\ : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    \measured_burst_length_reg[6]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_dest_axi_awlen : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_dest_axi_aclk : in STD_LOGIC;
    fifo_wr_clk : in STD_LOGIC;
    fifo_wr_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    m_dest_axi_wready : in STD_LOGIC;
    up_dma_req_valid : in STD_LOGIC;
    up_response_ready : in STD_LOGIC;
    p_3_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ctrl_pause : in STD_LOGIC;
    m_dest_axi_awready : in STD_LOGIC;
    m_dest_axi_bvalid : in STD_LOGIC;
    fifo_wr_sync : in STD_LOGIC;
    fifo_wr_en : in STD_LOGIC;
    \up_rdata_reg[5]\ : in STD_LOGIC;
    \up_rdata_reg[5]_0\ : in STD_LOGIC;
    ctrl_enable : in STD_LOGIC;
    \burst_count_reg[16]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    up_clear_tl : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 32 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_transfer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_transfer is
  signal dbg_status : STD_LOGIC_VECTOR ( 11 downto 2 );
  signal \^do_enable_reg\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i_reset_manager_n_6 : STD_LOGIC;
  signal \^m_dest_axi_awaddr\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal reset_sync_chain_1 : STD_LOGIC;
  signal reset_sync_chain_2 : STD_LOGIC;
  signal src_enable : STD_LOGIC;
begin
  do_enable_reg(2 downto 0) <= \^do_enable_reg\(2 downto 0);
  m_dest_axi_awaddr(27 downto 0) <= \^m_dest_axi_awaddr\(27 downto 0);
i_request_arb: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_request_arb
     port map (
      D(32 downto 0) => D(32 downto 0),
      E(0) => E(0),
      Q(0) => i_reset_manager_n_6,
      active_reg => active_reg,
      addr_valid_reg => addr_valid_reg,
      \burst_count_reg[16]\(16 downto 0) => \burst_count_reg[16]\(16 downto 0),
      \cdc_sync_stage2_reg[0]\ => \cdc_sync_stage2_reg[0]\,
      \cdc_sync_stage2_reg[1]\(1 downto 0) => \cdc_sync_stage2_reg[1]\(1 downto 0),
      \cdc_sync_stage2_reg[2]\ => \cdc_sync_stage2_reg[2]\,
      \cdc_sync_stage2_reg[3]\ => \cdc_sync_stage2_reg[3]\,
      dbg_status(0) => dbg_status(4),
      \dest_id_reg[0]\ => \dest_id_reg[0]\,
      \dest_id_reg[1]\ => \dest_id_reg[1]\,
      \dest_id_reg[2]\ => \dest_id_reg[2]\,
      \dest_id_reg[3]\ => \dest_id_reg[3]\,
      dest_mem_data_valid_reg => dest_mem_data_valid_reg,
      dest_valid_reg(0) => reset_sync_chain_1,
      enabled_reg => enabled_reg,
      fifo_wr_clk => fifo_wr_clk,
      fifo_wr_din(31 downto 0) => fifo_wr_din(31 downto 0),
      fifo_wr_en => fifo_wr_en,
      fifo_wr_overflow => fifo_wr_overflow,
      fifo_wr_sync => fifo_wr_sync,
      g(3 downto 0) => dbg_ids1(3 downto 0),
      \id_reg[0]\ => \id_reg[0]\,
      \id_reg[0]_0\ => \id_reg[0]_0\,
      \id_reg[1]\ => \id_reg[1]\,
      \id_reg[1]_0\ => \id_reg[1]_0\,
      \id_reg[2]\ => \id_reg[2]\,
      \id_reg[2]_0\ => \id_reg[2]_0\,
      \id_reg[3]\ => \id_reg[3]\,
      \id_reg[3]_0\ => \id_reg[3]_0\,
      m_dest_axi_aclk => m_dest_axi_aclk,
      m_dest_axi_awaddr(27 downto 0) => \^m_dest_axi_awaddr\(27 downto 0),
      m_dest_axi_awlen(4 downto 0) => m_dest_axi_awlen(4 downto 0),
      m_dest_axi_awready => m_dest_axi_awready,
      m_dest_axi_bready => m_dest_axi_bready,
      m_dest_axi_bvalid => m_dest_axi_bvalid,
      m_dest_axi_wdata(31 downto 0) => m_dest_axi_wdata(31 downto 0),
      m_dest_axi_wlast => m_dest_axi_wlast,
      m_dest_axi_wready => m_dest_axi_wready,
      \measured_burst_length_reg[6]\(6 downto 0) => \measured_burst_length_reg[6]\(6 downto 0),
      p_3_in(0) => p_3_in(0),
      p_7_in => p_7_in,
      req_eot_reg => req_eot,
      req_ready_reg => req_gen_ready,
      response_valid_reg => up_response_valid,
      s_axi_aclk => s_axi_aclk,
      s_axis_waddr_reg => s_axis_waddr_reg,
      s_axis_waddr_reg_0 => \^do_enable_reg\(2),
      src_enable => src_enable,
      \src_id_reg[0]\(0) => reset_sync_chain_2,
      src_request_id(3 downto 0) => src_request_id(3 downto 0),
      \state_reg[1]\ => \state_reg[1]\,
      \state_reg[2]\(2 downto 0) => Q(2 downto 0),
      up_bl_partial => up_bl_partial,
      up_clear_tl => up_clear_tl,
      up_dma_req_valid => up_dma_req_valid,
      up_eot => up_eot,
      \up_rdata_reg[11]\(1) => dbg_status(11),
      \up_rdata_reg[11]\(0) => dbg_status(2),
      \up_rdata_reg[3]\ => \up_rdata_reg[5]\,
      \up_rdata_reg[3]_0\ => \up_rdata_reg[5]_0\,
      up_response_ready => up_response_ready
    );
i_reset_manager: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_reset_manager
     port map (
      \FSM_onehot_state[5]_i_2\(0) => dbg_status(4),
      Q(0) => reset_sync_chain_1,
      SR(0) => SR(0),
      \cdc_sync_stage2_reg[0]\ => \cdc_sync_stage2_reg[0]_0\,
      ctrl_enable => ctrl_enable,
      ctrl_pause => ctrl_pause,
      do_enable_reg_0 => \^do_enable_reg\(2),
      do_enable_reg_1 => do_enable_reg_0,
      fifo_wr_clk => fifo_wr_clk,
      m_dest_axi_aclk => m_dest_axi_aclk,
      m_dest_axi_awaddr(1 downto 0) => \^m_dest_axi_awaddr\(4 downto 3),
      needs_reset_reg_0(1) => dbg_status(11),
      needs_reset_reg_0(0) => dbg_status(2),
      \reset_gen[1].reset_sync_reg[0]_0\(0) => reset_sync_chain_2,
      \reset_gen[2].reset_sync_reg[0]_0\(0) => i_reset_manager_n_6,
      s_axi_aclk => s_axi_aclk,
      src_enable => src_enable,
      \state_reg[1]_0\(1 downto 0) => \^do_enable_reg\(1 downto 0),
      \up_rdata_reg[5]\ => \up_rdata_reg[5]\,
      \up_rdata_reg[5]_0\ => \up_rdata_reg[5]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq : out STD_LOGIC;
    m_dest_axi_aclk : in STD_LOGIC;
    m_dest_axi_aresetn : in STD_LOGIC;
    m_dest_axi_awaddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_dest_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_dest_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dest_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dest_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dest_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_awvalid : out STD_LOGIC;
    m_dest_axi_awready : in STD_LOGIC;
    m_dest_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_dest_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_wready : in STD_LOGIC;
    m_dest_axi_wvalid : out STD_LOGIC;
    m_dest_axi_wlast : out STD_LOGIC;
    m_dest_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_bvalid : in STD_LOGIC;
    m_dest_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dest_axi_bready : out STD_LOGIC;
    m_dest_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_arvalid : out STD_LOGIC;
    m_dest_axi_araddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_dest_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_dest_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dest_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dest_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dest_axi_arready : in STD_LOGIC;
    m_dest_axi_rvalid : in STD_LOGIC;
    m_dest_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dest_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_dest_axi_rready : out STD_LOGIC;
    m_dest_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_dest_axi_rlast : in STD_LOGIC;
    m_src_axi_aclk : in STD_LOGIC;
    m_src_axi_aresetn : in STD_LOGIC;
    m_src_axi_arready : in STD_LOGIC;
    m_src_axi_arvalid : out STD_LOGIC;
    m_src_axi_araddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_src_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_src_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_src_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_src_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_src_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_src_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_src_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_src_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_src_axi_rready : out STD_LOGIC;
    m_src_axi_rvalid : in STD_LOGIC;
    m_src_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_src_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_src_axi_rlast : in STD_LOGIC;
    m_src_axi_awvalid : out STD_LOGIC;
    m_src_axi_awaddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_src_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_src_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_src_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_src_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_src_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_src_axi_awready : in STD_LOGIC;
    m_src_axi_wvalid : out STD_LOGIC;
    m_src_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_src_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_src_axi_wlast : out STD_LOGIC;
    m_src_axi_wready : in STD_LOGIC;
    m_src_axi_bvalid : in STD_LOGIC;
    m_src_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_src_axi_bready : out STD_LOGIC;
    m_src_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_src_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_src_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_src_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_aclk : in STD_LOGIC;
    s_axis_ready : out STD_LOGIC;
    s_axis_valid : in STD_LOGIC;
    s_axis_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_strb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_keep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_user : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_id : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_dest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_last : in STD_LOGIC;
    s_axis_xfer_req : out STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_ready : in STD_LOGIC;
    m_axis_valid : out STD_LOGIC;
    m_axis_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_strb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_keep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_user : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_id : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_dest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_last : out STD_LOGIC;
    m_axis_xfer_req : out STD_LOGIC;
    fifo_wr_clk : in STD_LOGIC;
    fifo_wr_en : in STD_LOGIC;
    fifo_wr_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_wr_overflow : out STD_LOGIC;
    fifo_wr_sync : in STD_LOGIC;
    fifo_wr_xfer_req : out STD_LOGIC;
    fifo_rd_clk : in STD_LOGIC;
    fifo_rd_en : in STD_LOGIC;
    fifo_rd_valid : out STD_LOGIC;
    fifo_rd_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_rd_underflow : out STD_LOGIC;
    fifo_rd_xfer_req : out STD_LOGIC;
    dest_diag_level_bursts : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ALLOW_ASYM_MEM : integer;
  attribute ALLOW_ASYM_MEM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 1;
  attribute ASYNC_CLK_DEST_REQ : string;
  attribute ASYNC_CLK_DEST_REQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is "1'b0";
  attribute ASYNC_CLK_REQ_SRC : string;
  attribute ASYNC_CLK_REQ_SRC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is "1'b1";
  attribute ASYNC_CLK_SRC_DEST : string;
  attribute ASYNC_CLK_SRC_DEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is "1'b1";
  attribute AXI_ID_WIDTH_DEST : integer;
  attribute AXI_ID_WIDTH_DEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 1;
  attribute AXI_ID_WIDTH_SRC : integer;
  attribute AXI_ID_WIDTH_SRC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 1;
  attribute AXI_SLICE_DEST : string;
  attribute AXI_SLICE_DEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is "1'b0";
  attribute AXI_SLICE_SRC : string;
  attribute AXI_SLICE_SRC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is "1'b0";
  attribute BEATS_PER_BURST_LIMIT_DEST : integer;
  attribute BEATS_PER_BURST_LIMIT_DEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 256;
  attribute BEATS_PER_BURST_LIMIT_SRC : integer;
  attribute BEATS_PER_BURST_LIMIT_SRC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 1024;
  attribute BYTES_PER_BEAT_WIDTH_DEST : integer;
  attribute BYTES_PER_BEAT_WIDTH_DEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 2;
  attribute BYTES_PER_BEAT_WIDTH_SRC : integer;
  attribute BYTES_PER_BEAT_WIDTH_SRC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 2;
  attribute BYTES_PER_BURST_LIMIT : integer;
  attribute BYTES_PER_BURST_LIMIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 1024;
  attribute BYTES_PER_BURST_LIMIT_DEST : integer;
  attribute BYTES_PER_BURST_LIMIT_DEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 1024;
  attribute BYTES_PER_BURST_LIMIT_SRC : integer;
  attribute BYTES_PER_BURST_LIMIT_SRC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 4096;
  attribute BYTES_PER_BURST_WIDTH : integer;
  attribute BYTES_PER_BURST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 7;
  attribute CYCLIC : string;
  attribute CYCLIC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is "1'b0";
  attribute DBG_ID_PADDING : integer;
  attribute DBG_ID_PADDING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 4;
  attribute DISABLE_DEBUG_REGISTERS : string;
  attribute DISABLE_DEBUG_REGISTERS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is "1'b0";
  attribute DMA_2D_TRANSFER : string;
  attribute DMA_2D_TRANSFER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is "1'b0";
  attribute DMA_AXIS_DEST_W : integer;
  attribute DMA_AXIS_DEST_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 4;
  attribute DMA_AXIS_ID_W : integer;
  attribute DMA_AXIS_ID_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 8;
  attribute DMA_AXI_ADDR_WIDTH : integer;
  attribute DMA_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 30;
  attribute DMA_AXI_PROTOCOL_DEST : integer;
  attribute DMA_AXI_PROTOCOL_DEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 0;
  attribute DMA_AXI_PROTOCOL_SRC : integer;
  attribute DMA_AXI_PROTOCOL_SRC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 0;
  attribute DMA_DATA_WIDTH_DEST : integer;
  attribute DMA_DATA_WIDTH_DEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 32;
  attribute DMA_DATA_WIDTH_SRC : integer;
  attribute DMA_DATA_WIDTH_SRC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 32;
  attribute DMA_LENGTH_ALIGN : integer;
  attribute DMA_LENGTH_ALIGN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 2;
  attribute DMA_LENGTH_ALIGN_DEST : integer;
  attribute DMA_LENGTH_ALIGN_DEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 0;
  attribute DMA_LENGTH_ALIGN_SRC : integer;
  attribute DMA_LENGTH_ALIGN_SRC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 2;
  attribute DMA_LENGTH_WIDTH : integer;
  attribute DMA_LENGTH_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 24;
  attribute DMA_TYPE_AXI_MM : integer;
  attribute DMA_TYPE_AXI_MM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 0;
  attribute DMA_TYPE_AXI_STREAM : integer;
  attribute DMA_TYPE_AXI_STREAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 1;
  attribute DMA_TYPE_DEST : integer;
  attribute DMA_TYPE_DEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 0;
  attribute DMA_TYPE_FIFO : integer;
  attribute DMA_TYPE_FIFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 2;
  attribute DMA_TYPE_SRC : integer;
  attribute DMA_TYPE_SRC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 2;
  attribute ENABLE_DIAGNOSTICS_IF : string;
  attribute ENABLE_DIAGNOSTICS_IF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is "1'b0";
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 8;
  attribute HAS_DEST_ADDR : string;
  attribute HAS_DEST_ADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is "1'b1";
  attribute HAS_SRC_ADDR : string;
  attribute HAS_SRC_ADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is "1'b0";
  attribute ID : integer;
  attribute ID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 0;
  attribute ID_WIDTH : integer;
  attribute ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 4;
  attribute MAX_BYTES_PER_BURST : integer;
  attribute MAX_BYTES_PER_BURST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 128;
  attribute REAL_MAX_BYTES_PER_BURST : integer;
  attribute REAL_MAX_BYTES_PER_BURST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is 128;
  attribute SYNC_TRANSFER_START : string;
  attribute SYNC_TRANSFER_START of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac : entity is "1'b1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal ctrl_enable : STD_LOGIC;
  signal ctrl_pause : STD_LOGIC;
  signal data3 : STD_LOGIC_VECTOR ( 29 downto 2 );
  signal data8 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dbg_ids1 : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal dbg_status : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal i_regmap_n_0 : STD_LOGIC;
  signal i_regmap_n_41 : STD_LOGIC;
  signal i_regmap_n_42 : STD_LOGIC;
  signal i_regmap_n_43 : STD_LOGIC;
  signal i_regmap_n_44 : STD_LOGIC;
  signal i_regmap_n_45 : STD_LOGIC;
  signal i_regmap_n_46 : STD_LOGIC;
  signal i_regmap_n_47 : STD_LOGIC;
  signal \i_regmap_request/p_3_in\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \i_regmap_request/p_7_in\ : STD_LOGIC;
  signal \i_regmap_request/up_bl_partial\ : STD_LOGIC;
  signal \i_regmap_request/up_clear_tl\ : STD_LOGIC;
  signal \i_request_arb/i_response_manager/req_eot\ : STD_LOGIC;
  signal \i_request_arb/i_response_manager/state\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \i_request_arb/req_gen_ready\ : STD_LOGIC;
  signal i_transfer_n_100 : STD_LOGIC;
  signal i_transfer_n_101 : STD_LOGIC;
  signal i_transfer_n_102 : STD_LOGIC;
  signal i_transfer_n_103 : STD_LOGIC;
  signal i_transfer_n_104 : STD_LOGIC;
  signal i_transfer_n_105 : STD_LOGIC;
  signal i_transfer_n_106 : STD_LOGIC;
  signal i_transfer_n_107 : STD_LOGIC;
  signal i_transfer_n_108 : STD_LOGIC;
  signal i_transfer_n_41 : STD_LOGIC;
  signal i_transfer_n_42 : STD_LOGIC;
  signal i_transfer_n_91 : STD_LOGIC;
  signal i_transfer_n_92 : STD_LOGIC;
  signal i_transfer_n_93 : STD_LOGIC;
  signal i_transfer_n_94 : STD_LOGIC;
  signal i_transfer_n_95 : STD_LOGIC;
  signal i_transfer_n_96 : STD_LOGIC;
  signal i_transfer_n_97 : STD_LOGIC;
  signal i_transfer_n_98 : STD_LOGIC;
  signal i_transfer_n_99 : STD_LOGIC;
  signal \^m_dest_axi_awaddr\ : STD_LOGIC_VECTOR ( 29 downto 2 );
  signal \^m_dest_axi_awlen\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal measured_burst_length : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal req_burst_count : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal src_request_id : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal up_dma_req_valid : STD_LOGIC;
  signal up_eot : STD_LOGIC;
  signal up_response_ready : STD_LOGIC;
  signal up_response_valid : STD_LOGIC;
  signal up_sot : STD_LOGIC;
begin
  dest_diag_level_bursts(7) <= \<const0>\;
  dest_diag_level_bursts(6) <= \<const0>\;
  dest_diag_level_bursts(5) <= \<const0>\;
  dest_diag_level_bursts(4) <= \<const0>\;
  dest_diag_level_bursts(3) <= \<const0>\;
  dest_diag_level_bursts(2) <= \<const0>\;
  dest_diag_level_bursts(1) <= \<const0>\;
  dest_diag_level_bursts(0) <= \<const0>\;
  fifo_rd_dout(31) <= \<const0>\;
  fifo_rd_dout(30) <= \<const0>\;
  fifo_rd_dout(29) <= \<const0>\;
  fifo_rd_dout(28) <= \<const0>\;
  fifo_rd_dout(27) <= \<const0>\;
  fifo_rd_dout(26) <= \<const0>\;
  fifo_rd_dout(25) <= \<const0>\;
  fifo_rd_dout(24) <= \<const0>\;
  fifo_rd_dout(23) <= \<const0>\;
  fifo_rd_dout(22) <= \<const0>\;
  fifo_rd_dout(21) <= \<const0>\;
  fifo_rd_dout(20) <= \<const0>\;
  fifo_rd_dout(19) <= \<const0>\;
  fifo_rd_dout(18) <= \<const0>\;
  fifo_rd_dout(17) <= \<const0>\;
  fifo_rd_dout(16) <= \<const0>\;
  fifo_rd_dout(15) <= \<const0>\;
  fifo_rd_dout(14) <= \<const0>\;
  fifo_rd_dout(13) <= \<const0>\;
  fifo_rd_dout(12) <= \<const0>\;
  fifo_rd_dout(11) <= \<const0>\;
  fifo_rd_dout(10) <= \<const0>\;
  fifo_rd_dout(9) <= \<const0>\;
  fifo_rd_dout(8) <= \<const0>\;
  fifo_rd_dout(7) <= \<const0>\;
  fifo_rd_dout(6) <= \<const0>\;
  fifo_rd_dout(5) <= \<const0>\;
  fifo_rd_dout(4) <= \<const0>\;
  fifo_rd_dout(3) <= \<const0>\;
  fifo_rd_dout(2) <= \<const0>\;
  fifo_rd_dout(1) <= \<const0>\;
  fifo_rd_dout(0) <= \<const0>\;
  fifo_rd_underflow <= \<const0>\;
  fifo_rd_valid <= \<const0>\;
  fifo_rd_xfer_req <= \<const0>\;
  m_axis_data(31) <= \<const0>\;
  m_axis_data(30) <= \<const0>\;
  m_axis_data(29) <= \<const0>\;
  m_axis_data(28) <= \<const0>\;
  m_axis_data(27) <= \<const0>\;
  m_axis_data(26) <= \<const0>\;
  m_axis_data(25) <= \<const0>\;
  m_axis_data(24) <= \<const0>\;
  m_axis_data(23) <= \<const0>\;
  m_axis_data(22) <= \<const0>\;
  m_axis_data(21) <= \<const0>\;
  m_axis_data(20) <= \<const0>\;
  m_axis_data(19) <= \<const0>\;
  m_axis_data(18) <= \<const0>\;
  m_axis_data(17) <= \<const0>\;
  m_axis_data(16) <= \<const0>\;
  m_axis_data(15) <= \<const0>\;
  m_axis_data(14) <= \<const0>\;
  m_axis_data(13) <= \<const0>\;
  m_axis_data(12) <= \<const0>\;
  m_axis_data(11) <= \<const0>\;
  m_axis_data(10) <= \<const0>\;
  m_axis_data(9) <= \<const0>\;
  m_axis_data(8) <= \<const0>\;
  m_axis_data(7) <= \<const0>\;
  m_axis_data(6) <= \<const0>\;
  m_axis_data(5) <= \<const0>\;
  m_axis_data(4) <= \<const0>\;
  m_axis_data(3) <= \<const0>\;
  m_axis_data(2) <= \<const0>\;
  m_axis_data(1) <= \<const0>\;
  m_axis_data(0) <= \<const0>\;
  m_axis_dest(3) <= \<const0>\;
  m_axis_dest(2) <= \<const0>\;
  m_axis_dest(1) <= \<const0>\;
  m_axis_dest(0) <= \<const0>\;
  m_axis_id(7) <= \<const0>\;
  m_axis_id(6) <= \<const0>\;
  m_axis_id(5) <= \<const0>\;
  m_axis_id(4) <= \<const0>\;
  m_axis_id(3) <= \<const0>\;
  m_axis_id(2) <= \<const0>\;
  m_axis_id(1) <= \<const0>\;
  m_axis_id(0) <= \<const0>\;
  m_axis_keep(3) <= \<const1>\;
  m_axis_keep(2) <= \<const1>\;
  m_axis_keep(1) <= \<const1>\;
  m_axis_keep(0) <= \<const1>\;
  m_axis_last <= \<const0>\;
  m_axis_strb(3) <= \<const1>\;
  m_axis_strb(2) <= \<const1>\;
  m_axis_strb(1) <= \<const1>\;
  m_axis_strb(0) <= \<const1>\;
  m_axis_user(0) <= \<const0>\;
  m_axis_valid <= \<const0>\;
  m_axis_xfer_req <= \<const0>\;
  m_dest_axi_araddr(29) <= \<const0>\;
  m_dest_axi_araddr(28) <= \<const0>\;
  m_dest_axi_araddr(27) <= \<const0>\;
  m_dest_axi_araddr(26) <= \<const0>\;
  m_dest_axi_araddr(25) <= \<const0>\;
  m_dest_axi_araddr(24) <= \<const0>\;
  m_dest_axi_araddr(23) <= \<const0>\;
  m_dest_axi_araddr(22) <= \<const0>\;
  m_dest_axi_araddr(21) <= \<const0>\;
  m_dest_axi_araddr(20) <= \<const0>\;
  m_dest_axi_araddr(19) <= \<const0>\;
  m_dest_axi_araddr(18) <= \<const0>\;
  m_dest_axi_araddr(17) <= \<const0>\;
  m_dest_axi_araddr(16) <= \<const0>\;
  m_dest_axi_araddr(15) <= \<const0>\;
  m_dest_axi_araddr(14) <= \<const0>\;
  m_dest_axi_araddr(13) <= \<const0>\;
  m_dest_axi_araddr(12) <= \<const0>\;
  m_dest_axi_araddr(11) <= \<const0>\;
  m_dest_axi_araddr(10) <= \<const0>\;
  m_dest_axi_araddr(9) <= \<const0>\;
  m_dest_axi_araddr(8) <= \<const0>\;
  m_dest_axi_araddr(7) <= \<const0>\;
  m_dest_axi_araddr(6) <= \<const0>\;
  m_dest_axi_araddr(5) <= \<const0>\;
  m_dest_axi_araddr(4) <= \<const0>\;
  m_dest_axi_araddr(3) <= \<const0>\;
  m_dest_axi_araddr(2) <= \<const0>\;
  m_dest_axi_araddr(1) <= \<const0>\;
  m_dest_axi_araddr(0) <= \<const0>\;
  m_dest_axi_arburst(1) <= \<const0>\;
  m_dest_axi_arburst(0) <= \<const0>\;
  m_dest_axi_arcache(3) <= \<const0>\;
  m_dest_axi_arcache(2) <= \<const0>\;
  m_dest_axi_arcache(1) <= \<const0>\;
  m_dest_axi_arcache(0) <= \<const0>\;
  m_dest_axi_arid(0) <= \<const0>\;
  m_dest_axi_arlen(7) <= \<const0>\;
  m_dest_axi_arlen(6) <= \<const0>\;
  m_dest_axi_arlen(5) <= \<const0>\;
  m_dest_axi_arlen(4) <= \<const0>\;
  m_dest_axi_arlen(3) <= \<const0>\;
  m_dest_axi_arlen(2) <= \<const0>\;
  m_dest_axi_arlen(1) <= \<const0>\;
  m_dest_axi_arlen(0) <= \<const0>\;
  m_dest_axi_arlock(0) <= \<const0>\;
  m_dest_axi_arprot(2) <= \<const0>\;
  m_dest_axi_arprot(1) <= \<const0>\;
  m_dest_axi_arprot(0) <= \<const0>\;
  m_dest_axi_arsize(2) <= \<const0>\;
  m_dest_axi_arsize(1) <= \<const0>\;
  m_dest_axi_arsize(0) <= \<const0>\;
  m_dest_axi_arvalid <= \<const0>\;
  m_dest_axi_awaddr(29 downto 2) <= \^m_dest_axi_awaddr\(29 downto 2);
  m_dest_axi_awaddr(1) <= \<const0>\;
  m_dest_axi_awaddr(0) <= \<const0>\;
  m_dest_axi_awburst(1) <= \<const0>\;
  m_dest_axi_awburst(0) <= \<const1>\;
  m_dest_axi_awcache(3) <= \<const0>\;
  m_dest_axi_awcache(2) <= \<const0>\;
  m_dest_axi_awcache(1) <= \<const1>\;
  m_dest_axi_awcache(0) <= \<const1>\;
  m_dest_axi_awid(0) <= \<const0>\;
  m_dest_axi_awlen(7) <= \<const0>\;
  m_dest_axi_awlen(6) <= \<const0>\;
  m_dest_axi_awlen(5) <= \<const0>\;
  m_dest_axi_awlen(4 downto 0) <= \^m_dest_axi_awlen\(4 downto 0);
  m_dest_axi_awlock(0) <= \<const0>\;
  m_dest_axi_awprot(2) <= \<const0>\;
  m_dest_axi_awprot(1) <= \<const0>\;
  m_dest_axi_awprot(0) <= \<const0>\;
  m_dest_axi_awsize(2) <= \<const0>\;
  m_dest_axi_awsize(1) <= \<const1>\;
  m_dest_axi_awsize(0) <= \<const0>\;
  m_dest_axi_rready <= \<const0>\;
  m_dest_axi_wid(0) <= \<const0>\;
  m_dest_axi_wstrb(3) <= \<const1>\;
  m_dest_axi_wstrb(2) <= \<const1>\;
  m_dest_axi_wstrb(1) <= \<const1>\;
  m_dest_axi_wstrb(0) <= \<const1>\;
  m_src_axi_araddr(29) <= \<const0>\;
  m_src_axi_araddr(28) <= \<const0>\;
  m_src_axi_araddr(27) <= \<const0>\;
  m_src_axi_araddr(26) <= \<const0>\;
  m_src_axi_araddr(25) <= \<const0>\;
  m_src_axi_araddr(24) <= \<const0>\;
  m_src_axi_araddr(23) <= \<const0>\;
  m_src_axi_araddr(22) <= \<const0>\;
  m_src_axi_araddr(21) <= \<const0>\;
  m_src_axi_araddr(20) <= \<const0>\;
  m_src_axi_araddr(19) <= \<const0>\;
  m_src_axi_araddr(18) <= \<const0>\;
  m_src_axi_araddr(17) <= \<const0>\;
  m_src_axi_araddr(16) <= \<const0>\;
  m_src_axi_araddr(15) <= \<const0>\;
  m_src_axi_araddr(14) <= \<const0>\;
  m_src_axi_araddr(13) <= \<const0>\;
  m_src_axi_araddr(12) <= \<const0>\;
  m_src_axi_araddr(11) <= \<const0>\;
  m_src_axi_araddr(10) <= \<const0>\;
  m_src_axi_araddr(9) <= \<const0>\;
  m_src_axi_araddr(8) <= \<const0>\;
  m_src_axi_araddr(7) <= \<const0>\;
  m_src_axi_araddr(6) <= \<const0>\;
  m_src_axi_araddr(5) <= \<const0>\;
  m_src_axi_araddr(4) <= \<const0>\;
  m_src_axi_araddr(3) <= \<const0>\;
  m_src_axi_araddr(2) <= \<const0>\;
  m_src_axi_araddr(1) <= \<const0>\;
  m_src_axi_araddr(0) <= \<const0>\;
  m_src_axi_arburst(1) <= \<const0>\;
  m_src_axi_arburst(0) <= \<const0>\;
  m_src_axi_arcache(3) <= \<const0>\;
  m_src_axi_arcache(2) <= \<const0>\;
  m_src_axi_arcache(1) <= \<const0>\;
  m_src_axi_arcache(0) <= \<const0>\;
  m_src_axi_arid(0) <= \<const0>\;
  m_src_axi_arlen(7) <= \<const0>\;
  m_src_axi_arlen(6) <= \<const0>\;
  m_src_axi_arlen(5) <= \<const0>\;
  m_src_axi_arlen(4) <= \<const0>\;
  m_src_axi_arlen(3) <= \<const0>\;
  m_src_axi_arlen(2) <= \<const0>\;
  m_src_axi_arlen(1) <= \<const0>\;
  m_src_axi_arlen(0) <= \<const0>\;
  m_src_axi_arlock(0) <= \<const0>\;
  m_src_axi_arprot(2) <= \<const0>\;
  m_src_axi_arprot(1) <= \<const0>\;
  m_src_axi_arprot(0) <= \<const0>\;
  m_src_axi_arsize(2) <= \<const0>\;
  m_src_axi_arsize(1) <= \<const0>\;
  m_src_axi_arsize(0) <= \<const0>\;
  m_src_axi_arvalid <= \<const0>\;
  m_src_axi_awaddr(29) <= \<const0>\;
  m_src_axi_awaddr(28) <= \<const0>\;
  m_src_axi_awaddr(27) <= \<const0>\;
  m_src_axi_awaddr(26) <= \<const0>\;
  m_src_axi_awaddr(25) <= \<const0>\;
  m_src_axi_awaddr(24) <= \<const0>\;
  m_src_axi_awaddr(23) <= \<const0>\;
  m_src_axi_awaddr(22) <= \<const0>\;
  m_src_axi_awaddr(21) <= \<const0>\;
  m_src_axi_awaddr(20) <= \<const0>\;
  m_src_axi_awaddr(19) <= \<const0>\;
  m_src_axi_awaddr(18) <= \<const0>\;
  m_src_axi_awaddr(17) <= \<const0>\;
  m_src_axi_awaddr(16) <= \<const0>\;
  m_src_axi_awaddr(15) <= \<const0>\;
  m_src_axi_awaddr(14) <= \<const0>\;
  m_src_axi_awaddr(13) <= \<const0>\;
  m_src_axi_awaddr(12) <= \<const0>\;
  m_src_axi_awaddr(11) <= \<const0>\;
  m_src_axi_awaddr(10) <= \<const0>\;
  m_src_axi_awaddr(9) <= \<const0>\;
  m_src_axi_awaddr(8) <= \<const0>\;
  m_src_axi_awaddr(7) <= \<const0>\;
  m_src_axi_awaddr(6) <= \<const0>\;
  m_src_axi_awaddr(5) <= \<const0>\;
  m_src_axi_awaddr(4) <= \<const0>\;
  m_src_axi_awaddr(3) <= \<const0>\;
  m_src_axi_awaddr(2) <= \<const0>\;
  m_src_axi_awaddr(1) <= \<const0>\;
  m_src_axi_awaddr(0) <= \<const0>\;
  m_src_axi_awburst(1) <= \<const0>\;
  m_src_axi_awburst(0) <= \<const0>\;
  m_src_axi_awcache(3) <= \<const0>\;
  m_src_axi_awcache(2) <= \<const0>\;
  m_src_axi_awcache(1) <= \<const0>\;
  m_src_axi_awcache(0) <= \<const0>\;
  m_src_axi_awid(0) <= \<const0>\;
  m_src_axi_awlen(7) <= \<const0>\;
  m_src_axi_awlen(6) <= \<const0>\;
  m_src_axi_awlen(5) <= \<const0>\;
  m_src_axi_awlen(4) <= \<const0>\;
  m_src_axi_awlen(3) <= \<const0>\;
  m_src_axi_awlen(2) <= \<const0>\;
  m_src_axi_awlen(1) <= \<const0>\;
  m_src_axi_awlen(0) <= \<const0>\;
  m_src_axi_awlock(0) <= \<const0>\;
  m_src_axi_awprot(2) <= \<const0>\;
  m_src_axi_awprot(1) <= \<const0>\;
  m_src_axi_awprot(0) <= \<const0>\;
  m_src_axi_awsize(2) <= \<const0>\;
  m_src_axi_awsize(1) <= \<const0>\;
  m_src_axi_awsize(0) <= \<const0>\;
  m_src_axi_awvalid <= \<const0>\;
  m_src_axi_bready <= \<const0>\;
  m_src_axi_rready <= \<const0>\;
  m_src_axi_wdata(31) <= \<const0>\;
  m_src_axi_wdata(30) <= \<const0>\;
  m_src_axi_wdata(29) <= \<const0>\;
  m_src_axi_wdata(28) <= \<const0>\;
  m_src_axi_wdata(27) <= \<const0>\;
  m_src_axi_wdata(26) <= \<const0>\;
  m_src_axi_wdata(25) <= \<const0>\;
  m_src_axi_wdata(24) <= \<const0>\;
  m_src_axi_wdata(23) <= \<const0>\;
  m_src_axi_wdata(22) <= \<const0>\;
  m_src_axi_wdata(21) <= \<const0>\;
  m_src_axi_wdata(20) <= \<const0>\;
  m_src_axi_wdata(19) <= \<const0>\;
  m_src_axi_wdata(18) <= \<const0>\;
  m_src_axi_wdata(17) <= \<const0>\;
  m_src_axi_wdata(16) <= \<const0>\;
  m_src_axi_wdata(15) <= \<const0>\;
  m_src_axi_wdata(14) <= \<const0>\;
  m_src_axi_wdata(13) <= \<const0>\;
  m_src_axi_wdata(12) <= \<const0>\;
  m_src_axi_wdata(11) <= \<const0>\;
  m_src_axi_wdata(10) <= \<const0>\;
  m_src_axi_wdata(9) <= \<const0>\;
  m_src_axi_wdata(8) <= \<const0>\;
  m_src_axi_wdata(7) <= \<const0>\;
  m_src_axi_wdata(6) <= \<const0>\;
  m_src_axi_wdata(5) <= \<const0>\;
  m_src_axi_wdata(4) <= \<const0>\;
  m_src_axi_wdata(3) <= \<const0>\;
  m_src_axi_wdata(2) <= \<const0>\;
  m_src_axi_wdata(1) <= \<const0>\;
  m_src_axi_wdata(0) <= \<const0>\;
  m_src_axi_wid(0) <= \<const0>\;
  m_src_axi_wlast <= \<const0>\;
  m_src_axi_wstrb(3) <= \<const0>\;
  m_src_axi_wstrb(2) <= \<const0>\;
  m_src_axi_wstrb(1) <= \<const0>\;
  m_src_axi_wstrb(0) <= \<const0>\;
  m_src_axi_wvalid <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axis_ready <= \<const0>\;
  s_axis_xfer_req <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
i_regmap: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_regmap
     port map (
      D(32 downto 5) => data3(29 downto 2),
      D(4) => i_regmap_n_41,
      D(3) => i_regmap_n_42,
      D(2) => i_regmap_n_43,
      D(1) => i_regmap_n_44,
      D(0) => i_regmap_n_45,
      E(0) => up_sot,
      Q(16 downto 0) => req_burst_count(16 downto 0),
      ctrl_enable => ctrl_enable,
      ctrl_pause => ctrl_pause,
      data8(1 downto 0) => data8(1 downto 0),
      dbg_ids1(3 downto 0) => dbg_ids1(27 downto 24),
      dbg_status(2) => dbg_status(6),
      dbg_status(1 downto 0) => dbg_status(1 downto 0),
      irq => irq,
      m_dest_axi_awaddr(9 downto 8) => \^m_dest_axi_awaddr\(29 downto 28),
      m_dest_axi_awaddr(7 downto 4) => \^m_dest_axi_awaddr\(23 downto 20),
      m_dest_axi_awaddr(3 downto 0) => \^m_dest_axi_awaddr\(15 downto 12),
      p_3_in(0) => \i_regmap_request/p_3_in\(2),
      p_7_in => \i_regmap_request/p_7_in\,
      req_eot => \i_request_arb/i_response_manager/req_eot\,
      req_gen_ready => \i_request_arb/req_gen_ready\,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(10 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => i_regmap_n_0,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(10 downto 2),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      src_request_id(3 downto 0) => src_request_id(3 downto 0),
      up_axi_rvalid_int_reg => s_axi_rvalid,
      up_bl_partial => \i_regmap_request/up_bl_partial\,
      up_clear_tl => \i_regmap_request/up_clear_tl\,
      up_clear_tl_reg => i_transfer_n_108,
      up_dma_req_valid => up_dma_req_valid,
      up_eot => up_eot,
      \up_measured_transfer_length_reg[7]\(6 downto 0) => measured_burst_length(6 downto 0),
      \up_raddr_int_reg[6]\ => i_regmap_n_47,
      \up_raddr_int_reg[7]\ => i_regmap_n_46,
      \up_rdata_reg[10]_0\ => i_transfer_n_91,
      \up_rdata_reg[11]_0\ => i_transfer_n_99,
      \up_rdata_reg[16]_0\ => i_transfer_n_100,
      \up_rdata_reg[17]_0\ => i_transfer_n_101,
      \up_rdata_reg[18]_0\ => i_transfer_n_102,
      \up_rdata_reg[19]_0\ => i_transfer_n_103,
      \up_rdata_reg[24]_0\ => i_transfer_n_104,
      \up_rdata_reg[25]_0\ => i_transfer_n_105,
      \up_rdata_reg[26]_0\ => i_transfer_n_106,
      \up_rdata_reg[27]_0\ => i_transfer_n_107,
      \up_rdata_reg[2]_0\ => i_transfer_n_97,
      \up_rdata_reg[3]_0\ => i_transfer_n_98,
      \up_rdata_reg[4]_0\ => i_transfer_n_96,
      \up_rdata_reg[5]_0\ => i_transfer_n_95,
      \up_rdata_reg[6]_0\ => i_transfer_n_94,
      \up_rdata_reg[7]_0\ => \^m_dest_axi_awaddr\(7),
      \up_rdata_reg[8]_0\ => i_transfer_n_92,
      \up_rdata_reg[9]_0\ => i_transfer_n_93,
      up_response_ready => up_response_ready,
      up_response_valid => up_response_valid,
      \up_transfer_id_eot_reg[0]\(2 downto 0) => \i_request_arb/i_response_manager/state\(2 downto 0),
      \up_transfer_id_reg[0]\ => i_transfer_n_41,
      \up_transfer_id_reg[0]_0\ => i_transfer_n_42
    );
i_transfer: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_transfer
     port map (
      D(32 downto 5) => data3(29 downto 2),
      D(4) => i_regmap_n_41,
      D(3) => i_regmap_n_42,
      D(2) => i_regmap_n_43,
      D(1) => i_regmap_n_44,
      D(0) => i_regmap_n_45,
      E(0) => up_sot,
      Q(2 downto 0) => \i_request_arb/i_response_manager/state\(2 downto 0),
      SR(0) => i_regmap_n_0,
      active_reg => fifo_wr_xfer_req,
      addr_valid_reg => m_dest_axi_awvalid,
      \burst_count_reg[16]\(16 downto 0) => req_burst_count(16 downto 0),
      \cdc_sync_stage2_reg[0]\ => i_transfer_n_42,
      \cdc_sync_stage2_reg[0]_0\ => i_transfer_n_95,
      \cdc_sync_stage2_reg[1]\(1 downto 0) => data8(1 downto 0),
      \cdc_sync_stage2_reg[2]\ => i_transfer_n_97,
      \cdc_sync_stage2_reg[3]\ => i_transfer_n_98,
      ctrl_enable => ctrl_enable,
      ctrl_pause => ctrl_pause,
      dbg_ids1(3 downto 0) => dbg_ids1(27 downto 24),
      \dest_id_reg[0]\ => i_transfer_n_100,
      \dest_id_reg[1]\ => i_transfer_n_101,
      \dest_id_reg[2]\ => i_transfer_n_102,
      \dest_id_reg[3]\ => i_transfer_n_103,
      dest_mem_data_valid_reg => m_dest_axi_wvalid,
      do_enable_reg(2) => dbg_status(6),
      do_enable_reg(1 downto 0) => dbg_status(1 downto 0),
      do_enable_reg_0 => i_transfer_n_94,
      enabled_reg => i_transfer_n_96,
      fifo_wr_clk => fifo_wr_clk,
      fifo_wr_din(31 downto 0) => fifo_wr_din(31 downto 0),
      fifo_wr_en => fifo_wr_en,
      fifo_wr_overflow => fifo_wr_overflow,
      fifo_wr_sync => fifo_wr_sync,
      \id_reg[0]\ => i_transfer_n_92,
      \id_reg[0]_0\ => i_transfer_n_104,
      \id_reg[1]\ => i_transfer_n_93,
      \id_reg[1]_0\ => i_transfer_n_105,
      \id_reg[2]\ => i_transfer_n_91,
      \id_reg[2]_0\ => i_transfer_n_106,
      \id_reg[3]\ => i_transfer_n_99,
      \id_reg[3]_0\ => i_transfer_n_107,
      m_dest_axi_aclk => m_dest_axi_aclk,
      m_dest_axi_awaddr(27 downto 0) => \^m_dest_axi_awaddr\(29 downto 2),
      m_dest_axi_awlen(4 downto 0) => \^m_dest_axi_awlen\(4 downto 0),
      m_dest_axi_awready => m_dest_axi_awready,
      m_dest_axi_bready => m_dest_axi_bready,
      m_dest_axi_bvalid => m_dest_axi_bvalid,
      m_dest_axi_wdata(31 downto 0) => m_dest_axi_wdata(31 downto 0),
      m_dest_axi_wlast => m_dest_axi_wlast,
      m_dest_axi_wready => m_dest_axi_wready,
      \measured_burst_length_reg[6]\(6 downto 0) => measured_burst_length(6 downto 0),
      p_3_in(0) => \i_regmap_request/p_3_in\(2),
      p_7_in => \i_regmap_request/p_7_in\,
      req_eot => \i_request_arb/i_response_manager/req_eot\,
      req_gen_ready => \i_request_arb/req_gen_ready\,
      s_axi_aclk => s_axi_aclk,
      s_axis_waddr_reg => i_transfer_n_41,
      src_request_id(3 downto 0) => src_request_id(3 downto 0),
      \state_reg[1]\ => i_transfer_n_108,
      up_bl_partial => \i_regmap_request/up_bl_partial\,
      up_clear_tl => \i_regmap_request/up_clear_tl\,
      up_dma_req_valid => up_dma_req_valid,
      up_eot => up_eot,
      \up_rdata_reg[5]\ => i_regmap_n_46,
      \up_rdata_reg[5]_0\ => i_regmap_n_47,
      up_response_ready => up_response_ready,
      up_response_valid => up_response_valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq : out STD_LOGIC;
    m_dest_axi_aclk : in STD_LOGIC;
    m_dest_axi_aresetn : in STD_LOGIC;
    m_dest_axi_awaddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_dest_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_dest_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dest_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dest_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dest_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_awvalid : out STD_LOGIC;
    m_dest_axi_awready : in STD_LOGIC;
    m_dest_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_dest_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_wready : in STD_LOGIC;
    m_dest_axi_wvalid : out STD_LOGIC;
    m_dest_axi_wlast : out STD_LOGIC;
    m_dest_axi_bvalid : in STD_LOGIC;
    m_dest_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dest_axi_bready : out STD_LOGIC;
    fifo_wr_clk : in STD_LOGIC;
    fifo_wr_en : in STD_LOGIC;
    fifo_wr_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_wr_overflow : out STD_LOGIC;
    fifo_wr_sync : in STD_LOGIC;
    fifo_wr_xfer_req : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_AXI_DMA_0,axi_dmac,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_dmac,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_inst_fifo_rd_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_fifo_rd_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_fifo_rd_xfer_req_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_last_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_xfer_req_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_dest_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_dest_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_src_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_src_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_src_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_src_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_src_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_src_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axis_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axis_xfer_req_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_dest_diag_level_bursts_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_fifo_rd_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_m_axis_data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_m_axis_dest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axis_id_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axis_keep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axis_strb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axis_user_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_dest_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_inst_m_dest_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_dest_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_dest_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_dest_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_dest_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_dest_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_dest_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_dest_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_dest_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_dest_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_src_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_inst_m_src_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_src_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_src_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_src_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_src_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_src_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_src_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_src_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_inst_m_src_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_src_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_src_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_src_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_src_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_src_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_src_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_src_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_m_src_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_src_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ALLOW_ASYM_MEM : integer;
  attribute ALLOW_ASYM_MEM of inst : label is 1;
  attribute ASYNC_CLK_DEST_REQ : string;
  attribute ASYNC_CLK_DEST_REQ of inst : label is "1'b0";
  attribute ASYNC_CLK_REQ_SRC : string;
  attribute ASYNC_CLK_REQ_SRC of inst : label is "1'b1";
  attribute ASYNC_CLK_SRC_DEST : string;
  attribute ASYNC_CLK_SRC_DEST of inst : label is "1'b1";
  attribute AXI_ID_WIDTH_DEST : integer;
  attribute AXI_ID_WIDTH_DEST of inst : label is 1;
  attribute AXI_ID_WIDTH_SRC : integer;
  attribute AXI_ID_WIDTH_SRC of inst : label is 1;
  attribute AXI_SLICE_DEST : string;
  attribute AXI_SLICE_DEST of inst : label is "1'b0";
  attribute AXI_SLICE_SRC : string;
  attribute AXI_SLICE_SRC of inst : label is "1'b0";
  attribute BEATS_PER_BURST_LIMIT_DEST : integer;
  attribute BEATS_PER_BURST_LIMIT_DEST of inst : label is 256;
  attribute BEATS_PER_BURST_LIMIT_SRC : integer;
  attribute BEATS_PER_BURST_LIMIT_SRC of inst : label is 1024;
  attribute BYTES_PER_BEAT_WIDTH_DEST : integer;
  attribute BYTES_PER_BEAT_WIDTH_DEST of inst : label is 2;
  attribute BYTES_PER_BEAT_WIDTH_SRC : integer;
  attribute BYTES_PER_BEAT_WIDTH_SRC of inst : label is 2;
  attribute BYTES_PER_BURST_LIMIT : integer;
  attribute BYTES_PER_BURST_LIMIT of inst : label is 1024;
  attribute BYTES_PER_BURST_LIMIT_DEST : integer;
  attribute BYTES_PER_BURST_LIMIT_DEST of inst : label is 1024;
  attribute BYTES_PER_BURST_LIMIT_SRC : integer;
  attribute BYTES_PER_BURST_LIMIT_SRC of inst : label is 4096;
  attribute BYTES_PER_BURST_WIDTH : integer;
  attribute BYTES_PER_BURST_WIDTH of inst : label is 7;
  attribute CYCLIC : string;
  attribute CYCLIC of inst : label is "1'b0";
  attribute DBG_ID_PADDING : integer;
  attribute DBG_ID_PADDING of inst : label is 4;
  attribute DISABLE_DEBUG_REGISTERS : string;
  attribute DISABLE_DEBUG_REGISTERS of inst : label is "1'b0";
  attribute DMA_2D_TRANSFER : string;
  attribute DMA_2D_TRANSFER of inst : label is "1'b0";
  attribute DMA_AXIS_DEST_W : integer;
  attribute DMA_AXIS_DEST_W of inst : label is 4;
  attribute DMA_AXIS_ID_W : integer;
  attribute DMA_AXIS_ID_W of inst : label is 8;
  attribute DMA_AXI_ADDR_WIDTH : integer;
  attribute DMA_AXI_ADDR_WIDTH of inst : label is 30;
  attribute DMA_AXI_PROTOCOL_DEST : integer;
  attribute DMA_AXI_PROTOCOL_DEST of inst : label is 0;
  attribute DMA_AXI_PROTOCOL_SRC : integer;
  attribute DMA_AXI_PROTOCOL_SRC of inst : label is 0;
  attribute DMA_DATA_WIDTH_DEST : integer;
  attribute DMA_DATA_WIDTH_DEST of inst : label is 32;
  attribute DMA_DATA_WIDTH_SRC : integer;
  attribute DMA_DATA_WIDTH_SRC of inst : label is 32;
  attribute DMA_LENGTH_ALIGN : integer;
  attribute DMA_LENGTH_ALIGN of inst : label is 2;
  attribute DMA_LENGTH_ALIGN_DEST : integer;
  attribute DMA_LENGTH_ALIGN_DEST of inst : label is 0;
  attribute DMA_LENGTH_ALIGN_SRC : integer;
  attribute DMA_LENGTH_ALIGN_SRC of inst : label is 2;
  attribute DMA_LENGTH_WIDTH : integer;
  attribute DMA_LENGTH_WIDTH of inst : label is 24;
  attribute DMA_TYPE_AXI_MM : integer;
  attribute DMA_TYPE_AXI_MM of inst : label is 0;
  attribute DMA_TYPE_AXI_STREAM : integer;
  attribute DMA_TYPE_AXI_STREAM of inst : label is 1;
  attribute DMA_TYPE_DEST : integer;
  attribute DMA_TYPE_DEST of inst : label is 0;
  attribute DMA_TYPE_FIFO : integer;
  attribute DMA_TYPE_FIFO of inst : label is 2;
  attribute DMA_TYPE_SRC : integer;
  attribute DMA_TYPE_SRC of inst : label is 2;
  attribute ENABLE_DIAGNOSTICS_IF : string;
  attribute ENABLE_DIAGNOSTICS_IF of inst : label is "1'b0";
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of inst : label is 8;
  attribute HAS_DEST_ADDR : string;
  attribute HAS_DEST_ADDR of inst : label is "1'b1";
  attribute HAS_SRC_ADDR : string;
  attribute HAS_SRC_ADDR of inst : label is "1'b0";
  attribute ID : integer;
  attribute ID of inst : label is 0;
  attribute ID_WIDTH : integer;
  attribute ID_WIDTH of inst : label is 4;
  attribute MAX_BYTES_PER_BURST : integer;
  attribute MAX_BYTES_PER_BURST of inst : label is 128;
  attribute REAL_MAX_BYTES_PER_BURST : integer;
  attribute REAL_MAX_BYTES_PER_BURST of inst : label is 128;
  attribute SYNC_TRANSFER_START : string;
  attribute SYNC_TRANSFER_START of inst : label is "1'b1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of fifo_wr_clk : signal is "xilinx.com:signal:clock:1.0 fifo_wr_clk CLK, xilinx.com:signal:clock:1.0 fifo_wr_signal_clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of fifo_wr_clk : signal is "XIL_INTERFACENAME fifo_wr_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0, XIL_INTERFACENAME fifo_wr_signal_clock, ASSOCIATED_BUSIF fifo_wr, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN design_1_clk_DSP_0_sample_rate_30_72, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of fifo_wr_en : signal is "analog.com:interface:fifo_wr:1.0 fifo_wr EN";
  attribute X_INTERFACE_INFO of fifo_wr_overflow : signal is "analog.com:interface:fifo_wr:1.0 fifo_wr OVERFLOW";
  attribute X_INTERFACE_INFO of fifo_wr_sync : signal is "analog.com:interface:fifo_wr:1.0 fifo_wr SYNC";
  attribute X_INTERFACE_INFO of fifo_wr_xfer_req : signal is "analog.com:interface:fifo_wr:1.0 fifo_wr XFER_REQ";
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 irq INTERRUPT";
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of m_dest_axi_aclk : signal is "xilinx.com:signal:clock:1.0 m_dest_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER of m_dest_axi_aclk : signal is "XIL_INTERFACENAME m_dest_axi_aclk, ASSOCIATED_BUSIF m_dest_axi, ASSOCIATED_RESET m_dest_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_CLK_COMMON_0_axi_periph_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_dest_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 m_dest_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of m_dest_axi_aresetn : signal is "XIL_INTERFACENAME m_dest_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_dest_axi_awready : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi AWREADY";
  attribute X_INTERFACE_INFO of m_dest_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi AWVALID";
  attribute X_INTERFACE_INFO of m_dest_axi_bready : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi BREADY";
  attribute X_INTERFACE_PARAMETER of m_dest_axi_bready : signal is "XIL_INTERFACENAME m_dest_axi, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 30, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, NUM_READ_OUTSTANDING 0, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 32, PHASE 0.0, CLK_DOMAIN design_1_CLK_COMMON_0_axi_periph_clk, NUM_READ_THREADS 1, " & LF &
 "NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_dest_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi BVALID";
  attribute X_INTERFACE_INFO of m_dest_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi WLAST";
  attribute X_INTERFACE_INFO of m_dest_axi_wready : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi WREADY";
  attribute X_INTERFACE_INFO of m_dest_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi WVALID";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_CLK_COMMON_0_axi_periph_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of fifo_wr_din : signal is "analog.com:interface:fifo_wr:1.0 fifo_wr DATA";
  attribute X_INTERFACE_INFO of m_dest_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi AWADDR";
  attribute X_INTERFACE_INFO of m_dest_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi AWBURST";
  attribute X_INTERFACE_INFO of m_dest_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi AWCACHE";
  attribute X_INTERFACE_INFO of m_dest_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi AWLEN";
  attribute X_INTERFACE_INFO of m_dest_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi AWPROT";
  attribute X_INTERFACE_INFO of m_dest_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi AWSIZE";
  attribute X_INTERFACE_INFO of m_dest_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi BRESP";
  attribute X_INTERFACE_INFO of m_dest_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi WDATA";
  attribute X_INTERFACE_INFO of m_dest_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 m_dest_axi WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_PARAMETER of s_axi_rdata : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 11, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_CLK_COMMON_0_axi_periph_clk, NUM_READ_THREADS 1, NU" & LF &
 "M_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac
     port map (
      dest_diag_level_bursts(7 downto 0) => NLW_inst_dest_diag_level_bursts_UNCONNECTED(7 downto 0),
      fifo_rd_clk => '0',
      fifo_rd_dout(31 downto 0) => NLW_inst_fifo_rd_dout_UNCONNECTED(31 downto 0),
      fifo_rd_en => '0',
      fifo_rd_underflow => NLW_inst_fifo_rd_underflow_UNCONNECTED,
      fifo_rd_valid => NLW_inst_fifo_rd_valid_UNCONNECTED,
      fifo_rd_xfer_req => NLW_inst_fifo_rd_xfer_req_UNCONNECTED,
      fifo_wr_clk => fifo_wr_clk,
      fifo_wr_din(31 downto 0) => fifo_wr_din(31 downto 0),
      fifo_wr_en => fifo_wr_en,
      fifo_wr_overflow => fifo_wr_overflow,
      fifo_wr_sync => fifo_wr_sync,
      fifo_wr_xfer_req => fifo_wr_xfer_req,
      irq => irq,
      m_axis_aclk => '0',
      m_axis_data(31 downto 0) => NLW_inst_m_axis_data_UNCONNECTED(31 downto 0),
      m_axis_dest(3 downto 0) => NLW_inst_m_axis_dest_UNCONNECTED(3 downto 0),
      m_axis_id(7 downto 0) => NLW_inst_m_axis_id_UNCONNECTED(7 downto 0),
      m_axis_keep(3 downto 0) => NLW_inst_m_axis_keep_UNCONNECTED(3 downto 0),
      m_axis_last => NLW_inst_m_axis_last_UNCONNECTED,
      m_axis_ready => '0',
      m_axis_strb(3 downto 0) => NLW_inst_m_axis_strb_UNCONNECTED(3 downto 0),
      m_axis_user(0) => NLW_inst_m_axis_user_UNCONNECTED(0),
      m_axis_valid => NLW_inst_m_axis_valid_UNCONNECTED,
      m_axis_xfer_req => NLW_inst_m_axis_xfer_req_UNCONNECTED,
      m_dest_axi_aclk => m_dest_axi_aclk,
      m_dest_axi_araddr(29 downto 0) => NLW_inst_m_dest_axi_araddr_UNCONNECTED(29 downto 0),
      m_dest_axi_arburst(1 downto 0) => NLW_inst_m_dest_axi_arburst_UNCONNECTED(1 downto 0),
      m_dest_axi_arcache(3 downto 0) => NLW_inst_m_dest_axi_arcache_UNCONNECTED(3 downto 0),
      m_dest_axi_aresetn => m_dest_axi_aresetn,
      m_dest_axi_arid(0) => NLW_inst_m_dest_axi_arid_UNCONNECTED(0),
      m_dest_axi_arlen(7 downto 0) => NLW_inst_m_dest_axi_arlen_UNCONNECTED(7 downto 0),
      m_dest_axi_arlock(0) => NLW_inst_m_dest_axi_arlock_UNCONNECTED(0),
      m_dest_axi_arprot(2 downto 0) => NLW_inst_m_dest_axi_arprot_UNCONNECTED(2 downto 0),
      m_dest_axi_arready => '0',
      m_dest_axi_arsize(2 downto 0) => NLW_inst_m_dest_axi_arsize_UNCONNECTED(2 downto 0),
      m_dest_axi_arvalid => NLW_inst_m_dest_axi_arvalid_UNCONNECTED,
      m_dest_axi_awaddr(29 downto 0) => m_dest_axi_awaddr(29 downto 0),
      m_dest_axi_awburst(1 downto 0) => m_dest_axi_awburst(1 downto 0),
      m_dest_axi_awcache(3 downto 0) => m_dest_axi_awcache(3 downto 0),
      m_dest_axi_awid(0) => NLW_inst_m_dest_axi_awid_UNCONNECTED(0),
      m_dest_axi_awlen(7 downto 0) => m_dest_axi_awlen(7 downto 0),
      m_dest_axi_awlock(0) => NLW_inst_m_dest_axi_awlock_UNCONNECTED(0),
      m_dest_axi_awprot(2 downto 0) => m_dest_axi_awprot(2 downto 0),
      m_dest_axi_awready => m_dest_axi_awready,
      m_dest_axi_awsize(2 downto 0) => m_dest_axi_awsize(2 downto 0),
      m_dest_axi_awvalid => m_dest_axi_awvalid,
      m_dest_axi_bid(0) => '0',
      m_dest_axi_bready => m_dest_axi_bready,
      m_dest_axi_bresp(1 downto 0) => m_dest_axi_bresp(1 downto 0),
      m_dest_axi_bvalid => m_dest_axi_bvalid,
      m_dest_axi_rdata(31 downto 0) => B"00000000000000000000000000000000",
      m_dest_axi_rid(0) => '0',
      m_dest_axi_rlast => '0',
      m_dest_axi_rready => NLW_inst_m_dest_axi_rready_UNCONNECTED,
      m_dest_axi_rresp(1 downto 0) => B"00",
      m_dest_axi_rvalid => '0',
      m_dest_axi_wdata(31 downto 0) => m_dest_axi_wdata(31 downto 0),
      m_dest_axi_wid(0) => NLW_inst_m_dest_axi_wid_UNCONNECTED(0),
      m_dest_axi_wlast => m_dest_axi_wlast,
      m_dest_axi_wready => m_dest_axi_wready,
      m_dest_axi_wstrb(3 downto 0) => m_dest_axi_wstrb(3 downto 0),
      m_dest_axi_wvalid => m_dest_axi_wvalid,
      m_src_axi_aclk => '0',
      m_src_axi_araddr(29 downto 0) => NLW_inst_m_src_axi_araddr_UNCONNECTED(29 downto 0),
      m_src_axi_arburst(1 downto 0) => NLW_inst_m_src_axi_arburst_UNCONNECTED(1 downto 0),
      m_src_axi_arcache(3 downto 0) => NLW_inst_m_src_axi_arcache_UNCONNECTED(3 downto 0),
      m_src_axi_aresetn => '0',
      m_src_axi_arid(0) => NLW_inst_m_src_axi_arid_UNCONNECTED(0),
      m_src_axi_arlen(7 downto 0) => NLW_inst_m_src_axi_arlen_UNCONNECTED(7 downto 0),
      m_src_axi_arlock(0) => NLW_inst_m_src_axi_arlock_UNCONNECTED(0),
      m_src_axi_arprot(2 downto 0) => NLW_inst_m_src_axi_arprot_UNCONNECTED(2 downto 0),
      m_src_axi_arready => '0',
      m_src_axi_arsize(2 downto 0) => NLW_inst_m_src_axi_arsize_UNCONNECTED(2 downto 0),
      m_src_axi_arvalid => NLW_inst_m_src_axi_arvalid_UNCONNECTED,
      m_src_axi_awaddr(29 downto 0) => NLW_inst_m_src_axi_awaddr_UNCONNECTED(29 downto 0),
      m_src_axi_awburst(1 downto 0) => NLW_inst_m_src_axi_awburst_UNCONNECTED(1 downto 0),
      m_src_axi_awcache(3 downto 0) => NLW_inst_m_src_axi_awcache_UNCONNECTED(3 downto 0),
      m_src_axi_awid(0) => NLW_inst_m_src_axi_awid_UNCONNECTED(0),
      m_src_axi_awlen(7 downto 0) => NLW_inst_m_src_axi_awlen_UNCONNECTED(7 downto 0),
      m_src_axi_awlock(0) => NLW_inst_m_src_axi_awlock_UNCONNECTED(0),
      m_src_axi_awprot(2 downto 0) => NLW_inst_m_src_axi_awprot_UNCONNECTED(2 downto 0),
      m_src_axi_awready => '0',
      m_src_axi_awsize(2 downto 0) => NLW_inst_m_src_axi_awsize_UNCONNECTED(2 downto 0),
      m_src_axi_awvalid => NLW_inst_m_src_axi_awvalid_UNCONNECTED,
      m_src_axi_bid(0) => '0',
      m_src_axi_bready => NLW_inst_m_src_axi_bready_UNCONNECTED,
      m_src_axi_bresp(1 downto 0) => B"00",
      m_src_axi_bvalid => '0',
      m_src_axi_rdata(31 downto 0) => B"00000000000000000000000000000000",
      m_src_axi_rid(0) => '0',
      m_src_axi_rlast => '0',
      m_src_axi_rready => NLW_inst_m_src_axi_rready_UNCONNECTED,
      m_src_axi_rresp(1 downto 0) => B"00",
      m_src_axi_rvalid => '0',
      m_src_axi_wdata(31 downto 0) => NLW_inst_m_src_axi_wdata_UNCONNECTED(31 downto 0),
      m_src_axi_wid(0) => NLW_inst_m_src_axi_wid_UNCONNECTED(0),
      m_src_axi_wlast => NLW_inst_m_src_axi_wlast_UNCONNECTED,
      m_src_axi_wready => '0',
      m_src_axi_wstrb(3 downto 0) => NLW_inst_m_src_axi_wstrb_UNCONNECTED(3 downto 0),
      m_src_axi_wvalid => NLW_inst_m_src_axi_wvalid_UNCONNECTED,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(10 downto 0) => s_axi_araddr(10 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(10 downto 0) => s_axi_awaddr(10 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      s_axis_aclk => '0',
      s_axis_data(31 downto 0) => B"00000000000000000000000000000000",
      s_axis_dest(3 downto 0) => B"0000",
      s_axis_id(7 downto 0) => B"00000000",
      s_axis_keep(3 downto 0) => B"0000",
      s_axis_last => '0',
      s_axis_ready => NLW_inst_s_axis_ready_UNCONNECTED,
      s_axis_strb(3 downto 0) => B"0000",
      s_axis_user(0) => '1',
      s_axis_valid => '0',
      s_axis_xfer_req => NLW_inst_s_axis_xfer_req_UNCONNECTED
    );
end STRUCTURE;
