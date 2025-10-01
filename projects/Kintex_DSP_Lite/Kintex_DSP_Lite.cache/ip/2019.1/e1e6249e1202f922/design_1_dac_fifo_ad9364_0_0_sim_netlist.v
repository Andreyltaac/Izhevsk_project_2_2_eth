// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Jun 16 12:47:15 2022
// Host        : TOR00094 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_dac_fifo_ad9364_0_0_sim_netlist.v
// Design      : design_1_dac_fifo_ad9364_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad_mem
   (D,
    m_ram_reg_0,
    dout_clk,
    din_clk,
    Q,
    m_ram_reg_1,
    din_wdata,
    WEBWE);
  output [15:0]D;
  output [15:0]m_ram_reg_0;
  input dout_clk;
  input din_clk;
  input [4:0]Q;
  input [4:0]m_ram_reg_1;
  input [31:0]din_wdata;
  input [0:0]WEBWE;

  wire [15:0]D;
  wire [4:0]Q;
  wire [0:0]WEBWE;
  wire din_clk;
  wire [31:0]din_wdata;
  wire dout_clk;
  wire [15:0]m_ram_reg_0;
  wire [4:0]m_ram_reg_1;
  wire [1:0]NLW_m_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_m_ram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "m_ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "31" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "480" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    m_ram_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,Q,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,m_ram_reg_1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(dout_clk),
        .CLKBWRCLK(din_clk),
        .DIADI(din_wdata[15:0]),
        .DIBDI(din_wdata[31:16]),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(D),
        .DOBDO(m_ram_reg_0),
        .DOPADOP(NLW_m_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_m_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({WEBWE,WEBWE,WEBWE,WEBWE}));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_dac_fifo_ad9364_0_0,util_rfifo,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "util_rfifo,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (din_rstn,
    din_clk,
    din_enable_0,
    din_valid_0,
    din_valid_in_0,
    din_data_0,
    din_enable_1,
    din_valid_1,
    din_valid_in_1,
    din_data_1,
    din_unf,
    dout_rst,
    dout_clk,
    dout_enable_0,
    dout_valid_0,
    dout_valid_out_0,
    dout_data_0,
    dout_enable_1,
    dout_valid_1,
    dout_valid_out_1,
    dout_data_1,
    dout_unf);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 din_rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME din_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input din_rstn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 din_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME din_clk, ASSOCIATED_RESET din_rstn, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN design_1_clk_DSP_0_sample_rate_30_72, INSERT_VIP 0" *) input din_clk;
  output din_enable_0;
  output din_valid_0;
  input din_valid_in_0;
  input [15:0]din_data_0;
  output din_enable_1;
  output din_valid_1;
  input din_valid_in_1;
  input [15:0]din_data_1;
  input din_unf;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 dout_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dout_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input dout_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dout_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dout_clk, ASSOCIATED_RESET dout_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_axi_ad9364_0_l_clk, INSERT_VIP 0" *) input dout_clk;
  input dout_enable_0;
  input dout_valid_0;
  output dout_valid_out_0;
  output [15:0]dout_data_0;
  input dout_enable_1;
  input dout_valid_1;
  output dout_valid_out_1;
  output [15:0]dout_data_1;
  output dout_unf;

  wire din_clk;
  wire [15:0]din_data_0;
  wire [15:0]din_data_1;
  wire din_enable_0;
  wire din_enable_1;
  wire din_rstn;
  wire din_unf;
  wire din_valid_0;
  wire din_valid_1;
  wire din_valid_in_0;
  wire din_valid_in_1;
  wire dout_clk;
  wire [15:0]dout_data_0;
  wire [15:0]dout_data_1;
  wire dout_enable_0;
  wire dout_enable_1;
  wire dout_rst;
  wire dout_unf;
  wire dout_valid_0;
  wire dout_valid_1;
  wire dout_valid_out_0;
  wire dout_valid_out_1;
  wire NLW_inst_din_enable_2_UNCONNECTED;
  wire NLW_inst_din_enable_3_UNCONNECTED;
  wire NLW_inst_din_enable_4_UNCONNECTED;
  wire NLW_inst_din_enable_5_UNCONNECTED;
  wire NLW_inst_din_enable_6_UNCONNECTED;
  wire NLW_inst_din_enable_7_UNCONNECTED;
  wire NLW_inst_din_valid_2_UNCONNECTED;
  wire NLW_inst_din_valid_3_UNCONNECTED;
  wire NLW_inst_din_valid_4_UNCONNECTED;
  wire NLW_inst_din_valid_5_UNCONNECTED;
  wire NLW_inst_din_valid_6_UNCONNECTED;
  wire NLW_inst_din_valid_7_UNCONNECTED;
  wire NLW_inst_dout_valid_out_2_UNCONNECTED;
  wire NLW_inst_dout_valid_out_3_UNCONNECTED;
  wire NLW_inst_dout_valid_out_4_UNCONNECTED;
  wire NLW_inst_dout_valid_out_5_UNCONNECTED;
  wire NLW_inst_dout_valid_out_6_UNCONNECTED;
  wire NLW_inst_dout_valid_out_7_UNCONNECTED;
  wire [15:0]NLW_inst_dout_data_2_UNCONNECTED;
  wire [15:0]NLW_inst_dout_data_3_UNCONNECTED;
  wire [15:0]NLW_inst_dout_data_4_UNCONNECTED;
  wire [15:0]NLW_inst_dout_data_5_UNCONNECTED;
  wire [15:0]NLW_inst_dout_data_6_UNCONNECTED;
  wire [15:0]NLW_inst_dout_data_7_UNCONNECTED;

  (* ADDRESS_WIDTH = "5" *) 
  (* DATA_WIDTH = "32" *) 
  (* DIN_ADDRESS_WIDTH = "4" *) 
  (* DIN_DATA_WIDTH = "16" *) 
  (* DOUT_DATA_WIDTH = "16" *) 
  (* M_MEM_RATIO = "1" *) 
  (* NUM_OF_CHANNELS = "2" *) 
  (* T_DIN_DATA_WIDTH = "128" *) 
  (* T_DOUT_DATA_WIDTH = "128" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_rfifo inst
       (.din_clk(din_clk),
        .din_data_0(din_data_0),
        .din_data_1(din_data_1),
        .din_data_2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .din_data_3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .din_data_4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .din_data_5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .din_data_6({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .din_data_7({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .din_enable_0(din_enable_0),
        .din_enable_1(din_enable_1),
        .din_enable_2(NLW_inst_din_enable_2_UNCONNECTED),
        .din_enable_3(NLW_inst_din_enable_3_UNCONNECTED),
        .din_enable_4(NLW_inst_din_enable_4_UNCONNECTED),
        .din_enable_5(NLW_inst_din_enable_5_UNCONNECTED),
        .din_enable_6(NLW_inst_din_enable_6_UNCONNECTED),
        .din_enable_7(NLW_inst_din_enable_7_UNCONNECTED),
        .din_rstn(din_rstn),
        .din_unf(din_unf),
        .din_valid_0(din_valid_0),
        .din_valid_1(din_valid_1),
        .din_valid_2(NLW_inst_din_valid_2_UNCONNECTED),
        .din_valid_3(NLW_inst_din_valid_3_UNCONNECTED),
        .din_valid_4(NLW_inst_din_valid_4_UNCONNECTED),
        .din_valid_5(NLW_inst_din_valid_5_UNCONNECTED),
        .din_valid_6(NLW_inst_din_valid_6_UNCONNECTED),
        .din_valid_7(NLW_inst_din_valid_7_UNCONNECTED),
        .din_valid_in_0(din_valid_in_0),
        .din_valid_in_1(din_valid_in_1),
        .din_valid_in_2(1'b0),
        .din_valid_in_3(1'b0),
        .din_valid_in_4(1'b0),
        .din_valid_in_5(1'b0),
        .din_valid_in_6(1'b0),
        .din_valid_in_7(1'b0),
        .dout_clk(dout_clk),
        .dout_data_0(dout_data_0),
        .dout_data_1(dout_data_1),
        .dout_data_2(NLW_inst_dout_data_2_UNCONNECTED[15:0]),
        .dout_data_3(NLW_inst_dout_data_3_UNCONNECTED[15:0]),
        .dout_data_4(NLW_inst_dout_data_4_UNCONNECTED[15:0]),
        .dout_data_5(NLW_inst_dout_data_5_UNCONNECTED[15:0]),
        .dout_data_6(NLW_inst_dout_data_6_UNCONNECTED[15:0]),
        .dout_data_7(NLW_inst_dout_data_7_UNCONNECTED[15:0]),
        .dout_enable_0(dout_enable_0),
        .dout_enable_1(dout_enable_1),
        .dout_enable_2(1'b0),
        .dout_enable_3(1'b0),
        .dout_enable_4(1'b0),
        .dout_enable_5(1'b0),
        .dout_enable_6(1'b0),
        .dout_enable_7(1'b0),
        .dout_rst(dout_rst),
        .dout_unf(dout_unf),
        .dout_valid_0(dout_valid_0),
        .dout_valid_1(dout_valid_1),
        .dout_valid_2(1'b0),
        .dout_valid_3(1'b0),
        .dout_valid_4(1'b0),
        .dout_valid_5(1'b0),
        .dout_valid_6(1'b0),
        .dout_valid_7(1'b0),
        .dout_valid_out_0(dout_valid_out_0),
        .dout_valid_out_1(dout_valid_out_1),
        .dout_valid_out_2(NLW_inst_dout_valid_out_2_UNCONNECTED),
        .dout_valid_out_3(NLW_inst_dout_valid_out_3_UNCONNECTED),
        .dout_valid_out_4(NLW_inst_dout_valid_out_4_UNCONNECTED),
        .dout_valid_out_5(NLW_inst_dout_valid_out_5_UNCONNECTED),
        .dout_valid_out_6(NLW_inst_dout_valid_out_6_UNCONNECTED),
        .dout_valid_out_7(NLW_inst_dout_valid_out_7_UNCONNECTED));
endmodule

(* ADDRESS_WIDTH = "5" *) (* DATA_WIDTH = "32" *) (* DIN_ADDRESS_WIDTH = "4" *) 
(* DIN_DATA_WIDTH = "16" *) (* DOUT_DATA_WIDTH = "16" *) (* M_MEM_RATIO = "1" *) 
(* NUM_OF_CHANNELS = "2" *) (* T_DIN_DATA_WIDTH = "128" *) (* T_DOUT_DATA_WIDTH = "128" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_rfifo
   (din_rstn,
    din_clk,
    din_enable_0,
    din_valid_0,
    din_valid_in_0,
    din_data_0,
    din_enable_1,
    din_valid_1,
    din_valid_in_1,
    din_data_1,
    din_enable_2,
    din_valid_2,
    din_valid_in_2,
    din_data_2,
    din_enable_3,
    din_valid_3,
    din_valid_in_3,
    din_data_3,
    din_enable_4,
    din_valid_4,
    din_valid_in_4,
    din_data_4,
    din_enable_5,
    din_valid_5,
    din_valid_in_5,
    din_data_5,
    din_enable_6,
    din_valid_6,
    din_valid_in_6,
    din_data_6,
    din_enable_7,
    din_valid_7,
    din_valid_in_7,
    din_data_7,
    din_unf,
    dout_rst,
    dout_clk,
    dout_enable_0,
    dout_valid_0,
    dout_valid_out_0,
    dout_data_0,
    dout_enable_1,
    dout_valid_1,
    dout_valid_out_1,
    dout_data_1,
    dout_enable_2,
    dout_valid_2,
    dout_valid_out_2,
    dout_data_2,
    dout_enable_3,
    dout_valid_3,
    dout_valid_out_3,
    dout_data_3,
    dout_enable_4,
    dout_valid_4,
    dout_valid_out_4,
    dout_data_4,
    dout_enable_5,
    dout_valid_5,
    dout_valid_out_5,
    dout_data_5,
    dout_enable_6,
    dout_valid_6,
    dout_valid_out_6,
    dout_data_6,
    dout_enable_7,
    dout_valid_7,
    dout_valid_out_7,
    dout_data_7,
    dout_unf);
  input din_rstn;
  input din_clk;
  output din_enable_0;
  output din_valid_0;
  input din_valid_in_0;
  input [15:0]din_data_0;
  output din_enable_1;
  output din_valid_1;
  input din_valid_in_1;
  input [15:0]din_data_1;
  output din_enable_2;
  output din_valid_2;
  input din_valid_in_2;
  input [15:0]din_data_2;
  output din_enable_3;
  output din_valid_3;
  input din_valid_in_3;
  input [15:0]din_data_3;
  output din_enable_4;
  output din_valid_4;
  input din_valid_in_4;
  input [15:0]din_data_4;
  output din_enable_5;
  output din_valid_5;
  input din_valid_in_5;
  input [15:0]din_data_5;
  output din_enable_6;
  output din_valid_6;
  input din_valid_in_6;
  input [15:0]din_data_6;
  output din_enable_7;
  output din_valid_7;
  input din_valid_in_7;
  input [15:0]din_data_7;
  input din_unf;
  input dout_rst;
  input dout_clk;
  input dout_enable_0;
  input dout_valid_0;
  output dout_valid_out_0;
  output [15:0]dout_data_0;
  input dout_enable_1;
  input dout_valid_1;
  output dout_valid_out_1;
  output [15:0]dout_data_1;
  input dout_enable_2;
  input dout_valid_2;
  output dout_valid_out_2;
  output [15:0]dout_data_2;
  input dout_enable_3;
  input dout_valid_3;
  output dout_valid_out_3;
  output [15:0]dout_data_3;
  input dout_enable_4;
  input dout_valid_4;
  output dout_valid_out_4;
  output [15:0]dout_data_4;
  input dout_enable_5;
  input dout_valid_5;
  output dout_valid_out_5;
  output [15:0]dout_data_5;
  input dout_enable_6;
  input dout_valid_6;
  output dout_valid_out_6;
  output [15:0]dout_data_6;
  input dout_enable_7;
  input dout_valid_7;
  output dout_valid_out_7;
  output [15:0]dout_data_7;
  output dout_unf;

  wire \<const0> ;
  wire din_clk;
  wire [15:0]din_data_0;
  wire [15:0]din_data_1;
  wire \din_enable[0]_i_1_n_0 ;
  wire din_enable_0;
  wire din_enable_1;
  wire din_enable_2;
  wire din_enable_3;
  wire din_enable_4;
  wire din_enable_5;
  wire din_enable_6;
  wire din_enable_7;
  wire [7:0]din_enable_m1;
  wire din_init;
  wire din_init_i_1_n_0;
  wire din_req;
  wire \din_req_cnt[0]_i_1_n_0 ;
  wire \din_req_cnt[1]_i_1_n_0 ;
  wire \din_req_cnt[2]_i_1_n_0 ;
  wire \din_req_cnt[6]_i_1_n_0 ;
  wire \din_req_cnt[6]_i_3_n_0 ;
  wire \din_req_cnt_reg_n_0_[0] ;
  wire \din_req_cnt_reg_n_0_[1] ;
  wire \din_req_cnt_reg_n_0_[2] ;
  wire \din_req_cnt_reg_n_0_[3] ;
  wire \din_req_cnt_reg_n_0_[4] ;
  wire \din_req_cnt_reg_n_0_[5] ;
  wire din_req_s;
  wire din_req_t_m1;
  wire din_req_t_m2;
  wire din_req_t_m3;
  wire din_rstn;
  wire din_unf;
  wire din_unf_d;
  wire din_valid_7;
  wire din_valid_in_0;
  wire din_waddr1;
  wire \din_waddr[0]_i_1_n_0 ;
  wire \din_waddr[1]_i_1_n_0 ;
  wire \din_waddr[2]_i_1_n_0 ;
  wire \din_waddr[4]_i_1_n_0 ;
  wire [4:0]din_waddr_reg;
  wire [31:0]din_wdata;
  wire din_wr;
  wire dout_clk;
  wire [15:0]dout_data_0;
  wire [15:0]dout_data_1;
  wire [7:0]dout_enable;
  wire dout_enable_0;
  wire dout_enable_1;
  wire dout_enable_2;
  wire dout_enable_3;
  wire dout_enable_4;
  wire dout_enable_5;
  wire dout_enable_6;
  wire dout_enable_7;
  wire dout_init_i_1_n_0;
  wire dout_init_reg_n_0;
  wire \dout_raddr[4]_i_1_n_0 ;
  wire \dout_raddr[4]_i_3_n_0 ;
  wire \dout_raddr[4]_i_4_n_0 ;
  wire \dout_raddr[4]_i_5_n_0 ;
  wire [4:0]dout_raddr_reg;
  wire [15:0]dout_rdata_s;
  wire dout_req_t;
  wire dout_req_t__0;
  wire dout_req_t_i_1_n_0;
  wire dout_rst;
  wire dout_unf;
  wire dout_unf_m1;
  wire dout_valid_0;
  wire dout_valid_1;
  wire dout_valid_2;
  wire dout_valid_3;
  wire dout_valid_4;
  wire dout_valid_5;
  wire dout_valid_6;
  wire dout_valid_7;
  wire dout_valid_out_0;
  wire dout_valid_out_1;
  wire dout_valid_out_2;
  wire dout_valid_out_3;
  wire dout_valid_out_4;
  wire dout_valid_out_5;
  wire dout_valid_out_6;
  wire dout_valid_out_7;
  wire p_0_in;
  wire [4:0]p_0_in__0;
  wire [6:3]p_0_in__1;
  wire [4:3]p_0_in__2;
  wire [15:0]p_1_in;

  assign din_valid_0 = din_valid_7;
  assign din_valid_1 = din_valid_7;
  assign din_valid_2 = din_valid_7;
  assign din_valid_3 = din_valid_7;
  assign din_valid_4 = din_valid_7;
  assign din_valid_5 = din_valid_7;
  assign din_valid_6 = din_valid_7;
  assign dout_data_2[15] = \<const0> ;
  assign dout_data_2[14] = \<const0> ;
  assign dout_data_2[13] = \<const0> ;
  assign dout_data_2[12] = \<const0> ;
  assign dout_data_2[11] = \<const0> ;
  assign dout_data_2[10] = \<const0> ;
  assign dout_data_2[9] = \<const0> ;
  assign dout_data_2[8] = \<const0> ;
  assign dout_data_2[7] = \<const0> ;
  assign dout_data_2[6] = \<const0> ;
  assign dout_data_2[5] = \<const0> ;
  assign dout_data_2[4] = \<const0> ;
  assign dout_data_2[3] = \<const0> ;
  assign dout_data_2[2] = \<const0> ;
  assign dout_data_2[1] = \<const0> ;
  assign dout_data_2[0] = \<const0> ;
  assign dout_data_3[15] = \<const0> ;
  assign dout_data_3[14] = \<const0> ;
  assign dout_data_3[13] = \<const0> ;
  assign dout_data_3[12] = \<const0> ;
  assign dout_data_3[11] = \<const0> ;
  assign dout_data_3[10] = \<const0> ;
  assign dout_data_3[9] = \<const0> ;
  assign dout_data_3[8] = \<const0> ;
  assign dout_data_3[7] = \<const0> ;
  assign dout_data_3[6] = \<const0> ;
  assign dout_data_3[5] = \<const0> ;
  assign dout_data_3[4] = \<const0> ;
  assign dout_data_3[3] = \<const0> ;
  assign dout_data_3[2] = \<const0> ;
  assign dout_data_3[1] = \<const0> ;
  assign dout_data_3[0] = \<const0> ;
  assign dout_data_4[15] = \<const0> ;
  assign dout_data_4[14] = \<const0> ;
  assign dout_data_4[13] = \<const0> ;
  assign dout_data_4[12] = \<const0> ;
  assign dout_data_4[11] = \<const0> ;
  assign dout_data_4[10] = \<const0> ;
  assign dout_data_4[9] = \<const0> ;
  assign dout_data_4[8] = \<const0> ;
  assign dout_data_4[7] = \<const0> ;
  assign dout_data_4[6] = \<const0> ;
  assign dout_data_4[5] = \<const0> ;
  assign dout_data_4[4] = \<const0> ;
  assign dout_data_4[3] = \<const0> ;
  assign dout_data_4[2] = \<const0> ;
  assign dout_data_4[1] = \<const0> ;
  assign dout_data_4[0] = \<const0> ;
  assign dout_data_5[15] = \<const0> ;
  assign dout_data_5[14] = \<const0> ;
  assign dout_data_5[13] = \<const0> ;
  assign dout_data_5[12] = \<const0> ;
  assign dout_data_5[11] = \<const0> ;
  assign dout_data_5[10] = \<const0> ;
  assign dout_data_5[9] = \<const0> ;
  assign dout_data_5[8] = \<const0> ;
  assign dout_data_5[7] = \<const0> ;
  assign dout_data_5[6] = \<const0> ;
  assign dout_data_5[5] = \<const0> ;
  assign dout_data_5[4] = \<const0> ;
  assign dout_data_5[3] = \<const0> ;
  assign dout_data_5[2] = \<const0> ;
  assign dout_data_5[1] = \<const0> ;
  assign dout_data_5[0] = \<const0> ;
  assign dout_data_6[15] = \<const0> ;
  assign dout_data_6[14] = \<const0> ;
  assign dout_data_6[13] = \<const0> ;
  assign dout_data_6[12] = \<const0> ;
  assign dout_data_6[11] = \<const0> ;
  assign dout_data_6[10] = \<const0> ;
  assign dout_data_6[9] = \<const0> ;
  assign dout_data_6[8] = \<const0> ;
  assign dout_data_6[7] = \<const0> ;
  assign dout_data_6[6] = \<const0> ;
  assign dout_data_6[5] = \<const0> ;
  assign dout_data_6[4] = \<const0> ;
  assign dout_data_6[3] = \<const0> ;
  assign dout_data_6[2] = \<const0> ;
  assign dout_data_6[1] = \<const0> ;
  assign dout_data_6[0] = \<const0> ;
  assign dout_data_7[15] = \<const0> ;
  assign dout_data_7[14] = \<const0> ;
  assign dout_data_7[13] = \<const0> ;
  assign dout_data_7[12] = \<const0> ;
  assign dout_data_7[11] = \<const0> ;
  assign dout_data_7[10] = \<const0> ;
  assign dout_data_7[9] = \<const0> ;
  assign dout_data_7[8] = \<const0> ;
  assign dout_data_7[7] = \<const0> ;
  assign dout_data_7[6] = \<const0> ;
  assign dout_data_7[5] = \<const0> ;
  assign dout_data_7[4] = \<const0> ;
  assign dout_data_7[3] = \<const0> ;
  assign dout_data_7[2] = \<const0> ;
  assign dout_data_7[1] = \<const0> ;
  assign dout_data_7[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \din_enable[0]_i_1 
       (.I0(din_rstn),
        .O(\din_enable[0]_i_1_n_0 ));
  (* ASYNC_REG *) 
  FDCE #(
    .INIT(1'b0)) 
    \din_enable_m1_reg[0] 
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(dout_enable[0]),
        .Q(din_enable_m1[0]));
  (* ASYNC_REG *) 
  FDCE #(
    .INIT(1'b0)) 
    \din_enable_m1_reg[1] 
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(dout_enable[1]),
        .Q(din_enable_m1[1]));
  (* ASYNC_REG *) 
  FDCE #(
    .INIT(1'b0)) 
    \din_enable_m1_reg[2] 
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(dout_enable[2]),
        .Q(din_enable_m1[2]));
  (* ASYNC_REG *) 
  FDCE #(
    .INIT(1'b0)) 
    \din_enable_m1_reg[3] 
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(dout_enable[3]),
        .Q(din_enable_m1[3]));
  (* ASYNC_REG *) 
  FDCE #(
    .INIT(1'b0)) 
    \din_enable_m1_reg[4] 
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(dout_enable[4]),
        .Q(din_enable_m1[4]));
  (* ASYNC_REG *) 
  FDCE #(
    .INIT(1'b0)) 
    \din_enable_m1_reg[5] 
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(dout_enable[5]),
        .Q(din_enable_m1[5]));
  (* ASYNC_REG *) 
  FDCE #(
    .INIT(1'b0)) 
    \din_enable_m1_reg[6] 
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(dout_enable[6]),
        .Q(din_enable_m1[6]));
  (* ASYNC_REG *) 
  FDCE #(
    .INIT(1'b0)) 
    \din_enable_m1_reg[7] 
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(dout_enable[7]),
        .Q(din_enable_m1[7]));
  FDCE #(
    .INIT(1'b0)) 
    \din_enable_reg[0] 
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(din_enable_m1[0]),
        .Q(din_enable_0));
  FDCE #(
    .INIT(1'b0)) 
    \din_enable_reg[1] 
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(din_enable_m1[1]),
        .Q(din_enable_1));
  FDCE #(
    .INIT(1'b0)) 
    \din_enable_reg[2] 
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(din_enable_m1[2]),
        .Q(din_enable_2));
  FDCE #(
    .INIT(1'b0)) 
    \din_enable_reg[3] 
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(din_enable_m1[3]),
        .Q(din_enable_3));
  FDCE #(
    .INIT(1'b0)) 
    \din_enable_reg[4] 
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(din_enable_m1[4]),
        .Q(din_enable_4));
  FDCE #(
    .INIT(1'b0)) 
    \din_enable_reg[5] 
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(din_enable_m1[5]),
        .Q(din_enable_5));
  FDCE #(
    .INIT(1'b0)) 
    \din_enable_reg[6] 
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(din_enable_m1[6]),
        .Q(din_enable_6));
  FDCE #(
    .INIT(1'b0)) 
    \din_enable_reg[7] 
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(din_enable_m1[7]),
        .Q(din_enable_7));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    din_init_i_1
       (.I0(dout_init_reg_n_0),
        .I1(din_req_t_m2),
        .I2(din_req_t_m3),
        .I3(din_init),
        .O(din_init_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    din_init_reg
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(din_init_i_1_n_0),
        .Q(din_init));
  LUT3 #(
    .INIT(8'h41)) 
    \din_req_cnt[0]_i_1 
       (.I0(\din_req_cnt_reg_n_0_[0] ),
        .I1(din_req_t_m3),
        .I2(din_req_t_m2),
        .O(\din_req_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    \din_req_cnt[1]_i_1 
       (.I0(\din_req_cnt_reg_n_0_[1] ),
        .I1(\din_req_cnt_reg_n_0_[0] ),
        .I2(din_req_t_m3),
        .I3(din_req_t_m2),
        .O(\din_req_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6A00006A)) 
    \din_req_cnt[2]_i_1 
       (.I0(\din_req_cnt_reg_n_0_[2] ),
        .I1(\din_req_cnt_reg_n_0_[1] ),
        .I2(\din_req_cnt_reg_n_0_[0] ),
        .I3(din_req_t_m3),
        .I4(din_req_t_m2),
        .O(\din_req_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6F6F6F6F6F6F6)) 
    \din_req_cnt[3]_i_1 
       (.I0(din_req_t_m3),
        .I1(din_req_t_m2),
        .I2(\din_req_cnt_reg_n_0_[3] ),
        .I3(\din_req_cnt_reg_n_0_[2] ),
        .I4(\din_req_cnt_reg_n_0_[0] ),
        .I5(\din_req_cnt_reg_n_0_[1] ),
        .O(p_0_in__1[3]));
  LUT6 #(
    .INIT(64'hBEEEEEEEEEEEEEEE)) 
    \din_req_cnt[4]_i_1 
       (.I0(din_req_s),
        .I1(\din_req_cnt_reg_n_0_[4] ),
        .I2(\din_req_cnt_reg_n_0_[3] ),
        .I3(\din_req_cnt_reg_n_0_[1] ),
        .I4(\din_req_cnt_reg_n_0_[0] ),
        .I5(\din_req_cnt_reg_n_0_[2] ),
        .O(p_0_in__1[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \din_req_cnt[5]_i_1 
       (.I0(din_req_t_m3),
        .I1(din_req_t_m2),
        .I2(\din_req_cnt_reg_n_0_[5] ),
        .I3(\din_req_cnt[6]_i_3_n_0 ),
        .O(p_0_in__1[5]));
  LUT3 #(
    .INIT(8'hF6)) 
    \din_req_cnt[6]_i_1 
       (.I0(din_req_t_m3),
        .I1(din_req_t_m2),
        .I2(p_0_in),
        .O(\din_req_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6FF6F6F6)) 
    \din_req_cnt[6]_i_2 
       (.I0(din_req_t_m3),
        .I1(din_req_t_m2),
        .I2(p_0_in),
        .I3(\din_req_cnt_reg_n_0_[5] ),
        .I4(\din_req_cnt[6]_i_3_n_0 ),
        .O(p_0_in__1[6]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \din_req_cnt[6]_i_3 
       (.I0(\din_req_cnt_reg_n_0_[4] ),
        .I1(\din_req_cnt_reg_n_0_[2] ),
        .I2(\din_req_cnt_reg_n_0_[0] ),
        .I3(\din_req_cnt_reg_n_0_[1] ),
        .I4(\din_req_cnt_reg_n_0_[3] ),
        .O(\din_req_cnt[6]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \din_req_cnt_reg[0] 
       (.C(din_clk),
        .CE(\din_req_cnt[6]_i_1_n_0 ),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(\din_req_cnt[0]_i_1_n_0 ),
        .Q(\din_req_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \din_req_cnt_reg[1] 
       (.C(din_clk),
        .CE(\din_req_cnt[6]_i_1_n_0 ),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(\din_req_cnt[1]_i_1_n_0 ),
        .Q(\din_req_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \din_req_cnt_reg[2] 
       (.C(din_clk),
        .CE(\din_req_cnt[6]_i_1_n_0 ),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(\din_req_cnt[2]_i_1_n_0 ),
        .Q(\din_req_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \din_req_cnt_reg[3] 
       (.C(din_clk),
        .CE(\din_req_cnt[6]_i_1_n_0 ),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(p_0_in__1[3]),
        .Q(\din_req_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \din_req_cnt_reg[4] 
       (.C(din_clk),
        .CE(\din_req_cnt[6]_i_1_n_0 ),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(p_0_in__1[4]),
        .Q(\din_req_cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \din_req_cnt_reg[5] 
       (.C(din_clk),
        .CE(\din_req_cnt[6]_i_1_n_0 ),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(p_0_in__1[5]),
        .Q(\din_req_cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \din_req_cnt_reg[6] 
       (.C(din_clk),
        .CE(\din_req_cnt[6]_i_1_n_0 ),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(p_0_in__1[6]),
        .Q(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    din_req_i_1
       (.I0(din_req_t_m2),
        .I1(din_req_t_m3),
        .O(din_req_s));
  FDCE #(
    .INIT(1'b0)) 
    din_req_reg
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(din_req_s),
        .Q(din_req));
  (* ASYNC_REG *) 
  FDCE #(
    .INIT(1'b0)) 
    din_req_t_m1_reg
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(dout_req_t),
        .Q(din_req_t_m1));
  (* ASYNC_REG *) 
  FDCE #(
    .INIT(1'b0)) 
    din_req_t_m2_reg
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(din_req_t_m1),
        .Q(din_req_t_m2));
  (* ASYNC_REG *) 
  FDCE #(
    .INIT(1'b0)) 
    din_req_t_m3_reg
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(din_req_t_m2),
        .Q(din_req_t_m3));
  FDCE #(
    .INIT(1'b0)) 
    din_unf_d_reg
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(din_unf),
        .Q(din_unf_d));
  FDCE #(
    .INIT(1'b0)) 
    din_valid_reg
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(p_0_in),
        .Q(din_valid_7));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \din_waddr[0]_i_1 
       (.I0(din_waddr_reg[0]),
        .I1(din_init),
        .I2(din_req),
        .O(\din_waddr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0666)) 
    \din_waddr[1]_i_1 
       (.I0(din_waddr_reg[1]),
        .I1(din_waddr_reg[0]),
        .I2(din_init),
        .I3(din_req),
        .O(\din_waddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h006A6A6A)) 
    \din_waddr[2]_i_1 
       (.I0(din_waddr_reg[2]),
        .I1(din_waddr_reg[1]),
        .I2(din_waddr_reg[0]),
        .I3(din_init),
        .I4(din_req),
        .O(\din_waddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8FF8F8F8F8F8F8F8)) 
    \din_waddr[3]_i_1 
       (.I0(din_init),
        .I1(din_req),
        .I2(din_waddr_reg[3]),
        .I3(din_waddr_reg[2]),
        .I4(din_waddr_reg[0]),
        .I5(din_waddr_reg[1]),
        .O(p_0_in__2[3]));
  LUT3 #(
    .INIT(8'hF8)) 
    \din_waddr[4]_i_1 
       (.I0(din_init),
        .I1(din_req),
        .I2(din_wr),
        .O(\din_waddr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBEEEEEEEEEEEEEEE)) 
    \din_waddr[4]_i_2 
       (.I0(din_waddr1),
        .I1(din_waddr_reg[4]),
        .I2(din_waddr_reg[3]),
        .I3(din_waddr_reg[1]),
        .I4(din_waddr_reg[0]),
        .I5(din_waddr_reg[2]),
        .O(p_0_in__2[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din_waddr[4]_i_3 
       (.I0(din_req),
        .I1(din_init),
        .O(din_waddr1));
  FDCE #(
    .INIT(1'b0)) 
    \din_waddr_reg[0] 
       (.C(din_clk),
        .CE(\din_waddr[4]_i_1_n_0 ),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(\din_waddr[0]_i_1_n_0 ),
        .Q(din_waddr_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \din_waddr_reg[1] 
       (.C(din_clk),
        .CE(\din_waddr[4]_i_1_n_0 ),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(\din_waddr[1]_i_1_n_0 ),
        .Q(din_waddr_reg[1]));
  FDPE #(
    .INIT(1'b1)) 
    \din_waddr_reg[2] 
       (.C(din_clk),
        .CE(\din_waddr[4]_i_1_n_0 ),
        .D(\din_waddr[2]_i_1_n_0 ),
        .PRE(\din_enable[0]_i_1_n_0 ),
        .Q(din_waddr_reg[2]));
  FDPE #(
    .INIT(1'b1)) 
    \din_waddr_reg[3] 
       (.C(din_clk),
        .CE(\din_waddr[4]_i_1_n_0 ),
        .D(p_0_in__2[3]),
        .PRE(\din_enable[0]_i_1_n_0 ),
        .Q(din_waddr_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \din_waddr_reg[4] 
       (.C(din_clk),
        .CE(\din_waddr[4]_i_1_n_0 ),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(p_0_in__2[4]),
        .Q(din_waddr_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    din_wr_reg
       (.C(din_clk),
        .CE(1'b1),
        .CLR(\din_enable[0]_i_1_n_0 ),
        .D(din_valid_in_0),
        .Q(din_wr));
  FDRE #(
    .INIT(1'b0)) 
    \dout_enable_reg[0] 
       (.C(dout_clk),
        .CE(1'b1),
        .D(dout_enable_0),
        .Q(dout_enable[0]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \dout_enable_reg[1] 
       (.C(dout_clk),
        .CE(1'b1),
        .D(dout_enable_1),
        .Q(dout_enable[1]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \dout_enable_reg[2] 
       (.C(dout_clk),
        .CE(1'b1),
        .D(dout_enable_2),
        .Q(dout_enable[2]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \dout_enable_reg[3] 
       (.C(dout_clk),
        .CE(1'b1),
        .D(dout_enable_3),
        .Q(dout_enable[3]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \dout_enable_reg[4] 
       (.C(dout_clk),
        .CE(1'b1),
        .D(dout_enable_4),
        .Q(dout_enable[4]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \dout_enable_reg[5] 
       (.C(dout_clk),
        .CE(1'b1),
        .D(dout_enable_5),
        .Q(dout_enable[5]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \dout_enable_reg[6] 
       (.C(dout_clk),
        .CE(1'b1),
        .D(dout_enable_6),
        .Q(dout_enable[6]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \dout_enable_reg[7] 
       (.C(dout_clk),
        .CE(1'b1),
        .D(dout_enable_7),
        .Q(dout_enable[7]),
        .R(dout_rst));
  LUT5 #(
    .INIT(32'hFF7FFF3F)) 
    dout_init_i_1
       (.I0(dout_req_t__0),
        .I1(\dout_raddr[4]_i_3_n_0 ),
        .I2(\dout_raddr[4]_i_4_n_0 ),
        .I3(\dout_raddr[4]_i_5_n_0 ),
        .I4(dout_init_reg_n_0),
        .O(dout_init_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dout_init_reg
       (.C(dout_clk),
        .CE(1'b1),
        .D(dout_init_i_1_n_0),
        .Q(dout_init_reg_n_0),
        .R(dout_rst));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dout_raddr[0]_i_1 
       (.I0(dout_raddr_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dout_raddr[1]_i_1 
       (.I0(dout_raddr_reg[0]),
        .I1(dout_raddr_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \dout_raddr[2]_i_1 
       (.I0(dout_raddr_reg[0]),
        .I1(dout_raddr_reg[1]),
        .I2(dout_raddr_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \dout_raddr[3]_i_1 
       (.I0(dout_raddr_reg[1]),
        .I1(dout_raddr_reg[0]),
        .I2(dout_raddr_reg[2]),
        .I3(dout_raddr_reg[3]),
        .O(p_0_in__0[3]));
  LUT4 #(
    .INIT(16'hFFBF)) 
    \dout_raddr[4]_i_1 
       (.I0(dout_rst),
        .I1(\dout_raddr[4]_i_3_n_0 ),
        .I2(\dout_raddr[4]_i_4_n_0 ),
        .I3(\dout_raddr[4]_i_5_n_0 ),
        .O(\dout_raddr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \dout_raddr[4]_i_2 
       (.I0(dout_raddr_reg[2]),
        .I1(dout_raddr_reg[0]),
        .I2(dout_raddr_reg[1]),
        .I3(dout_raddr_reg[3]),
        .I4(dout_raddr_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \dout_raddr[4]_i_3 
       (.I0(dout_enable[0]),
        .I1(dout_enable_0),
        .I2(dout_enable_2),
        .I3(dout_enable[2]),
        .I4(dout_enable_1),
        .I5(dout_enable[1]),
        .O(\dout_raddr[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \dout_raddr[4]_i_4 
       (.I0(dout_enable[3]),
        .I1(dout_enable_3),
        .I2(dout_enable_5),
        .I3(dout_enable[5]),
        .I4(dout_enable_4),
        .I5(dout_enable[4]),
        .O(\dout_raddr[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \dout_raddr[4]_i_5 
       (.I0(dout_enable[6]),
        .I1(dout_enable_6),
        .I2(dout_enable[7]),
        .I3(dout_enable_7),
        .O(\dout_raddr[4]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_raddr_reg[0] 
       (.C(dout_clk),
        .CE(dout_valid_0),
        .D(p_0_in__0[0]),
        .Q(dout_raddr_reg[0]),
        .R(\dout_raddr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_raddr_reg[1] 
       (.C(dout_clk),
        .CE(dout_valid_0),
        .D(p_0_in__0[1]),
        .Q(dout_raddr_reg[1]),
        .R(\dout_raddr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_raddr_reg[2] 
       (.C(dout_clk),
        .CE(dout_valid_0),
        .D(p_0_in__0[2]),
        .Q(dout_raddr_reg[2]),
        .R(\dout_raddr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_raddr_reg[3] 
       (.C(dout_clk),
        .CE(dout_valid_0),
        .D(p_0_in__0[3]),
        .Q(dout_raddr_reg[3]),
        .R(\dout_raddr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_raddr_reg[4] 
       (.C(dout_clk),
        .CE(dout_valid_0),
        .D(p_0_in__0[4]),
        .Q(dout_raddr_reg[4]),
        .R(\dout_raddr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0040FFBF)) 
    dout_req_t_i_1
       (.I0(\dout_raddr[4]_i_5_n_0 ),
        .I1(\dout_raddr[4]_i_4_n_0 ),
        .I2(\dout_raddr[4]_i_3_n_0 ),
        .I3(dout_req_t__0),
        .I4(dout_req_t),
        .O(dout_req_t_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    dout_req_t_i_2
       (.I0(dout_valid_0),
        .I1(dout_raddr_reg[2]),
        .I2(dout_raddr_reg[0]),
        .I3(dout_raddr_reg[1]),
        .O(dout_req_t__0));
  FDRE #(
    .INIT(1'b0)) 
    dout_req_t_reg
       (.C(dout_clk),
        .CE(1'b1),
        .D(dout_req_t_i_1_n_0),
        .Q(dout_req_t),
        .R(dout_rst));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    dout_unf_m1_reg
       (.C(dout_clk),
        .CE(1'b1),
        .D(din_unf_d),
        .Q(dout_unf_m1),
        .R(dout_rst));
  FDRE dout_unf_reg
       (.C(dout_clk),
        .CE(1'b1),
        .D(dout_unf_m1),
        .Q(dout_unf),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \dout_valid_reg[0] 
       (.C(dout_clk),
        .CE(1'b1),
        .D(dout_valid_0),
        .Q(dout_valid_out_0),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \dout_valid_reg[1] 
       (.C(dout_clk),
        .CE(1'b1),
        .D(dout_valid_1),
        .Q(dout_valid_out_1),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \dout_valid_reg[2] 
       (.C(dout_clk),
        .CE(1'b1),
        .D(dout_valid_2),
        .Q(dout_valid_out_2),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \dout_valid_reg[3] 
       (.C(dout_clk),
        .CE(1'b1),
        .D(dout_valid_3),
        .Q(dout_valid_out_3),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \dout_valid_reg[4] 
       (.C(dout_clk),
        .CE(1'b1),
        .D(dout_valid_4),
        .Q(dout_valid_out_4),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \dout_valid_reg[5] 
       (.C(dout_clk),
        .CE(1'b1),
        .D(dout_valid_5),
        .Q(dout_valid_out_5),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \dout_valid_reg[6] 
       (.C(dout_clk),
        .CE(1'b1),
        .D(dout_valid_6),
        .Q(dout_valid_out_6),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \dout_valid_reg[7] 
       (.C(dout_clk),
        .CE(1'b1),
        .D(dout_valid_7),
        .Q(dout_valid_out_7),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[0].din_wdata_reg[0] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_0[0]),
        .Q(din_wdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[0].din_wdata_reg[10] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_0[10]),
        .Q(din_wdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[0].din_wdata_reg[11] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_0[11]),
        .Q(din_wdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[0].din_wdata_reg[12] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_0[12]),
        .Q(din_wdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[0].din_wdata_reg[13] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_0[13]),
        .Q(din_wdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[0].din_wdata_reg[14] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_0[14]),
        .Q(din_wdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[0].din_wdata_reg[15] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_0[15]),
        .Q(din_wdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[0].din_wdata_reg[1] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_0[1]),
        .Q(din_wdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[0].din_wdata_reg[2] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_0[2]),
        .Q(din_wdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[0].din_wdata_reg[3] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_0[3]),
        .Q(din_wdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[0].din_wdata_reg[4] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_0[4]),
        .Q(din_wdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[0].din_wdata_reg[5] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_0[5]),
        .Q(din_wdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[0].din_wdata_reg[6] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_0[6]),
        .Q(din_wdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[0].din_wdata_reg[7] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_0[7]),
        .Q(din_wdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[0].din_wdata_reg[8] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_0[8]),
        .Q(din_wdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[0].din_wdata_reg[9] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_0[9]),
        .Q(din_wdata[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[1].din_wdata_reg[16] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_1[0]),
        .Q(din_wdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[1].din_wdata_reg[17] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_1[1]),
        .Q(din_wdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[1].din_wdata_reg[18] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_1[2]),
        .Q(din_wdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[1].din_wdata_reg[19] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_1[3]),
        .Q(din_wdata[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[1].din_wdata_reg[20] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_1[4]),
        .Q(din_wdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[1].din_wdata_reg[21] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_1[5]),
        .Q(din_wdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[1].din_wdata_reg[22] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_1[6]),
        .Q(din_wdata[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[1].din_wdata_reg[23] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_1[7]),
        .Q(din_wdata[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[1].din_wdata_reg[24] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_1[8]),
        .Q(din_wdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[1].din_wdata_reg[25] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_1[9]),
        .Q(din_wdata[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[1].din_wdata_reg[26] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_1[10]),
        .Q(din_wdata[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[1].din_wdata_reg[27] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_1[11]),
        .Q(din_wdata[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[1].din_wdata_reg[28] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_1[12]),
        .Q(din_wdata[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[1].din_wdata_reg[29] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_1[13]),
        .Q(din_wdata[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[1].din_wdata_reg[30] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_1[14]),
        .Q(din_wdata[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_in[1].din_wdata_reg[31] 
       (.C(din_clk),
        .CE(din_valid_in_0),
        .D(din_data_1[15]),
        .Q(din_wdata[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[0].dout_data_reg[0] 
       (.C(dout_clk),
        .CE(dout_valid_0),
        .D(dout_rdata_s[0]),
        .Q(dout_data_0[0]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[0].dout_data_reg[10] 
       (.C(dout_clk),
        .CE(dout_valid_0),
        .D(dout_rdata_s[10]),
        .Q(dout_data_0[10]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[0].dout_data_reg[11] 
       (.C(dout_clk),
        .CE(dout_valid_0),
        .D(dout_rdata_s[11]),
        .Q(dout_data_0[11]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[0].dout_data_reg[12] 
       (.C(dout_clk),
        .CE(dout_valid_0),
        .D(dout_rdata_s[12]),
        .Q(dout_data_0[12]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[0].dout_data_reg[13] 
       (.C(dout_clk),
        .CE(dout_valid_0),
        .D(dout_rdata_s[13]),
        .Q(dout_data_0[13]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[0].dout_data_reg[14] 
       (.C(dout_clk),
        .CE(dout_valid_0),
        .D(dout_rdata_s[14]),
        .Q(dout_data_0[14]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[0].dout_data_reg[15] 
       (.C(dout_clk),
        .CE(dout_valid_0),
        .D(dout_rdata_s[15]),
        .Q(dout_data_0[15]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[0].dout_data_reg[1] 
       (.C(dout_clk),
        .CE(dout_valid_0),
        .D(dout_rdata_s[1]),
        .Q(dout_data_0[1]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[0].dout_data_reg[2] 
       (.C(dout_clk),
        .CE(dout_valid_0),
        .D(dout_rdata_s[2]),
        .Q(dout_data_0[2]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[0].dout_data_reg[3] 
       (.C(dout_clk),
        .CE(dout_valid_0),
        .D(dout_rdata_s[3]),
        .Q(dout_data_0[3]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[0].dout_data_reg[4] 
       (.C(dout_clk),
        .CE(dout_valid_0),
        .D(dout_rdata_s[4]),
        .Q(dout_data_0[4]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[0].dout_data_reg[5] 
       (.C(dout_clk),
        .CE(dout_valid_0),
        .D(dout_rdata_s[5]),
        .Q(dout_data_0[5]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[0].dout_data_reg[6] 
       (.C(dout_clk),
        .CE(dout_valid_0),
        .D(dout_rdata_s[6]),
        .Q(dout_data_0[6]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[0].dout_data_reg[7] 
       (.C(dout_clk),
        .CE(dout_valid_0),
        .D(dout_rdata_s[7]),
        .Q(dout_data_0[7]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[0].dout_data_reg[8] 
       (.C(dout_clk),
        .CE(dout_valid_0),
        .D(dout_rdata_s[8]),
        .Q(dout_data_0[8]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[0].dout_data_reg[9] 
       (.C(dout_clk),
        .CE(dout_valid_0),
        .D(dout_rdata_s[9]),
        .Q(dout_data_0[9]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[1].dout_data_reg[16] 
       (.C(dout_clk),
        .CE(dout_valid_1),
        .D(p_1_in[0]),
        .Q(dout_data_1[0]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[1].dout_data_reg[17] 
       (.C(dout_clk),
        .CE(dout_valid_1),
        .D(p_1_in[1]),
        .Q(dout_data_1[1]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[1].dout_data_reg[18] 
       (.C(dout_clk),
        .CE(dout_valid_1),
        .D(p_1_in[2]),
        .Q(dout_data_1[2]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[1].dout_data_reg[19] 
       (.C(dout_clk),
        .CE(dout_valid_1),
        .D(p_1_in[3]),
        .Q(dout_data_1[3]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[1].dout_data_reg[20] 
       (.C(dout_clk),
        .CE(dout_valid_1),
        .D(p_1_in[4]),
        .Q(dout_data_1[4]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[1].dout_data_reg[21] 
       (.C(dout_clk),
        .CE(dout_valid_1),
        .D(p_1_in[5]),
        .Q(dout_data_1[5]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[1].dout_data_reg[22] 
       (.C(dout_clk),
        .CE(dout_valid_1),
        .D(p_1_in[6]),
        .Q(dout_data_1[6]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[1].dout_data_reg[23] 
       (.C(dout_clk),
        .CE(dout_valid_1),
        .D(p_1_in[7]),
        .Q(dout_data_1[7]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[1].dout_data_reg[24] 
       (.C(dout_clk),
        .CE(dout_valid_1),
        .D(p_1_in[8]),
        .Q(dout_data_1[8]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[1].dout_data_reg[25] 
       (.C(dout_clk),
        .CE(dout_valid_1),
        .D(p_1_in[9]),
        .Q(dout_data_1[9]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[1].dout_data_reg[26] 
       (.C(dout_clk),
        .CE(dout_valid_1),
        .D(p_1_in[10]),
        .Q(dout_data_1[10]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[1].dout_data_reg[27] 
       (.C(dout_clk),
        .CE(dout_valid_1),
        .D(p_1_in[11]),
        .Q(dout_data_1[11]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[1].dout_data_reg[28] 
       (.C(dout_clk),
        .CE(dout_valid_1),
        .D(p_1_in[12]),
        .Q(dout_data_1[12]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[1].dout_data_reg[29] 
       (.C(dout_clk),
        .CE(dout_valid_1),
        .D(p_1_in[13]),
        .Q(dout_data_1[13]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[1].dout_data_reg[30] 
       (.C(dout_clk),
        .CE(dout_valid_1),
        .D(p_1_in[14]),
        .Q(dout_data_1[14]),
        .R(dout_rst));
  FDRE #(
    .INIT(1'b0)) 
    \g_out[1].dout_data_reg[31] 
       (.C(dout_clk),
        .CE(dout_valid_1),
        .D(p_1_in[15]),
        .Q(dout_data_1[15]),
        .R(dout_rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad_mem i_mem
       (.D(dout_rdata_s),
        .Q(dout_raddr_reg),
        .WEBWE(din_wr),
        .din_clk(din_clk),
        .din_wdata(din_wdata),
        .dout_clk(dout_clk),
        .m_ram_reg_0(p_1_in),
        .m_ram_reg_1(din_waddr_reg));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
