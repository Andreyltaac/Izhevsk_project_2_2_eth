// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Sep  8 07:51:38 2025
// Host        : 475RM32 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_ethernetlite_0_0_sim_netlist.v
// Design      : design_1_axi_ethernetlite_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MacAddrRAM
   (\emac_rx_rd_data_d1_reg[3] ,
    \emac_rx_rd_data_d1_reg[2] ,
    Q,
    s_axi_aclk,
    D,
    mac_addr_ram_we,
    mac_addr_ram_addr);
  output \emac_rx_rd_data_d1_reg[3] ;
  output \emac_rx_rd_data_d1_reg[2] ;
  input [3:0]Q;
  input s_axi_aclk;
  input [3:0]D;
  input mac_addr_ram_we;
  input [0:3]mac_addr_ram_addr;

  wire [3:0]D;
  wire [3:0]Q;
  wire \emac_rx_rd_data_d1_reg[2] ;
  wire \emac_rx_rd_data_d1_reg[3] ;
  wire [0:3]mac_addr_ram_addr;
  wire mac_addr_ram_we;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ram16x4 ram16x4i
       (.D(D),
        .Q(Q),
        .\emac_rx_rd_data_d1_reg[2] (\emac_rx_rd_data_d1_reg[2] ),
        .\emac_rx_rd_data_d1_reg[3] (\emac_rx_rd_data_d1_reg[3] ),
        .mac_addr_ram_addr(mac_addr_ram_addr),
        .mac_addr_ram_we(mac_addr_ram_we),
        .s_axi_aclk(s_axi_aclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo_fg
   (full,
    wr_rst_busy,
    dout,
    empty,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    D20_out,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ,
    prmry_in,
    rst,
    s_axi_aclk,
    wr_en,
    din,
    phy_tx_clk,
    rd_en,
    STATE16A,
    txfifo_empty,
    waitFifoEmpty,
    checkBusFifoFull,
    D22_out,
    checkBusFifoFullSFD,
    STATE10A,
    enblSFD,
    axi_phy_tx_en_i_p);
  output full;
  output wr_rst_busy;
  output [3:0]dout;
  output empty;
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  output D20_out;
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ;
  output prmry_in;
  input rst;
  input s_axi_aclk;
  input wr_en;
  input [4:0]din;
  input phy_tx_clk;
  input rd_en;
  input STATE16A;
  input txfifo_empty;
  input waitFifoEmpty;
  input checkBusFifoFull;
  input D22_out;
  input checkBusFifoFullSFD;
  input STATE10A;
  input enblSFD;
  input axi_phy_tx_en_i_p;

  wire D20_out;
  wire D22_out;
  wire STATE10A;
  wire STATE16A;
  wire axi_phy_tx_en_i_p;
  wire [0:0]bus_combo;
  wire checkBusFifoFull;
  wire checkBusFifoFullSFD;
  wire [4:0]din;
  wire [3:0]dout;
  wire empty;
  wire enblSFD;
  wire full;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire phy_tx_clk;
  wire prmry_in;
  wire rd_en;
  wire rst;
  wire s_axi_aclk;
  wire txfifo_empty;
  wire waitFifoEmpty;
  wire wr_en;
  wire wr_rst_busy;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_12 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_16 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_17 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_2 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_20 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_21 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_3 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_6 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_7 ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1__0 
       (.I0(axi_phy_tx_en_i_p),
        .I1(bus_combo),
        .O(prmry_in));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    STATE10A_i_1
       (.I0(wr_rst_busy),
        .I1(full),
        .I2(checkBusFifoFullSFD),
        .I3(STATE10A),
        .I4(enblSFD),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h1)) 
    STATE11A_i_2
       (.I0(wr_rst_busy),
        .I1(full),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ));
  LUT4 #(
    .INIT(16'h0002)) 
    STATE12A_i_1
       (.I0(checkBusFifoFull),
        .I1(wr_rst_busy),
        .I2(full),
        .I3(D22_out),
        .O(D20_out));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h10FF1010)) 
    STATE16A_i_1
       (.I0(wr_rst_busy),
        .I1(full),
        .I2(STATE16A),
        .I3(txfifo_empty),
        .I4(waitFifoEmpty),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ));
  (* CDC_SYNC_STAGES = "2" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_ASYNC = "16'b0001111100011111" *) 
  (* FIFO_MEMORY_TYPE = "auto" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "0" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "2" *) 
  (* READ_DATA_WIDTH = "6" *) 
  (* READ_MODE = "std" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "6" *) 
  (* WR_DATA_COUNT_WIDTH = "2" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async \xpm_fifo_instance.xpm_fifo_async_inst 
       (.almost_empty(\xpm_fifo_instance.xpm_fifo_async_inst_n_20 ),
        .almost_full(\xpm_fifo_instance.xpm_fifo_async_inst_n_6 ),
        .data_valid(\xpm_fifo_instance.xpm_fifo_async_inst_n_21 ),
        .dbiterr(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED ),
        .din({din[4:1],1'b0,din[0]}),
        .dout({dout,\xpm_fifo_instance.xpm_fifo_async_inst_n_12 ,bus_combo}),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED ),
        .prog_empty(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED ),
        .prog_full(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED ),
        .rd_clk(phy_tx_clk),
        .rd_data_count({\xpm_fifo_instance.xpm_fifo_async_inst_n_16 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_17 }),
        .rd_en(rd_en),
        .rd_rst_busy(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED ),
        .rst(rst),
        .sbiterr(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .underflow(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED ),
        .wr_ack(\xpm_fifo_instance.xpm_fifo_async_inst_n_7 ),
        .wr_clk(s_axi_aclk),
        .wr_data_count({\xpm_fifo_instance.xpm_fifo_async_inst_n_2 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_3 }),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "async_fifo_fg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo_fg__xdcDup__1
   (dout,
    empty,
    data_valid,
    busFifoData_is_5_d1_reg,
    D5_out,
    D13_out,
    \gen_rd_b.doutb_reg_reg[4] ,
    SR,
    ping_rx_status_reg,
    D6_out,
    \gen_rd_b.doutb_reg_reg[1] ,
    goto_readDestAdrNib1,
    \gdvld.data_valid_std_reg ,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    D,
    \gdvld.data_valid_std_reg_0 ,
    \gen_rd_b.doutb_reg_reg[1]_0 ,
    \gdvld.data_valid_std_reg_1 ,
    \gdvld.data_valid_std_reg_2 ,
    D11_out,
    \gdvld.data_valid_std_reg_3 ,
    D7_out,
    \gen_rd_b.doutb_reg_reg[4]_0 ,
    \gen_rd_b.doutb_reg_reg[2] ,
    scndry_out,
    phy_rx_clk,
    din,
    s_axi_aclk,
    rd_en,
    busFifoData_is_5_d1,
    rx_start,
    waitForSfd1,
    sfd1CheckBusFifoEmpty,
    s_axi_aresetn,
    startReadDestAdrNib,
    D10_out,
    ping_rx_status,
    rxCrcRst,
    state17a,
    Q,
    \Mac_addr_ram_addr_rd[0]_i_3 ,
    startReadDataNib,
    \crc_local_reg[3] );
  output [5:0]dout;
  output empty;
  output data_valid;
  output busFifoData_is_5_d1_reg;
  output D5_out;
  output D13_out;
  output \gen_rd_b.doutb_reg_reg[4] ;
  output [0:0]SR;
  output ping_rx_status_reg;
  output D6_out;
  output [0:0]\gen_rd_b.doutb_reg_reg[1] ;
  output goto_readDestAdrNib1;
  output \gdvld.data_valid_std_reg ;
  output \gen_pf_ic_rc.ram_empty_i_reg ;
  output [6:0]D;
  output \gdvld.data_valid_std_reg_0 ;
  output \gen_rd_b.doutb_reg_reg[1]_0 ;
  output \gdvld.data_valid_std_reg_1 ;
  output \gdvld.data_valid_std_reg_2 ;
  output D11_out;
  output \gdvld.data_valid_std_reg_3 ;
  output D7_out;
  output [2:0]\gen_rd_b.doutb_reg_reg[4]_0 ;
  output \gen_rd_b.doutb_reg_reg[2] ;
  input scndry_out;
  input phy_rx_clk;
  input [5:0]din;
  input s_axi_aclk;
  input rd_en;
  input busFifoData_is_5_d1;
  input rx_start;
  input waitForSfd1;
  input sfd1CheckBusFifoEmpty;
  input s_axi_aresetn;
  input startReadDestAdrNib;
  input D10_out;
  input ping_rx_status;
  input rxCrcRst;
  input state17a;
  input [11:0]Q;
  input \Mac_addr_ram_addr_rd[0]_i_3 ;
  input startReadDataNib;
  input [3:0]\crc_local_reg[3] ;

  wire [6:0]D;
  wire D10_out;
  wire D11_out;
  wire D13_out;
  wire D5_out;
  wire D6_out;
  wire D7_out;
  wire \Mac_addr_ram_addr_rd[0]_i_3 ;
  wire [11:0]Q;
  wire [0:0]SR;
  wire busFifoData_is_5_d1;
  wire busFifoData_is_5_d1_reg;
  wire [3:0]\crc_local_reg[3] ;
  wire data_valid;
  wire [5:0]din;
  wire [5:0]dout;
  wire empty;
  wire full;
  wire \gdvld.data_valid_std_reg ;
  wire \gdvld.data_valid_std_reg_0 ;
  wire \gdvld.data_valid_std_reg_1 ;
  wire \gdvld.data_valid_std_reg_2 ;
  wire \gdvld.data_valid_std_reg_3 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg ;
  wire [0:0]\gen_rd_b.doutb_reg_reg[1] ;
  wire \gen_rd_b.doutb_reg_reg[1]_0 ;
  wire \gen_rd_b.doutb_reg_reg[2] ;
  wire \gen_rd_b.doutb_reg_reg[4] ;
  wire [2:0]\gen_rd_b.doutb_reg_reg[4]_0 ;
  wire goto_readDestAdrNib1;
  wire phy_rx_clk;
  wire ping_rx_status;
  wire ping_rx_status_reg;
  wire rd_en;
  wire rxCrcRst;
  wire rx_start;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire scndry_out;
  wire sfd1CheckBusFifoEmpty;
  wire startReadDataNib;
  wire startReadDestAdrNib;
  wire state17a;
  wire state2a_i_2_n_0;
  wire state2a_i_3_n_0;
  wire state4a_i_2_n_0;
  wire waitForSfd1;
  wire wr_rst_busy;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_i_1__0_n_0 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_16 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_17 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_2 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_20 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_3 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_6 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_7 ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[0]_i_3 
       (.I0(dout[0]),
        .I1(startReadDestAdrNib),
        .I2(data_valid),
        .O(goto_readDestAdrNib1));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[10]_i_1 
       (.I0(\gdvld.data_valid_std_reg_0 ),
        .I1(Q[10]),
        .I2(\gen_rd_b.doutb_reg_reg[1]_0 ),
        .I3(Q[9]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[11]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg[1]_0 ),
        .I1(Q[10]),
        .I2(\gdvld.data_valid_std_reg_0 ),
        .I3(Q[11]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h0A0A3BFB)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[11]_i_2 
       (.I0(data_valid),
        .I1(dout[1]),
        .I2(state17a),
        .I3(empty),
        .I4(Q[0]),
        .O(\gdvld.data_valid_std_reg_0 ));
  LUT6 #(
    .INIT(64'h20000000FFFFFFFF)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[12]_i_1 
       (.I0(dout[1]),
        .I1(\gen_rd_b.doutb_reg_reg[4] ),
        .I2(dout[5]),
        .I3(busFifoData_is_5_d1),
        .I4(rx_start),
        .I5(s_axi_aresetn),
        .O(\gen_rd_b.doutb_reg_reg[1] ));
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[12]_i_4 
       (.I0(empty),
        .I1(dout[1]),
        .I2(Q[0]),
        .O(\gen_pf_ic_rc.ram_empty_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[2]_i_1 
       (.I0(\gdvld.data_valid_std_reg_0 ),
        .I1(Q[2]),
        .I2(\gen_rd_b.doutb_reg_reg[1]_0 ),
        .I3(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[3]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg[1]_0 ),
        .I1(Q[2]),
        .I2(\gdvld.data_valid_std_reg_0 ),
        .I3(Q[3]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[4]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg[1]_0 ),
        .I1(Q[3]),
        .I2(\gdvld.data_valid_std_reg_0 ),
        .I3(Q[4]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[6]_i_1 
       (.I0(\gdvld.data_valid_std_reg_0 ),
        .I1(Q[6]),
        .I2(\gen_rd_b.doutb_reg_reg[1]_0 ),
        .I3(Q[5]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h44F4)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[8]_i_1 
       (.I0(\gdvld.data_valid_std_reg_0 ),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(\gen_rd_b.doutb_reg_reg[1]_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF5575)) 
    \Mac_addr_ram_addr_rd[0]_i_1 
       (.I0(s_axi_aresetn),
        .I1(data_valid),
        .I2(startReadDestAdrNib),
        .I3(dout[0]),
        .I4(state4a_i_2_n_0),
        .I5(D10_out),
        .O(SR));
  LUT6 #(
    .INIT(64'h0A080A080A080000)) 
    \Mac_addr_ram_addr_rd[0]_i_10 
       (.I0(data_valid),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg ),
        .I2(state17a),
        .I3(dout[1]),
        .I4(Q[10]),
        .I5(Q[2]),
        .O(\gdvld.data_valid_std_reg ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Mac_addr_ram_addr_rd[0]_i_12 
       (.I0(data_valid),
        .I1(state17a),
        .O(\gdvld.data_valid_std_reg_3 ));
  LUT6 #(
    .INIT(64'hF0FFF0F000880080)) 
    \Mac_addr_ram_addr_rd[0]_i_8 
       (.I0(data_valid),
        .I1(Q[5]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg ),
        .I3(state17a),
        .I4(dout[1]),
        .I5(Q[6]),
        .O(\gdvld.data_valid_std_reg_2 ));
  LUT6 #(
    .INIT(64'hC044C040F0FFF0F0)) 
    \Mac_addr_ram_addr_rd[0]_i_9 
       (.I0(data_valid),
        .I1(Q[3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg ),
        .I3(state17a),
        .I4(dout[1]),
        .I5(\Mac_addr_ram_addr_rd[0]_i_3 ),
        .O(\gdvld.data_valid_std_reg_1 ));
  LUT6 #(
    .INIT(64'h0020FFFF00200000)) 
    busFifoData_is_5_d1_i_1
       (.I0(dout[2]),
        .I1(dout[3]),
        .I2(dout[4]),
        .I3(dout[5]),
        .I4(data_valid),
        .I5(busFifoData_is_5_d1),
        .O(\gen_rd_b.doutb_reg_reg[2] ));
  LUT2 #(
    .INIT(4'h6)) 
    \crc_local[0]_i_1 
       (.I0(dout[5]),
        .I1(\crc_local_reg[3] [0]),
        .O(\gen_rd_b.doutb_reg_reg[4]_0 [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[2]_i_1 
       (.I0(dout[3]),
        .I1(\crc_local_reg[3] [2]),
        .I2(\crc_local_reg[3] [1]),
        .I3(dout[4]),
        .I4(dout[5]),
        .I5(\crc_local_reg[3] [0]),
        .O(\gen_rd_b.doutb_reg_reg[4]_0 [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[3]_i_1 
       (.I0(dout[4]),
        .I1(\crc_local_reg[3] [1]),
        .I2(\crc_local_reg[3] [2]),
        .I3(dout[3]),
        .I4(\crc_local_reg[3] [3]),
        .I5(dout[2]),
        .O(\gen_rd_b.doutb_reg_reg[4]_0 [2]));
  LUT5 #(
    .INIT(32'h88088888)) 
    preamble_i_1
       (.I0(busFifoData_is_5_d1),
        .I1(rx_start),
        .I2(dout[2]),
        .I3(dout[3]),
        .I4(dout[4]),
        .O(busFifoData_is_5_d1_reg));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    state0a_i_2
       (.I0(dout[4]),
        .I1(dout[3]),
        .I2(dout[2]),
        .O(\gen_rd_b.doutb_reg_reg[4] ));
  LUT6 #(
    .INIT(64'h8C88FFFF8C888C88)) 
    state0a_i_3
       (.I0(ping_rx_status),
        .I1(rxCrcRst),
        .I2(data_valid),
        .I3(empty),
        .I4(state2a_i_2_n_0),
        .I5(waitForSfd1),
        .O(ping_rx_status_reg));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    state17a_i_1
       (.I0(dout[0]),
        .I1(dout[1]),
        .I2(startReadDataNib),
        .I3(\gen_rd_b.doutb_reg_reg[1]_0 ),
        .I4(Q[11]),
        .O(D11_out));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hF1FF)) 
    state17a_i_2
       (.I0(dout[1]),
        .I1(Q[0]),
        .I2(state17a),
        .I3(data_valid),
        .O(\gen_rd_b.doutb_reg_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    state1a_i_1
       (.I0(ping_rx_status),
        .I1(rxCrcRst),
        .I2(data_valid),
        .I3(empty),
        .O(D7_out));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8FFA8A8)) 
    state2a_i_1
       (.I0(state2a_i_2_n_0),
        .I1(waitForSfd1),
        .I2(rx_start),
        .I3(state2a_i_3_n_0),
        .I4(sfd1CheckBusFifoEmpty),
        .I5(dout[0]),
        .O(D5_out));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    state2a_i_2
       (.I0(dout[4]),
        .I1(dout[3]),
        .I2(dout[2]),
        .I3(dout[1]),
        .I4(dout[5]),
        .O(state2a_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000510000000000)) 
    state2a_i_3
       (.I0(dout[5]),
        .I1(empty),
        .I2(data_valid),
        .I3(dout[2]),
        .I4(dout[3]),
        .I5(dout[4]),
        .O(state2a_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000004000404)) 
    state3a_i_1
       (.I0(dout[0]),
        .I1(sfd1CheckBusFifoEmpty),
        .I2(\gen_rd_b.doutb_reg_reg[4] ),
        .I3(data_valid),
        .I4(empty),
        .I5(dout[5]),
        .O(D13_out));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hFF04)) 
    state4a_i_1
       (.I0(data_valid),
        .I1(startReadDestAdrNib),
        .I2(dout[0]),
        .I3(state4a_i_2_n_0),
        .O(D6_out));
  LUT5 #(
    .INIT(32'h00800000)) 
    state4a_i_2
       (.I0(rx_start),
        .I1(busFifoData_is_5_d1),
        .I2(dout[5]),
        .I3(\gen_rd_b.doutb_reg_reg[4] ),
        .I4(dout[1]),
        .O(state4a_i_2_n_0));
  (* CDC_SYNC_STAGES = "2" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_ASYNC = "16'b0001111100011111" *) 
  (* FIFO_MEMORY_TYPE = "auto" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "0" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "2" *) 
  (* READ_DATA_WIDTH = "6" *) 
  (* READ_MODE = "std" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "6" *) 
  (* WR_DATA_COUNT_WIDTH = "2" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__xdcDup__1 \xpm_fifo_instance.xpm_fifo_async_inst 
       (.almost_empty(\xpm_fifo_instance.xpm_fifo_async_inst_n_20 ),
        .almost_full(\xpm_fifo_instance.xpm_fifo_async_inst_n_6 ),
        .data_valid(data_valid),
        .dbiterr(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED ),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED ),
        .prog_empty(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED ),
        .prog_full(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED ),
        .rd_clk(s_axi_aclk),
        .rd_data_count({\xpm_fifo_instance.xpm_fifo_async_inst_n_16 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_17 }),
        .rd_en(rd_en),
        .rd_rst_busy(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED ),
        .rst(scndry_out),
        .sbiterr(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .underflow(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED ),
        .wr_ack(\xpm_fifo_instance.xpm_fifo_async_inst_n_7 ),
        .wr_clk(phy_rx_clk),
        .wr_data_count({\xpm_fifo_instance.xpm_fifo_async_inst_n_2 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_3 }),
        .wr_en(\xpm_fifo_instance.xpm_fifo_async_inst_i_1__0_n_0 ),
        .wr_rst_busy(wr_rst_busy));
  LUT2 #(
    .INIT(4'h1)) 
    \xpm_fifo_instance.xpm_fifo_async_inst_i_1__0 
       (.I0(full),
        .I1(wr_rst_busy),
        .O(\xpm_fifo_instance.xpm_fifo_async_inst_i_1__0_n_0 ));
endmodule

(* C_DUPLEX = "1" *) (* C_FAMILY = "kintex7" *) (* C_INCLUDE_GLOBAL_BUFFERS = "0" *) 
(* C_INCLUDE_INTERNAL_LOOPBACK = "0" *) (* C_INCLUDE_MDIO = "0" *) (* C_INSTANCE = "axi_ethernetlite_inst" *) 
(* C_RX_PING_PONG = "0" *) (* C_SELECT_XPM = "1" *) (* C_S_AXI_ACLK_PERIOD_PS = "10000" *) 
(* C_S_AXI_ADDR_WIDTH = "13" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_ID_WIDTH = "1" *) 
(* C_S_AXI_PROTOCOL = "AXI4" *) (* C_TX_PING_PONG = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ethernetlite
   (s_axi_aclk,
    s_axi_aresetn,
    ip2intc_irpt,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awcache,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arcache,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    phy_tx_clk,
    phy_rx_clk,
    phy_crs,
    phy_dv,
    phy_rx_data,
    phy_col,
    phy_rx_er,
    phy_rst_n,
    phy_tx_en,
    phy_tx_data,
    phy_mdio_i,
    phy_mdio_o,
    phy_mdio_t,
    phy_mdc);
  input s_axi_aclk;
  input s_axi_aresetn;
  output ip2intc_irpt;
  input [0:0]s_axi_awid;
  input [12:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awcache;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [12:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [3:0]s_axi_arcache;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input phy_tx_clk;
  input phy_rx_clk;
  input phy_crs;
  input phy_dv;
  input [3:0]phy_rx_data;
  input phy_col;
  input phy_rx_er;
  output phy_rst_n;
  output phy_tx_en;
  output [3:0]phy_tx_data;
  input phy_mdio_i;
  output phy_mdio_o;
  output phy_mdio_t;
  output phy_mdc;

  wire \<const0> ;
  wire \<const1> ;
  wire I_AXI_NATIVE_IPIF_n_19;
  wire I_AXI_NATIVE_IPIF_n_21;
  wire I_AXI_NATIVE_IPIF_n_22;
  wire I_AXI_NATIVE_IPIF_n_23;
  wire I_AXI_NATIVE_IPIF_n_24;
  wire I_AXI_NATIVE_IPIF_n_25;
  wire I_AXI_NATIVE_IPIF_n_26;
  wire I_AXI_NATIVE_IPIF_n_27;
  wire I_AXI_NATIVE_IPIF_n_33;
  wire I_AXI_NATIVE_IPIF_n_34;
  wire I_AXI_NATIVE_IPIF_n_35;
  wire I_AXI_NATIVE_IPIF_n_36;
  wire I_AXI_NATIVE_IPIF_n_37;
  wire I_AXI_NATIVE_IPIF_n_38;
  wire I_AXI_NATIVE_IPIF_n_39;
  wire I_AXI_NATIVE_IPIF_n_4;
  wire I_AXI_NATIVE_IPIF_n_40;
  wire I_AXI_NATIVE_IPIF_n_41;
  wire I_AXI_NATIVE_IPIF_n_42;
  wire I_AXI_NATIVE_IPIF_n_43;
  wire Q;
  wire Q0_out;
  wire Q2_out;
  wire Q4_out;
  wire \RX_PING/enb ;
  wire \RX_PING/wr_rd_n_b_i ;
  wire \TX_PING/enb ;
  wire XEMAC_I_n_11;
  wire XEMAC_I_n_15;
  wire XEMAC_I_n_16;
  wire XEMAC_I_n_53;
  wire [12:2]bus2ip_addr;
  wire bus_rst;
  wire bus_rst_rx_sync_core;
  wire bus_rst_tx_sync_core;
  wire [5:5]data4;
  wire [31:0]ip2bus_data;
  wire ip2intc_irpt;
  wire loopback_en;
  wire [3:0]p_11_in;
  wire p_13_in60_in;
  wire p_16_in70_in;
  wire [31:31]p_5_in;
  wire [3:3]p_7_in;
  wire p_91_in;
  wire phy_crs;
  wire phy_dv;
  wire phy_dv_reg;
  wire phy_rx_clk;
  wire [3:0]phy_rx_data;
  wire phy_rx_er;
  wire phy_rx_er_reg;
  wire phy_tx_clk;
  wire [3:0]phy_tx_data;
  wire [3:0]phy_tx_data_i;
  wire [3:0]phy_tx_data_i_cdc;
  wire phy_tx_en;
  wire phy_tx_en_i;
  wire phy_tx_en_i_cdc;
  wire [5:0]ping_pkt_lenth;
  wire ping_pkt_lenth0;
  wire ping_rx_status;
  wire ping_soft_status;
  wire reg_access;
  wire reg_data_out;
  wire rx_done;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire [0:0]s_axi_awid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire tx_intr_en0;

  assign phy_mdc = \<const0> ;
  assign phy_mdio_o = \<const0> ;
  assign phy_mdio_t = \<const1> ;
  assign phy_rst_n = s_axi_aresetn;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync BUS_RST_RX_SYNC_CORE_I
       (.SR(bus_rst),
        .phy_rx_clk(phy_rx_clk),
        .scndry_out(bus_rst_rx_sync_core));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0 BUS_RST_TX_SYNC_CORE_I
       (.SR(bus_rst),
        .phy_tx_clk(phy_tx_clk),
        .scndry_out(bus_rst_tx_sync_core));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1 CDC_PHY_TX_DATA_OUT
       (.phy_tx_clk(phy_tx_clk),
        .prmry_vect_in(phy_tx_data_i),
        .scndry_vect_out(phy_tx_data_i_cdc));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0 CDC_PHY_TX_EN_O
       (.phy_tx_clk(phy_tx_clk),
        .prmry_in(phy_tx_en_i),
        .scndry_out(phy_tx_en_i_cdc));
  GND GND
       (.G(\<const0> ));
  (* IOB = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN2.DVD_FF 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(phy_dv),
        .Q(phy_dv_reg),
        .R(bus_rst_rx_sync_core));
  (* IOB = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN2.RER_FF 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(phy_rx_er),
        .Q(phy_rx_er_reg),
        .R(bus_rst_rx_sync_core));
  (* IOB = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN2.TEN_FF 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(phy_tx_en_i_cdc),
        .Q(phy_tx_en),
        .R(bus_rst_tx_sync_core));
  (* IOB = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN[0].RX_FF_I 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(phy_rx_data[0]),
        .Q(Q0_out),
        .R(bus_rst_rx_sync_core));
  (* IOB = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN[0].TX_FF_I 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(phy_tx_data_i_cdc[0]),
        .Q(phy_tx_data[0]),
        .R(bus_rst_tx_sync_core));
  (* IOB = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN[1].RX_FF_I 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(phy_rx_data[1]),
        .Q(Q2_out),
        .R(bus_rst_rx_sync_core));
  (* IOB = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN[1].TX_FF_I 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(phy_tx_data_i_cdc[1]),
        .Q(phy_tx_data[1]),
        .R(bus_rst_tx_sync_core));
  (* IOB = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN[2].RX_FF_I 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(phy_rx_data[2]),
        .Q(Q4_out),
        .R(bus_rst_rx_sync_core));
  (* IOB = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN[2].TX_FF_I 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(phy_tx_data_i_cdc[2]),
        .Q(phy_tx_data[2]),
        .R(bus_rst_tx_sync_core));
  (* IOB = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN[3].RX_FF_I 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(phy_rx_data[3]),
        .Q(Q),
        .R(bus_rst_rx_sync_core));
  (* IOB = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN[3].TX_FF_I 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(phy_tx_data_i_cdc[3]),
        .Q(phy_tx_data[3]),
        .R(bus_rst_tx_sync_core));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_interface I_AXI_NATIVE_IPIF
       (.\AXI4_MM_IF_GEN.arready_i_reg_0 (s_axi_arready),
        .\AXI4_MM_IF_GEN.awready_i_reg_0 (s_axi_awready),
        .\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[11]_0 (I_AXI_NATIVE_IPIF_n_26),
        .\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[11]_1 (\RX_PING/enb ),
        .\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[3]_0 (I_AXI_NATIVE_IPIF_n_21),
        .\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[3]_1 (I_AXI_NATIVE_IPIF_n_23),
        .\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[4]_0 (I_AXI_NATIVE_IPIF_n_24),
        .\AXI4_MM_IF_GEN.read_req_d1_reg_0 (I_AXI_NATIVE_IPIF_n_34),
        .\AXI4_MM_IF_GEN.read_req_reg_0 (I_AXI_NATIVE_IPIF_n_22),
        .\AXI4_MM_IF_GEN.write_req_reg_0 (s_axi_wready),
        .D(ip2bus_data),
        .E(ping_pkt_lenth0),
        .Q({bus2ip_addr[12],I_AXI_NATIVE_IPIF_n_4,bus2ip_addr[10:2]}),
        .SR(bus_rst),
        .data4(data4),
        .enb(\TX_PING/enb ),
        .loopback_en(loopback_en),
        .p_11_in({p_11_in[3],p_11_in[0]}),
        .p_13_in60_in(p_13_in60_in),
        .p_16_in70_in(p_16_in70_in),
        .p_5_in(p_5_in),
        .p_7_in(p_7_in),
        .p_91_in(p_91_in),
        .ping_rx_status(ping_rx_status),
        .ping_soft_status(ping_soft_status),
        .reg_access(reg_access),
        .reg_data_out(reg_data_out),
        .\reg_data_out_reg[0] (I_AXI_NATIVE_IPIF_n_37),
        .\reg_data_out_reg[0]_0 (XEMAC_I_n_16),
        .\reg_data_out_reg[2] (I_AXI_NATIVE_IPIF_n_38),
        .\reg_data_out_reg[2]_0 (XEMAC_I_n_15),
        .\reg_data_out_reg[2]_1 (XEMAC_I_n_53),
        .\reg_data_out_reg[30] (I_AXI_NATIVE_IPIF_n_33),
        .\reg_data_out_reg[31] (XEMAC_I_n_11),
        .\reg_data_out_reg[4] (I_AXI_NATIVE_IPIF_n_39),
        .\reg_data_out_reg[5] (I_AXI_NATIVE_IPIF_n_40),
        .\reg_data_out_reg[5]_0 ({ping_pkt_lenth[5:4],ping_pkt_lenth[0]}),
        .rx_done(rx_done),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[12:1]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(I_AXI_NATIVE_IPIF_n_19),
        .s_axi_aresetn_1(I_AXI_NATIVE_IPIF_n_25),
        .s_axi_aresetn_2(I_AXI_NATIVE_IPIF_n_27),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[12:1]),
        .s_axi_awid(s_axi_awid),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[31],s_axi_wdata[3],s_axi_wdata[0]}),
        .\s_axi_wdata[31] (I_AXI_NATIVE_IPIF_n_35),
        .\s_axi_wdata[31]_0 (I_AXI_NATIVE_IPIF_n_41),
        .\s_axi_wdata[3] (I_AXI_NATIVE_IPIF_n_42),
        .\s_axi_wdata[3]_0 (I_AXI_NATIVE_IPIF_n_43),
        .s_axi_wdata_0_sp_1(I_AXI_NATIVE_IPIF_n_36),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .tx_intr_en0(tx_intr_en0),
        .web(\RX_PING/wr_rd_n_b_i ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xemac XEMAC_I
       (.D(ip2bus_data),
        .E(ping_pkt_lenth0),
        .Q({bus2ip_addr[12],I_AXI_NATIVE_IPIF_n_4,bus2ip_addr[10:2]}),
        .SR(bus_rst),
        .din({Q,Q4_out,Q2_out,Q0_out,phy_dv_reg,phy_rx_er_reg}),
        .enb(\TX_PING/enb ),
        .\gen_wr_b.gen_word_wide.mem_reg (\RX_PING/enb ),
        .gie_enable_reg_0(I_AXI_NATIVE_IPIF_n_35),
        .ip2intc_irpt(ip2intc_irpt),
        .loopback_en(loopback_en),
        .p_13_in60_in(p_13_in60_in),
        .p_16_in70_in(p_16_in70_in),
        .p_5_in(p_5_in),
        .p_7_in(p_7_in),
        .p_91_in(p_91_in),
        .phy_crs(phy_crs),
        .phy_rx_clk(phy_rx_clk),
        .phy_tx_clk(phy_tx_clk),
        .\ping_pkt_lenth_reg[2]_0 (XEMAC_I_n_53),
        .\ping_pkt_lenth_reg[5]_0 ({ping_pkt_lenth[5:4],ping_pkt_lenth[0]}),
        .ping_rx_status(ping_rx_status),
        .ping_rx_status_reg_0(I_AXI_NATIVE_IPIF_n_36),
        .ping_soft_status(ping_soft_status),
        .ping_soft_status_reg_0(I_AXI_NATIVE_IPIF_n_41),
        .prmry_in(phy_tx_en_i),
        .prmry_vect_in(phy_tx_data_i),
        .reg_access(reg_access),
        .reg_access_reg_0(I_AXI_NATIVE_IPIF_n_34),
        .reg_data_out(reg_data_out),
        .\reg_data_out_reg[0]_0 (XEMAC_I_n_16),
        .\reg_data_out_reg[0]_1 (I_AXI_NATIVE_IPIF_n_37),
        .\reg_data_out_reg[15]_0 (I_AXI_NATIVE_IPIF_n_21),
        .\reg_data_out_reg[1]_0 (I_AXI_NATIVE_IPIF_n_24),
        .\reg_data_out_reg[1]_1 (I_AXI_NATIVE_IPIF_n_26),
        .\reg_data_out_reg[2]_0 (XEMAC_I_n_15),
        .\reg_data_out_reg[2]_1 (I_AXI_NATIVE_IPIF_n_38),
        .\reg_data_out_reg[30]_0 (I_AXI_NATIVE_IPIF_n_33),
        .\reg_data_out_reg[31]_0 (XEMAC_I_n_11),
        .\reg_data_out_reg[31]_1 (I_AXI_NATIVE_IPIF_n_19),
        .\reg_data_out_reg[3]_0 (I_AXI_NATIVE_IPIF_n_23),
        .\reg_data_out_reg[3]_1 (I_AXI_NATIVE_IPIF_n_22),
        .\reg_data_out_reg[3]_2 (I_AXI_NATIVE_IPIF_n_25),
        .\reg_data_out_reg[4]_0 (I_AXI_NATIVE_IPIF_n_39),
        .\reg_data_out_reg[5]_0 (I_AXI_NATIVE_IPIF_n_40),
        .\reg_data_out_reg[6]_0 (I_AXI_NATIVE_IPIF_n_27),
        .rx_done(rx_done),
        .rx_intr_en_reg_0(I_AXI_NATIVE_IPIF_n_43),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .\status_reg_reg[5]_0 (data4),
        .tx_intr_en0(tx_intr_en0),
        .tx_intr_en_reg_0({p_11_in[3],p_11_in[0]}),
        .tx_intr_en_reg_1(I_AXI_NATIVE_IPIF_n_42),
        .web(\RX_PING/wr_rd_n_b_i ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ethernetlite_v3_0_17_emac
   (s_axi_aresetn_0,
    dout,
    tx_idle,
    txDone,
    tx_DPM_adr,
    addra,
    wea,
    state17a,
    ena,
    \rxbuffer_addr_reg[9]_0 ,
    STATE10A,
    \txbuffer_addr_reg[9]_0 ,
    s_axi_aresetn_1,
    STATE12A,
    D_1,
    rx_done,
    \s_axi_wdata[4] ,
    prmry_vect_in,
    prmry_in,
    s_axi_aclk,
    phy_rx_clk,
    din,
    phy_tx_clk,
    \emac_tx_wr_data_d1_reg[2] ,
    \emac_tx_wr_data_d1_reg[3] ,
    phy_crs,
    s_axi_aresetn,
    ping_rx_status,
    Q,
    douta,
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ,
    select_2,
    p_11_in,
    mac_program_start_reg_reg,
    tx_done_d2,
    p_7_in,
    p_5_in,
    IP2INTC_IRPT_REG_I,
    s_axi_wdata,
    tx_intr_en0,
    loopback_en,
    D);
  output s_axi_aresetn_0;
  output [3:0]dout;
  output tx_idle;
  output txDone;
  output [11:0]tx_DPM_adr;
  output [10:0]addra;
  output [0:0]wea;
  output [0:0]state17a;
  output ena;
  output \rxbuffer_addr_reg[9]_0 ;
  output STATE10A;
  output \txbuffer_addr_reg[9]_0 ;
  output s_axi_aresetn_1;
  output STATE12A;
  output D_1;
  output rx_done;
  output \s_axi_wdata[4] ;
  output [3:0]prmry_vect_in;
  output prmry_in;
  input s_axi_aclk;
  input phy_rx_clk;
  input [5:0]din;
  input phy_tx_clk;
  input \emac_tx_wr_data_d1_reg[2] ;
  input \emac_tx_wr_data_d1_reg[3] ;
  input phy_crs;
  input s_axi_aresetn;
  input ping_rx_status;
  input [15:0]Q;
  input [1:0]douta;
  input [1:0]\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  input select_2;
  input [0:0]p_11_in;
  input mac_program_start_reg_reg;
  input tx_done_d2;
  input [0:0]p_7_in;
  input [0:0]p_5_in;
  input [0:0]IP2INTC_IRPT_REG_I;
  input [0:0]s_axi_wdata;
  input tx_intr_en0;
  input loopback_en;
  input [3:0]D;

  wire [3:0]D;
  wire D_1;
  wire [1:0]\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  wire [0:0]IP2INTC_IRPT_REG_I;
  wire NODEMACADDRRAMI_n_0;
  wire NODEMACADDRRAMI_n_1;
  wire Phy_tx_clk_axi_d;
  wire [15:0]Q;
  wire RX_n_13;
  wire STATE10A;
  wire STATE12A;
  wire TX_n_12;
  wire [10:0]addra;
  wire [5:0]din;
  wire [3:0]dout;
  wire [1:0]douta;
  wire [5:2]emac_rx_rd_data_d1;
  wire \emac_tx_wr_data_d1_reg[2] ;
  wire \emac_tx_wr_data_d1_reg[3] ;
  wire ena;
  wire loopback_en;
  wire [0:3]mac_addr_ram_addr;
  wire [0:3]mac_addr_ram_addr_rd;
  wire [0:3]mac_addr_ram_addr_wr;
  wire mac_addr_ram_we;
  wire mac_program_start_reg_reg;
  wire [0:0]p_11_in;
  wire [0:0]p_5_in;
  wire [0:0]p_7_in;
  wire phy_crs;
  wire phy_crs_d1;
  wire phy_crs_d2;
  wire phy_rx_clk;
  wire phy_tx_clk;
  wire ping_rx_status;
  wire prmry_in;
  wire [3:0]prmry_vect_in;
  wire [2:2]rx_DPM_adr__0;
  wire rx_addr_en;
  wire rx_done;
  wire \rxbuffer_addr[11]_i_4_n_0 ;
  wire \rxbuffer_addr_reg[11]_i_3_n_0 ;
  wire \rxbuffer_addr_reg[11]_i_3_n_1 ;
  wire \rxbuffer_addr_reg[11]_i_3_n_2 ;
  wire \rxbuffer_addr_reg[11]_i_3_n_3 ;
  wire \rxbuffer_addr_reg[11]_i_3_n_4 ;
  wire \rxbuffer_addr_reg[11]_i_3_n_5 ;
  wire \rxbuffer_addr_reg[11]_i_3_n_6 ;
  wire \rxbuffer_addr_reg[11]_i_3_n_7 ;
  wire \rxbuffer_addr_reg[3]_i_1_n_1 ;
  wire \rxbuffer_addr_reg[3]_i_1_n_2 ;
  wire \rxbuffer_addr_reg[3]_i_1_n_3 ;
  wire \rxbuffer_addr_reg[3]_i_1_n_4 ;
  wire \rxbuffer_addr_reg[3]_i_1_n_5 ;
  wire \rxbuffer_addr_reg[3]_i_1_n_6 ;
  wire \rxbuffer_addr_reg[3]_i_1_n_7 ;
  wire \rxbuffer_addr_reg[7]_i_1_n_0 ;
  wire \rxbuffer_addr_reg[7]_i_1_n_1 ;
  wire \rxbuffer_addr_reg[7]_i_1_n_2 ;
  wire \rxbuffer_addr_reg[7]_i_1_n_3 ;
  wire \rxbuffer_addr_reg[7]_i_1_n_4 ;
  wire \rxbuffer_addr_reg[7]_i_1_n_5 ;
  wire \rxbuffer_addr_reg[7]_i_1_n_6 ;
  wire \rxbuffer_addr_reg[7]_i_1_n_7 ;
  wire \rxbuffer_addr_reg[9]_0 ;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire s_axi_aresetn_1;
  wire [0:0]s_axi_wdata;
  wire \s_axi_wdata[4] ;
  wire select_2;
  wire [0:0]state17a;
  wire txDone;
  wire [11:0]tx_DPM_adr;
  wire tx_addr_en;
  wire tx_clk_reg_d1;
  wire tx_clk_reg_d2;
  wire tx_clk_reg_d3;
  wire tx_done_d2;
  wire tx_idle;
  wire tx_intr_en0;
  wire \txbuffer_addr[11]_i_5_n_0 ;
  wire \txbuffer_addr_reg[11]_i_3_n_0 ;
  wire \txbuffer_addr_reg[11]_i_3_n_1 ;
  wire \txbuffer_addr_reg[11]_i_3_n_2 ;
  wire \txbuffer_addr_reg[11]_i_3_n_3 ;
  wire \txbuffer_addr_reg[11]_i_3_n_4 ;
  wire \txbuffer_addr_reg[11]_i_3_n_5 ;
  wire \txbuffer_addr_reg[11]_i_3_n_6 ;
  wire \txbuffer_addr_reg[11]_i_3_n_7 ;
  wire \txbuffer_addr_reg[3]_i_1_n_1 ;
  wire \txbuffer_addr_reg[3]_i_1_n_2 ;
  wire \txbuffer_addr_reg[3]_i_1_n_3 ;
  wire \txbuffer_addr_reg[3]_i_1_n_4 ;
  wire \txbuffer_addr_reg[3]_i_1_n_5 ;
  wire \txbuffer_addr_reg[3]_i_1_n_6 ;
  wire \txbuffer_addr_reg[3]_i_1_n_7 ;
  wire \txbuffer_addr_reg[7]_i_1_n_0 ;
  wire \txbuffer_addr_reg[7]_i_1_n_1 ;
  wire \txbuffer_addr_reg[7]_i_1_n_2 ;
  wire \txbuffer_addr_reg[7]_i_1_n_3 ;
  wire \txbuffer_addr_reg[7]_i_1_n_4 ;
  wire \txbuffer_addr_reg[7]_i_1_n_5 ;
  wire \txbuffer_addr_reg[7]_i_1_n_6 ;
  wire \txbuffer_addr_reg[7]_i_1_n_7 ;
  wire \txbuffer_addr_reg[9]_0 ;
  wire [0:0]wea;
  wire [3:3]\NLW_rxbuffer_addr_reg[3]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_txbuffer_addr_reg[3]_i_1_CO_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_1 CDC_TX_CLK
       (.phy_tx_clk(phy_tx_clk),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(Phy_tx_clk_axi_d));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    C_SENSE_SYNC_1
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(phy_crs),
        .Q(phy_crs_d1),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    C_SENSE_SYNC_2
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(phy_crs_d1),
        .Q(phy_crs_d2),
        .R(s_axi_aresetn_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MacAddrRAM NODEMACADDRRAMI
       (.D(D),
        .Q(emac_rx_rd_data_d1),
        .\emac_rx_rd_data_d1_reg[2] (NODEMACADDRRAMI_n_1),
        .\emac_rx_rd_data_d1_reg[3] (NODEMACADDRRAMI_n_0),
        .mac_addr_ram_addr(mac_addr_ram_addr),
        .mac_addr_ram_we(mac_addr_ram_we),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_receive RX
       (.D(dout),
        .D_1(D_1),
        .\FSM_onehot_rdDestAddrNib_D_t_q_reg[1] (NODEMACADDRRAMI_n_1),
        .\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 (NODEMACADDRRAMI_n_0),
        .IP2INTC_IRPT_REG_I(IP2INTC_IRPT_REG_I),
        .IP2INTC_IRPT_REG_I_0(txDone),
        .\Mac_addr_ram_addr_rd_reg[0] ({mac_addr_ram_addr_rd[0],mac_addr_ram_addr_rd[1],mac_addr_ram_addr_rd[2],mac_addr_ram_addr_rd[3]}),
        .Q(emac_rx_rd_data_d1),
        .SS(s_axi_aresetn_0),
        .din(din),
        .ena(ena),
        .p_5_in(p_5_in),
        .p_7_in(p_7_in),
        .phy_rx_clk(phy_rx_clk),
        .ping_rx_status(ping_rx_status),
        .rx_DPM_adr__0(rx_DPM_adr__0),
        .rx_addr_en(rx_addr_en),
        .rx_done(rx_done),
        .\rxbuffer_addr_reg[9] (\rxbuffer_addr_reg[9]_0 ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .state17a(state17a),
        .state3a(RX_n_13),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transmit TX
       (.\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I (\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ),
        .Q(Q),
        .S(tx_DPM_adr[2]),
        .SS(s_axi_aresetn_0),
        .STATE0A(tx_idle),
        .STATE10A(STATE10A),
        .STATE12A(STATE12A),
        .STATE17A(txDone),
        .douta(douta),
        .\emac_tx_wr_data_d1_reg[2]_0 (\emac_tx_wr_data_d1_reg[2] ),
        .\emac_tx_wr_data_d1_reg[3]_0 (\emac_tx_wr_data_d1_reg[3] ),
        .loopback_en(loopback_en),
        .mac_addr_ram_addr_wr(mac_addr_ram_addr_wr),
        .mac_addr_ram_we(mac_addr_ram_we),
        .mac_program_start_reg_reg(mac_program_start_reg_reg),
        .p_11_in(p_11_in),
        .phy_crs_d2(phy_crs_d2),
        .phy_tx_clk(phy_tx_clk),
        .prmry_in(prmry_in),
        .prmry_vect_in(prmry_vect_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(s_axi_aresetn_1),
        .s_axi_aresetn_1(TX_n_12),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[4] (\s_axi_wdata[4] ),
        .select_2(select_2),
        .tx_addr_en(tx_addr_en),
        .tx_clk_reg_d2(tx_clk_reg_d2),
        .tx_clk_reg_d3(tx_clk_reg_d3),
        .tx_done_d2(tx_done_d2),
        .tx_intr_en0(tx_intr_en0),
        .\txbuffer_addr_reg[9] (\txbuffer_addr_reg[9]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    ram16x1_0_i_2
       (.I0(mac_addr_ram_addr_wr[3]),
        .I1(mac_addr_ram_we),
        .I2(mac_addr_ram_addr_rd[3]),
        .O(mac_addr_ram_addr[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram16x1_0_i_3
       (.I0(mac_addr_ram_addr_wr[2]),
        .I1(mac_addr_ram_we),
        .I2(mac_addr_ram_addr_rd[2]),
        .O(mac_addr_ram_addr[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram16x1_0_i_4
       (.I0(mac_addr_ram_addr_wr[1]),
        .I1(mac_addr_ram_we),
        .I2(mac_addr_ram_addr_rd[1]),
        .O(mac_addr_ram_addr[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram16x1_0_i_5
       (.I0(mac_addr_ram_addr_wr[0]),
        .I1(mac_addr_ram_we),
        .I2(mac_addr_ram_addr_rd[0]),
        .O(mac_addr_ram_addr[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \rxbuffer_addr[11]_i_4 
       (.I0(addra[0]),
        .O(\rxbuffer_addr[11]_i_4_n_0 ));
  FDRE \rxbuffer_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[3]_i_1_n_4 ),
        .Q(addra[10]),
        .R(RX_n_13));
  FDRE \rxbuffer_addr_reg[10] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[11]_i_3_n_6 ),
        .Q(addra[1]),
        .R(RX_n_13));
  FDRE \rxbuffer_addr_reg[11] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[11]_i_3_n_7 ),
        .Q(addra[0]),
        .R(RX_n_13));
  CARRY4 \rxbuffer_addr_reg[11]_i_3 
       (.CI(1'b0),
        .CO({\rxbuffer_addr_reg[11]_i_3_n_0 ,\rxbuffer_addr_reg[11]_i_3_n_1 ,\rxbuffer_addr_reg[11]_i_3_n_2 ,\rxbuffer_addr_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rxbuffer_addr_reg[11]_i_3_n_4 ,\rxbuffer_addr_reg[11]_i_3_n_5 ,\rxbuffer_addr_reg[11]_i_3_n_6 ,\rxbuffer_addr_reg[11]_i_3_n_7 }),
        .S({addra[2],rx_DPM_adr__0,addra[1],\rxbuffer_addr[11]_i_4_n_0 }));
  FDRE \rxbuffer_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[3]_i_1_n_5 ),
        .Q(addra[9]),
        .R(RX_n_13));
  FDRE \rxbuffer_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[3]_i_1_n_6 ),
        .Q(addra[8]),
        .R(RX_n_13));
  FDRE \rxbuffer_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[3]_i_1_n_7 ),
        .Q(addra[7]),
        .R(RX_n_13));
  CARRY4 \rxbuffer_addr_reg[3]_i_1 
       (.CI(\rxbuffer_addr_reg[7]_i_1_n_0 ),
        .CO({\NLW_rxbuffer_addr_reg[3]_i_1_CO_UNCONNECTED [3],\rxbuffer_addr_reg[3]_i_1_n_1 ,\rxbuffer_addr_reg[3]_i_1_n_2 ,\rxbuffer_addr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rxbuffer_addr_reg[3]_i_1_n_4 ,\rxbuffer_addr_reg[3]_i_1_n_5 ,\rxbuffer_addr_reg[3]_i_1_n_6 ,\rxbuffer_addr_reg[3]_i_1_n_7 }),
        .S(addra[10:7]));
  FDRE \rxbuffer_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[7]_i_1_n_4 ),
        .Q(addra[6]),
        .R(RX_n_13));
  FDRE \rxbuffer_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[7]_i_1_n_5 ),
        .Q(addra[5]),
        .R(RX_n_13));
  FDRE \rxbuffer_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[7]_i_1_n_6 ),
        .Q(addra[4]),
        .R(RX_n_13));
  FDRE \rxbuffer_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[7]_i_1_n_7 ),
        .Q(addra[3]),
        .R(RX_n_13));
  CARRY4 \rxbuffer_addr_reg[7]_i_1 
       (.CI(\rxbuffer_addr_reg[11]_i_3_n_0 ),
        .CO({\rxbuffer_addr_reg[7]_i_1_n_0 ,\rxbuffer_addr_reg[7]_i_1_n_1 ,\rxbuffer_addr_reg[7]_i_1_n_2 ,\rxbuffer_addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rxbuffer_addr_reg[7]_i_1_n_4 ,\rxbuffer_addr_reg[7]_i_1_n_5 ,\rxbuffer_addr_reg[7]_i_1_n_6 ,\rxbuffer_addr_reg[7]_i_1_n_7 }),
        .S(addra[6:3]));
  FDRE \rxbuffer_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[11]_i_3_n_4 ),
        .Q(addra[2]),
        .R(RX_n_13));
  FDRE \rxbuffer_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[11]_i_3_n_5 ),
        .Q(rx_DPM_adr__0),
        .R(RX_n_13));
  FDRE tx_clk_reg_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Phy_tx_clk_axi_d),
        .Q(tx_clk_reg_d1),
        .R(s_axi_aresetn_0));
  FDRE tx_clk_reg_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_clk_reg_d1),
        .Q(tx_clk_reg_d2),
        .R(s_axi_aresetn_0));
  FDRE tx_clk_reg_d3_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_clk_reg_d2),
        .Q(tx_clk_reg_d3),
        .R(s_axi_aresetn_0));
  LUT1 #(
    .INIT(2'h1)) 
    \txbuffer_addr[11]_i_5 
       (.I0(tx_DPM_adr[0]),
        .O(\txbuffer_addr[11]_i_5_n_0 ));
  FDRE \txbuffer_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[3]_i_1_n_4 ),
        .Q(tx_DPM_adr[11]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[10] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[11]_i_3_n_6 ),
        .Q(tx_DPM_adr[1]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[11] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[11]_i_3_n_7 ),
        .Q(tx_DPM_adr[0]),
        .R(TX_n_12));
  CARRY4 \txbuffer_addr_reg[11]_i_3 
       (.CI(1'b0),
        .CO({\txbuffer_addr_reg[11]_i_3_n_0 ,\txbuffer_addr_reg[11]_i_3_n_1 ,\txbuffer_addr_reg[11]_i_3_n_2 ,\txbuffer_addr_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\txbuffer_addr_reg[11]_i_3_n_4 ,\txbuffer_addr_reg[11]_i_3_n_5 ,\txbuffer_addr_reg[11]_i_3_n_6 ,\txbuffer_addr_reg[11]_i_3_n_7 }),
        .S({tx_DPM_adr[3:1],\txbuffer_addr[11]_i_5_n_0 }));
  FDRE \txbuffer_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[3]_i_1_n_5 ),
        .Q(tx_DPM_adr[10]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[3]_i_1_n_6 ),
        .Q(tx_DPM_adr[9]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[3]_i_1_n_7 ),
        .Q(tx_DPM_adr[8]),
        .R(TX_n_12));
  CARRY4 \txbuffer_addr_reg[3]_i_1 
       (.CI(\txbuffer_addr_reg[7]_i_1_n_0 ),
        .CO({\NLW_txbuffer_addr_reg[3]_i_1_CO_UNCONNECTED [3],\txbuffer_addr_reg[3]_i_1_n_1 ,\txbuffer_addr_reg[3]_i_1_n_2 ,\txbuffer_addr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\txbuffer_addr_reg[3]_i_1_n_4 ,\txbuffer_addr_reg[3]_i_1_n_5 ,\txbuffer_addr_reg[3]_i_1_n_6 ,\txbuffer_addr_reg[3]_i_1_n_7 }),
        .S(tx_DPM_adr[11:8]));
  FDRE \txbuffer_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[7]_i_1_n_4 ),
        .Q(tx_DPM_adr[7]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[7]_i_1_n_5 ),
        .Q(tx_DPM_adr[6]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[7]_i_1_n_6 ),
        .Q(tx_DPM_adr[5]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[7]_i_1_n_7 ),
        .Q(tx_DPM_adr[4]),
        .R(TX_n_12));
  CARRY4 \txbuffer_addr_reg[7]_i_1 
       (.CI(\txbuffer_addr_reg[11]_i_3_n_0 ),
        .CO({\txbuffer_addr_reg[7]_i_1_n_0 ,\txbuffer_addr_reg[7]_i_1_n_1 ,\txbuffer_addr_reg[7]_i_1_n_2 ,\txbuffer_addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\txbuffer_addr_reg[7]_i_1_n_4 ,\txbuffer_addr_reg[7]_i_1_n_5 ,\txbuffer_addr_reg[7]_i_1_n_6 ,\txbuffer_addr_reg[7]_i_1_n_7 }),
        .S(tx_DPM_adr[7:4]));
  FDRE \txbuffer_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[11]_i_3_n_4 ),
        .Q(tx_DPM_adr[3]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[11]_i_3_n_5 ),
        .Q(tx_DPM_adr[2]),
        .R(TX_n_12));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_interface
   (s_axi_rid,
    s_axi_rlast,
    s_axi_rvalid,
    Q,
    \AXI4_MM_IF_GEN.write_req_reg_0 ,
    \AXI4_MM_IF_GEN.arready_i_reg_0 ,
    \AXI4_MM_IF_GEN.awready_i_reg_0 ,
    s_axi_bid,
    s_axi_bvalid,
    s_axi_aresetn_0,
    reg_data_out,
    \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[3]_0 ,
    \AXI4_MM_IF_GEN.read_req_reg_0 ,
    \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[3]_1 ,
    \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[4]_0 ,
    s_axi_aresetn_1,
    \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[11]_0 ,
    s_axi_aresetn_2,
    E,
    tx_intr_en0,
    enb,
    \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[11]_1 ,
    web,
    \reg_data_out_reg[30] ,
    \AXI4_MM_IF_GEN.read_req_d1_reg_0 ,
    \s_axi_wdata[31] ,
    s_axi_wdata_0_sp_1,
    \reg_data_out_reg[0] ,
    \reg_data_out_reg[2] ,
    \reg_data_out_reg[4] ,
    \reg_data_out_reg[5] ,
    \s_axi_wdata[31]_0 ,
    \s_axi_wdata[3] ,
    \s_axi_wdata[3]_0 ,
    s_axi_rdata,
    SR,
    s_axi_arid,
    s_axi_aclk,
    s_axi_rready,
    s_axi_aresetn,
    \reg_data_out_reg[31] ,
    ping_rx_status,
    ping_soft_status,
    p_5_in,
    \reg_data_out_reg[5]_0 ,
    loopback_en,
    data4,
    p_11_in,
    s_axi_wvalid,
    s_axi_wstrb,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_arlen,
    p_91_in,
    reg_access,
    s_axi_wdata,
    rx_done,
    s_axi_wlast,
    s_axi_bready,
    \reg_data_out_reg[0]_0 ,
    \reg_data_out_reg[2]_0 ,
    \reg_data_out_reg[2]_1 ,
    p_13_in60_in,
    p_16_in70_in,
    p_7_in,
    s_axi_awid,
    D);
  output [0:0]s_axi_rid;
  output s_axi_rlast;
  output s_axi_rvalid;
  output [10:0]Q;
  output \AXI4_MM_IF_GEN.write_req_reg_0 ;
  output \AXI4_MM_IF_GEN.arready_i_reg_0 ;
  output \AXI4_MM_IF_GEN.awready_i_reg_0 ;
  output [0:0]s_axi_bid;
  output s_axi_bvalid;
  output s_axi_aresetn_0;
  output reg_data_out;
  output \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[3]_0 ;
  output \AXI4_MM_IF_GEN.read_req_reg_0 ;
  output \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[3]_1 ;
  output \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[4]_0 ;
  output s_axi_aresetn_1;
  output \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[11]_0 ;
  output s_axi_aresetn_2;
  output [0:0]E;
  output tx_intr_en0;
  output enb;
  output \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[11]_1 ;
  output [0:0]web;
  output \reg_data_out_reg[30] ;
  output \AXI4_MM_IF_GEN.read_req_d1_reg_0 ;
  output \s_axi_wdata[31] ;
  output s_axi_wdata_0_sp_1;
  output \reg_data_out_reg[0] ;
  output \reg_data_out_reg[2] ;
  output \reg_data_out_reg[4] ;
  output \reg_data_out_reg[5] ;
  output \s_axi_wdata[31]_0 ;
  output \s_axi_wdata[3] ;
  output \s_axi_wdata[3]_0 ;
  output [31:0]s_axi_rdata;
  input [0:0]SR;
  input [0:0]s_axi_arid;
  input s_axi_aclk;
  input s_axi_rready;
  input s_axi_aresetn;
  input \reg_data_out_reg[31] ;
  input ping_rx_status;
  input ping_soft_status;
  input [0:0]p_5_in;
  input [2:0]\reg_data_out_reg[5]_0 ;
  input loopback_en;
  input [0:0]data4;
  input [1:0]p_11_in;
  input s_axi_wvalid;
  input [3:0]s_axi_wstrb;
  input [11:0]s_axi_awaddr;
  input [11:0]s_axi_araddr;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input [7:0]s_axi_arlen;
  input p_91_in;
  input reg_access;
  input [2:0]s_axi_wdata;
  input rx_done;
  input s_axi_wlast;
  input s_axi_bready;
  input \reg_data_out_reg[0]_0 ;
  input \reg_data_out_reg[2]_0 ;
  input \reg_data_out_reg[2]_1 ;
  input p_13_in60_in;
  input p_16_in70_in;
  input [0:0]p_7_in;
  input [0:0]s_axi_awid;
  input [31:0]D;

  wire \AXI4_MM_IF_GEN.S_AXI_RLAST_i_2_n_0 ;
  wire \AXI4_MM_IF_GEN.arready_i_i_1_n_0 ;
  wire \AXI4_MM_IF_GEN.arready_i_reg_0 ;
  wire \AXI4_MM_IF_GEN.awready_i_i_1_n_0 ;
  wire \AXI4_MM_IF_GEN.awready_i_reg_0 ;
  wire \AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ;
  wire \AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_3_n_0 ;
  wire \AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_4_n_0 ;
  wire \AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_5_n_0 ;
  wire \AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_6_n_0 ;
  wire \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[11]_0 ;
  wire \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[11]_1 ;
  wire \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[3]_0 ;
  wire \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[3]_1 ;
  wire \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[4]_0 ;
  wire \AXI4_MM_IF_GEN.bus2ip_addr_i_reg_n_0_[1] ;
  wire \AXI4_MM_IF_GEN.bvalid_i_1_n_0 ;
  wire \AXI4_MM_IF_GEN.read_burst_cntr[5]_i_2_n_0 ;
  wire \AXI4_MM_IF_GEN.read_burst_cntr[7]_i_1_n_0 ;
  wire [7:0]\AXI4_MM_IF_GEN.read_burst_cntr_reg ;
  wire \AXI4_MM_IF_GEN.read_req_d1_reg_0 ;
  wire \AXI4_MM_IF_GEN.read_req_i_1_n_0 ;
  wire \AXI4_MM_IF_GEN.read_req_reg_0 ;
  wire \AXI4_MM_IF_GEN.rvalid_i_1_n_0 ;
  wire \AXI4_MM_IF_GEN.rvalid_i_2_n_0 ;
  wire \AXI4_MM_IF_GEN.rvalid_i_3_n_0 ;
  wire \AXI4_MM_IF_GEN.rvalid_i_4_n_0 ;
  wire \AXI4_MM_IF_GEN.wid[0]_i_1_n_0 ;
  wire \AXI4_MM_IF_GEN.write_req_i_1_n_0 ;
  wire \AXI4_MM_IF_GEN.write_req_reg_0 ;
  wire [31:0]D;
  wire [0:0]E;
  wire [10:0]Q;
  wire [0:0]SR;
  wire \XEMAC_I/reg_access_i ;
  wire bus2ip_rdce;
  wire [0:0]data4;
  wire enb;
  wire gie_enable_i_2_n_0;
  wire loopback_en;
  wire [7:0]p_0_in;
  wire [1:0]p_11_in;
  wire p_12_out;
  wire p_13_in60_in;
  wire p_16_in70_in;
  wire [12:1]p_2_in;
  wire [0:0]p_5_in;
  wire [0:0]p_7_in;
  wire p_7_out;
  wire p_8_out;
  wire p_91_in;
  wire \ping_pkt_lenth[15]_i_2_n_0 ;
  wire ping_rx_status;
  wire ping_soft_status;
  wire [12:1]plusOp;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry_i_1_n_0;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire [7:0]read_burst_length;
  wire read_req;
  wire read_req_d1;
  wire reg_access;
  wire reg_data_out;
  wire \reg_data_out[0]_i_2_n_0 ;
  wire \reg_data_out[0]_i_3_n_0 ;
  wire \reg_data_out[15]_i_7_n_0 ;
  wire \reg_data_out[31]_i_2_n_0 ;
  wire \reg_data_out[31]_i_4_n_0 ;
  wire \reg_data_out[31]_i_5_n_0 ;
  wire \reg_data_out[4]_i_2_n_0 ;
  wire \reg_data_out[5]_i_2_n_0 ;
  wire \reg_data_out[5]_i_3_n_0 ;
  wire \reg_data_out_reg[0] ;
  wire \reg_data_out_reg[0]_0 ;
  wire \reg_data_out_reg[2] ;
  wire \reg_data_out_reg[2]_0 ;
  wire \reg_data_out_reg[2]_1 ;
  wire \reg_data_out_reg[30] ;
  wire \reg_data_out_reg[31] ;
  wire \reg_data_out_reg[4] ;
  wire \reg_data_out_reg[5] ;
  wire [2:0]\reg_data_out_reg[5]_0 ;
  wire rvalid;
  wire rx_done;
  wire s_axi_aclk;
  wire [11:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire s_axi_aresetn_1;
  wire s_axi_aresetn_2;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arvalid;
  wire [11:0]s_axi_awaddr;
  wire [0:0]s_axi_awid;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [2:0]s_axi_wdata;
  wire \s_axi_wdata[31] ;
  wire \s_axi_wdata[31]_0 ;
  wire \s_axi_wdata[3] ;
  wire \s_axi_wdata[3]_0 ;
  wire s_axi_wdata_0_sn_1;
  wire s_axi_wlast;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire tx_intr_en0;
  wire [0:0]web;
  wire \xpm_mem_gen.xpm_memory_inst_1_i_5_n_0 ;
  wire \xpm_mem_gen.xpm_memory_inst_1_i_7_n_0 ;
  wire [3:3]NLW_plusOp_carry__1_CO_UNCONNECTED;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  LUT4 #(
    .INIT(16'h0008)) 
    \AXI4_MM_IF_GEN.S_AXI_RLAST_i_1 
       (.I0(rvalid),
        .I1(\AXI4_MM_IF_GEN.S_AXI_RLAST_i_2_n_0 ),
        .I2(\AXI4_MM_IF_GEN.read_burst_cntr_reg [6]),
        .I3(\AXI4_MM_IF_GEN.read_burst_cntr_reg [7]),
        .O(p_7_out));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \AXI4_MM_IF_GEN.S_AXI_RLAST_i_2 
       (.I0(\AXI4_MM_IF_GEN.read_burst_cntr_reg [4]),
        .I1(\AXI4_MM_IF_GEN.read_burst_cntr_reg [3]),
        .I2(\AXI4_MM_IF_GEN.read_burst_cntr_reg [2]),
        .I3(\AXI4_MM_IF_GEN.read_burst_cntr_reg [0]),
        .I4(\AXI4_MM_IF_GEN.read_burst_cntr_reg [1]),
        .I5(\AXI4_MM_IF_GEN.read_burst_cntr_reg [5]),
        .O(\AXI4_MM_IF_GEN.S_AXI_RLAST_i_2_n_0 ));
  FDRE \AXI4_MM_IF_GEN.S_AXI_RLAST_reg 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(p_7_out),
        .Q(s_axi_rlast),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.S_AXI_RVALID_reg 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(rvalid),
        .Q(s_axi_rvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000200020002)) 
    \AXI4_MM_IF_GEN.arready_i_i_1 
       (.I0(s_axi_aresetn),
        .I1(\AXI4_MM_IF_GEN.write_req_reg_0 ),
        .I2(s_axi_awvalid),
        .I3(read_req),
        .I4(\AXI4_MM_IF_GEN.arready_i_reg_0 ),
        .I5(s_axi_arvalid),
        .O(\AXI4_MM_IF_GEN.arready_i_i_1_n_0 ));
  FDRE \AXI4_MM_IF_GEN.arready_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\AXI4_MM_IF_GEN.arready_i_i_1_n_0 ),
        .Q(\AXI4_MM_IF_GEN.arready_i_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \AXI4_MM_IF_GEN.awready_i_i_1 
       (.I0(p_12_out),
        .I1(s_axi_aresetn),
        .I2(\AXI4_MM_IF_GEN.write_req_reg_0 ),
        .I3(rvalid),
        .I4(s_axi_arvalid),
        .I5(read_req),
        .O(\AXI4_MM_IF_GEN.awready_i_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \AXI4_MM_IF_GEN.awready_i_i_2 
       (.I0(s_axi_awvalid),
        .I1(\AXI4_MM_IF_GEN.awready_i_reg_0 ),
        .O(p_12_out));
  FDRE \AXI4_MM_IF_GEN.awready_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\AXI4_MM_IF_GEN.awready_i_i_1_n_0 ),
        .Q(\AXI4_MM_IF_GEN.awready_i_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \AXI4_MM_IF_GEN.bus2ip_addr_i[10]_i_1 
       (.I0(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_4_n_0 ),
        .I1(s_axi_awaddr[9]),
        .I2(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_5_n_0 ),
        .I3(plusOp[10]),
        .I4(p_8_out),
        .I5(s_axi_araddr[9]),
        .O(p_2_in[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \AXI4_MM_IF_GEN.bus2ip_addr_i[11]_i_1 
       (.I0(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_4_n_0 ),
        .I1(s_axi_awaddr[10]),
        .I2(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_5_n_0 ),
        .I3(plusOp[11]),
        .I4(p_8_out),
        .I5(s_axi_araddr[10]),
        .O(p_2_in[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_1 
       (.I0(p_8_out),
        .I1(\AXI4_MM_IF_GEN.write_req_reg_0 ),
        .I2(s_axi_wvalid),
        .I3(\AXI4_MM_IF_GEN.awready_i_reg_0 ),
        .I4(s_axi_awvalid),
        .I5(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_3_n_0 ),
        .O(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_2 
       (.I0(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_4_n_0 ),
        .I1(s_axi_awaddr[11]),
        .I2(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_5_n_0 ),
        .I3(plusOp[12]),
        .I4(p_8_out),
        .I5(s_axi_araddr[11]),
        .O(p_2_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h008A)) 
    \AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_3 
       (.I0(read_req),
        .I1(s_axi_rready),
        .I2(read_req_d1),
        .I3(\AXI4_MM_IF_GEN.rvalid_i_2_n_0 ),
        .O(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_4 
       (.I0(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_6_n_0 ),
        .I1(\AXI4_MM_IF_GEN.arready_i_reg_0 ),
        .I2(s_axi_arvalid),
        .O(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_5 
       (.I0(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_6_n_0 ),
        .I1(\AXI4_MM_IF_GEN.arready_i_reg_0 ),
        .I2(s_axi_arvalid),
        .O(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5100FFFFFFFFFFFF)) 
    \AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_6 
       (.I0(\AXI4_MM_IF_GEN.rvalid_i_2_n_0 ),
        .I1(read_req_d1),
        .I2(s_axi_rready),
        .I3(read_req),
        .I4(\AXI4_MM_IF_GEN.awready_i_reg_0 ),
        .I5(s_axi_awvalid),
        .O(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \AXI4_MM_IF_GEN.bus2ip_addr_i[1]_i_1 
       (.I0(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_4_n_0 ),
        .I1(s_axi_awaddr[0]),
        .I2(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_5_n_0 ),
        .I3(plusOp[1]),
        .I4(p_8_out),
        .I5(s_axi_araddr[0]),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \AXI4_MM_IF_GEN.bus2ip_addr_i[2]_i_1 
       (.I0(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_4_n_0 ),
        .I1(s_axi_awaddr[1]),
        .I2(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_5_n_0 ),
        .I3(plusOp[2]),
        .I4(p_8_out),
        .I5(s_axi_araddr[1]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \AXI4_MM_IF_GEN.bus2ip_addr_i[3]_i_1 
       (.I0(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_4_n_0 ),
        .I1(s_axi_awaddr[2]),
        .I2(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_5_n_0 ),
        .I3(plusOp[3]),
        .I4(p_8_out),
        .I5(s_axi_araddr[2]),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \AXI4_MM_IF_GEN.bus2ip_addr_i[4]_i_1 
       (.I0(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_4_n_0 ),
        .I1(s_axi_awaddr[3]),
        .I2(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_5_n_0 ),
        .I3(plusOp[4]),
        .I4(p_8_out),
        .I5(s_axi_araddr[3]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \AXI4_MM_IF_GEN.bus2ip_addr_i[5]_i_1 
       (.I0(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_4_n_0 ),
        .I1(s_axi_awaddr[4]),
        .I2(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_5_n_0 ),
        .I3(plusOp[5]),
        .I4(p_8_out),
        .I5(s_axi_araddr[4]),
        .O(p_2_in[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \AXI4_MM_IF_GEN.bus2ip_addr_i[6]_i_1 
       (.I0(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_4_n_0 ),
        .I1(s_axi_awaddr[5]),
        .I2(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_5_n_0 ),
        .I3(plusOp[6]),
        .I4(p_8_out),
        .I5(s_axi_araddr[5]),
        .O(p_2_in[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \AXI4_MM_IF_GEN.bus2ip_addr_i[7]_i_1 
       (.I0(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_4_n_0 ),
        .I1(s_axi_awaddr[6]),
        .I2(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_5_n_0 ),
        .I3(plusOp[7]),
        .I4(p_8_out),
        .I5(s_axi_araddr[6]),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \AXI4_MM_IF_GEN.bus2ip_addr_i[8]_i_1 
       (.I0(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_4_n_0 ),
        .I1(s_axi_awaddr[7]),
        .I2(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_5_n_0 ),
        .I3(plusOp[8]),
        .I4(p_8_out),
        .I5(s_axi_araddr[7]),
        .O(p_2_in[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \AXI4_MM_IF_GEN.bus2ip_addr_i[9]_i_1 
       (.I0(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_4_n_0 ),
        .I1(s_axi_awaddr[8]),
        .I2(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_5_n_0 ),
        .I3(plusOp[9]),
        .I4(p_8_out),
        .I5(s_axi_araddr[8]),
        .O(p_2_in[9]));
  FDRE \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(Q[8]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(Q[9]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(Q[10]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg_n_0_[1] ),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(Q[0]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(Q[1]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(Q[2]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(Q[3]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(Q[4]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(Q[5]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(Q[6]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.bus2ip_addr_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\AXI4_MM_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(Q[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \AXI4_MM_IF_GEN.bvalid_i_1 
       (.I0(s_axi_wvalid),
        .I1(\AXI4_MM_IF_GEN.write_req_reg_0 ),
        .I2(s_axi_wlast),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid),
        .O(\AXI4_MM_IF_GEN.bvalid_i_1_n_0 ));
  FDRE \AXI4_MM_IF_GEN.bvalid_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\AXI4_MM_IF_GEN.bvalid_i_1_n_0 ),
        .Q(s_axi_bvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h80BF)) 
    \AXI4_MM_IF_GEN.read_burst_cntr[0]_i_1 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arvalid),
        .I2(\AXI4_MM_IF_GEN.arready_i_reg_0 ),
        .I3(\AXI4_MM_IF_GEN.read_burst_cntr_reg [0]),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'hF9990999)) 
    \AXI4_MM_IF_GEN.read_burst_cntr[1]_i_1 
       (.I0(\AXI4_MM_IF_GEN.read_burst_cntr_reg [1]),
        .I1(\AXI4_MM_IF_GEN.read_burst_cntr_reg [0]),
        .I2(s_axi_arvalid),
        .I3(\AXI4_MM_IF_GEN.arready_i_reg_0 ),
        .I4(s_axi_arlen[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hFFE1E1E100E1E1E1)) 
    \AXI4_MM_IF_GEN.read_burst_cntr[2]_i_1 
       (.I0(\AXI4_MM_IF_GEN.read_burst_cntr_reg [0]),
        .I1(\AXI4_MM_IF_GEN.read_burst_cntr_reg [1]),
        .I2(\AXI4_MM_IF_GEN.read_burst_cntr_reg [2]),
        .I3(s_axi_arvalid),
        .I4(\AXI4_MM_IF_GEN.arready_i_reg_0 ),
        .I5(s_axi_arlen[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFFFFAAA90000AAA9)) 
    \AXI4_MM_IF_GEN.read_burst_cntr[3]_i_1 
       (.I0(\AXI4_MM_IF_GEN.read_burst_cntr_reg [3]),
        .I1(\AXI4_MM_IF_GEN.read_burst_cntr_reg [2]),
        .I2(\AXI4_MM_IF_GEN.read_burst_cntr_reg [0]),
        .I3(\AXI4_MM_IF_GEN.read_burst_cntr_reg [1]),
        .I4(p_8_out),
        .I5(s_axi_arlen[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hFFA6A6A600A6A6A6)) 
    \AXI4_MM_IF_GEN.read_burst_cntr[4]_i_1 
       (.I0(\AXI4_MM_IF_GEN.read_burst_cntr_reg [4]),
        .I1(\AXI4_MM_IF_GEN.read_burst_cntr[5]_i_2_n_0 ),
        .I2(\AXI4_MM_IF_GEN.read_burst_cntr_reg [3]),
        .I3(s_axi_arvalid),
        .I4(\AXI4_MM_IF_GEN.arready_i_reg_0 ),
        .I5(s_axi_arlen[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFFFFA9AA0000A9AA)) 
    \AXI4_MM_IF_GEN.read_burst_cntr[5]_i_1 
       (.I0(\AXI4_MM_IF_GEN.read_burst_cntr_reg [5]),
        .I1(\AXI4_MM_IF_GEN.read_burst_cntr_reg [4]),
        .I2(\AXI4_MM_IF_GEN.read_burst_cntr_reg [3]),
        .I3(\AXI4_MM_IF_GEN.read_burst_cntr[5]_i_2_n_0 ),
        .I4(p_8_out),
        .I5(s_axi_arlen[5]),
        .O(p_0_in[5]));
  LUT3 #(
    .INIT(8'h01)) 
    \AXI4_MM_IF_GEN.read_burst_cntr[5]_i_2 
       (.I0(\AXI4_MM_IF_GEN.read_burst_cntr_reg [1]),
        .I1(\AXI4_MM_IF_GEN.read_burst_cntr_reg [0]),
        .I2(\AXI4_MM_IF_GEN.read_burst_cntr_reg [2]),
        .O(\AXI4_MM_IF_GEN.read_burst_cntr[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \AXI4_MM_IF_GEN.read_burst_cntr[6]_i_1 
       (.I0(\AXI4_MM_IF_GEN.read_burst_cntr_reg [6]),
        .I1(\AXI4_MM_IF_GEN.S_AXI_RLAST_i_2_n_0 ),
        .I2(s_axi_arvalid),
        .I3(\AXI4_MM_IF_GEN.arready_i_reg_0 ),
        .I4(s_axi_arlen[6]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \AXI4_MM_IF_GEN.read_burst_cntr[7]_i_1 
       (.I0(rvalid),
        .I1(s_axi_rready),
        .I2(\AXI4_MM_IF_GEN.arready_i_reg_0 ),
        .I3(s_axi_arvalid),
        .O(\AXI4_MM_IF_GEN.read_burst_cntr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF9A9A9A009A9A9A)) 
    \AXI4_MM_IF_GEN.read_burst_cntr[7]_i_2 
       (.I0(\AXI4_MM_IF_GEN.read_burst_cntr_reg [7]),
        .I1(\AXI4_MM_IF_GEN.read_burst_cntr_reg [6]),
        .I2(\AXI4_MM_IF_GEN.S_AXI_RLAST_i_2_n_0 ),
        .I3(s_axi_arvalid),
        .I4(\AXI4_MM_IF_GEN.arready_i_reg_0 ),
        .I5(s_axi_arlen[7]),
        .O(p_0_in[7]));
  FDRE \AXI4_MM_IF_GEN.read_burst_cntr_reg[0] 
       (.C(s_axi_aclk),
        .CE(\AXI4_MM_IF_GEN.read_burst_cntr[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(\AXI4_MM_IF_GEN.read_burst_cntr_reg [0]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.read_burst_cntr_reg[1] 
       (.C(s_axi_aclk),
        .CE(\AXI4_MM_IF_GEN.read_burst_cntr[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(\AXI4_MM_IF_GEN.read_burst_cntr_reg [1]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.read_burst_cntr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\AXI4_MM_IF_GEN.read_burst_cntr[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(\AXI4_MM_IF_GEN.read_burst_cntr_reg [2]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.read_burst_cntr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\AXI4_MM_IF_GEN.read_burst_cntr[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(\AXI4_MM_IF_GEN.read_burst_cntr_reg [3]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.read_burst_cntr_reg[4] 
       (.C(s_axi_aclk),
        .CE(\AXI4_MM_IF_GEN.read_burst_cntr[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(\AXI4_MM_IF_GEN.read_burst_cntr_reg [4]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.read_burst_cntr_reg[5] 
       (.C(s_axi_aclk),
        .CE(\AXI4_MM_IF_GEN.read_burst_cntr[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(\AXI4_MM_IF_GEN.read_burst_cntr_reg [5]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.read_burst_cntr_reg[6] 
       (.C(s_axi_aclk),
        .CE(\AXI4_MM_IF_GEN.read_burst_cntr[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(\AXI4_MM_IF_GEN.read_burst_cntr_reg [6]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.read_burst_cntr_reg[7] 
       (.C(s_axi_aclk),
        .CE(\AXI4_MM_IF_GEN.read_burst_cntr[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(\AXI4_MM_IF_GEN.read_burst_cntr_reg [7]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.read_burst_length_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_8_out),
        .D(s_axi_arlen[0]),
        .Q(read_burst_length[0]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.read_burst_length_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_8_out),
        .D(s_axi_arlen[1]),
        .Q(read_burst_length[1]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.read_burst_length_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_8_out),
        .D(s_axi_arlen[2]),
        .Q(read_burst_length[2]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.read_burst_length_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_8_out),
        .D(s_axi_arlen[3]),
        .Q(read_burst_length[3]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.read_burst_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_8_out),
        .D(s_axi_arlen[4]),
        .Q(read_burst_length[4]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.read_burst_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_8_out),
        .D(s_axi_arlen[5]),
        .Q(read_burst_length[5]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.read_burst_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_8_out),
        .D(s_axi_arlen[6]),
        .Q(read_burst_length[6]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.read_burst_length_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_8_out),
        .D(s_axi_arlen[7]),
        .Q(read_burst_length[7]),
        .R(SR));
  FDRE \AXI4_MM_IF_GEN.read_req_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_req),
        .Q(read_req_d1),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFF8F88888888)) 
    \AXI4_MM_IF_GEN.read_req_i_1 
       (.I0(\AXI4_MM_IF_GEN.arready_i_reg_0 ),
        .I1(s_axi_arvalid),
        .I2(\AXI4_MM_IF_GEN.S_AXI_RLAST_i_2_n_0 ),
        .I3(\AXI4_MM_IF_GEN.read_burst_cntr_reg [6]),
        .I4(\AXI4_MM_IF_GEN.read_burst_cntr_reg [7]),
        .I5(read_req),
        .O(\AXI4_MM_IF_GEN.read_req_i_1_n_0 ));
  FDRE \AXI4_MM_IF_GEN.read_req_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\AXI4_MM_IF_GEN.read_req_i_1_n_0 ),
        .Q(read_req),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \AXI4_MM_IF_GEN.rid[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\AXI4_MM_IF_GEN.arready_i_reg_0 ),
        .O(p_8_out));
  FDRE \AXI4_MM_IF_GEN.rid_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_8_out),
        .D(s_axi_arid),
        .Q(s_axi_rid),
        .R(SR));
  LUT6 #(
    .INIT(64'hA8A88800A8A8A8A8)) 
    \AXI4_MM_IF_GEN.rvalid_i_1 
       (.I0(s_axi_aresetn),
        .I1(read_req),
        .I2(rvalid),
        .I3(\AXI4_MM_IF_GEN.rvalid_i_2_n_0 ),
        .I4(\AXI4_MM_IF_GEN.rvalid_i_3_n_0 ),
        .I5(s_axi_rready),
        .O(\AXI4_MM_IF_GEN.rvalid_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \AXI4_MM_IF_GEN.rvalid_i_2 
       (.I0(read_burst_length[4]),
        .I1(read_burst_length[5]),
        .I2(read_burst_length[6]),
        .I3(read_burst_length[7]),
        .I4(\AXI4_MM_IF_GEN.rvalid_i_4_n_0 ),
        .O(\AXI4_MM_IF_GEN.rvalid_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \AXI4_MM_IF_GEN.rvalid_i_3 
       (.I0(\AXI4_MM_IF_GEN.read_burst_cntr_reg [7]),
        .I1(\AXI4_MM_IF_GEN.read_burst_cntr_reg [6]),
        .I2(\AXI4_MM_IF_GEN.read_burst_cntr_reg [4]),
        .I3(\AXI4_MM_IF_GEN.read_burst_cntr_reg [3]),
        .I4(\AXI4_MM_IF_GEN.read_burst_cntr[5]_i_2_n_0 ),
        .I5(\AXI4_MM_IF_GEN.read_burst_cntr_reg [5]),
        .O(\AXI4_MM_IF_GEN.rvalid_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \AXI4_MM_IF_GEN.rvalid_i_4 
       (.I0(read_burst_length[1]),
        .I1(read_burst_length[0]),
        .I2(read_burst_length[3]),
        .I3(read_burst_length[2]),
        .O(\AXI4_MM_IF_GEN.rvalid_i_4_n_0 ));
  FDRE \AXI4_MM_IF_GEN.rvalid_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\AXI4_MM_IF_GEN.rvalid_i_1_n_0 ),
        .Q(rvalid),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \AXI4_MM_IF_GEN.wid[0]_i_1 
       (.I0(s_axi_awid),
        .I1(s_axi_awvalid),
        .I2(\AXI4_MM_IF_GEN.awready_i_reg_0 ),
        .I3(s_axi_bid),
        .O(\AXI4_MM_IF_GEN.wid[0]_i_1_n_0 ));
  FDRE \AXI4_MM_IF_GEN.wid_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\AXI4_MM_IF_GEN.wid[0]_i_1_n_0 ),
        .Q(s_axi_bid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF777F000)) 
    \AXI4_MM_IF_GEN.write_req_i_1 
       (.I0(s_axi_wlast),
        .I1(s_axi_wvalid),
        .I2(\AXI4_MM_IF_GEN.awready_i_reg_0 ),
        .I3(s_axi_awvalid),
        .I4(\AXI4_MM_IF_GEN.write_req_reg_0 ),
        .O(\AXI4_MM_IF_GEN.write_req_i_1_n_0 ));
  FDRE \AXI4_MM_IF_GEN.write_req_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\AXI4_MM_IF_GEN.write_req_i_1_n_0 ),
        .Q(\AXI4_MM_IF_GEN.write_req_reg_0 ),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[10]),
        .Q(s_axi_rdata[10]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[11]),
        .Q(s_axi_rdata[11]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[12]),
        .Q(s_axi_rdata[12]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[13]),
        .Q(s_axi_rdata[13]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[14]),
        .Q(s_axi_rdata[14]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[15]),
        .Q(s_axi_rdata[15]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[16] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[16]),
        .Q(s_axi_rdata[16]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[17] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[17]),
        .Q(s_axi_rdata[17]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[18] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[18]),
        .Q(s_axi_rdata[18]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[19] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[19]),
        .Q(s_axi_rdata[19]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[20] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[20]),
        .Q(s_axi_rdata[20]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[21] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[21]),
        .Q(s_axi_rdata[21]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[22] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[22]),
        .Q(s_axi_rdata[22]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[23] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[23]),
        .Q(s_axi_rdata[23]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[24] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[24]),
        .Q(s_axi_rdata[24]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[25] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[25]),
        .Q(s_axi_rdata[25]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[26] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[26]),
        .Q(s_axi_rdata[26]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[27] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[27]),
        .Q(s_axi_rdata[27]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[28] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[28]),
        .Q(s_axi_rdata[28]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[29] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[29]),
        .Q(s_axi_rdata[29]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[30] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[30]),
        .Q(s_axi_rdata[30]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[31]),
        .Q(s_axi_rdata[31]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[5]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[6]),
        .Q(s_axi_rdata[6]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[7]),
        .Q(s_axi_rdata[7]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[8]),
        .Q(s_axi_rdata[8]),
        .R(SR));
  FDRE \AXI4_RDATA_GEN.S_AXI_RDATA_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rready),
        .D(D[9]),
        .Q(s_axi_rdata[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    gie_enable_i_1
       (.I0(s_axi_wdata[2]),
        .I1(\AXI4_MM_IF_GEN.write_req_reg_0 ),
        .I2(s_axi_wvalid),
        .I3(gie_enable_i_2_n_0),
        .I4(p_5_in),
        .O(\s_axi_wdata[31] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFFFFFF)) 
    gie_enable_i_2
       (.I0(\XEMAC_I/reg_access_i ),
        .I1(Q[10]),
        .I2(Q[9]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(gie_enable_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \ping_pkt_lenth[15]_i_1 
       (.I0(\AXI4_MM_IF_GEN.write_req_reg_0 ),
        .I1(s_axi_wvalid),
        .I2(\ping_pkt_lenth[15]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(E));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \ping_pkt_lenth[15]_i_2 
       (.I0(Q[0]),
        .I1(Q[10]),
        .I2(Q[9]),
        .I3(\XEMAC_I/reg_access_i ),
        .O(\ping_pkt_lenth[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFEFFFEFFF2000)) 
    ping_rx_status_i_1
       (.I0(s_axi_wdata[0]),
        .I1(\reg_data_out[15]_i_7_n_0 ),
        .I2(s_axi_wvalid),
        .I3(\AXI4_MM_IF_GEN.write_req_reg_0 ),
        .I4(rx_done),
        .I5(ping_rx_status),
        .O(s_axi_wdata_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ping_soft_status_i_1
       (.I0(s_axi_wdata[2]),
        .I1(tx_intr_en0),
        .I2(ping_soft_status),
        .O(\s_axi_wdata[31]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    ping_tx_status_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(s_axi_wvalid),
        .I3(\AXI4_MM_IF_GEN.write_req_reg_0 ),
        .I4(\ping_pkt_lenth[15]_i_2_n_0 ),
        .O(tx_intr_en0));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[0],1'b0}),
        .O(plusOp[4:1]),
        .S({Q[2:1],plusOp_carry_i_1_n_0,\AXI4_MM_IF_GEN.bus2ip_addr_i_reg_n_0_[1] }));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(Q[6:3]));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({NLW_plusOp_carry__1_CO_UNCONNECTED[3],plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S(Q[10:7]));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_1
       (.I0(Q[0]),
        .O(plusOp_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    reg_access_i_1
       (.I0(\XEMAC_I/reg_access_i ),
        .I1(read_req_d1),
        .I2(s_axi_rready),
        .I3(read_req),
        .I4(reg_access),
        .O(\AXI4_MM_IF_GEN.read_req_d1_reg_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    reg_access_i_2
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[8]),
        .I5(Q[7]),
        .O(\XEMAC_I/reg_access_i ));
  LUT6 #(
    .INIT(64'h00000000EEE20000)) 
    \reg_data_out[0]_i_1 
       (.I0(\reg_data_out_reg[0]_0 ),
        .I1(reg_data_out),
        .I2(\reg_data_out[0]_i_2_n_0 ),
        .I3(\reg_data_out[0]_i_3_n_0 ),
        .I4(s_axi_aresetn),
        .I5(\reg_data_out[31]_i_4_n_0 ),
        .O(\reg_data_out_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_data_out[0]_i_2 
       (.I0(ping_rx_status),
        .I1(\AXI4_MM_IF_GEN.read_req_reg_0 ),
        .I2(\reg_data_out[31]_i_4_n_0 ),
        .O(\reg_data_out[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \reg_data_out[0]_i_3 
       (.I0(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[3]_1 ),
        .I1(\reg_data_out_reg[5]_0 [0]),
        .I2(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .I3(p_11_in[0]),
        .O(\reg_data_out[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF8F)) 
    \reg_data_out[15]_i_1 
       (.I0(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[3]_0 ),
        .I1(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[3]_1 ),
        .I2(s_axi_aresetn),
        .I3(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .O(s_axi_aresetn_2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \reg_data_out[15]_i_2 
       (.I0(bus2ip_rdce),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(\reg_data_out[15]_i_7_n_0 ),
        .O(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFEFFFEFFF)) 
    \reg_data_out[15]_i_4 
       (.I0(\ping_pkt_lenth[15]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(read_req),
        .I4(s_axi_rready),
        .I5(read_req_d1),
        .O(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h0000000088080000)) 
    \reg_data_out[15]_i_5 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(read_req_d1),
        .I3(s_axi_rready),
        .I4(read_req),
        .I5(\ping_pkt_lenth[15]_i_2_n_0 ),
        .O(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \reg_data_out[15]_i_6 
       (.I0(read_req_d1),
        .I1(s_axi_rready),
        .I2(read_req),
        .O(bus2ip_rdce));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \reg_data_out[15]_i_7 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\XEMAC_I/reg_access_i ),
        .O(\reg_data_out[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000E200000000)) 
    \reg_data_out[2]_i_1 
       (.I0(\reg_data_out_reg[2]_0 ),
        .I1(reg_data_out),
        .I2(\reg_data_out_reg[2]_1 ),
        .I3(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[11]_0 ),
        .I4(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .I5(s_axi_aresetn),
        .O(\reg_data_out_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \reg_data_out[30]_i_1 
       (.I0(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[3]_0 ),
        .I1(p_91_in),
        .I2(s_axi_aresetn),
        .I3(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .O(\reg_data_out_reg[30] ));
  LUT6 #(
    .INIT(64'h8A808A8000008A80)) 
    \reg_data_out[31]_i_1 
       (.I0(s_axi_aresetn),
        .I1(\reg_data_out[31]_i_2_n_0 ),
        .I2(reg_data_out),
        .I3(\reg_data_out_reg[31] ),
        .I4(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[3]_0 ),
        .I5(\reg_data_out[31]_i_4_n_0 ),
        .O(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'hAAAACF00)) 
    \reg_data_out[31]_i_2 
       (.I0(ping_soft_status),
        .I1(p_5_in),
        .I2(\reg_data_out[31]_i_4_n_0 ),
        .I3(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[3]_1 ),
        .I4(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .O(\reg_data_out[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_data_out[31]_i_3 
       (.I0(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[3]_0 ),
        .I1(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .O(reg_data_out));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \reg_data_out[31]_i_4 
       (.I0(bus2ip_rdce),
        .I1(Q[0]),
        .I2(\reg_data_out[31]_i_5_n_0 ),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(\XEMAC_I/reg_access_i ),
        .O(\reg_data_out[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \reg_data_out[31]_i_5 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\reg_data_out[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \reg_data_out[3]_i_3 
       (.I0(\reg_data_out[31]_i_4_n_0 ),
        .I1(s_axi_aresetn),
        .O(s_axi_aresetn_1));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h008A)) 
    \reg_data_out[3]_i_4 
       (.I0(read_req),
        .I1(s_axi_rready),
        .I2(read_req_d1),
        .I3(\reg_data_out[15]_i_7_n_0 ),
        .O(\AXI4_MM_IF_GEN.read_req_reg_0 ));
  LUT5 #(
    .INIT(32'h0000E200)) 
    \reg_data_out[4]_i_1 
       (.I0(p_13_in60_in),
        .I1(reg_data_out),
        .I2(\reg_data_out[4]_i_2_n_0 ),
        .I3(s_axi_aresetn),
        .I4(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[11]_0 ),
        .O(\reg_data_out_reg[4] ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \reg_data_out[4]_i_2 
       (.I0(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[11]_0 ),
        .I1(\reg_data_out_reg[5]_0 [1]),
        .I2(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[3]_1 ),
        .I3(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .I4(loopback_en),
        .O(\reg_data_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0401000000000000)) 
    \reg_data_out[4]_i_3 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(\reg_data_out[31]_i_5_n_0 ),
        .I3(Q[0]),
        .I4(\XEMAC_I/reg_access_i ),
        .I5(bus2ip_rdce),
        .O(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h00000000E2E2E222)) 
    \reg_data_out[5]_i_1 
       (.I0(p_16_in70_in),
        .I1(reg_data_out),
        .I2(\reg_data_out[5]_i_2_n_0 ),
        .I3(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[3]_1 ),
        .I4(\reg_data_out_reg[5]_0 [2]),
        .I5(\reg_data_out[5]_i_3_n_0 ),
        .O(\reg_data_out_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \reg_data_out[5]_i_2 
       (.I0(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[11]_0 ),
        .I1(data4),
        .I2(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .I3(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[3]_1 ),
        .O(\reg_data_out[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \reg_data_out[5]_i_3 
       (.I0(s_axi_aresetn),
        .I1(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .I2(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[11]_0 ),
        .O(\reg_data_out[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    rx_intr_en_i_1
       (.I0(s_axi_wdata[1]),
        .I1(\AXI4_MM_IF_GEN.write_req_reg_0 ),
        .I2(s_axi_wvalid),
        .I3(\reg_data_out[15]_i_7_n_0 ),
        .I4(p_7_in),
        .O(\s_axi_wdata[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    tx_intr_en_i_1
       (.I0(s_axi_wdata[1]),
        .I1(tx_intr_en0),
        .I2(p_11_in[1]),
        .O(\s_axi_wdata[3] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h10FF)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_2__0 
       (.I0(Q[10]),
        .I1(Q[9]),
        .I2(\xpm_mem_gen.xpm_memory_inst_1_i_5_n_0 ),
        .I3(s_axi_aresetn),
        .O(enb));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h40FF)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_3 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(\xpm_mem_gen.xpm_memory_inst_1_i_5_n_0 ),
        .I3(s_axi_aresetn),
        .O(\AXI4_MM_IF_GEN.bus2ip_addr_i_reg[11]_1 ));
  LUT3 #(
    .INIT(8'h80)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_3__0 
       (.I0(\AXI4_MM_IF_GEN.write_req_reg_0 ),
        .I1(s_axi_wvalid),
        .I2(s_axi_aresetn),
        .O(web));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_5 
       (.I0(\xpm_mem_gen.xpm_memory_inst_1_i_7_n_0 ),
        .I1(s_axi_wstrb[1]),
        .I2(s_axi_wstrb[0]),
        .I3(s_axi_wstrb[3]),
        .I4(s_axi_wstrb[2]),
        .I5(bus2ip_rdce),
        .O(\xpm_mem_gen.xpm_memory_inst_1_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_7 
       (.I0(s_axi_wvalid),
        .I1(\AXI4_MM_IF_GEN.write_req_reg_0 ),
        .O(\xpm_mem_gen.xpm_memory_inst_1_i_7_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync
   (scndry_out,
    SR,
    phy_rx_clk);
  output scndry_out;
  input [0:0]SR;
  input phy_rx_clk;

  wire [0:0]SR;
  wire phy_rx_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(SR),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0
   (scndry_out,
    SR,
    phy_tx_clk);
  output scndry_out;
  input [0:0]SR;
  input phy_tx_clk;

  wire [0:0]SR;
  wire phy_tx_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(SR),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_1
   (scndry_out,
    phy_tx_clk,
    s_axi_aclk);
  output scndry_out;
  input phy_tx_clk;
  input s_axi_aclk;

  wire phy_tx_clk;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(phy_tx_clk),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_10
   (scndry_out,
    SS,
    phy_rx_clk);
  output scndry_out;
  input [0:0]SS;
  input phy_rx_clk;

  wire [0:0]SS;
  wire phy_rx_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(SS),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0
   (scndry_out,
    prmry_in,
    phy_tx_clk);
  output scndry_out;
  input prmry_in;
  input phy_tx_clk;

  wire phy_tx_clk;
  wire prmry_in;
  wire s_level_out_d1_cdc_to;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0_2
   (scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    phy_tx_clk);
  output scndry_out;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input phy_tx_clk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire phy_tx_clk;
  wire s_level_out_d1_cdc_to;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0_3
   (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0 ,
    scndry_out,
    prmry_in,
    phy_tx_clk);
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0 ;
  input scndry_out;
  input prmry_in;
  input phy_tx_clk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0 ;
  wire phy_tx_clk;
  wire prmry_in;
  wire s_level_out_d1_cdc_to;
  wire scndry_out;
  wire tx_en_i_tx_clk;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(tx_en_i_tx_clk),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    fifo_tx_en_i_1
       (.I0(tx_en_i_tx_clk),
        .I1(scndry_out),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0 ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1
   (scndry_vect_out,
    prmry_vect_in,
    phy_tx_clk);
  output [3:0]scndry_vect_out;
  input [3:0]prmry_vect_in;
  input phy_tx_clk;

  wire phy_tx_clk;
  wire [3:0]prmry_vect_in;
  wire s_level_out_bus_d1_cdc_to_0;
  wire s_level_out_bus_d1_cdc_to_1;
  wire s_level_out_bus_d1_cdc_to_2;
  wire s_level_out_bus_d1_cdc_to_3;
  wire [3:0]scndry_vect_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_0),
        .Q(scndry_vect_out[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_1),
        .Q(scndry_vect_out[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_2),
        .Q(scndry_vect_out[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_3),
        .Q(scndry_vect_out[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(prmry_vect_in[0]),
        .Q(s_level_out_bus_d1_cdc_to_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(prmry_vect_in[1]),
        .Q(s_level_out_bus_d1_cdc_to_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(prmry_vect_in[2]),
        .Q(s_level_out_bus_d1_cdc_to_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(prmry_vect_in[3]),
        .Q(s_level_out_bus_d1_cdc_to_3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2
   (scndry_out,
    prmry_in,
    s_axi_aclk);
  output scndry_out;
  input prmry_in;
  input s_axi_aclk;

  wire prmry_in;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr5bit
   (ifgp1_zero,
    Q,
    zero_i_reg_0,
    s_axi_aclk,
    D,
    \count_reg[2]_0 ,
    \count_reg[0]_0 ,
    E);
  output ifgp1_zero;
  output [1:0]Q;
  input zero_i_reg_0;
  input s_axi_aclk;
  input [1:0]D;
  input [1:0]\count_reg[2]_0 ;
  input \count_reg[0]_0 ;
  input [0:0]E;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:2]count_reg;
  wire \count_reg[0]_0 ;
  wire [1:0]\count_reg[2]_0 ;
  wire ifgp1_zero;
  wire [4:2]p_0_in__0;
  wire s_axi_aclk;
  wire zero_i_i_1_n_0;
  wire zero_i_reg_0;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0001)) 
    \count[0]_i_2__0 
       (.I0(count_reg[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(count_reg[1]),
        .I4(count_reg[0]),
        .I5(\count_reg[0]_0 ),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'hFE010000FE01FE01)) 
    \count[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(count_reg[2]),
        .I3(count_reg[1]),
        .I4(\count_reg[2]_0 [1]),
        .I5(\count_reg[2]_0 [0]),
        .O(p_0_in__0[3]));
  LUT5 #(
    .INIT(32'hE100E1E1)) 
    \count[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(count_reg[2]),
        .I3(\count_reg[2]_0 [1]),
        .I4(\count_reg[2]_0 [0]),
        .O(p_0_in__0[2]));
  FDSE \count_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in__0[4]),
        .Q(count_reg[0]),
        .S(zero_i_reg_0));
  FDSE \count_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in__0[3]),
        .Q(count_reg[1]),
        .S(zero_i_reg_0));
  FDSE \count_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in__0[2]),
        .Q(count_reg[2]),
        .S(zero_i_reg_0));
  FDSE \count_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .S(zero_i_reg_0));
  FDSE \count_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .S(zero_i_reg_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    zero_i_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(count_reg[2]),
        .I3(count_reg[0]),
        .I4(count_reg[1]),
        .O(zero_i_i_1_n_0));
  FDSE zero_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(zero_i_i_1_n_0),
        .Q(ifgp1_zero),
        .S(zero_i_reg_0));
endmodule

(* ORIG_REF_NAME = "cntr5bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr5bit_9
   (ifgp2_zero,
    Q,
    zero_i_reg_0,
    s_axi_aclk,
    D,
    \count_reg[2]_0 ,
    \count_reg[0]_0 ,
    E);
  output ifgp2_zero;
  output [1:0]Q;
  input zero_i_reg_0;
  input s_axi_aclk;
  input [1:0]D;
  input [1:0]\count_reg[2]_0 ;
  input \count_reg[0]_0 ;
  input [0:0]E;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:2]count_reg;
  wire \count_reg[0]_0 ;
  wire [1:0]\count_reg[2]_0 ;
  wire ifgp2_zero;
  wire [4:2]p_0_in;
  wire s_axi_aclk;
  wire zero_i_i_1__0_n_0;
  wire zero_i_reg_0;

  LUT6 #(
    .INIT(64'h00000000FFFE0001)) 
    \count[0]_i_2 
       (.I0(count_reg[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(count_reg[1]),
        .I4(count_reg[0]),
        .I5(\count_reg[0]_0 ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFE01FFFFFE01FE01)) 
    \count[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(count_reg[2]),
        .I3(count_reg[1]),
        .I4(\count_reg[2]_0 [1]),
        .I5(\count_reg[2]_0 [0]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hE100E1E1)) 
    \count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(count_reg[2]),
        .I3(\count_reg[2]_0 [1]),
        .I4(\count_reg[2]_0 [0]),
        .O(p_0_in[2]));
  FDSE \count_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in[4]),
        .Q(count_reg[0]),
        .S(zero_i_reg_0));
  FDSE \count_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in[3]),
        .Q(count_reg[1]),
        .S(zero_i_reg_0));
  FDSE \count_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in[2]),
        .Q(count_reg[2]),
        .S(zero_i_reg_0));
  FDSE \count_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .S(zero_i_reg_0));
  FDSE \count_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .S(zero_i_reg_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    zero_i_i_1__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(count_reg[2]),
        .I3(count_reg[0]),
        .I4(count_reg[1]),
        .O(zero_i_i_1__0_n_0));
  FDSE zero_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(zero_i_i_1__0_n_0),
        .Q(ifgp2_zero),
        .S(zero_i_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_crcgenrx
   (Q,
    R,
    D_0,
    D,
    dout,
    crcokr1,
    s_axi_aresetn,
    rxCrcEn,
    SS,
    E,
    s_axi_aclk);
  output [3:0]Q;
  output R;
  output D_0;
  input [2:0]D;
  input [3:0]dout;
  input crcokr1;
  input s_axi_aresetn;
  input rxCrcEn;
  input [0:0]SS;
  input [0:0]E;
  input s_axi_aclk;

  wire [2:0]D;
  wire D_0;
  wire [0:0]E;
  wire [3:0]Q;
  wire R;
  wire [0:0]SS;
  wire \crc_local[13]_i_2_n_0 ;
  wire \crc_local_reg_n_0_[0] ;
  wire \crc_local_reg_n_0_[27] ;
  wire crcokdelay_i_10_n_0;
  wire crcokdelay_i_3_n_0;
  wire crcokdelay_i_4_n_0;
  wire crcokdelay_i_5_n_0;
  wire crcokdelay_i_6_n_0;
  wire crcokdelay_i_7_n_0;
  wire crcokdelay_i_8_n_0;
  wire crcokdelay_i_9_n_0;
  wire crcokr1;
  wire [3:0]dout;
  wire p_10_in36_in;
  wire p_11_in40_in;
  wire p_12_in43_in;
  wire p_13_in;
  wire p_14_in;
  wire p_15_in62_in;
  wire p_16_in;
  wire p_17_in66_in;
  wire p_18_in;
  wire p_19_in48_in;
  wire p_20_in51_in;
  wire p_21_in;
  wire p_22_in54_in;
  wire p_23_in;
  wire p_24_in69_in;
  wire p_25_in;
  wire p_26_in72_in;
  wire p_27_in;
  wire p_28_in;
  wire p_29_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire p_8_in;
  wire p_9_in32_in;
  wire [29:1]parallel_crc;
  wire rxCrcEn;
  wire s_axi_aclk;
  wire s_axi_aresetn;

  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[10]_i_1 
       (.I0(Q[2]),
        .I1(dout[1]),
        .I2(Q[3]),
        .I3(dout[0]),
        .I4(D[0]),
        .I5(p_9_in32_in),
        .O(parallel_crc[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[11]_i_1 
       (.I0(Q[1]),
        .I1(dout[2]),
        .I2(D[0]),
        .I3(Q[3]),
        .I4(dout[0]),
        .I5(p_10_in36_in),
        .O(parallel_crc[11]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[12]_i_1 
       (.I0(Q[1]),
        .I1(dout[2]),
        .I2(Q[2]),
        .I3(dout[1]),
        .I4(D[0]),
        .I5(p_11_in40_in),
        .O(parallel_crc[12]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[13]_i_1 
       (.I0(p_12_in43_in),
        .I1(dout[0]),
        .I2(Q[3]),
        .I3(dout[1]),
        .I4(Q[2]),
        .I5(\crc_local[13]_i_2_n_0 ),
        .O(parallel_crc[13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_local[13]_i_2 
       (.I0(Q[1]),
        .I1(dout[2]),
        .O(\crc_local[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_local[14]_i_1 
       (.I0(p_13_in),
        .I1(Q[2]),
        .I2(dout[1]),
        .I3(Q[3]),
        .I4(dout[0]),
        .O(parallel_crc[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[15]_i_1 
       (.I0(p_18_in),
        .I1(dout[0]),
        .I2(Q[3]),
        .O(parallel_crc[15]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[16]_i_1 
       (.I0(p_19_in48_in),
        .I1(Q[0]),
        .I2(dout[3]),
        .O(parallel_crc[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[17]_i_1 
       (.I0(p_20_in51_in),
        .I1(dout[2]),
        .I2(Q[1]),
        .O(parallel_crc[17]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[18]_i_1 
       (.I0(p_21_in),
        .I1(dout[1]),
        .I2(Q[2]),
        .O(parallel_crc[18]));
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[19]_i_1 
       (.I0(p_22_in54_in),
        .I1(dout[0]),
        .I2(Q[3]),
        .O(parallel_crc[19]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_local[1]_i_1 
       (.I0(Q[0]),
        .I1(dout[3]),
        .I2(dout[2]),
        .I3(Q[1]),
        .O(parallel_crc[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[22]_i_1 
       (.I0(p_23_in),
        .I1(Q[0]),
        .I2(dout[3]),
        .O(parallel_crc[22]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_local[23]_i_1 
       (.I0(p_14_in),
        .I1(Q[1]),
        .I2(dout[2]),
        .I3(dout[3]),
        .I4(Q[0]),
        .O(parallel_crc[23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_local[24]_i_1 
       (.I0(p_15_in62_in),
        .I1(Q[1]),
        .I2(dout[2]),
        .I3(Q[2]),
        .I4(dout[1]),
        .O(parallel_crc[24]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_local[25]_i_1 
       (.I0(p_16_in),
        .I1(Q[2]),
        .I2(dout[1]),
        .I3(Q[3]),
        .I4(dout[0]),
        .O(parallel_crc[25]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_local[26]_i_1 
       (.I0(p_17_in66_in),
        .I1(Q[3]),
        .I2(dout[0]),
        .I3(dout[3]),
        .I4(Q[0]),
        .O(parallel_crc[26]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[27]_i_1 
       (.I0(p_24_in69_in),
        .I1(dout[2]),
        .I2(Q[1]),
        .O(parallel_crc[27]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[28]_i_1 
       (.I0(p_25_in),
        .I1(dout[1]),
        .I2(Q[2]),
        .O(parallel_crc[28]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[29]_i_1 
       (.I0(p_26_in72_in),
        .I1(dout[0]),
        .I2(Q[3]),
        .O(parallel_crc[29]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[4]_i_1 
       (.I0(Q[2]),
        .I1(dout[1]),
        .I2(Q[3]),
        .I3(dout[0]),
        .I4(D[0]),
        .I5(\crc_local_reg_n_0_[0] ),
        .O(parallel_crc[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[5]_i_1 
       (.I0(Q[3]),
        .I1(dout[0]),
        .I2(D[0]),
        .I3(Q[1]),
        .I4(dout[2]),
        .I5(p_4_in),
        .O(parallel_crc[5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_local[6]_i_1 
       (.I0(p_5_in),
        .I1(Q[1]),
        .I2(dout[2]),
        .I3(Q[2]),
        .I4(dout[1]),
        .O(parallel_crc[6]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[7]_i_1 
       (.I0(Q[2]),
        .I1(dout[1]),
        .I2(Q[3]),
        .I3(dout[0]),
        .I4(D[0]),
        .I5(p_6_in),
        .O(parallel_crc[7]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[8]_i_1 
       (.I0(Q[3]),
        .I1(dout[0]),
        .I2(D[0]),
        .I3(Q[1]),
        .I4(dout[2]),
        .I5(p_7_in),
        .O(parallel_crc[8]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_local[9]_i_1 
       (.I0(p_8_in),
        .I1(Q[1]),
        .I2(dout[2]),
        .I3(Q[2]),
        .I4(dout[1]),
        .O(parallel_crc[9]));
  FDSE \crc_local_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(\crc_local_reg_n_0_[0] ),
        .S(SS));
  FDSE \crc_local_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[10]),
        .Q(p_13_in),
        .S(SS));
  FDSE \crc_local_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[11]),
        .Q(p_18_in),
        .S(SS));
  FDSE \crc_local_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[12]),
        .Q(p_19_in48_in),
        .S(SS));
  FDSE \crc_local_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[13]),
        .Q(p_20_in51_in),
        .S(SS));
  FDSE \crc_local_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[14]),
        .Q(p_21_in),
        .S(SS));
  FDSE \crc_local_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[15]),
        .Q(p_22_in54_in),
        .S(SS));
  FDSE \crc_local_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[16]),
        .Q(p_27_in),
        .S(SS));
  FDSE \crc_local_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[17]),
        .Q(p_28_in),
        .S(SS));
  FDSE \crc_local_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[18]),
        .Q(p_23_in),
        .S(SS));
  FDSE \crc_local_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[19]),
        .Q(p_14_in),
        .S(SS));
  FDSE \crc_local_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[1]),
        .Q(p_4_in),
        .S(SS));
  FDSE \crc_local_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_27_in),
        .Q(p_15_in62_in),
        .S(SS));
  FDSE \crc_local_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_28_in),
        .Q(p_16_in),
        .S(SS));
  FDSE \crc_local_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[22]),
        .Q(p_17_in66_in),
        .S(SS));
  FDSE \crc_local_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[23]),
        .Q(p_24_in69_in),
        .S(SS));
  FDSE \crc_local_reg[24] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[24]),
        .Q(p_25_in),
        .S(SS));
  FDSE \crc_local_reg[25] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[25]),
        .Q(p_26_in72_in),
        .S(SS));
  FDSE \crc_local_reg[26] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[26]),
        .Q(p_29_in),
        .S(SS));
  FDSE \crc_local_reg[27] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[27]),
        .Q(\crc_local_reg_n_0_[27] ),
        .S(SS));
  FDSE \crc_local_reg[28] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[28]),
        .Q(Q[0]),
        .S(SS));
  FDSE \crc_local_reg[29] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[29]),
        .Q(Q[1]),
        .S(SS));
  FDSE \crc_local_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(p_5_in),
        .S(SS));
  FDSE \crc_local_reg[30] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_29_in),
        .Q(Q[2]),
        .S(SS));
  FDSE \crc_local_reg[31] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\crc_local_reg_n_0_[27] ),
        .Q(Q[3]),
        .S(SS));
  FDSE \crc_local_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[2]),
        .Q(p_6_in),
        .S(SS));
  FDSE \crc_local_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[4]),
        .Q(p_7_in),
        .S(SS));
  FDSE \crc_local_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[5]),
        .Q(p_8_in),
        .S(SS));
  FDSE \crc_local_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[6]),
        .Q(p_9_in32_in),
        .S(SS));
  FDSE \crc_local_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[7]),
        .Q(p_10_in36_in),
        .S(SS));
  FDSE \crc_local_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[8]),
        .Q(p_11_in40_in),
        .S(SS));
  FDSE \crc_local_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[9]),
        .Q(p_12_in43_in),
        .S(SS));
  LUT6 #(
    .INIT(64'h7FFF0000FFFFFFFF)) 
    crcokdelay_i_1
       (.I0(crcokdelay_i_3_n_0),
        .I1(crcokdelay_i_4_n_0),
        .I2(crcokdelay_i_5_n_0),
        .I3(crcokdelay_i_6_n_0),
        .I4(crcokr1),
        .I5(s_axi_aresetn),
        .O(R));
  LUT4 #(
    .INIT(16'h8000)) 
    crcokdelay_i_10
       (.I0(p_13_in),
        .I1(p_11_in40_in),
        .I2(p_9_in32_in),
        .I3(p_8_in),
        .O(crcokdelay_i_10_n_0));
  LUT6 #(
    .INIT(64'h80008000FFFF8000)) 
    crcokdelay_i_2
       (.I0(crcokdelay_i_3_n_0),
        .I1(crcokdelay_i_4_n_0),
        .I2(crcokdelay_i_5_n_0),
        .I3(crcokdelay_i_6_n_0),
        .I4(crcokr1),
        .I5(rxCrcEn),
        .O(D_0));
  LUT5 #(
    .INIT(32'h10000000)) 
    crcokdelay_i_3
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(crcokdelay_i_7_n_0),
        .O(crcokdelay_i_3_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    crcokdelay_i_4
       (.I0(p_12_in43_in),
        .I1(p_20_in51_in),
        .I2(p_5_in),
        .I3(p_10_in36_in),
        .I4(crcokdelay_i_8_n_0),
        .O(crcokdelay_i_4_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    crcokdelay_i_5
       (.I0(p_23_in),
        .I1(p_25_in),
        .I2(p_26_in72_in),
        .I3(p_29_in),
        .I4(crcokdelay_i_9_n_0),
        .O(crcokdelay_i_5_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    crcokdelay_i_6
       (.I0(p_6_in),
        .I1(p_7_in),
        .I2(\crc_local_reg_n_0_[0] ),
        .I3(p_4_in),
        .I4(crcokdelay_i_10_n_0),
        .O(crcokdelay_i_6_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    crcokdelay_i_7
       (.I0(\crc_local_reg_n_0_[27] ),
        .I1(p_24_in69_in),
        .I2(p_17_in66_in),
        .I3(p_16_in),
        .O(crcokdelay_i_7_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    crcokdelay_i_8
       (.I0(p_15_in62_in),
        .I1(p_14_in),
        .I2(p_28_in),
        .I3(p_27_in),
        .O(crcokdelay_i_8_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    crcokdelay_i_9
       (.I0(p_22_in54_in),
        .I1(p_21_in),
        .I2(p_19_in48_in),
        .I3(p_18_in),
        .O(crcokdelay_i_9_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_crcgentx
   (Q,
    \nibData_reg[30] ,
    txCrcEn_reg,
    SR,
    E,
    s_axi_aclk);
  output [3:0]Q;
  input [3:0]\nibData_reg[30] ;
  input txCrcEn_reg;
  input [0:0]SR;
  input [0:0]E;
  input s_axi_aclk;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [3:0]\nibData_reg[30] ;
  wire s_axi_aclk;
  wire txCrcEn_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_crcnibshiftreg NSR
       (.E(E),
        .Q(Q),
        .SR(SR),
        .\nibData_reg[30]_0 (\nibData_reg[30] ),
        .s_axi_aclk(s_axi_aclk),
        .txCrcEn_reg(txCrcEn_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_crcnibshiftreg
   (Q,
    \nibData_reg[30]_0 ,
    txCrcEn_reg,
    SR,
    E,
    s_axi_aclk);
  output [3:0]Q;
  input [3:0]\nibData_reg[30]_0 ;
  input txCrcEn_reg;
  input [0:0]SR;
  input [0:0]E;
  input s_axi_aclk;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [31:4]nibData;
  wire \nibData[12]_i_1_n_0 ;
  wire \nibData[13]_i_1_n_0 ;
  wire \nibData[14]_i_1_n_0 ;
  wire \nibData[15]_i_1_n_0 ;
  wire \nibData[16]_i_1_n_0 ;
  wire \nibData[17]_i_1_n_0 ;
  wire \nibData[18]_i_1_n_0 ;
  wire \nibData[19]_i_1_n_0 ;
  wire \nibData[19]_i_2_n_0 ;
  wire \nibData[20]_i_1_n_0 ;
  wire \nibData[21]_i_1_n_0 ;
  wire \nibData[22]_i_1_n_0 ;
  wire \nibData[23]_i_1_n_0 ;
  wire \nibData[24]_i_1_n_0 ;
  wire \nibData[25]_i_1_n_0 ;
  wire \nibData[26]_i_1_n_0 ;
  wire \nibData[26]_i_2_n_0 ;
  wire \nibData[27]_i_1_n_0 ;
  wire \nibData[27]_i_2_n_0 ;
  wire \nibData[28]_i_1_n_0 ;
  wire \nibData[29]_i_1_n_0 ;
  wire \nibData[29]_i_2_n_0 ;
  wire \nibData[2]_i_1_n_0 ;
  wire \nibData[30]_i_1_n_0 ;
  wire \nibData[31]_i_3_n_0 ;
  wire \nibData[3]_i_1_n_0 ;
  wire \nibData[4]_i_1_n_0 ;
  wire \nibData[5]_i_1_n_0 ;
  wire \nibData[6]_i_1_n_0 ;
  wire \nibData[7]_i_1_n_0 ;
  wire \nibData[8]_i_1_n_0 ;
  wire \nibData[9]_i_1_n_0 ;
  wire [3:0]\nibData_reg[30]_0 ;
  wire s_axi_aclk;
  wire txCrcEn_reg;

  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[12]_i_1 
       (.I0(nibData[16]),
        .I1(\nibData_reg[30]_0 [0]),
        .I2(Q[0]),
        .I3(txCrcEn_reg),
        .O(\nibData[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[13]_i_1 
       (.I0(nibData[17]),
        .I1(\nibData_reg[30]_0 [1]),
        .I2(Q[1]),
        .I3(txCrcEn_reg),
        .O(\nibData[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[14]_i_1 
       (.I0(nibData[18]),
        .I1(\nibData_reg[30]_0 [2]),
        .I2(Q[2]),
        .I3(txCrcEn_reg),
        .O(\nibData[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[15]_i_1 
       (.I0(nibData[19]),
        .I1(\nibData_reg[30]_0 [3]),
        .I2(Q[3]),
        .I3(txCrcEn_reg),
        .O(\nibData[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[16]_i_1 
       (.I0(nibData[20]),
        .I1(\nibData_reg[30]_0 [0]),
        .I2(Q[0]),
        .I3(txCrcEn_reg),
        .O(\nibData[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA66A6AA66AA6A66A)) 
    \nibData[17]_i_1 
       (.I0(nibData[21]),
        .I1(txCrcEn_reg),
        .I2(Q[1]),
        .I3(\nibData_reg[30]_0 [1]),
        .I4(Q[0]),
        .I5(\nibData_reg[30]_0 [0]),
        .O(\nibData[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA66A6AA6)) 
    \nibData[18]_i_1 
       (.I0(nibData[22]),
        .I1(txCrcEn_reg),
        .I2(\nibData[26]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\nibData_reg[30]_0 [1]),
        .O(\nibData[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hA66A6AA6)) 
    \nibData[19]_i_1 
       (.I0(nibData[23]),
        .I1(txCrcEn_reg),
        .I2(\nibData[19]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\nibData_reg[30]_0 [1]),
        .O(\nibData[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \nibData[19]_i_2 
       (.I0(Q[3]),
        .I1(\nibData_reg[30]_0 [3]),
        .I2(Q[2]),
        .I3(\nibData_reg[30]_0 [2]),
        .O(\nibData[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96AA69AA)) 
    \nibData[20]_i_1 
       (.I0(nibData[24]),
        .I1(\nibData_reg[30]_0 [3]),
        .I2(Q[3]),
        .I3(txCrcEn_reg),
        .I4(\nibData[26]_i_2_n_0 ),
        .O(\nibData[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96AA69AA)) 
    \nibData[21]_i_1 
       (.I0(nibData[25]),
        .I1(\nibData_reg[30]_0 [3]),
        .I2(Q[3]),
        .I3(txCrcEn_reg),
        .I4(\nibData[27]_i_2_n_0 ),
        .O(\nibData[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA66A6AA66AA6A66A)) 
    \nibData[22]_i_1 
       (.I0(nibData[26]),
        .I1(txCrcEn_reg),
        .I2(\nibData_reg[30]_0 [2]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\nibData_reg[30]_0 [1]),
        .O(\nibData[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96AA69AA)) 
    \nibData[23]_i_1 
       (.I0(nibData[27]),
        .I1(\nibData_reg[30]_0 [3]),
        .I2(Q[3]),
        .I3(txCrcEn_reg),
        .I4(\nibData[26]_i_2_n_0 ),
        .O(\nibData[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h96AA69AA)) 
    \nibData[24]_i_1 
       (.I0(nibData[28]),
        .I1(\nibData_reg[30]_0 [3]),
        .I2(Q[3]),
        .I3(txCrcEn_reg),
        .I4(\nibData[27]_i_2_n_0 ),
        .O(\nibData[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA66A6AA66AA6A66A)) 
    \nibData[25]_i_1 
       (.I0(nibData[29]),
        .I1(txCrcEn_reg),
        .I2(\nibData_reg[30]_0 [2]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\nibData_reg[30]_0 [1]),
        .O(\nibData[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96AA69AA)) 
    \nibData[26]_i_1 
       (.I0(nibData[30]),
        .I1(\nibData_reg[30]_0 [3]),
        .I2(Q[3]),
        .I3(txCrcEn_reg),
        .I4(\nibData[26]_i_2_n_0 ),
        .O(\nibData[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \nibData[26]_i_2 
       (.I0(Q[2]),
        .I1(\nibData_reg[30]_0 [2]),
        .I2(Q[0]),
        .I3(\nibData_reg[30]_0 [0]),
        .O(\nibData[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96AA69AA)) 
    \nibData[27]_i_1 
       (.I0(nibData[31]),
        .I1(\nibData_reg[30]_0 [3]),
        .I2(Q[3]),
        .I3(txCrcEn_reg),
        .I4(\nibData[27]_i_2_n_0 ),
        .O(\nibData[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \nibData[27]_i_2 
       (.I0(Q[1]),
        .I1(\nibData_reg[30]_0 [1]),
        .I2(Q[0]),
        .I3(\nibData_reg[30]_0 [0]),
        .O(\nibData[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8228288228828228)) 
    \nibData[28]_i_1 
       (.I0(txCrcEn_reg),
        .I1(\nibData[29]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(\nibData_reg[30]_0 [2]),
        .I4(Q[0]),
        .I5(\nibData_reg[30]_0 [0]),
        .O(\nibData[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8228288228828228)) 
    \nibData[29]_i_1 
       (.I0(txCrcEn_reg),
        .I1(\nibData[29]_i_2_n_0 ),
        .I2(Q[3]),
        .I3(\nibData_reg[30]_0 [3]),
        .I4(Q[2]),
        .I5(\nibData_reg[30]_0 [2]),
        .O(\nibData[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \nibData[29]_i_2 
       (.I0(\nibData_reg[30]_0 [1]),
        .I1(Q[1]),
        .O(\nibData[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[2]_i_1 
       (.I0(nibData[6]),
        .I1(\nibData_reg[30]_0 [0]),
        .I2(Q[0]),
        .I3(txCrcEn_reg),
        .O(\nibData[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h82282882)) 
    \nibData[30]_i_1 
       (.I0(txCrcEn_reg),
        .I1(\nibData_reg[30]_0 [2]),
        .I2(Q[2]),
        .I3(\nibData_reg[30]_0 [3]),
        .I4(Q[3]),
        .O(\nibData[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \nibData[31]_i_3 
       (.I0(Q[3]),
        .I1(\nibData_reg[30]_0 [3]),
        .I2(txCrcEn_reg),
        .O(\nibData[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[3]_i_1 
       (.I0(nibData[7]),
        .I1(\nibData_reg[30]_0 [1]),
        .I2(Q[1]),
        .I3(txCrcEn_reg),
        .O(\nibData[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[4]_i_1 
       (.I0(nibData[8]),
        .I1(\nibData_reg[30]_0 [2]),
        .I2(Q[2]),
        .I3(txCrcEn_reg),
        .O(\nibData[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h96AA69AA69AA96AA)) 
    \nibData[5]_i_1 
       (.I0(nibData[9]),
        .I1(Q[3]),
        .I2(\nibData_reg[30]_0 [3]),
        .I3(txCrcEn_reg),
        .I4(Q[0]),
        .I5(\nibData_reg[30]_0 [0]),
        .O(\nibData[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA66A6AA66AA6A66A)) 
    \nibData[6]_i_1 
       (.I0(nibData[10]),
        .I1(txCrcEn_reg),
        .I2(Q[1]),
        .I3(\nibData_reg[30]_0 [1]),
        .I4(Q[0]),
        .I5(\nibData_reg[30]_0 [0]),
        .O(\nibData[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA66A6AA66AA6A66A)) 
    \nibData[7]_i_1 
       (.I0(nibData[11]),
        .I1(txCrcEn_reg),
        .I2(\nibData_reg[30]_0 [2]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\nibData_reg[30]_0 [1]),
        .O(\nibData[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA66A6AA66AA6A66A)) 
    \nibData[8]_i_1 
       (.I0(nibData[12]),
        .I1(txCrcEn_reg),
        .I2(Q[3]),
        .I3(\nibData_reg[30]_0 [3]),
        .I4(Q[2]),
        .I5(\nibData_reg[30]_0 [2]),
        .O(\nibData[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[9]_i_1 
       (.I0(nibData[13]),
        .I1(\nibData_reg[30]_0 [3]),
        .I2(Q[3]),
        .I3(txCrcEn_reg),
        .O(\nibData[9]_i_1_n_0 ));
  FDRE \nibData_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(nibData[4]),
        .Q(Q[0]),
        .R(SR));
  FDRE \nibData_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(nibData[14]),
        .Q(nibData[10]),
        .R(SR));
  FDRE \nibData_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(nibData[15]),
        .Q(nibData[11]),
        .R(SR));
  FDRE \nibData_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[12]_i_1_n_0 ),
        .Q(nibData[12]),
        .R(SR));
  FDRE \nibData_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[13]_i_1_n_0 ),
        .Q(nibData[13]),
        .R(SR));
  FDRE \nibData_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[14]_i_1_n_0 ),
        .Q(nibData[14]),
        .R(SR));
  FDRE \nibData_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[15]_i_1_n_0 ),
        .Q(nibData[15]),
        .R(SR));
  FDRE \nibData_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[16]_i_1_n_0 ),
        .Q(nibData[16]),
        .R(SR));
  FDRE \nibData_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[17]_i_1_n_0 ),
        .Q(nibData[17]),
        .R(SR));
  FDRE \nibData_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[18]_i_1_n_0 ),
        .Q(nibData[18]),
        .R(SR));
  FDRE \nibData_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[19]_i_1_n_0 ),
        .Q(nibData[19]),
        .R(SR));
  FDRE \nibData_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(nibData[5]),
        .Q(Q[1]),
        .R(SR));
  FDRE \nibData_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[20]_i_1_n_0 ),
        .Q(nibData[20]),
        .R(SR));
  FDRE \nibData_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[21]_i_1_n_0 ),
        .Q(nibData[21]),
        .R(SR));
  FDRE \nibData_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[22]_i_1_n_0 ),
        .Q(nibData[22]),
        .R(SR));
  FDRE \nibData_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[23]_i_1_n_0 ),
        .Q(nibData[23]),
        .R(SR));
  FDRE \nibData_reg[24] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[24]_i_1_n_0 ),
        .Q(nibData[24]),
        .R(SR));
  FDRE \nibData_reg[25] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[25]_i_1_n_0 ),
        .Q(nibData[25]),
        .R(SR));
  FDRE \nibData_reg[26] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[26]_i_1_n_0 ),
        .Q(nibData[26]),
        .R(SR));
  FDRE \nibData_reg[27] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[27]_i_1_n_0 ),
        .Q(nibData[27]),
        .R(SR));
  FDRE \nibData_reg[28] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[28]_i_1_n_0 ),
        .Q(nibData[28]),
        .R(SR));
  FDRE \nibData_reg[29] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[29]_i_1_n_0 ),
        .Q(nibData[29]),
        .R(SR));
  FDRE \nibData_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \nibData_reg[30] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[30]_i_1_n_0 ),
        .Q(nibData[30]),
        .R(SR));
  FDRE \nibData_reg[31] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[31]_i_3_n_0 ),
        .Q(nibData[31]),
        .R(SR));
  FDRE \nibData_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \nibData_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[4]_i_1_n_0 ),
        .Q(nibData[4]),
        .R(SR));
  FDRE \nibData_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[5]_i_1_n_0 ),
        .Q(nibData[5]),
        .R(SR));
  FDRE \nibData_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[6]_i_1_n_0 ),
        .Q(nibData[6]),
        .R(SR));
  FDRE \nibData_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[7]_i_1_n_0 ),
        .Q(nibData[7]),
        .R(SR));
  FDRE \nibData_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[8]_i_1_n_0 ),
        .Q(nibData[8]),
        .R(SR));
  FDRE \nibData_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[9]_i_1_n_0 ),
        .Q(nibData[9]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_defer_state
   (Q,
    D,
    \FSM_sequential_thisState_reg[0]_0 ,
    E,
    zero_i_reg,
    \FSM_sequential_thisState_reg[0]_1 ,
    D24_out,
    D23_out,
    ifgp1_zero,
    phy_crs_d2,
    \FSM_sequential_thisState_reg[1]_0 ,
    ifgp2_zero,
    \count_reg[3] ,
    \count_reg[3]_0 ,
    tx_clk_reg_d2,
    tx_clk_reg_d3,
    ldLngthCntr,
    STATE8A,
    enblPreamble,
    lngthDelay1,
    \FSM_sequential_thisState_reg[1]_1 ,
    s_axi_aclk);
  output [1:0]Q;
  output [1:0]D;
  output [1:0]\FSM_sequential_thisState_reg[0]_0 ;
  output [0:0]E;
  output [0:0]zero_i_reg;
  output \FSM_sequential_thisState_reg[0]_1 ;
  output D24_out;
  output D23_out;
  input ifgp1_zero;
  input phy_crs_d2;
  input \FSM_sequential_thisState_reg[1]_0 ;
  input ifgp2_zero;
  input [1:0]\count_reg[3] ;
  input [1:0]\count_reg[3]_0 ;
  input tx_clk_reg_d2;
  input tx_clk_reg_d3;
  input ldLngthCntr;
  input STATE8A;
  input enblPreamble;
  input lngthDelay1;
  input \FSM_sequential_thisState_reg[1]_1 ;
  input s_axi_aclk;

  wire [1:0]D;
  wire D23_out;
  wire D24_out;
  wire [0:0]E;
  wire [1:0]\FSM_sequential_thisState_reg[0]_0 ;
  wire \FSM_sequential_thisState_reg[0]_1 ;
  wire \FSM_sequential_thisState_reg[1]_0 ;
  wire \FSM_sequential_thisState_reg[1]_1 ;
  wire [1:0]Q;
  wire STATE8A;
  wire [1:0]\count_reg[3] ;
  wire [1:0]\count_reg[3]_0 ;
  wire enblPreamble;
  wire ifgp1_zero;
  wire ifgp2_zero;
  wire ldLngthCntr;
  wire lngthDelay1;
  wire [1:0]nextState;
  wire phy_crs_d2;
  wire s_axi_aclk;
  wire tx_clk_reg_d2;
  wire tx_clk_reg_d3;
  wire [0:0]zero_i_reg;

  LUT5 #(
    .INIT(32'h73707373)) 
    \FSM_sequential_thisState[0]_i_1 
       (.I0(ifgp1_zero),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(phy_crs_d2),
        .I4(\FSM_sequential_thisState_reg[1]_0 ),
        .O(nextState[0]));
  LUT5 #(
    .INIT(32'hAA00AEAA)) 
    \FSM_sequential_thisState[1]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_sequential_thisState_reg[1]_0 ),
        .I2(ifgp1_zero),
        .I3(Q[0]),
        .I4(ifgp2_zero),
        .O(nextState[1]));
  (* FSM_ENCODED_STATES = "startifgp1cnt:11,startifgp2cnt:10,cntdone:00,loadcntr:01" *) 
  FDSE \FSM_sequential_thisState_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(nextState[0]),
        .Q(Q[0]),
        .S(\FSM_sequential_thisState_reg[1]_1 ));
  (* FSM_ENCODED_STATES = "startifgp1cnt:11,startifgp2cnt:10,cntdone:00,loadcntr:01" *) 
  FDRE \FSM_sequential_thisState_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(nextState[1]),
        .Q(Q[1]),
        .R(\FSM_sequential_thisState_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hFFE0)) 
    STATE7A_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(ldLngthCntr),
        .I3(lngthDelay1),
        .O(D23_out));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    STATE8A_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(ldLngthCntr),
        .I3(STATE8A),
        .I4(enblPreamble),
        .O(D24_out));
  LUT6 #(
    .INIT(64'h0020FFFF00200000)) 
    \count[0]_i_1 
       (.I0(tx_clk_reg_d2),
        .I1(tx_clk_reg_d3),
        .I2(ifgp1_zero),
        .I3(ifgp2_zero),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \count[0]_i_1__0 
       (.I0(ifgp1_zero),
        .I1(tx_clk_reg_d2),
        .I2(tx_clk_reg_d3),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(zero_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\FSM_sequential_thisState_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    \count[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\count_reg[3] [0]),
        .I3(\count_reg[3] [1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hD00D)) 
    \count[3]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\count_reg[3]_0 [0]),
        .I3(\count_reg[3]_0 [1]),
        .O(\FSM_sequential_thisState_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \count[4]_i_1 
       (.I0(\count_reg[3] [0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \count[4]_i_1__0 
       (.I0(\count_reg[3]_0 [0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\FSM_sequential_thisState_reg[0]_0 [0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_deferral
   (D24_out,
    D23_out,
    zero_i_reg,
    s_axi_aclk,
    phy_crs_d2,
    \FSM_sequential_thisState_reg[1] ,
    tx_clk_reg_d2,
    tx_clk_reg_d3,
    ldLngthCntr,
    STATE8A,
    enblPreamble,
    lngthDelay1);
  output D24_out;
  output D23_out;
  input zero_i_reg;
  input s_axi_aclk;
  input phy_crs_d2;
  input \FSM_sequential_thisState_reg[1] ;
  input tx_clk_reg_d2;
  input tx_clk_reg_d3;
  input ldLngthCntr;
  input STATE8A;
  input enblPreamble;
  input lngthDelay1;

  wire D23_out;
  wire D24_out;
  wire \FSM_sequential_thisState_reg[1] ;
  wire STATE8A;
  wire [3:4]count_reg;
  wire [3:4]count_reg_0;
  wire enblPreamble;
  wire ifgp1_zero;
  wire ifgp2_zero;
  wire inst_deferral_state_n_6;
  wire inst_deferral_state_n_7;
  wire inst_deferral_state_n_8;
  wire ldLngthCntr;
  wire lngthDelay1;
  wire [1:0]p_0_in;
  wire [1:0]p_0_in__0;
  wire phy_crs_d2;
  wire s_axi_aclk;
  wire [1:0]thisState;
  wire tx_clk_reg_d2;
  wire tx_clk_reg_d3;
  wire zero_i_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_defer_state inst_deferral_state
       (.D(p_0_in),
        .D23_out(D23_out),
        .D24_out(D24_out),
        .E(inst_deferral_state_n_6),
        .\FSM_sequential_thisState_reg[0]_0 (p_0_in__0),
        .\FSM_sequential_thisState_reg[0]_1 (inst_deferral_state_n_8),
        .\FSM_sequential_thisState_reg[1]_0 (\FSM_sequential_thisState_reg[1] ),
        .\FSM_sequential_thisState_reg[1]_1 (zero_i_reg),
        .Q(thisState),
        .STATE8A(STATE8A),
        .\count_reg[3] ({count_reg_0[3],count_reg_0[4]}),
        .\count_reg[3]_0 ({count_reg[3],count_reg[4]}),
        .enblPreamble(enblPreamble),
        .ifgp1_zero(ifgp1_zero),
        .ifgp2_zero(ifgp2_zero),
        .ldLngthCntr(ldLngthCntr),
        .lngthDelay1(lngthDelay1),
        .phy_crs_d2(phy_crs_d2),
        .s_axi_aclk(s_axi_aclk),
        .tx_clk_reg_d2(tx_clk_reg_d2),
        .tx_clk_reg_d3(tx_clk_reg_d3),
        .zero_i_reg(inst_deferral_state_n_7));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr5bit inst_ifgp1_count
       (.D(p_0_in__0),
        .E(inst_deferral_state_n_7),
        .Q({count_reg[3],count_reg[4]}),
        .\count_reg[0]_0 (inst_deferral_state_n_8),
        .\count_reg[2]_0 (thisState),
        .ifgp1_zero(ifgp1_zero),
        .s_axi_aclk(s_axi_aclk),
        .zero_i_reg_0(zero_i_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr5bit_9 inst_ifgp2_count
       (.D(p_0_in),
        .E(inst_deferral_state_n_6),
        .Q({count_reg_0[3],count_reg_0[4]}),
        .\count_reg[0]_0 (inst_deferral_state_n_8),
        .\count_reg[2]_0 (thisState),
        .ifgp2_zero(ifgp2_zero),
        .s_axi_aclk(s_axi_aclk),
        .zero_i_reg_0(zero_i_reg));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axi_ethernetlite_0_0,axi_ethernetlite,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_ethernetlite,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_aclk,
    s_axi_aresetn,
    ip2intc_irpt,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awcache,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arcache,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    phy_tx_clk,
    phy_rx_clk,
    phy_crs,
    phy_dv,
    phy_rx_data,
    phy_col,
    phy_rx_er,
    phy_rst_n,
    phy_tx_en,
    phy_tx_data);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_CLK_COMMON_0_axi_periph_clk, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME interrupt, SUGGESTED_PRIORITY HIGH, SENSITIVITY EDGE_RISING, PortWidth 1" *) output ip2intc_irpt;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 13, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_CLK_COMMON_0_axi_periph_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [12:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [12:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII TX_CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME MII, BOARD.ASSOCIATED_PARAM MII_BOARD_INTERFACE" *) input phy_tx_clk;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RX_CLK" *) input phy_rx_clk;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII CRS" *) input phy_crs;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RX_DV" *) input phy_dv;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RXD" *) input [3:0]phy_rx_data;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII COL" *) input phy_col;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RX_ER" *) input phy_rx_er;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RST_N" *) output phy_rst_n;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII TX_EN" *) output phy_tx_en;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII TXD" *) output [3:0]phy_tx_data;

  wire ip2intc_irpt;
  wire phy_col;
  wire phy_crs;
  wire phy_dv;
  wire phy_rst_n;
  wire phy_rx_clk;
  wire [3:0]phy_rx_data;
  wire phy_rx_er;
  wire phy_tx_clk;
  wire [3:0]phy_tx_data;
  wire phy_tx_en;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire s_axi_aresetn;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_phy_mdc_UNCONNECTED;
  wire NLW_U0_phy_mdio_o_UNCONNECTED;
  wire NLW_U0_phy_mdio_t_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;

  (* C_DUPLEX = "1" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_INCLUDE_GLOBAL_BUFFERS = "0" *) 
  (* C_INCLUDE_INTERNAL_LOOPBACK = "0" *) 
  (* C_INCLUDE_MDIO = "0" *) 
  (* C_INSTANCE = "axi_ethernetlite_inst" *) 
  (* C_RX_PING_PONG = "0" *) 
  (* C_SELECT_XPM = "1" *) 
  (* C_S_AXI_ACLK_PERIOD_PS = "10000" *) 
  (* C_S_AXI_ADDR_WIDTH = "13" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ID_WIDTH = "1" *) 
  (* C_S_AXI_PROTOCOL = "AXI4" *) 
  (* C_TX_PING_PONG = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ethernetlite U0
       (.ip2intc_irpt(ip2intc_irpt),
        .phy_col(phy_col),
        .phy_crs(phy_crs),
        .phy_dv(phy_dv),
        .phy_mdc(NLW_U0_phy_mdc_UNCONNECTED),
        .phy_mdio_i(1'b0),
        .phy_mdio_o(NLW_U0_phy_mdio_o_UNCONNECTED),
        .phy_mdio_t(NLW_U0_phy_mdio_t_UNCONNECTED),
        .phy_rst_n(phy_rst_n),
        .phy_rx_clk(phy_rx_clk),
        .phy_rx_data(phy_rx_data),
        .phy_rx_er(phy_rx_er),
        .phy_tx_clk(phy_tx_clk),
        .phy_tx_data(phy_tx_data),
        .phy_tx_en(phy_tx_en),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emac_dpram
   (D,
    s_axi_aclk,
    \gen_wr_b.gen_word_wide.mem_reg ,
    \gen_wr_b.gen_word_wide.mem_reg_0 ,
    addra,
    dout,
    \gen_wr_b.gen_word_wide.mem_reg_1 ,
    web,
    Q,
    s_axi_wdata,
    ena,
    wea,
    tx_ping_data_out,
    \AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ,
    \AXI4_RDATA_GEN.S_AXI_RDATA_reg[0] ,
    p_4_in34_in,
    \AXI4_RDATA_GEN.S_AXI_RDATA_reg[2] ,
    p_10_in,
    p_13_in60_in,
    p_16_in70_in,
    p_19_in78_in,
    p_22_in,
    p_25_in97_in,
    p_28_in107_in,
    p_31_in,
    p_34_in,
    p_37_in,
    p_40_in,
    p_43_in,
    p_46_in,
    \AXI4_RDATA_GEN.S_AXI_RDATA_reg[30] ,
    \AXI4_RDATA_GEN.S_AXI_RDATA_reg[31]_0 );
  output [31:0]D;
  input s_axi_aclk;
  input \gen_wr_b.gen_word_wide.mem_reg ;
  input [0:0]\gen_wr_b.gen_word_wide.mem_reg_0 ;
  input [10:0]addra;
  input [3:0]dout;
  input \gen_wr_b.gen_word_wide.mem_reg_1 ;
  input [0:0]web;
  input [10:0]Q;
  input [31:0]s_axi_wdata;
  input ena;
  input [0:0]wea;
  input [31:0]tx_ping_data_out;
  input \AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ;
  input \AXI4_RDATA_GEN.S_AXI_RDATA_reg[0] ;
  input p_4_in34_in;
  input \AXI4_RDATA_GEN.S_AXI_RDATA_reg[2] ;
  input p_10_in;
  input p_13_in60_in;
  input p_16_in70_in;
  input p_19_in78_in;
  input p_22_in;
  input p_25_in97_in;
  input p_28_in107_in;
  input p_31_in;
  input p_34_in;
  input p_37_in;
  input p_40_in;
  input p_43_in;
  input p_46_in;
  input \AXI4_RDATA_GEN.S_AXI_RDATA_reg[30] ;
  input \AXI4_RDATA_GEN.S_AXI_RDATA_reg[31]_0 ;

  wire \AXI4_RDATA_GEN.S_AXI_RDATA_reg[0] ;
  wire \AXI4_RDATA_GEN.S_AXI_RDATA_reg[2] ;
  wire \AXI4_RDATA_GEN.S_AXI_RDATA_reg[30] ;
  wire \AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ;
  wire \AXI4_RDATA_GEN.S_AXI_RDATA_reg[31]_0 ;
  wire [31:0]D;
  wire [3:0]Data_out_a_2;
  wire [10:0]Q;
  wire [10:0]addra;
  wire [3:0]dout;
  wire [3:0]douta;
  wire ena;
  wire \gen_wr_b.gen_word_wide.mem_reg ;
  wire [0:0]\gen_wr_b.gen_word_wide.mem_reg_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_1 ;
  wire p_10_in;
  wire p_13_in60_in;
  wire p_16_in70_in;
  wire p_19_in78_in;
  wire p_22_in;
  wire p_25_in97_in;
  wire p_28_in107_in;
  wire p_31_in;
  wire p_34_in;
  wire p_37_in;
  wire p_40_in;
  wire p_43_in;
  wire p_46_in;
  wire p_4_in34_in;
  wire [31:0]rx_ping_data_out;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire [31:0]tx_ping_data_out;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterrb_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterrb_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterrb_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterrb_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFF514000005140)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[0]_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(rx_ping_data_out[0]),
        .I3(tx_ping_data_out[0]),
        .I4(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I5(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[0] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFF514000005140)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[10]_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(rx_ping_data_out[10]),
        .I3(tx_ping_data_out[10]),
        .I4(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I5(p_31_in),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFF514000005140)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[11]_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(rx_ping_data_out[11]),
        .I3(tx_ping_data_out[11]),
        .I4(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I5(p_34_in),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFF514000005140)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[12]_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(rx_ping_data_out[12]),
        .I3(tx_ping_data_out[12]),
        .I4(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I5(p_37_in),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFF514000005140)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[13]_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(rx_ping_data_out[13]),
        .I3(tx_ping_data_out[13]),
        .I4(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I5(p_40_in),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFF514000005140)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[14]_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(rx_ping_data_out[14]),
        .I3(tx_ping_data_out[14]),
        .I4(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I5(p_43_in),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hFFFF514000005140)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[15]_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(rx_ping_data_out[15]),
        .I3(tx_ping_data_out[15]),
        .I4(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I5(p_46_in),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hAA00AACCAA00AAF0)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[16]_i_1 
       (.I0(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[30] ),
        .I1(rx_ping_data_out[16]),
        .I2(tx_ping_data_out[16]),
        .I3(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hAA00AACCAA00AAF0)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[17]_i_1 
       (.I0(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[30] ),
        .I1(rx_ping_data_out[17]),
        .I2(tx_ping_data_out[17]),
        .I3(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hAA00AACCAA00AAF0)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[18]_i_1 
       (.I0(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[30] ),
        .I1(rx_ping_data_out[18]),
        .I2(tx_ping_data_out[18]),
        .I3(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hAA00AACCAA00AAF0)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[19]_i_1 
       (.I0(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[30] ),
        .I1(rx_ping_data_out[19]),
        .I2(tx_ping_data_out[19]),
        .I3(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hFFFF514000005140)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[1]_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(rx_ping_data_out[1]),
        .I3(tx_ping_data_out[1]),
        .I4(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I5(p_4_in34_in),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAA00AACCAA00AAF0)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[20]_i_1 
       (.I0(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[30] ),
        .I1(rx_ping_data_out[20]),
        .I2(tx_ping_data_out[20]),
        .I3(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hAA00AACCAA00AAF0)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[21]_i_1 
       (.I0(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[30] ),
        .I1(rx_ping_data_out[21]),
        .I2(tx_ping_data_out[21]),
        .I3(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hAA00AACCAA00AAF0)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[22]_i_1 
       (.I0(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[30] ),
        .I1(rx_ping_data_out[22]),
        .I2(tx_ping_data_out[22]),
        .I3(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hAA00AACCAA00AAF0)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[23]_i_1 
       (.I0(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[30] ),
        .I1(rx_ping_data_out[23]),
        .I2(tx_ping_data_out[23]),
        .I3(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hAA00AACCAA00AAF0)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[24]_i_1 
       (.I0(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[30] ),
        .I1(rx_ping_data_out[24]),
        .I2(tx_ping_data_out[24]),
        .I3(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hAA00AACCAA00AAF0)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[25]_i_1 
       (.I0(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[30] ),
        .I1(rx_ping_data_out[25]),
        .I2(tx_ping_data_out[25]),
        .I3(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hAA00AACCAA00AAF0)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[26]_i_1 
       (.I0(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[30] ),
        .I1(rx_ping_data_out[26]),
        .I2(tx_ping_data_out[26]),
        .I3(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hAA00AACCAA00AAF0)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[27]_i_1 
       (.I0(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[30] ),
        .I1(rx_ping_data_out[27]),
        .I2(tx_ping_data_out[27]),
        .I3(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hAA00AACCAA00AAF0)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[28]_i_1 
       (.I0(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[30] ),
        .I1(rx_ping_data_out[28]),
        .I2(tx_ping_data_out[28]),
        .I3(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hAA00AACCAA00AAF0)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[29]_i_1 
       (.I0(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[30] ),
        .I1(rx_ping_data_out[29]),
        .I2(tx_ping_data_out[29]),
        .I3(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hFFFF514000005140)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[2]_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(rx_ping_data_out[2]),
        .I3(tx_ping_data_out[2]),
        .I4(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I5(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[2] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAA00AACCAA00AAF0)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[30]_i_1 
       (.I0(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[30] ),
        .I1(rx_ping_data_out[30]),
        .I2(tx_ping_data_out[30]),
        .I3(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hFFFF514000005140)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[31]_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(rx_ping_data_out[31]),
        .I3(tx_ping_data_out[31]),
        .I4(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I5(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31]_0 ),
        .O(D[31]));
  LUT6 #(
    .INIT(64'hFFFF514000005140)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[3]_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(rx_ping_data_out[3]),
        .I3(tx_ping_data_out[3]),
        .I4(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I5(p_10_in),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFF514000005140)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[4]_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(rx_ping_data_out[4]),
        .I3(tx_ping_data_out[4]),
        .I4(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I5(p_13_in60_in),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFF514000005140)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[5]_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(rx_ping_data_out[5]),
        .I3(tx_ping_data_out[5]),
        .I4(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I5(p_16_in70_in),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFF514000005140)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[6]_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(rx_ping_data_out[6]),
        .I3(tx_ping_data_out[6]),
        .I4(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I5(p_19_in78_in),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFF514000005140)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[7]_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(rx_ping_data_out[7]),
        .I3(tx_ping_data_out[7]),
        .I4(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I5(p_22_in),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFF514000005140)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[8]_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(rx_ping_data_out[8]),
        .I3(tx_ping_data_out[8]),
        .I4(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I5(p_25_in97_in),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFF514000005140)) 
    \AXI4_RDATA_GEN.S_AXI_RDATA[9]_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(rx_ping_data_out[9]),
        .I3(tx_ping_data_out[9]),
        .I4(\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] ),
        .I5(p_28_in107_in),
        .O(D[9]));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "blockram" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* P_CLOCKING_MODE = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_MEMORY_OPTIMIZATION = "1" *) 
  (* P_MEMORY_PRIMITIVE = "2" *) 
  (* P_WAKEUP_TIME = "0" *) 
  (* P_WRITE_MODE_A = "1" *) 
  (* P_WRITE_MODE_B = "1" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* WAKEUP_TIME = "disable_sleep" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "read_first" *) 
  (* WRITE_MODE_B = "read_first" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram__4 \xpm_mem_gen.xpm_memory_inst_1 
       (.addra(addra),
        .addrb(Q[8:0]),
        .clka(s_axi_aclk),
        .clkb(s_axi_aclk),
        .dbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterrb_UNCONNECTED ),
        .dina(dout),
        .dinb(s_axi_wdata[15:0]),
        .douta(douta),
        .doutb(rx_ping_data_out[15:0]),
        .ena(\gen_wr_b.gen_word_wide.mem_reg ),
        .enb(\gen_wr_b.gen_word_wide.mem_reg_1 ),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rstb(1'b0),
        .sbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterrb_UNCONNECTED ),
        .sleep(1'b0),
        .wea(\gen_wr_b.gen_word_wide.mem_reg_0 ),
        .web(web));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "blockram" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* P_CLOCKING_MODE = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_MEMORY_OPTIMIZATION = "1" *) 
  (* P_MEMORY_PRIMITIVE = "2" *) 
  (* P_WAKEUP_TIME = "0" *) 
  (* P_WRITE_MODE_A = "1" *) 
  (* P_WRITE_MODE_B = "1" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* WAKEUP_TIME = "disable_sleep" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "read_first" *) 
  (* WRITE_MODE_B = "read_first" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram \xpm_mem_gen.xpm_memory_inst_2 
       (.addra(addra),
        .addrb(Q[8:0]),
        .clka(s_axi_aclk),
        .clkb(s_axi_aclk),
        .dbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterrb_UNCONNECTED ),
        .dina(dout),
        .dinb(s_axi_wdata[31:16]),
        .douta(Data_out_a_2),
        .doutb(rx_ping_data_out[31:16]),
        .ena(ena),
        .enb(\gen_wr_b.gen_word_wide.mem_reg_1 ),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rstb(1'b0),
        .sbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterrb_UNCONNECTED ),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "emac_dpram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emac_dpram__xdcDup__1
   (douta,
    tx_ping_data_out,
    \gen_wr_b.gen_word_wide.mem_reg ,
    select_2,
    \gen_wr_b.gen_word_wide.mem_reg_0 ,
    STATE0A,
    D,
    s_axi_aclk,
    \gen_wr_b.gen_word_wide.mem_reg_1 ,
    tx_DPM_adr,
    enb,
    web,
    Q,
    s_axi_wdata,
    \gen_wr_b.gen_word_wide.mem_reg_2 ,
    \xpm_mem_gen.select_2_reg_0 ,
    tx_idle,
    \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ,
    \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I );
  output [1:0]douta;
  output [31:0]tx_ping_data_out;
  output [1:0]\gen_wr_b.gen_word_wide.mem_reg ;
  output select_2;
  output \gen_wr_b.gen_word_wide.mem_reg_0 ;
  output STATE0A;
  output [3:0]D;
  input s_axi_aclk;
  input \gen_wr_b.gen_word_wide.mem_reg_1 ;
  input [11:0]tx_DPM_adr;
  input enb;
  input [0:0]web;
  input [8:0]Q;
  input [31:0]s_axi_wdata;
  input \gen_wr_b.gen_word_wide.mem_reg_2 ;
  input \xpm_mem_gen.select_2_reg_0 ;
  input tx_idle;
  input \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  input \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;

  wire [3:0]D;
  wire [1:0]Data_out_a_2;
  wire \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  wire \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  wire [8:0]Q;
  wire STATE0A;
  wire [1:0]douta;
  wire [1:0]douta_0;
  wire enb;
  wire [1:0]\gen_wr_b.gen_word_wide.mem_reg ;
  wire \gen_wr_b.gen_word_wide.mem_reg_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_1 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_2 ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire select_2;
  wire [11:0]tx_DPM_adr;
  wire tx_idle;
  wire [31:0]tx_ping_data_out;
  wire [0:0]web;
  wire \xpm_mem_gen.select_2_reg_0 ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterrb_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterrb_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterrb_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterrb_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hDDDFFDFF)) 
    \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ),
        .I1(tx_idle),
        .I2(select_2),
        .I3(douta_0[1]),
        .I4(Data_out_a_2[1]),
        .O(STATE0A));
  LUT6 #(
    .INIT(64'hFF53FFFF00000000)) 
    \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(Data_out_a_2[0]),
        .I1(douta_0[0]),
        .I2(select_2),
        .I3(tx_idle),
        .I4(\GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ),
        .I5(\GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ),
        .O(\gen_wr_b.gen_word_wide.mem_reg_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    ram16x1_0_i_1
       (.I0(Data_out_a_2[0]),
        .I1(douta_0[0]),
        .I2(select_2),
        .I3(tx_idle),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h00AC)) 
    ram16x1_1_i_1
       (.I0(Data_out_a_2[1]),
        .I1(douta_0[1]),
        .I2(select_2),
        .I3(tx_idle),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h00AC)) 
    ram16x1_2_i_1
       (.I0(\gen_wr_b.gen_word_wide.mem_reg [0]),
        .I1(douta[0]),
        .I2(select_2),
        .I3(tx_idle),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h00AC)) 
    ram16x1_3_i_1
       (.I0(\gen_wr_b.gen_word_wide.mem_reg [1]),
        .I1(douta[1]),
        .I2(select_2),
        .I3(tx_idle),
        .O(D[3]));
  FDRE \xpm_mem_gen.select_2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_DPM_adr[2]),
        .Q(select_2),
        .R(\xpm_mem_gen.select_2_reg_0 ));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "blockram" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* P_CLOCKING_MODE = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_MEMORY_OPTIMIZATION = "1" *) 
  (* P_MEMORY_PRIMITIVE = "2" *) 
  (* P_WAKEUP_TIME = "0" *) 
  (* P_WRITE_MODE_A = "1" *) 
  (* P_WRITE_MODE_B = "1" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* WAKEUP_TIME = "disable_sleep" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "read_first" *) 
  (* WRITE_MODE_B = "read_first" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram__2 \xpm_mem_gen.xpm_memory_inst_1 
       (.addra({tx_DPM_adr[11:3],tx_DPM_adr[1:0]}),
        .addrb(Q),
        .clka(s_axi_aclk),
        .clkb(s_axi_aclk),
        .dbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterrb_UNCONNECTED ),
        .dina({1'b0,1'b0,1'b0,1'b0}),
        .dinb(s_axi_wdata[15:0]),
        .douta({douta,douta_0}),
        .doutb(tx_ping_data_out[15:0]),
        .ena(\gen_wr_b.gen_word_wide.mem_reg_1 ),
        .enb(enb),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rstb(1'b0),
        .sbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterrb_UNCONNECTED ),
        .sleep(1'b0),
        .wea(1'b0),
        .web(web));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "blockram" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* P_CLOCKING_MODE = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_MEMORY_OPTIMIZATION = "1" *) 
  (* P_MEMORY_PRIMITIVE = "2" *) 
  (* P_WAKEUP_TIME = "0" *) 
  (* P_WRITE_MODE_A = "1" *) 
  (* P_WRITE_MODE_B = "1" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* WAKEUP_TIME = "disable_sleep" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "read_first" *) 
  (* WRITE_MODE_B = "read_first" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram__3 \xpm_mem_gen.xpm_memory_inst_2 
       (.addra({tx_DPM_adr[11:3],tx_DPM_adr[1:0]}),
        .addrb(Q),
        .clka(s_axi_aclk),
        .clkb(s_axi_aclk),
        .dbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterrb_UNCONNECTED ),
        .dina({1'b0,1'b0,1'b0,1'b0}),
        .dinb(s_axi_wdata[31:16]),
        .douta({\gen_wr_b.gen_word_wide.mem_reg ,Data_out_a_2}),
        .doutb(tx_ping_data_out[31:16]),
        .ena(\gen_wr_b.gen_word_wide.mem_reg_2 ),
        .enb(enb),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rstb(1'b0),
        .sbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterrb_UNCONNECTED ),
        .sleep(1'b0),
        .wea(1'b0),
        .web(web));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ld_arith_reg
   (\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ,
    \tx_packet_length_reg[14] ,
    D22_out,
    enblData,
    S,
    \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,
    txComboNibbleCntRst,
    CE,
    s_axi_aclk,
    Q);
  output [6:0]\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  output \tx_packet_length_reg[14] ;
  output D22_out;
  input enblData;
  input S;
  input \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  input txComboNibbleCntRst;
  input CE;
  input s_axi_aclk;
  input [15:0]Q;

  wire CE;
  wire D22_out;
  wire [6:0]\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[10].MUXCY_i1_i_3_n_0 ;
  wire \PERBIT_GEN[10].MUXCY_i1_i_4_n_0 ;
  wire \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[5].MUXCY_i1_i_2_n_0 ;
  wire \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ;
  wire [15:0]Q;
  wire S;
  wire STATE13A_i_2_n_0;
  wire STATE13A_i_3_n_0;
  wire [11:1]cry;
  wire [1:5]currentTxNibbleCnt;
  wire enblData;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_1;
  wire gen_cry_kill_n_10;
  wire gen_cry_kill_n_2;
  wire gen_cry_kill_n_3;
  wire gen_cry_kill_n_4;
  wire gen_cry_kill_n_5;
  wire gen_cry_kill_n_6;
  wire gen_cry_kill_n_7;
  wire gen_cry_kill_n_8;
  wire gen_cry_kill_n_9;
  wire s_axi_aclk;
  wire txComboNibbleCntRst;
  wire \tx_packet_length_reg[14] ;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_10;
  wire xorcy_out_11;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire xorcy_out_4;
  wire xorcy_out_5;
  wire xorcy_out_6;
  wire xorcy_out_7;
  wire xorcy_out_8;
  wire xorcy_out_9;
  wire [3:3]\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_11),
        .Q(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [6]),
        .R(txComboNibbleCntRst));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[10].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_1),
        .Q(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [1]),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[10].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [1]),
        .I1(enblData),
        .O(gen_cry_kill_n_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \PERBIT_GEN[10].MUXCY_i1_i_2 
       (.I0(\PERBIT_GEN[10].MUXCY_i1_i_3_n_0 ),
        .I1(Q[14]),
        .I2(Q[15]),
        .I3(Q[10]),
        .I4(Q[6]),
        .I5(\PERBIT_GEN[10].MUXCY_i1_i_4_n_0 ),
        .O(\tx_packet_length_reg[14] ));
  LUT6 #(
    .INIT(64'h8000800080000000)) 
    \PERBIT_GEN[10].MUXCY_i1_i_3 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\PERBIT_GEN[10].MUXCY_i1_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \PERBIT_GEN[10].MUXCY_i1_i_4 
       (.I0(Q[8]),
        .I1(Q[11]),
        .I2(Q[7]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(Q[9]),
        .O(\PERBIT_GEN[10].MUXCY_i1_i_4_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_0),
        .Q(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [0]),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[11].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [0]),
        .I1(enblData),
        .O(gen_cry_kill_n_0));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \PERBIT_GEN[11].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO(cry[4:1]),
        .CYINIT(enblData),
        .DI({gen_cry_kill_n_3,gen_cry_kill_n_2,gen_cry_kill_n_1,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ,S}));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_10),
        .Q(currentTxNibbleCnt[1]),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(currentTxNibbleCnt[1]),
        .I1(enblData),
        .O(gen_cry_kill_n_10));
  LUT3 #(
    .INIT(8'h74)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1 
       (.I0(currentTxNibbleCnt[1]),
        .I1(enblData),
        .I2(Q[9]),
        .O(\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_9),
        .Q(currentTxNibbleCnt[2]),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[2].MULT_AND_i1 
       (.I0(currentTxNibbleCnt[2]),
        .I1(enblData),
        .O(gen_cry_kill_n_9));
  LUT3 #(
    .INIT(8'h74)) 
    \PERBIT_GEN[2].MUXCY_i1_i_1 
       (.I0(currentTxNibbleCnt[2]),
        .I1(enblData),
        .I2(Q[8]),
        .O(\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_8),
        .Q(currentTxNibbleCnt[3]),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MULT_AND_i1 
       (.I0(currentTxNibbleCnt[3]),
        .I1(enblData),
        .O(gen_cry_kill_n_8));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \PERBIT_GEN[3].MUXCY_i1_CARRY4 
       (.CI(cry[8]),
        .CO({\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED [3],cry[11:9]}),
        .CYINIT(1'b0),
        .DI({\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED [3],gen_cry_kill_n_10,gen_cry_kill_n_9,gen_cry_kill_n_8}),
        .O({xorcy_out_11,xorcy_out_10,xorcy_out_9,xorcy_out_8}),
        .S({\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg }));
  LUT3 #(
    .INIT(8'h74)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1 
       (.I0(currentTxNibbleCnt[3]),
        .I1(enblData),
        .I2(Q[7]),
        .O(\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_7),
        .Q(currentTxNibbleCnt[4]),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MULT_AND_i1 
       (.I0(currentTxNibbleCnt[4]),
        .I1(enblData),
        .O(gen_cry_kill_n_7));
  LUT3 #(
    .INIT(8'h74)) 
    \PERBIT_GEN[4].MUXCY_i1_i_1 
       (.I0(currentTxNibbleCnt[4]),
        .I1(enblData),
        .I2(Q[6]),
        .O(\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[5].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_6),
        .Q(currentTxNibbleCnt[5]),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[5].MULT_AND_i1 
       (.I0(currentTxNibbleCnt[5]),
        .I1(enblData),
        .O(gen_cry_kill_n_6));
  LUT4 #(
    .INIT(16'h5C5F)) 
    \PERBIT_GEN[5].MUXCY_i1_i_1 
       (.I0(currentTxNibbleCnt[5]),
        .I1(Q[5]),
        .I2(enblData),
        .I3(\PERBIT_GEN[5].MUXCY_i1_i_2_n_0 ),
        .O(\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \PERBIT_GEN[5].MUXCY_i1_i_2 
       (.I0(\PERBIT_GEN[10].MUXCY_i1_i_4_n_0 ),
        .I1(Q[6]),
        .I2(Q[10]),
        .I3(Q[15]),
        .I4(Q[14]),
        .O(\PERBIT_GEN[5].MUXCY_i1_i_2_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[6].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_5),
        .Q(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [5]),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[6].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [5]),
        .I1(enblData),
        .O(gen_cry_kill_n_5));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_4),
        .Q(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [4]),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[7].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [4]),
        .I1(enblData),
        .O(gen_cry_kill_n_4));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \PERBIT_GEN[7].MUXCY_i1_CARRY4 
       (.CI(cry[4]),
        .CO(cry[8:5]),
        .CYINIT(1'b0),
        .DI({gen_cry_kill_n_7,gen_cry_kill_n_6,gen_cry_kill_n_5,gen_cry_kill_n_4}),
        .O({xorcy_out_7,xorcy_out_6,xorcy_out_5,xorcy_out_4}),
        .S({\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg }));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[8].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_3),
        .Q(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [3]),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[8].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [3]),
        .I1(enblData),
        .O(gen_cry_kill_n_3));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[9].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_2),
        .Q(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [2]),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[9].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [2]),
        .I1(enblData),
        .O(gen_cry_kill_n_2));
  LUT5 #(
    .INIT(32'h02000000)) 
    STATE13A_i_1
       (.I0(STATE13A_i_2_n_0),
        .I1(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [2]),
        .I2(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [1]),
        .I3(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [0]),
        .I4(STATE13A_i_3_n_0),
        .O(D22_out));
  LUT4 #(
    .INIT(16'h0001)) 
    STATE13A_i_2
       (.I0(currentTxNibbleCnt[5]),
        .I1(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [5]),
        .I2(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [4]),
        .I3(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [3]),
        .O(STATE13A_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    STATE13A_i_3
       (.I0(currentTxNibbleCnt[4]),
        .I1(currentTxNibbleCnt[3]),
        .I2(currentTxNibbleCnt[2]),
        .I3(currentTxNibbleCnt[1]),
        .I4(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [6]),
        .I5(enblData),
        .O(STATE13A_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ld_arith_reg__parameterized0
   (currentTxBusFifoWrCnt,
    \PERBIT_GEN[8].FF_RST0_GEN.FDRE_i1_0 ,
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ,
    emac_tx_wr_i,
    S,
    \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ,
    \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ,
    \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ,
    txComboBusFifoWrCntRst,
    s_axi_aclk);
  output [3:0]currentTxBusFifoWrCnt;
  output \PERBIT_GEN[8].FF_RST0_GEN.FDRE_i1_0 ;
  output \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ;
  input emac_tx_wr_i;
  input S;
  input \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ;
  input \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ;
  input \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ;
  input txComboBusFifoWrCntRst;
  input s_axi_aclk;

  wire \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ;
  wire \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[8].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ;
  wire \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ;
  wire S;
  wire cry_1;
  wire cry_2;
  wire cry_3;
  wire [3:0]currentTxBusFifoWrCnt;
  wire emac_tx_wr_i;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_1;
  wire gen_cry_kill_n_2;
  wire s_axi_aclk;
  wire txComboBusFifoWrCntRst;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire [3:3]\NLW_PERBIT_GEN[11].MUXCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_PERBIT_GEN[11].MUXCY_i1_CARRY4_DI_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[10].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(emac_tx_wr_i),
        .D(xorcy_out_1),
        .Q(currentTxBusFifoWrCnt[1]),
        .R(txComboBusFifoWrCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[10].MULT_AND_i1 
       (.I0(currentTxBusFifoWrCnt[1]),
        .I1(emac_tx_wr_i),
        .O(gen_cry_kill_n_1));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(emac_tx_wr_i),
        .D(xorcy_out_0),
        .Q(currentTxBusFifoWrCnt[0]),
        .R(txComboBusFifoWrCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[11].MULT_AND_i1 
       (.I0(currentTxBusFifoWrCnt[0]),
        .I1(emac_tx_wr_i),
        .O(gen_cry_kill_n_0));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \PERBIT_GEN[11].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_PERBIT_GEN[11].MUXCY_i1_CARRY4_CO_UNCONNECTED [3],cry_3,cry_2,cry_1}),
        .CYINIT(1'b0),
        .DI({\NLW_PERBIT_GEN[11].MUXCY_i1_CARRY4_DI_UNCONNECTED [3],gen_cry_kill_n_2,gen_cry_kill_n_1,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ,\PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ,\PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ,S}));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[8].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(emac_tx_wr_i),
        .D(xorcy_out_3),
        .Q(currentTxBusFifoWrCnt[3]),
        .R(txComboBusFifoWrCntRst));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[9].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(emac_tx_wr_i),
        .D(xorcy_out_2),
        .Q(currentTxBusFifoWrCnt[2]),
        .R(txComboBusFifoWrCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[9].MULT_AND_i1 
       (.I0(currentTxBusFifoWrCnt[2]),
        .I1(emac_tx_wr_i),
        .O(gen_cry_kill_n_2));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    STATE10A_i_2
       (.I0(currentTxBusFifoWrCnt[0]),
        .I1(currentTxBusFifoWrCnt[3]),
        .I2(currentTxBusFifoWrCnt[1]),
        .I3(currentTxBusFifoWrCnt[2]),
        .O(\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    STATE8A_i_2
       (.I0(currentTxBusFifoWrCnt[3]),
        .I1(currentTxBusFifoWrCnt[1]),
        .I2(currentTxBusFifoWrCnt[2]),
        .I3(currentTxBusFifoWrCnt[0]),
        .O(\PERBIT_GEN[8].FF_RST0_GEN.FDRE_i1_0 ));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ld_arith_reg__parameterized1
   (crcCnt,
    din,
    wr_en,
    D9_out,
    STATE14A,
    enblCRC,
    S,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ,
    CE,
    s_axi_aclk,
    checkBusFifoFullCrc,
    \gen_rd_b.doutb_reg_reg[1] ,
    \gwack.wr_ack_i_reg ,
    STATE15A);
  output [0:3]crcCnt;
  output [0:0]din;
  output wr_en;
  output D9_out;
  output STATE14A;
  input enblCRC;
  input S;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  input CE;
  input s_axi_aclk;
  input checkBusFifoFullCrc;
  input \gen_rd_b.doutb_reg_reg[1] ;
  input \gwack.wr_ack_i_reg ;
  input STATE15A;

  wire CE;
  wire D9_out;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire S;
  wire STATE14A;
  wire STATE15A;
  wire checkBusFifoFullCrc;
  wire [0:3]crcCnt;
  wire [3:1]cry;
  wire [0:0]din;
  wire enblCRC;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_1;
  wire gen_cry_kill_n_2;
  wire \gen_rd_b.doutb_reg_reg[1] ;
  wire \gwack.wr_ack_i_reg ;
  wire s_axi_aclk;
  wire wr_en;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire [3:3]\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_3),
        .Q(crcCnt[0]),
        .S(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_2),
        .Q(crcCnt[1]),
        .R(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(crcCnt[1]),
        .I1(enblCRC),
        .O(gen_cry_kill_n_2));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_1),
        .Q(crcCnt[2]),
        .R(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[2].MULT_AND_i1 
       (.I0(crcCnt[2]),
        .I1(enblCRC),
        .O(gen_cry_kill_n_1));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_0),
        .Q(crcCnt[3]),
        .R(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MULT_AND_i1 
       (.I0(crcCnt[3]),
        .I1(enblCRC),
        .O(gen_cry_kill_n_0));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \PERBIT_GEN[3].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED [3],cry}),
        .CYINIT(enblCRC),
        .DI({\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED [3],gen_cry_kill_n_2,gen_cry_kill_n_1,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,S}));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    STATE15A_i_1
       (.I0(checkBusFifoFullCrc),
        .I1(STATE15A),
        .I2(crcCnt[3]),
        .I3(crcCnt[2]),
        .I4(crcCnt[1]),
        .I5(crcCnt[0]),
        .O(D9_out));
  LUT5 #(
    .INIT(32'h00000002)) 
    STATE16A_i_2
       (.I0(checkBusFifoFullCrc),
        .I1(crcCnt[3]),
        .I2(crcCnt[2]),
        .I3(crcCnt[1]),
        .I4(crcCnt[0]),
        .O(STATE14A));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \xpm_fifo_instance.xpm_fifo_async_inst_i_2__0 
       (.I0(crcCnt[0]),
        .I1(crcCnt[1]),
        .I2(crcCnt[2]),
        .I3(crcCnt[3]),
        .I4(checkBusFifoFullCrc),
        .I5(\gwack.wr_ack_i_reg ),
        .O(wr_en));
  LUT6 #(
    .INIT(64'h00000000FFFEFFFF)) 
    \xpm_fifo_instance.xpm_fifo_async_inst_i_3__0 
       (.I0(crcCnt[0]),
        .I1(crcCnt[1]),
        .I2(crcCnt[2]),
        .I3(crcCnt[3]),
        .I4(checkBusFifoFullCrc),
        .I5(\gen_rd_b.doutb_reg_reg[1] ),
        .O(din));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux_onehot_f
   (D,
    \txNibbleCnt_pad_reg[0] ,
    \emac_tx_wr_data_d1_reg[0] ,
    \emac_tx_wr_data_d1_reg[0]_0 ,
    \emac_tx_wr_data_d1_reg[1] ,
    \emac_tx_wr_data_d1_reg[1]_0 ,
    \emac_tx_wr_data_d1_reg[2] ,
    \emac_tx_wr_data_d1_reg[2]_0 ,
    \emac_tx_wr_data_d1_reg[3] ,
    \emac_tx_wr_data_d1_reg[3]_0 ,
    Q);
  output [3:0]D;
  output \txNibbleCnt_pad_reg[0] ;
  input \emac_tx_wr_data_d1_reg[0] ;
  input \emac_tx_wr_data_d1_reg[0]_0 ;
  input \emac_tx_wr_data_d1_reg[1] ;
  input \emac_tx_wr_data_d1_reg[1]_0 ;
  input \emac_tx_wr_data_d1_reg[2] ;
  input \emac_tx_wr_data_d1_reg[2]_0 ;
  input \emac_tx_wr_data_d1_reg[3] ;
  input \emac_tx_wr_data_d1_reg[3]_0 ;
  input [11:0]Q;

  wire [3:0]D;
  wire \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire [11:0]Q;
  wire cyout_1;
  wire \emac_tx_wr_data_d1_reg[0] ;
  wire \emac_tx_wr_data_d1_reg[0]_0 ;
  wire \emac_tx_wr_data_d1_reg[1] ;
  wire \emac_tx_wr_data_d1_reg[1]_0 ;
  wire \emac_tx_wr_data_d1_reg[2] ;
  wire \emac_tx_wr_data_d1_reg[2]_0 ;
  wire \emac_tx_wr_data_d1_reg[3] ;
  wire \emac_tx_wr_data_d1_reg[3]_0 ;
  wire \txNibbleCnt_pad[0]_i_4_n_0 ;
  wire \txNibbleCnt_pad[0]_i_5_n_0 ;
  wire \txNibbleCnt_pad_reg[0] ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[3],cyout_1}),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\emac_tx_wr_data_d1_reg[0]_0 ,\emac_tx_wr_data_d1_reg[0] }));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[2],\GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\emac_tx_wr_data_d1_reg[1]_0 ,\emac_tx_wr_data_d1_reg[1] }));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[1],\GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\emac_tx_wr_data_d1_reg[2]_0 ,\emac_tx_wr_data_d1_reg[2] }));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[0],\GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\emac_tx_wr_data_d1_reg[3]_0 ,\emac_tx_wr_data_d1_reg[3] }));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \txNibbleCnt_pad[0]_i_3 
       (.I0(\txNibbleCnt_pad[0]_i_4_n_0 ),
        .I1(Q[11]),
        .I2(Q[10]),
        .I3(Q[9]),
        .I4(Q[8]),
        .I5(\txNibbleCnt_pad[0]_i_5_n_0 ),
        .O(\txNibbleCnt_pad_reg[0] ));
  LUT4 #(
    .INIT(16'h0001)) 
    \txNibbleCnt_pad[0]_i_4 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(\txNibbleCnt_pad[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \txNibbleCnt_pad[0]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\txNibbleCnt_pad[0]_i_5_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ram16x4
   (\emac_rx_rd_data_d1_reg[3] ,
    \emac_rx_rd_data_d1_reg[2] ,
    Q,
    s_axi_aclk,
    D,
    mac_addr_ram_we,
    mac_addr_ram_addr);
  output \emac_rx_rd_data_d1_reg[3] ;
  output \emac_rx_rd_data_d1_reg[2] ;
  input [3:0]Q;
  input s_axi_aclk;
  input [3:0]D;
  input mac_addr_ram_we;
  input [0:3]mac_addr_ram_addr;

  wire [3:0]D;
  wire [3:0]Q;
  wire \emac_rx_rd_data_d1_reg[2] ;
  wire \emac_rx_rd_data_d1_reg[3] ;
  wire [0:3]mac_addr_ram_addr;
  wire [0:3]mac_addr_ram_data;
  wire mac_addr_ram_we;
  wire s_axi_aclk;

  LUT4 #(
    .INIT(16'h6FF6)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[12]_i_5 
       (.I0(mac_addr_ram_data[2]),
        .I1(Q[1]),
        .I2(mac_addr_ram_data[1]),
        .I3(Q[2]),
        .O(\emac_rx_rd_data_d1_reg[2] ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[12]_i_6 
       (.I0(mac_addr_ram_data[3]),
        .I1(Q[0]),
        .I2(mac_addr_ram_data[0]),
        .I3(Q[3]),
        .O(\emac_rx_rd_data_d1_reg[3] ));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM32X1S #(
    .INIT(32'h00000220),
    .IS_WCLK_INVERTED(1'b0)) 
    ram16x1_0
       (.A0(mac_addr_ram_addr[3]),
        .A1(mac_addr_ram_addr[2]),
        .A2(mac_addr_ram_addr[1]),
        .A3(mac_addr_ram_addr[0]),
        .A4(1'b0),
        .D(D[0]),
        .O(mac_addr_ram_data[3]),
        .WCLK(s_axi_aclk),
        .WE(mac_addr_ram_we));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM32X1S #(
    .INIT(32'h00000710),
    .IS_WCLK_INVERTED(1'b0)) 
    ram16x1_1
       (.A0(mac_addr_ram_addr[3]),
        .A1(mac_addr_ram_addr[2]),
        .A2(mac_addr_ram_addr[1]),
        .A3(mac_addr_ram_addr[0]),
        .A4(1'b0),
        .D(D[1]),
        .O(mac_addr_ram_data[2]),
        .WCLK(s_axi_aclk),
        .WE(mac_addr_ram_we));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM32X1S #(
    .INIT(32'h00000E30),
    .IS_WCLK_INVERTED(1'b0)) 
    ram16x1_2
       (.A0(mac_addr_ram_addr[3]),
        .A1(mac_addr_ram_addr[2]),
        .A2(mac_addr_ram_addr[1]),
        .A3(mac_addr_ram_addr[0]),
        .A4(1'b0),
        .D(D[2]),
        .O(mac_addr_ram_data[1]),
        .WCLK(s_axi_aclk),
        .WE(mac_addr_ram_we));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM32X1S #(
    .INIT(32'h00000F10),
    .IS_WCLK_INVERTED(1'b0)) 
    ram16x1_3
       (.A0(mac_addr_ram_addr[3]),
        .A1(mac_addr_ram_addr[2]),
        .A2(mac_addr_ram_addr[1]),
        .A3(mac_addr_ram_addr[0]),
        .A4(1'b0),
        .D(D[3]),
        .O(mac_addr_ram_data[0]),
        .WCLK(s_axi_aclk),
        .WE(mac_addr_ram_we));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_receive
   (D,
    Q,
    wea,
    state17a,
    ena,
    rx_addr_en,
    \rxbuffer_addr_reg[9] ,
    state3a,
    D_1,
    rx_done,
    \Mac_addr_ram_addr_rd_reg[0] ,
    s_axi_aclk,
    SS,
    phy_rx_clk,
    din,
    s_axi_aresetn,
    ping_rx_status,
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[1] ,
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ,
    rx_DPM_adr__0,
    p_7_in,
    p_5_in,
    IP2INTC_IRPT_REG_I,
    IP2INTC_IRPT_REG_I_0);
  output [3:0]D;
  output [3:0]Q;
  output [0:0]wea;
  output [0:0]state17a;
  output ena;
  output rx_addr_en;
  output \rxbuffer_addr_reg[9] ;
  output state3a;
  output D_1;
  output rx_done;
  output [3:0]\Mac_addr_ram_addr_rd_reg[0] ;
  input s_axi_aclk;
  input [0:0]SS;
  input phy_rx_clk;
  input [5:0]din;
  input s_axi_aresetn;
  input ping_rx_status;
  input \FSM_onehot_rdDestAddrNib_D_t_q_reg[1] ;
  input \FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ;
  input [0:0]rx_DPM_adr__0;
  input [0:0]p_7_in;
  input [0:0]p_5_in;
  input [0:0]IP2INTC_IRPT_REG_I;
  input IP2INTC_IRPT_REG_I_0;

  wire [3:0]D;
  wire D10_out;
  wire D11_out;
  wire D13_out;
  wire D5_out;
  wire D6_out;
  wire D7_out;
  wire D_0;
  wire D_1;
  wire \FSM_onehot_rdDestAddrNib_D_t_q_reg[1] ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ;
  wire INST_RX_INTRFCE_n_11;
  wire INST_RX_INTRFCE_n_12;
  wire INST_RX_INTRFCE_n_13;
  wire INST_RX_INTRFCE_n_17;
  wire INST_RX_INTRFCE_n_18;
  wire INST_RX_INTRFCE_n_19;
  wire INST_RX_INTRFCE_n_20;
  wire INST_RX_INTRFCE_n_21;
  wire INST_RX_INTRFCE_n_22;
  wire INST_RX_INTRFCE_n_23;
  wire INST_RX_INTRFCE_n_24;
  wire INST_RX_INTRFCE_n_25;
  wire INST_RX_INTRFCE_n_26;
  wire INST_RX_INTRFCE_n_27;
  wire INST_RX_INTRFCE_n_28;
  wire INST_RX_INTRFCE_n_29;
  wire INST_RX_INTRFCE_n_31;
  wire INST_RX_INTRFCE_n_36;
  wire INST_RX_INTRFCE_n_8;
  wire INST_RX_STATE_n_10;
  wire INST_RX_STATE_n_11;
  wire INST_RX_STATE_n_12;
  wire INST_RX_STATE_n_13;
  wire INST_RX_STATE_n_14;
  wire INST_RX_STATE_n_15;
  wire INST_RX_STATE_n_16;
  wire INST_RX_STATE_n_17;
  wire INST_RX_STATE_n_18;
  wire INST_RX_STATE_n_19;
  wire INST_RX_STATE_n_20;
  wire INST_RX_STATE_n_21;
  wire INST_RX_STATE_n_32;
  wire INST_RX_STATE_n_33;
  wire INST_RX_STATE_n_9;
  wire [0:0]IP2INTC_IRPT_REG_I;
  wire IP2INTC_IRPT_REG_I_0;
  wire [3:0]\Mac_addr_ram_addr_rd_reg[0] ;
  wire [3:0]Q;
  wire R;
  wire [0:0]SS;
  wire busFifoData_is_5_d1;
  wire crcokr1;
  wire [5:0]din;
  wire [4:5]emac_rx_rd_data_i;
  wire emac_rx_rd_i;
  wire ena;
  wire fifo_empty_i;
  wire goto_readDestAdrNib1;
  wire p_1_in;
  wire p_1_in1_in;
  wire p_1_in4_in;
  wire p_1_in7_in;
  wire [0:0]p_5_in;
  wire p_65_in;
  wire [0:0]p_7_in;
  wire [3:2]parallel_crc;
  wire phy_rx_clk;
  wire ping_rx_status;
  wire rdDestAddrNib_D_t_q0;
  wire rxBusFifoRdAck;
  wire rxCrcEn;
  wire rxCrcEn_d1;
  wire rxCrcRst;
  wire [0:0]rx_DPM_adr__0;
  wire rx_addr_en;
  wire rx_done;
  wire rx_start;
  wire \rxbuffer_addr_reg[9] ;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire sfd1CheckBusFifoEmpty;
  wire startReadDataNib;
  wire startReadDestAdrNib;
  wire [0:0]state17a;
  wire state3a;
  wire waitForSfd1;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_crcgenrx INST_CRCGENRX
       (.D({parallel_crc,p_65_in}),
        .D_0(D_0),
        .E(rxCrcEn_d1),
        .Q({p_1_in7_in,p_1_in4_in,p_1_in1_in,p_1_in}),
        .R(R),
        .SS(INST_RX_STATE_n_33),
        .crcokr1(crcokr1),
        .dout(D),
        .rxCrcEn(rxCrcEn),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx_intrfce INST_RX_INTRFCE
       (.D({INST_RX_INTRFCE_n_19,INST_RX_INTRFCE_n_20,INST_RX_INTRFCE_n_21,INST_RX_INTRFCE_n_22,INST_RX_INTRFCE_n_23,INST_RX_INTRFCE_n_24,INST_RX_INTRFCE_n_25}),
        .D10_out(D10_out),
        .D11_out(D11_out),
        .D13_out(D13_out),
        .D5_out(D5_out),
        .D6_out(D6_out),
        .D7_out(D7_out),
        .\Mac_addr_ram_addr_rd[0]_i_3 (INST_RX_STATE_n_32),
        .Q({INST_RX_STATE_n_10,INST_RX_STATE_n_11,INST_RX_STATE_n_12,INST_RX_STATE_n_13,INST_RX_STATE_n_14,INST_RX_STATE_n_15,INST_RX_STATE_n_16,INST_RX_STATE_n_17,INST_RX_STATE_n_18,INST_RX_STATE_n_19,INST_RX_STATE_n_20,INST_RX_STATE_n_21}),
        .SR(INST_RX_INTRFCE_n_12),
        .SS(SS),
        .busFifoData_is_5_d1(busFifoData_is_5_d1),
        .busFifoData_is_5_d1_reg(INST_RX_INTRFCE_n_8),
        .\crc_local_reg[3] ({p_1_in7_in,p_1_in4_in,p_1_in1_in,p_1_in}),
        .data_valid(rxBusFifoRdAck),
        .din(din),
        .dout({D,emac_rx_rd_data_i[4],emac_rx_rd_data_i[5]}),
        .empty(fifo_empty_i),
        .\gdvld.data_valid_std_reg (INST_RX_INTRFCE_n_17),
        .\gdvld.data_valid_std_reg_0 (INST_RX_INTRFCE_n_26),
        .\gdvld.data_valid_std_reg_1 (INST_RX_INTRFCE_n_28),
        .\gdvld.data_valid_std_reg_2 (INST_RX_INTRFCE_n_29),
        .\gdvld.data_valid_std_reg_3 (INST_RX_INTRFCE_n_31),
        .\gen_pf_ic_rc.ram_empty_i_reg (INST_RX_INTRFCE_n_18),
        .\gen_rd_b.doutb_reg_reg[1] (rdDestAddrNib_D_t_q0),
        .\gen_rd_b.doutb_reg_reg[1]_0 (INST_RX_INTRFCE_n_27),
        .\gen_rd_b.doutb_reg_reg[2] (INST_RX_INTRFCE_n_36),
        .\gen_rd_b.doutb_reg_reg[4] (INST_RX_INTRFCE_n_11),
        .\gen_rd_b.doutb_reg_reg[4]_0 ({parallel_crc,p_65_in}),
        .goto_readDestAdrNib1(goto_readDestAdrNib1),
        .phy_rx_clk(phy_rx_clk),
        .ping_rx_status(ping_rx_status),
        .ping_rx_status_reg(INST_RX_INTRFCE_n_13),
        .rd_en(emac_rx_rd_i),
        .rxCrcRst(rxCrcRst),
        .rx_start(rx_start),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .sfd1CheckBusFifoEmpty(sfd1CheckBusFifoEmpty),
        .startReadDataNib(startReadDataNib),
        .startReadDestAdrNib(startReadDestAdrNib),
        .state17a(INST_RX_STATE_n_9),
        .waitForSfd1(waitForSfd1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx_statemachine INST_RX_STATE
       (.D({INST_RX_INTRFCE_n_19,INST_RX_INTRFCE_n_20,INST_RX_INTRFCE_n_21,INST_RX_INTRFCE_n_22,INST_RX_INTRFCE_n_23,INST_RX_INTRFCE_n_24,INST_RX_INTRFCE_n_25}),
        .D10_out(D10_out),
        .D11_out(D11_out),
        .D13_out(D13_out),
        .D5_out(D5_out),
        .D6_out(D6_out),
        .D7_out(D7_out),
        .D_0(D_0),
        .D_1(D_1),
        .\FSM_onehot_rdDestAddrNib_D_t_q_reg[0]_0 (INST_RX_INTRFCE_n_26),
        .\FSM_onehot_rdDestAddrNib_D_t_q_reg[10]_0 (INST_RX_STATE_n_32),
        .\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 (INST_RX_STATE_n_9),
        .\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 (INST_RX_INTRFCE_n_18),
        .\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_2 (\FSM_onehot_rdDestAddrNib_D_t_q_reg[1] ),
        .\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_3 (\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ),
        .IP2INTC_IRPT_REG_I(IP2INTC_IRPT_REG_I),
        .IP2INTC_IRPT_REG_I_0(IP2INTC_IRPT_REG_I_0),
        .\Mac_addr_ram_addr_rd_reg[0]_0 (\Mac_addr_ram_addr_rd_reg[0] ),
        .\Mac_addr_ram_addr_rd_reg[0]_1 (INST_RX_INTRFCE_n_17),
        .\Mac_addr_ram_addr_rd_reg[0]_2 (INST_RX_INTRFCE_n_29),
        .\Mac_addr_ram_addr_rd_reg[0]_3 (INST_RX_INTRFCE_n_28),
        .\Mac_addr_ram_addr_rd_reg[0]_4 (INST_RX_INTRFCE_n_27),
        .\Mac_addr_ram_addr_rd_reg[0]_5 (INST_RX_INTRFCE_n_31),
        .\Mac_addr_ram_addr_rd_reg[0]_6 (INST_RX_INTRFCE_n_12),
        .Q({INST_RX_STATE_n_10,INST_RX_STATE_n_11,INST_RX_STATE_n_12,INST_RX_STATE_n_13,INST_RX_STATE_n_14,INST_RX_STATE_n_15,INST_RX_STATE_n_16,INST_RX_STATE_n_17,INST_RX_STATE_n_18,INST_RX_STATE_n_19,INST_RX_STATE_n_20,INST_RX_STATE_n_21}),
        .R(R),
        .SR(rdDestAddrNib_D_t_q0),
        .SS(SS),
        .busFifoData_is_5_d1(busFifoData_is_5_d1),
        .busFifoData_is_5_d1_reg_0(INST_RX_INTRFCE_n_36),
        .checkingBroadcastAdr_reg_reg_0(Q),
        .crcokr1(crcokr1),
        .data_valid(rxBusFifoRdAck),
        .dout({emac_rx_rd_data_i[4],emac_rx_rd_data_i[5]}),
        .empty(fifo_empty_i),
        .ena(ena),
        .goto_readDestAdrNib1(goto_readDestAdrNib1),
        .p_5_in(p_5_in),
        .p_7_in(p_7_in),
        .preamble_0(INST_RX_INTRFCE_n_8),
        .rd_en(emac_rx_rd_i),
        .rxCrcEn(rxCrcEn),
        .rxCrcRst(rxCrcRst),
        .rx_DPM_adr__0(rx_DPM_adr__0),
        .rx_addr_en(rx_addr_en),
        .rx_done(rx_done),
        .rx_start(rx_start),
        .\rxbuffer_addr_reg[9] (\rxbuffer_addr_reg[9] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .sfd1CheckBusFifoEmpty(sfd1CheckBusFifoEmpty),
        .startReadDataNib(startReadDataNib),
        .startReadDestAdrNib(startReadDestAdrNib),
        .state0a_0(INST_RX_INTRFCE_n_11),
        .state0a_1(INST_RX_INTRFCE_n_13),
        .state17a_0(state17a),
        .state22a_0(INST_RX_STATE_n_33),
        .state3a_0(state3a),
        .waitForSfd1(waitForSfd1),
        .wea(wea));
  FDRE \emac_rx_rd_data_d1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(SS));
  FDRE \emac_rx_rd_data_d1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(SS));
  FDRE \emac_rx_rd_data_d1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SS));
  FDRE \emac_rx_rd_data_d1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SS));
  FDRE rxCrcEn_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rxCrcEn),
        .Q(rxCrcEn_d1),
        .R(SS));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx_intrfce
   (dout,
    empty,
    data_valid,
    busFifoData_is_5_d1_reg,
    D5_out,
    D13_out,
    \gen_rd_b.doutb_reg_reg[4] ,
    SR,
    ping_rx_status_reg,
    D6_out,
    \gen_rd_b.doutb_reg_reg[1] ,
    goto_readDestAdrNib1,
    \gdvld.data_valid_std_reg ,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    D,
    \gdvld.data_valid_std_reg_0 ,
    \gen_rd_b.doutb_reg_reg[1]_0 ,
    \gdvld.data_valid_std_reg_1 ,
    \gdvld.data_valid_std_reg_2 ,
    D11_out,
    \gdvld.data_valid_std_reg_3 ,
    D7_out,
    \gen_rd_b.doutb_reg_reg[4]_0 ,
    \gen_rd_b.doutb_reg_reg[2] ,
    phy_rx_clk,
    din,
    s_axi_aclk,
    rd_en,
    busFifoData_is_5_d1,
    rx_start,
    waitForSfd1,
    sfd1CheckBusFifoEmpty,
    s_axi_aresetn,
    startReadDestAdrNib,
    D10_out,
    ping_rx_status,
    rxCrcRst,
    state17a,
    Q,
    \Mac_addr_ram_addr_rd[0]_i_3 ,
    startReadDataNib,
    \crc_local_reg[3] ,
    SS);
  output [5:0]dout;
  output empty;
  output data_valid;
  output busFifoData_is_5_d1_reg;
  output D5_out;
  output D13_out;
  output \gen_rd_b.doutb_reg_reg[4] ;
  output [0:0]SR;
  output ping_rx_status_reg;
  output D6_out;
  output [0:0]\gen_rd_b.doutb_reg_reg[1] ;
  output goto_readDestAdrNib1;
  output \gdvld.data_valid_std_reg ;
  output \gen_pf_ic_rc.ram_empty_i_reg ;
  output [6:0]D;
  output \gdvld.data_valid_std_reg_0 ;
  output \gen_rd_b.doutb_reg_reg[1]_0 ;
  output \gdvld.data_valid_std_reg_1 ;
  output \gdvld.data_valid_std_reg_2 ;
  output D11_out;
  output \gdvld.data_valid_std_reg_3 ;
  output D7_out;
  output [2:0]\gen_rd_b.doutb_reg_reg[4]_0 ;
  output \gen_rd_b.doutb_reg_reg[2] ;
  input phy_rx_clk;
  input [5:0]din;
  input s_axi_aclk;
  input rd_en;
  input busFifoData_is_5_d1;
  input rx_start;
  input waitForSfd1;
  input sfd1CheckBusFifoEmpty;
  input s_axi_aresetn;
  input startReadDestAdrNib;
  input D10_out;
  input ping_rx_status;
  input rxCrcRst;
  input state17a;
  input [11:0]Q;
  input \Mac_addr_ram_addr_rd[0]_i_3 ;
  input startReadDataNib;
  input [3:0]\crc_local_reg[3] ;
  input [0:0]SS;

  wire [6:0]D;
  wire D10_out;
  wire D11_out;
  wire D13_out;
  wire D5_out;
  wire D6_out;
  wire D7_out;
  wire \Mac_addr_ram_addr_rd[0]_i_3 ;
  wire [11:0]Q;
  wire [0:0]SR;
  wire [0:0]SS;
  wire busFifoData_is_5_d1;
  wire busFifoData_is_5_d1_reg;
  wire [3:0]\crc_local_reg[3] ;
  wire data_valid;
  wire [5:0]din;
  wire [5:0]dout;
  wire empty;
  wire \gdvld.data_valid_std_reg ;
  wire \gdvld.data_valid_std_reg_0 ;
  wire \gdvld.data_valid_std_reg_1 ;
  wire \gdvld.data_valid_std_reg_2 ;
  wire \gdvld.data_valid_std_reg_3 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg ;
  wire [0:0]\gen_rd_b.doutb_reg_reg[1] ;
  wire \gen_rd_b.doutb_reg_reg[1]_0 ;
  wire \gen_rd_b.doutb_reg_reg[2] ;
  wire \gen_rd_b.doutb_reg_reg[4] ;
  wire [2:0]\gen_rd_b.doutb_reg_reg[4]_0 ;
  wire goto_readDestAdrNib1;
  wire phy_rx_clk;
  wire ping_rx_status;
  wire ping_rx_status_reg;
  wire rd_en;
  wire rst_s;
  wire rxCrcRst;
  wire rx_start;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire sfd1CheckBusFifoEmpty;
  wire startReadDataNib;
  wire startReadDestAdrNib;
  wire state17a;
  wire waitForSfd1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_10 CDC_FIFO_RST
       (.SS(SS),
        .phy_rx_clk(phy_rx_clk),
        .scndry_out(rst_s));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo_fg__xdcDup__1 I_RX_FIFO
       (.D(D),
        .D10_out(D10_out),
        .D11_out(D11_out),
        .D13_out(D13_out),
        .D5_out(D5_out),
        .D6_out(D6_out),
        .D7_out(D7_out),
        .\Mac_addr_ram_addr_rd[0]_i_3 (\Mac_addr_ram_addr_rd[0]_i_3 ),
        .Q(Q),
        .SR(SR),
        .busFifoData_is_5_d1(busFifoData_is_5_d1),
        .busFifoData_is_5_d1_reg(busFifoData_is_5_d1_reg),
        .\crc_local_reg[3] (\crc_local_reg[3] ),
        .data_valid(data_valid),
        .din(din),
        .dout(dout),
        .empty(empty),
        .\gdvld.data_valid_std_reg (\gdvld.data_valid_std_reg ),
        .\gdvld.data_valid_std_reg_0 (\gdvld.data_valid_std_reg_0 ),
        .\gdvld.data_valid_std_reg_1 (\gdvld.data_valid_std_reg_1 ),
        .\gdvld.data_valid_std_reg_2 (\gdvld.data_valid_std_reg_2 ),
        .\gdvld.data_valid_std_reg_3 (\gdvld.data_valid_std_reg_3 ),
        .\gen_pf_ic_rc.ram_empty_i_reg (\gen_pf_ic_rc.ram_empty_i_reg ),
        .\gen_rd_b.doutb_reg_reg[1] (\gen_rd_b.doutb_reg_reg[1] ),
        .\gen_rd_b.doutb_reg_reg[1]_0 (\gen_rd_b.doutb_reg_reg[1]_0 ),
        .\gen_rd_b.doutb_reg_reg[2] (\gen_rd_b.doutb_reg_reg[2] ),
        .\gen_rd_b.doutb_reg_reg[4] (\gen_rd_b.doutb_reg_reg[4] ),
        .\gen_rd_b.doutb_reg_reg[4]_0 (\gen_rd_b.doutb_reg_reg[4]_0 ),
        .goto_readDestAdrNib1(goto_readDestAdrNib1),
        .phy_rx_clk(phy_rx_clk),
        .ping_rx_status(ping_rx_status),
        .ping_rx_status_reg(ping_rx_status_reg),
        .rd_en(rd_en),
        .rxCrcRst(rxCrcRst),
        .rx_start(rx_start),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .scndry_out(rst_s),
        .sfd1CheckBusFifoEmpty(sfd1CheckBusFifoEmpty),
        .startReadDataNib(startReadDataNib),
        .startReadDestAdrNib(startReadDestAdrNib),
        .state17a(state17a),
        .waitForSfd1(waitForSfd1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx_statemachine
   (crcokr1,
    rxCrcRst,
    D10_out,
    waitForSfd1,
    sfd1CheckBusFifoEmpty,
    rx_start,
    startReadDestAdrNib,
    startReadDataNib,
    busFifoData_is_5_d1,
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ,
    Q,
    rd_en,
    wea,
    state17a_0,
    ena,
    rx_addr_en,
    \rxbuffer_addr_reg[9] ,
    state3a_0,
    D_1,
    rx_done,
    rxCrcEn,
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[10]_0 ,
    state22a_0,
    \Mac_addr_ram_addr_rd_reg[0]_0 ,
    R,
    D_0,
    s_axi_aclk,
    SS,
    D7_out,
    D5_out,
    D13_out,
    D6_out,
    D11_out,
    preamble_0,
    busFifoData_is_5_d1_reg_0,
    state0a_0,
    dout,
    state0a_1,
    \Mac_addr_ram_addr_rd_reg[0]_1 ,
    data_valid,
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ,
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[0]_0 ,
    goto_readDestAdrNib1,
    \Mac_addr_ram_addr_rd_reg[0]_2 ,
    \Mac_addr_ram_addr_rd_reg[0]_3 ,
    \Mac_addr_ram_addr_rd_reg[0]_4 ,
    \Mac_addr_ram_addr_rd_reg[0]_5 ,
    empty,
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_2 ,
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_3 ,
    checkingBroadcastAdr_reg_reg_0,
    rx_DPM_adr__0,
    s_axi_aresetn,
    p_7_in,
    p_5_in,
    IP2INTC_IRPT_REG_I,
    IP2INTC_IRPT_REG_I_0,
    SR,
    D,
    \Mac_addr_ram_addr_rd_reg[0]_6 );
  output crcokr1;
  output rxCrcRst;
  output D10_out;
  output waitForSfd1;
  output sfd1CheckBusFifoEmpty;
  output rx_start;
  output startReadDestAdrNib;
  output startReadDataNib;
  output busFifoData_is_5_d1;
  output \FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ;
  output [11:0]Q;
  output rd_en;
  output [0:0]wea;
  output [0:0]state17a_0;
  output ena;
  output rx_addr_en;
  output \rxbuffer_addr_reg[9] ;
  output state3a_0;
  output D_1;
  output rx_done;
  output rxCrcEn;
  output \FSM_onehot_rdDestAddrNib_D_t_q_reg[10]_0 ;
  output [0:0]state22a_0;
  output [3:0]\Mac_addr_ram_addr_rd_reg[0]_0 ;
  input R;
  input D_0;
  input s_axi_aclk;
  input [0:0]SS;
  input D7_out;
  input D5_out;
  input D13_out;
  input D6_out;
  input D11_out;
  input preamble_0;
  input busFifoData_is_5_d1_reg_0;
  input state0a_0;
  input [1:0]dout;
  input state0a_1;
  input \Mac_addr_ram_addr_rd_reg[0]_1 ;
  input data_valid;
  input \FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ;
  input \FSM_onehot_rdDestAddrNib_D_t_q_reg[0]_0 ;
  input goto_readDestAdrNib1;
  input \Mac_addr_ram_addr_rd_reg[0]_2 ;
  input \Mac_addr_ram_addr_rd_reg[0]_3 ;
  input \Mac_addr_ram_addr_rd_reg[0]_4 ;
  input \Mac_addr_ram_addr_rd_reg[0]_5 ;
  input empty;
  input \FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_2 ;
  input \FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_3 ;
  input [3:0]checkingBroadcastAdr_reg_reg_0;
  input [0:0]rx_DPM_adr__0;
  input s_axi_aresetn;
  input [0:0]p_7_in;
  input [0:0]p_5_in;
  input [0:0]IP2INTC_IRPT_REG_I;
  input IP2INTC_IRPT_REG_I_0;
  input [0:0]SR;
  input [6:0]D;
  input [0:0]\Mac_addr_ram_addr_rd_reg[0]_6 ;

  wire [6:0]D;
  wire D10_out;
  wire D11_out;
  wire D12_out;
  wire D13_out;
  wire D18_out;
  wire D5_out;
  wire D6_out;
  wire D7_out;
  wire D_0;
  wire D_1;
  wire \FSM_onehot_rdDestAddrNib_D_t_q[0]_i_1_n_0 ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q[0]_i_2_n_0 ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q[0]_i_4_n_0 ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q[0]_i_5_n_0 ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q[12]_i_2_n_0 ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q[1]_i_1_n_0 ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q[1]_i_2_n_0 ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q[5]_i_1_n_0 ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q[7]_i_1_n_0 ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q[9]_i_1_n_0 ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q_reg[0]_0 ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q_reg[10]_0 ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_2 ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_3 ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q_reg_n_0_[12] ;
  wire [0:0]IP2INTC_IRPT_REG_I;
  wire IP2INTC_IRPT_REG_I_0;
  wire \Mac_addr_ram_addr_rd[0]_i_11_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_3_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_4_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_5_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_6_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_7_n_0 ;
  wire [3:0]\Mac_addr_ram_addr_rd_reg[0]_0 ;
  wire \Mac_addr_ram_addr_rd_reg[0]_1 ;
  wire \Mac_addr_ram_addr_rd_reg[0]_2 ;
  wire \Mac_addr_ram_addr_rd_reg[0]_3 ;
  wire \Mac_addr_ram_addr_rd_reg[0]_4 ;
  wire \Mac_addr_ram_addr_rd_reg[0]_5 ;
  wire [0:0]\Mac_addr_ram_addr_rd_reg[0]_6 ;
  wire [11:0]Q;
  wire R;
  wire RX_DONE_D1_I_i_2_n_0;
  wire [0:0]SR;
  wire [0:0]SS;
  wire busFifoData_is_5_d1;
  wire busFifoData_is_5_d1_reg_0;
  wire checkingBroadcastAdr_reg;
  wire checkingBroadcastAdr_reg_i_2_n_0;
  wire [3:0]checkingBroadcastAdr_reg_reg_0;
  wire crcCheck;
  wire crcokr1;
  wire data_valid;
  wire [1:0]dout;
  wire empty;
  wire ena;
  wire goto_readDestAdrNib1;
  wire [0:3]mac_addr_ram_addr_rd_D;
  wire p_20_in;
  wire [0:0]p_5_in;
  wire [0:0]p_7_in;
  wire pkt_length_cnt0;
  wire \pkt_length_cnt[0]_i_1_n_0 ;
  wire \pkt_length_cnt[1]_i_1_n_0 ;
  wire \pkt_length_cnt[2]_i_1_n_0 ;
  wire \pkt_length_cnt[2]_i_2_n_0 ;
  wire \pkt_length_cnt[3]_i_1_n_0 ;
  wire \pkt_length_cnt[4]_i_1_n_0 ;
  wire \pkt_length_cnt[4]_i_2_n_0 ;
  wire \pkt_length_cnt[5]_i_1_n_0 ;
  wire \pkt_length_cnt[6]_i_2_n_0 ;
  wire \pkt_length_cnt[6]_i_3_n_0 ;
  wire \pkt_length_cnt[6]_i_4_n_0 ;
  wire \pkt_length_cnt_reg_n_0_[0] ;
  wire \pkt_length_cnt_reg_n_0_[1] ;
  wire \pkt_length_cnt_reg_n_0_[2] ;
  wire \pkt_length_cnt_reg_n_0_[3] ;
  wire \pkt_length_cnt_reg_n_0_[4] ;
  wire \pkt_length_cnt_reg_n_0_[5] ;
  wire \pkt_length_cnt_reg_n_0_[6] ;
  wire preamble_0;
  wire preamble_error_reg;
  wire rd_en;
  wire rxAbortRst;
  wire rxCrcEn;
  wire rxCrcRst;
  wire rxDone;
  wire [0:0]rx_DPM_adr__0;
  wire rx_addr_en;
  wire rx_done;
  wire rx_start;
  wire \rxbuffer_addr_reg[9] ;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire sfd1CheckBusFifoEmpty;
  wire startReadDataNib;
  wire startReadDestAdrNib;
  wire state0a_0;
  wire state0a_1;
  wire [0:0]state17a_0;
  wire [0:0]state22a_0;
  wire state22a_i_1_n_0;
  wire state22a_i_2_n_0;
  wire state3a_0;
  wire waitForSfd1;
  wire [0:0]wea;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_i_3_n_0 ;

  LUT6 #(
    .INIT(64'h888FFFFF888F888F)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[0]_i_1 
       (.I0(\FSM_onehot_rdDestAddrNib_D_t_q_reg_n_0_[12] ),
        .I1(\FSM_onehot_rdDestAddrNib_D_t_q_reg[0]_0 ),
        .I2(\FSM_onehot_rdDestAddrNib_D_t_q[0]_i_2_n_0 ),
        .I3(state22a_i_2_n_0),
        .I4(goto_readDestAdrNib1),
        .I5(Q[0]),
        .O(\FSM_onehot_rdDestAddrNib_D_t_q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[0]_i_2 
       (.I0(\FSM_onehot_rdDestAddrNib_D_t_q[0]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[7]),
        .I4(Q[3]),
        .I5(\FSM_onehot_rdDestAddrNib_D_t_q[0]_i_5_n_0 ),
        .O(\FSM_onehot_rdDestAddrNib_D_t_q[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[0]_i_4 
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(Q[11]),
        .O(\FSM_onehot_rdDestAddrNib_D_t_q[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[0]_i_5 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[4]),
        .O(\FSM_onehot_rdDestAddrNib_D_t_q[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFBB00B000880080)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[12]_i_2 
       (.I0(Q[11]),
        .I1(data_valid),
        .I2(dout[1]),
        .I3(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ),
        .I4(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ),
        .I5(\FSM_onehot_rdDestAddrNib_D_t_q_reg_n_0_[12] ),
        .O(\FSM_onehot_rdDestAddrNib_D_t_q[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFAFBFAFBFAFB0A00)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[12]_i_3 
       (.I0(checkingBroadcastAdr_reg_i_2_n_0),
        .I1(Q[1]),
        .I2(rxCrcRst),
        .I3(checkingBroadcastAdr_reg),
        .I4(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_2 ),
        .I5(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_3 ),
        .O(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFBBAABAAAAAAAAA)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[1]_i_1 
       (.I0(\FSM_onehot_rdDestAddrNib_D_t_q[1]_i_2_n_0 ),
        .I1(data_valid),
        .I2(dout[1]),
        .I3(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ),
        .I4(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ),
        .I5(Q[1]),
        .O(\FSM_onehot_rdDestAddrNib_D_t_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[1]_i_2 
       (.I0(Q[0]),
        .I1(data_valid),
        .I2(startReadDestAdrNib),
        .I3(dout[0]),
        .O(\FSM_onehot_rdDestAddrNib_D_t_q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBB00B000880080)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[5]_i_1 
       (.I0(Q[4]),
        .I1(data_valid),
        .I2(dout[1]),
        .I3(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ),
        .I4(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ),
        .I5(Q[5]),
        .O(\FSM_onehot_rdDestAddrNib_D_t_q[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBB00B000880080)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[7]_i_1 
       (.I0(Q[6]),
        .I1(data_valid),
        .I2(dout[1]),
        .I3(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ),
        .I4(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ),
        .I5(Q[7]),
        .O(\FSM_onehot_rdDestAddrNib_D_t_q[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBB00B000880080)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[9]_i_1 
       (.I0(Q[8]),
        .I1(data_valid),
        .I2(dout[1]),
        .I3(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ),
        .I4(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ),
        .I5(Q[9]),
        .O(\FSM_onehot_rdDestAddrNib_D_t_q[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_rdDestAddrNib_D_t_q[0]_i_1_n_0 ),
        .Q(Q[0]),
        .S(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[10]),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[11]),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_rdDestAddrNib_D_t_q[12]_i_2_n_0 ),
        .Q(\FSM_onehot_rdDestAddrNib_D_t_q_reg_n_0_[12] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_rdDestAddrNib_D_t_q[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[3]),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[4]),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_rdDestAddrNib_D_t_q[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[6]),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_rdDestAddrNib_D_t_q[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[8]),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_rdDestAddrNib_D_t_q[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'hF0808080)) 
    IP2INTC_IRPT_REG_I_i_2
       (.I0(rx_done),
        .I1(p_7_in),
        .I2(p_5_in),
        .I3(IP2INTC_IRPT_REG_I),
        .I4(IP2INTC_IRPT_REG_I_0),
        .O(D_1));
  LUT6 #(
    .INIT(64'hFF330030AA220020)) 
    \Mac_addr_ram_addr_rd[0]_i_11 
       (.I0(Q[11]),
        .I1(data_valid),
        .I2(dout[1]),
        .I3(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ),
        .I4(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ),
        .I5(Q[3]),
        .O(\Mac_addr_ram_addr_rd[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \Mac_addr_ram_addr_rd[0]_i_13 
       (.I0(Q[10]),
        .I1(Q[2]),
        .O(\FSM_onehot_rdDestAddrNib_D_t_q_reg[10]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h002D)) 
    \Mac_addr_ram_addr_rd[0]_i_2 
       (.I0(\Mac_addr_ram_addr_rd[0]_i_3_n_0 ),
        .I1(\Mac_addr_ram_addr_rd[0]_i_4_n_0 ),
        .I2(\Mac_addr_ram_addr_rd[0]_i_5_n_0 ),
        .I3(\Mac_addr_ram_addr_rd[0]_i_6_n_0 ),
        .O(mac_addr_ram_addr_rd_D[0]));
  LUT6 #(
    .INIT(64'h000C0000000C0004)) 
    \Mac_addr_ram_addr_rd[0]_i_3 
       (.I0(Q[1]),
        .I1(\Mac_addr_ram_addr_rd[0]_i_7_n_0 ),
        .I2(\Mac_addr_ram_addr_rd_reg[0]_2 ),
        .I3(\Mac_addr_ram_addr_rd_reg[0]_3 ),
        .I4(\Mac_addr_ram_addr_rd_reg[0]_4 ),
        .I5(Q[9]),
        .O(\Mac_addr_ram_addr_rd[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Mac_addr_ram_addr_rd[0]_i_4 
       (.I0(\FSM_onehot_rdDestAddrNib_D_t_q[7]_i_1_n_0 ),
        .I1(\FSM_onehot_rdDestAddrNib_D_t_q[1]_i_1_n_0 ),
        .I2(\FSM_onehot_rdDestAddrNib_D_t_q[9]_i_1_n_0 ),
        .I3(\FSM_onehot_rdDestAddrNib_D_t_q[5]_i_1_n_0 ),
        .I4(\Mac_addr_ram_addr_rd_reg[0]_1 ),
        .I5(\Mac_addr_ram_addr_rd[0]_i_11_n_0 ),
        .O(\Mac_addr_ram_addr_rd[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFAAEEAAFAAA)) 
    \Mac_addr_ram_addr_rd[0]_i_5 
       (.I0(\FSM_onehot_rdDestAddrNib_D_t_q[12]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(Q[7]),
        .I3(state22a_i_2_n_0),
        .I4(\Mac_addr_ram_addr_rd_reg[0]_5 ),
        .I5(\FSM_onehot_rdDestAddrNib_D_t_q[0]_i_5_n_0 ),
        .O(\Mac_addr_ram_addr_rd[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0DDD0DDD00000DDD)) 
    \Mac_addr_ram_addr_rd[0]_i_6 
       (.I0(Q[7]),
        .I1(\Mac_addr_ram_addr_rd_reg[0]_4 ),
        .I2(\FSM_onehot_rdDestAddrNib_D_t_q[0]_i_4_n_0 ),
        .I3(state22a_i_2_n_0),
        .I4(\FSM_onehot_rdDestAddrNib_D_t_q_reg_n_0_[12] ),
        .I5(\FSM_onehot_rdDestAddrNib_D_t_q_reg[0]_0 ),
        .O(\Mac_addr_ram_addr_rd[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00CCFFCF55DDFFDF)) 
    \Mac_addr_ram_addr_rd[0]_i_7 
       (.I0(Q[7]),
        .I1(data_valid),
        .I2(dout[1]),
        .I3(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ),
        .I4(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ),
        .I5(Q[11]),
        .O(\Mac_addr_ram_addr_rd[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hB004)) 
    \Mac_addr_ram_addr_rd[1]_i_1 
       (.I0(\Mac_addr_ram_addr_rd[0]_i_4_n_0 ),
        .I1(\Mac_addr_ram_addr_rd[0]_i_3_n_0 ),
        .I2(\Mac_addr_ram_addr_rd[0]_i_5_n_0 ),
        .I3(\Mac_addr_ram_addr_rd[0]_i_6_n_0 ),
        .O(mac_addr_ram_addr_rd_D[1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h6246)) 
    \Mac_addr_ram_addr_rd[2]_i_1 
       (.I0(\Mac_addr_ram_addr_rd[0]_i_4_n_0 ),
        .I1(\Mac_addr_ram_addr_rd[0]_i_3_n_0 ),
        .I2(\Mac_addr_ram_addr_rd[0]_i_5_n_0 ),
        .I3(\Mac_addr_ram_addr_rd[0]_i_6_n_0 ),
        .O(mac_addr_ram_addr_rd_D[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h5145)) 
    \Mac_addr_ram_addr_rd[3]_i_1 
       (.I0(\Mac_addr_ram_addr_rd[0]_i_4_n_0 ),
        .I1(\Mac_addr_ram_addr_rd[0]_i_3_n_0 ),
        .I2(\Mac_addr_ram_addr_rd[0]_i_5_n_0 ),
        .I3(\Mac_addr_ram_addr_rd[0]_i_6_n_0 ),
        .O(mac_addr_ram_addr_rd_D[3]));
  FDRE \Mac_addr_ram_addr_rd_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mac_addr_ram_addr_rd_D[0]),
        .Q(\Mac_addr_ram_addr_rd_reg[0]_0 [3]),
        .R(\Mac_addr_ram_addr_rd_reg[0]_6 ));
  FDRE \Mac_addr_ram_addr_rd_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mac_addr_ram_addr_rd_D[1]),
        .Q(\Mac_addr_ram_addr_rd_reg[0]_0 [2]),
        .R(\Mac_addr_ram_addr_rd_reg[0]_6 ));
  FDRE \Mac_addr_ram_addr_rd_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mac_addr_ram_addr_rd_D[2]),
        .Q(\Mac_addr_ram_addr_rd_reg[0]_0 [1]),
        .R(\Mac_addr_ram_addr_rd_reg[0]_6 ));
  FDRE \Mac_addr_ram_addr_rd_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mac_addr_ram_addr_rd_D[3]),
        .Q(\Mac_addr_ram_addr_rd_reg[0]_0 [0]),
        .R(\Mac_addr_ram_addr_rd_reg[0]_6 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    RX_DONE_D1_I_i_1
       (.I0(RX_DONE_D1_I_i_2_n_0),
        .I1(rxDone),
        .I2(\pkt_length_cnt_reg_n_0_[3] ),
        .I3(\pkt_length_cnt_reg_n_0_[2] ),
        .I4(\pkt_length_cnt_reg_n_0_[1] ),
        .I5(\pkt_length_cnt_reg_n_0_[0] ),
        .O(rx_done));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    RX_DONE_D1_I_i_2
       (.I0(\pkt_length_cnt_reg_n_0_[5] ),
        .I1(\pkt_length_cnt_reg_n_0_[4] ),
        .I2(\pkt_length_cnt_reg_n_0_[6] ),
        .O(RX_DONE_D1_I_i_2_n_0));
  FDRE busFifoData_is_5_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(busFifoData_is_5_d1_reg_0),
        .Q(busFifoData_is_5_d1),
        .R(SS));
  LUT4 #(
    .INIT(16'h0F04)) 
    checkingBroadcastAdr_reg_i_1
       (.I0(checkingBroadcastAdr_reg_i_2_n_0),
        .I1(Q[1]),
        .I2(rxCrcRst),
        .I3(checkingBroadcastAdr_reg),
        .O(p_20_in));
  LUT4 #(
    .INIT(16'h7FFF)) 
    checkingBroadcastAdr_reg_i_2
       (.I0(checkingBroadcastAdr_reg_reg_0[0]),
        .I1(checkingBroadcastAdr_reg_reg_0[2]),
        .I2(checkingBroadcastAdr_reg_reg_0[1]),
        .I3(checkingBroadcastAdr_reg_reg_0[3]),
        .O(checkingBroadcastAdr_reg_i_2_n_0));
  FDRE checkingBroadcastAdr_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_20_in),
        .Q(checkingBroadcastAdr_reg),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \crc_local[31]_i_1 
       (.I0(rxAbortRst),
        .I1(rxCrcRst),
        .I2(s_axi_aresetn),
        .O(state22a_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    crcokdelay
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D_0),
        .Q(crcokr1),
        .R(R));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h11F1)) 
    \pkt_length_cnt[0]_i_1 
       (.I0(\pkt_length_cnt_reg_n_0_[0] ),
        .I1(\pkt_length_cnt[2]_i_2_n_0 ),
        .I2(startReadDestAdrNib),
        .I3(dout[0]),
        .O(\pkt_length_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h0909FF09)) 
    \pkt_length_cnt[1]_i_1 
       (.I0(\pkt_length_cnt_reg_n_0_[1] ),
        .I1(\pkt_length_cnt_reg_n_0_[0] ),
        .I2(\pkt_length_cnt[2]_i_2_n_0 ),
        .I3(startReadDestAdrNib),
        .I4(dout[0]),
        .O(\pkt_length_cnt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF00E1)) 
    \pkt_length_cnt[2]_i_1 
       (.I0(\pkt_length_cnt_reg_n_0_[0] ),
        .I1(\pkt_length_cnt_reg_n_0_[1] ),
        .I2(\pkt_length_cnt_reg_n_0_[2] ),
        .I3(\pkt_length_cnt[2]_i_2_n_0 ),
        .I4(goto_readDestAdrNib1),
        .O(\pkt_length_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \pkt_length_cnt[2]_i_2 
       (.I0(\pkt_length_cnt_reg_n_0_[6] ),
        .I1(\pkt_length_cnt_reg_n_0_[5] ),
        .I2(\pkt_length_cnt_reg_n_0_[1] ),
        .I3(\pkt_length_cnt_reg_n_0_[2] ),
        .I4(\pkt_length_cnt_reg_n_0_[3] ),
        .I5(\pkt_length_cnt_reg_n_0_[4] ),
        .O(\pkt_length_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA9AAA8)) 
    \pkt_length_cnt[3]_i_1 
       (.I0(\pkt_length_cnt_reg_n_0_[3] ),
        .I1(\pkt_length_cnt_reg_n_0_[0] ),
        .I2(\pkt_length_cnt_reg_n_0_[1] ),
        .I3(\pkt_length_cnt_reg_n_0_[2] ),
        .I4(RX_DONE_D1_I_i_2_n_0),
        .I5(goto_readDestAdrNib1),
        .O(\pkt_length_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hFFFF5A58)) 
    \pkt_length_cnt[4]_i_1 
       (.I0(\pkt_length_cnt[4]_i_2_n_0 ),
        .I1(\pkt_length_cnt_reg_n_0_[6] ),
        .I2(\pkt_length_cnt_reg_n_0_[4] ),
        .I3(\pkt_length_cnt_reg_n_0_[5] ),
        .I4(goto_readDestAdrNib1),
        .O(\pkt_length_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \pkt_length_cnt[4]_i_2 
       (.I0(\pkt_length_cnt_reg_n_0_[0] ),
        .I1(\pkt_length_cnt_reg_n_0_[1] ),
        .I2(\pkt_length_cnt_reg_n_0_[2] ),
        .I3(\pkt_length_cnt_reg_n_0_[3] ),
        .O(\pkt_length_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h9898FF98)) 
    \pkt_length_cnt[5]_i_1 
       (.I0(\pkt_length_cnt_reg_n_0_[5] ),
        .I1(\pkt_length_cnt[6]_i_4_n_0 ),
        .I2(\pkt_length_cnt_reg_n_0_[6] ),
        .I3(startReadDestAdrNib),
        .I4(dout[0]),
        .O(\pkt_length_cnt[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \pkt_length_cnt[6]_i_1 
       (.I0(preamble_error_reg),
        .I1(s_axi_aresetn),
        .O(pkt_length_cnt0));
  LUT5 #(
    .INIT(32'hFF00D500)) 
    \pkt_length_cnt[6]_i_2 
       (.I0(Q[0]),
        .I1(startReadDataNib),
        .I2(dout[1]),
        .I3(data_valid),
        .I4(startReadDestAdrNib),
        .O(\pkt_length_cnt[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hE0E0FFE0)) 
    \pkt_length_cnt[6]_i_3 
       (.I0(\pkt_length_cnt[6]_i_4_n_0 ),
        .I1(\pkt_length_cnt_reg_n_0_[5] ),
        .I2(\pkt_length_cnt_reg_n_0_[6] ),
        .I3(startReadDestAdrNib),
        .I4(dout[0]),
        .O(\pkt_length_cnt[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pkt_length_cnt[6]_i_4 
       (.I0(\pkt_length_cnt_reg_n_0_[4] ),
        .I1(\pkt_length_cnt_reg_n_0_[3] ),
        .I2(\pkt_length_cnt_reg_n_0_[2] ),
        .I3(\pkt_length_cnt_reg_n_0_[1] ),
        .I4(\pkt_length_cnt_reg_n_0_[0] ),
        .O(\pkt_length_cnt[6]_i_4_n_0 ));
  FDRE \pkt_length_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\pkt_length_cnt[6]_i_2_n_0 ),
        .D(\pkt_length_cnt[0]_i_1_n_0 ),
        .Q(\pkt_length_cnt_reg_n_0_[0] ),
        .R(pkt_length_cnt0));
  FDRE \pkt_length_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\pkt_length_cnt[6]_i_2_n_0 ),
        .D(\pkt_length_cnt[1]_i_1_n_0 ),
        .Q(\pkt_length_cnt_reg_n_0_[1] ),
        .R(pkt_length_cnt0));
  FDRE \pkt_length_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\pkt_length_cnt[6]_i_2_n_0 ),
        .D(\pkt_length_cnt[2]_i_1_n_0 ),
        .Q(\pkt_length_cnt_reg_n_0_[2] ),
        .R(pkt_length_cnt0));
  FDRE \pkt_length_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\pkt_length_cnt[6]_i_2_n_0 ),
        .D(\pkt_length_cnt[3]_i_1_n_0 ),
        .Q(\pkt_length_cnt_reg_n_0_[3] ),
        .R(pkt_length_cnt0));
  FDRE \pkt_length_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(\pkt_length_cnt[6]_i_2_n_0 ),
        .D(\pkt_length_cnt[4]_i_1_n_0 ),
        .Q(\pkt_length_cnt_reg_n_0_[4] ),
        .R(pkt_length_cnt0));
  FDRE \pkt_length_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(\pkt_length_cnt[6]_i_2_n_0 ),
        .D(\pkt_length_cnt[5]_i_1_n_0 ),
        .Q(\pkt_length_cnt_reg_n_0_[5] ),
        .R(pkt_length_cnt0));
  FDRE \pkt_length_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(\pkt_length_cnt[6]_i_2_n_0 ),
        .D(\pkt_length_cnt[6]_i_3_n_0 ),
        .Q(\pkt_length_cnt_reg_n_0_[6] ),
        .R(pkt_length_cnt0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    preamble
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(preamble_0),
        .Q(preamble_error_reg),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hAAAA80AA)) 
    rxCrcEn_d1_i_1
       (.I0(data_valid),
        .I1(dout[1]),
        .I2(startReadDataNib),
        .I3(Q[0]),
        .I4(startReadDestAdrNib),
        .O(rxCrcEn));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rxbuffer_addr[11]_i_1 
       (.I0(rx_start),
        .I1(s_axi_aresetn),
        .O(state3a_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \rxbuffer_addr[11]_i_2 
       (.I0(data_valid),
        .I1(startReadDataNib),
        .I2(Q[0]),
        .I3(startReadDestAdrNib),
        .O(rx_addr_en));
  (* XILINX_LEGACY_PRIM = "FDS" *) 
  (* box_type = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1)) 
    state0a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D10_out),
        .Q(rxCrcRst),
        .S(SS));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF8A)) 
    state0a_i_1
       (.I0(rx_start),
        .I1(state0a_0),
        .I2(dout[1]),
        .I3(rxAbortRst),
        .I4(rxDone),
        .I5(state0a_1),
        .O(D10_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state17a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D11_out),
        .Q(startReadDataNib),
        .R(SS));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state18a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D12_out),
        .Q(crcCheck),
        .R(SS));
  LUT5 #(
    .INIT(32'hFE00FEF0)) 
    state18a_i_1
       (.I0(startReadDestAdrNib),
        .I1(sfd1CheckBusFifoEmpty),
        .I2(startReadDataNib),
        .I3(dout[0]),
        .I4(dout[1]),
        .O(D12_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state1a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D7_out),
        .Q(waitForSfd1),
        .R(SS));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state20a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D18_out),
        .Q(rxDone),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    state20a_i_1
       (.I0(crcCheck),
        .I1(crcokr1),
        .O(D18_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state22a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(state22a_i_1_n_0),
        .Q(rxAbortRst),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    state22a_i_1
       (.I0(state22a_i_2_n_0),
        .I1(preamble_error_reg),
        .I2(crcokr1),
        .I3(crcCheck),
        .O(state22a_i_1_n_0));
  LUT4 #(
    .INIT(16'hEFAA)) 
    state22a_i_2
       (.I0(Q[0]),
        .I1(empty),
        .I2(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ),
        .I3(dout[1]),
        .O(state22a_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state2a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D5_out),
        .Q(sfd1CheckBusFifoEmpty),
        .R(SS));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state3a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D13_out),
        .Q(rx_start),
        .R(SS));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state4a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D6_out),
        .Q(startReadDestAdrNib),
        .R(SS));
  LUT5 #(
    .INIT(32'h0000FFFD)) 
    \xpm_fifo_instance.xpm_fifo_async_inst_i_2 
       (.I0(\xpm_fifo_instance.xpm_fifo_async_inst_i_3_n_0 ),
        .I1(rxCrcRst),
        .I2(rxDone),
        .I3(sfd1CheckBusFifoEmpty),
        .I4(data_valid),
        .O(rd_en));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \xpm_fifo_instance.xpm_fifo_async_inst_i_3 
       (.I0(startReadDestAdrNib),
        .I1(Q[0]),
        .I2(startReadDataNib),
        .O(\xpm_fifo_instance.xpm_fifo_async_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h5F4F)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_1 
       (.I0(rx_DPM_adr__0),
        .I1(rx_addr_en),
        .I2(s_axi_aresetn),
        .I3(rxCrcRst),
        .O(\rxbuffer_addr_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h0000FB00)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_2 
       (.I0(startReadDataNib),
        .I1(Q[0]),
        .I2(startReadDestAdrNib),
        .I3(s_axi_aresetn),
        .I4(rx_DPM_adr__0),
        .O(state17a_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hAF8F)) 
    \xpm_mem_gen.xpm_memory_inst_2_i_1 
       (.I0(rx_DPM_adr__0),
        .I1(rx_addr_en),
        .I2(s_axi_aresetn),
        .I3(rxCrcRst),
        .O(ena));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hFB000000)) 
    \xpm_mem_gen.xpm_memory_inst_2_i_2 
       (.I0(startReadDataNib),
        .I1(Q[0]),
        .I2(startReadDestAdrNib),
        .I3(rx_DPM_adr__0),
        .I4(s_axi_aresetn),
        .O(wea));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transmit
   (STATE0A,
    SS,
    STATE17A,
    mac_addr_ram_we,
    mac_addr_ram_addr_wr,
    STATE10A,
    \txbuffer_addr_reg[9] ,
    s_axi_aresetn_0,
    STATE12A,
    s_axi_aresetn_1,
    tx_addr_en,
    \s_axi_wdata[4] ,
    prmry_vect_in,
    prmry_in,
    s_axi_aclk,
    phy_tx_clk,
    \emac_tx_wr_data_d1_reg[2]_0 ,
    \emac_tx_wr_data_d1_reg[3]_0 ,
    s_axi_aresetn,
    Q,
    S,
    phy_crs_d2,
    douta,
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ,
    select_2,
    p_11_in,
    mac_program_start_reg_reg,
    tx_done_d2,
    tx_clk_reg_d2,
    tx_clk_reg_d3,
    s_axi_wdata,
    tx_intr_en0,
    loopback_en);
  output STATE0A;
  output [0:0]SS;
  output STATE17A;
  output mac_addr_ram_we;
  output [0:3]mac_addr_ram_addr_wr;
  output STATE10A;
  output \txbuffer_addr_reg[9] ;
  output s_axi_aresetn_0;
  output STATE12A;
  output s_axi_aresetn_1;
  output tx_addr_en;
  output \s_axi_wdata[4] ;
  output [3:0]prmry_vect_in;
  output prmry_in;
  input s_axi_aclk;
  input phy_tx_clk;
  input \emac_tx_wr_data_d1_reg[2]_0 ;
  input \emac_tx_wr_data_d1_reg[3]_0 ;
  input s_axi_aresetn;
  input [15:0]Q;
  input [0:0]S;
  input phy_crs_d2;
  input [1:0]douta;
  input [1:0]\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  input select_2;
  input [0:0]p_11_in;
  input mac_program_start_reg_reg;
  input tx_done_d2;
  input tx_clk_reg_d2;
  input tx_clk_reg_d3;
  input [0:0]s_axi_wdata;
  input tx_intr_en0;
  input loopback_en;

  wire CDC_TX_EN_n_0;
  wire CE;
  wire CE_4;
  wire D20_out;
  wire D22_out;
  wire D23_out;
  wire D24_out;
  wire D9_out;
  wire [1:0]\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  wire INST_CRCCOUNTER_n_7;
  wire INST_TXBUSFIFOWRITENIBBLECOUNT_n_4;
  wire INST_TXBUSFIFOWRITENIBBLECOUNT_n_5;
  wire INST_TXNIBBLECOUNT_n_7;
  wire INST_TX_INTRFCE_n_10;
  wire INST_TX_INTRFCE_n_7;
  wire INST_TX_INTRFCE_n_9;
  wire INST_TX_STATE_MACHINE_n_24;
  wire INST_TX_STATE_MACHINE_n_32;
  wire INST_TX_STATE_MACHINE_n_34;
  wire INST_TX_STATE_MACHINE_n_41;
  wire INST_TX_STATE_MACHINE_n_48;
  wire INST_TX_STATE_MACHINE_n_49;
  wire INST_TX_STATE_MACHINE_n_50;
  wire INST_TX_STATE_MACHINE_n_51;
  wire INST_TX_STATE_MACHINE_n_52;
  wire \I_TX_FIFO/full ;
  wire \I_TX_FIFO/wr_rst_busy ;
  wire \NSR/nibData ;
  wire ONR_HOT_MUX_n_4;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_2 ;
  wire \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ;
  wire \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ;
  wire \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ;
  wire \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ;
  wire [15:0]Q;
  wire Rst0;
  wire [0:0]S;
  wire [0:0]SS;
  wire STATE0A;
  wire STATE10A;
  wire STATE12A;
  wire STATE17A;
  wire S_0;
  wire S_1;
  wire S_3;
  wire axi_phy_tx_en_i_p;
  wire axi_phy_tx_en_i_p0;
  wire [5:2]bus_combo;
  wire checkBusFifoFull;
  wire checkBusFifoFullCrc;
  wire checkBusFifoFullSFD;
  wire [0:3]crcCnt;
  wire crcComboRst;
  wire [8:11]currentTxBusFifoWrCnt;
  wire [0:11]currentTxNibbleCnt;
  wire [1:0]douta;
  wire emac_tx_wr_d1;
  wire [0:3]emac_tx_wr_data_d1;
  wire \emac_tx_wr_data_d1_reg[2]_0 ;
  wire \emac_tx_wr_data_d1_reg[3]_0 ;
  wire [0:3]emac_tx_wr_data_i;
  wire emac_tx_wr_i;
  wire emac_tx_wr_mod;
  wire enblCRC;
  wire enblData;
  wire enblPreamble;
  wire enblSFD;
  wire fifo_tx_en;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire ldLngthCntr;
  wire lngthDelay1;
  wire loopback_en;
  wire [0:3]mac_addr_ram_addr_wr;
  wire mac_addr_ram_we;
  wire mac_program_start_reg_reg;
  wire [16:19]mux_in_data;
  wire [0:0]p_11_in;
  wire [11:0]p_1_in;
  wire phy_crs_d2;
  wire phy_tx_clk;
  wire prmry_in;
  wire [3:0]prmry_vect_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire s_axi_aresetn_1;
  wire [0:0]s_axi_wdata;
  wire \s_axi_wdata[4] ;
  wire select_2;
  wire txComboBusFifoWrCntRst;
  wire txComboNibbleCntRst;
  wire txCrcEn;
  wire txCrcEn_reg;
  wire [0:11]txNibbleCnt_pad;
  wire [11:1]txNibbleCnt_pad0;
  wire \txNibbleCnt_pad0_inferred__0/i__carry__0_n_0 ;
  wire \txNibbleCnt_pad0_inferred__0/i__carry__0_n_1 ;
  wire \txNibbleCnt_pad0_inferred__0/i__carry__0_n_2 ;
  wire \txNibbleCnt_pad0_inferred__0/i__carry__0_n_3 ;
  wire \txNibbleCnt_pad0_inferred__0/i__carry__1_n_2 ;
  wire \txNibbleCnt_pad0_inferred__0/i__carry__1_n_3 ;
  wire \txNibbleCnt_pad0_inferred__0/i__carry_n_0 ;
  wire \txNibbleCnt_pad0_inferred__0/i__carry_n_1 ;
  wire \txNibbleCnt_pad0_inferred__0/i__carry_n_2 ;
  wire \txNibbleCnt_pad0_inferred__0/i__carry_n_3 ;
  wire tx_addr_en;
  wire tx_clk_reg_d2;
  wire tx_clk_reg_d3;
  wire tx_d_rst;
  wire tx_done_d2;
  wire tx_en_i;
  wire tx_en_mod;
  wire tx_intr_en0;
  wire \txbuffer_addr_reg[9] ;
  wire txfifo_empty;
  wire waitFifoEmpty;
  wire [3:2]\NLW_txNibbleCnt_pad0_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_txNibbleCnt_pad0_inferred__0/i__carry__1_O_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0_2 CDC_PHY_TX_RST
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (SS),
        .phy_tx_clk(phy_tx_clk),
        .scndry_out(tx_d_rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0_3 CDC_TX_EN
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0 (CDC_TX_EN_n_0),
        .phy_tx_clk(phy_tx_clk),
        .prmry_in(tx_en_i),
        .scndry_out(tx_d_rst));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1 
       (.I0(axi_phy_tx_en_i_p),
        .I1(bus_combo[2]),
        .O(prmry_vect_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1 
       (.I0(axi_phy_tx_en_i_p),
        .I1(bus_combo[3]),
        .O(prmry_vect_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1 
       (.I0(axi_phy_tx_en_i_p),
        .I1(bus_combo[4]),
        .O(prmry_vect_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1 
       (.I0(axi_phy_tx_en_i_p),
        .I1(bus_combo[5]),
        .O(prmry_vect_in[3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ld_arith_reg__parameterized1 INST_CRCCOUNTER
       (.CE(CE),
        .D9_out(D9_out),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 (SS),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .S(S_0),
        .STATE14A(INST_CRCCOUNTER_n_7),
        .STATE15A(INST_TX_INTRFCE_n_10),
        .checkBusFifoFullCrc(checkBusFifoFullCrc),
        .crcCnt(crcCnt),
        .din(tx_en_mod),
        .enblCRC(enblCRC),
        .\gen_rd_b.doutb_reg_reg[1] (INST_TX_STATE_MACHINE_n_32),
        .\gwack.wr_ack_i_reg (INST_TX_STATE_MACHINE_n_41),
        .s_axi_aclk(s_axi_aclk),
        .wr_en(emac_tx_wr_mod));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_crcgentx INST_CRCGENTX
       (.E(\NSR/nibData ),
        .Q({mux_in_data[16],mux_in_data[17],mux_in_data[18],mux_in_data[19]}),
        .SR(crcComboRst),
        .\nibData_reg[30] ({emac_tx_wr_data_d1[0],emac_tx_wr_data_d1[1],emac_tx_wr_data_d1[2],emac_tx_wr_data_d1[3]}),
        .s_axi_aclk(s_axi_aclk),
        .txCrcEn_reg(txCrcEn_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_deferral INST_DEFERRAL_CONTROL
       (.D23_out(D23_out),
        .D24_out(D24_out),
        .\FSM_sequential_thisState_reg[1] (INST_TX_STATE_MACHINE_n_32),
        .STATE8A(INST_TXBUSFIFOWRITENIBBLECOUNT_n_4),
        .enblPreamble(enblPreamble),
        .ldLngthCntr(ldLngthCntr),
        .lngthDelay1(lngthDelay1),
        .phy_crs_d2(phy_crs_d2),
        .s_axi_aclk(s_axi_aclk),
        .tx_clk_reg_d2(tx_clk_reg_d2),
        .tx_clk_reg_d3(tx_clk_reg_d3),
        .zero_i_reg(SS));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ld_arith_reg__parameterized0 INST_TXBUSFIFOWRITENIBBLECOUNT
       (.\PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg (\PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ),
        .\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 (INST_TXBUSFIFOWRITENIBBLECOUNT_n_5),
        .\PERBIT_GEN[8].FF_RST0_GEN.FDRE_i1_0 (INST_TXBUSFIFOWRITENIBBLECOUNT_n_4),
        .\PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg (\PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ),
        .\PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg (\PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ),
        .S(S_1),
        .currentTxBusFifoWrCnt({currentTxBusFifoWrCnt[8],currentTxBusFifoWrCnt[9],currentTxBusFifoWrCnt[10],currentTxBusFifoWrCnt[11]}),
        .emac_tx_wr_i(emac_tx_wr_i),
        .s_axi_aclk(s_axi_aclk),
        .txComboBusFifoWrCntRst(txComboBusFifoWrCntRst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ld_arith_reg INST_TXNIBBLECOUNT
       (.CE(CE_4),
        .D22_out(D22_out),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ({currentTxNibbleCnt[0],currentTxNibbleCnt[6],currentTxNibbleCnt[7],currentTxNibbleCnt[8],currentTxNibbleCnt[9],currentTxNibbleCnt[10],currentTxNibbleCnt[11]}),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_2 ),
        .\PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ),
        .Q(Q),
        .S(S_3),
        .enblData(enblData),
        .s_axi_aclk(s_axi_aclk),
        .txComboNibbleCntRst(txComboNibbleCntRst),
        .\tx_packet_length_reg[14] (INST_TXNIBBLECOUNT_n_7));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx_intrfce INST_TX_INTRFCE
       (.D20_out(D20_out),
        .D22_out(D22_out),
        .STATE10A(INST_TXBUSFIFOWRITENIBBLECOUNT_n_5),
        .STATE16A(INST_CRCCOUNTER_n_7),
        .axi_phy_tx_en_i_p(axi_phy_tx_en_i_p),
        .checkBusFifoFull(checkBusFifoFull),
        .checkBusFifoFullSFD(checkBusFifoFullSFD),
        .din({emac_tx_wr_data_i[0],emac_tx_wr_data_i[1],emac_tx_wr_data_i[2],emac_tx_wr_data_i[3],tx_en_mod}),
        .dout(bus_combo),
        .enblSFD(enblSFD),
        .full(\I_TX_FIFO/full ),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (INST_TX_INTRFCE_n_7),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 (INST_TX_INTRFCE_n_9),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 (INST_TX_INTRFCE_n_10),
        .phy_tx_clk(phy_tx_clk),
        .prmry_in(prmry_in),
        .rd_en(fifo_tx_en),
        .rst(Rst0),
        .s_axi_aclk(s_axi_aclk),
        .txfifo_empty(txfifo_empty),
        .waitFifoEmpty(waitFifoEmpty),
        .wr_en(emac_tx_wr_mod),
        .wr_rst_busy(\I_TX_FIFO/wr_rst_busy ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx_statemachine INST_TX_STATE_MACHINE
       (.CE(CE_4),
        .CE_1(CE),
        .D(p_1_in),
        .D20_out(D20_out),
        .D22_out(D22_out),
        .D23_out(D23_out),
        .D24_out(D24_out),
        .D9_out(D9_out),
        .E(\NSR/nibData ),
        .\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I (\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ({currentTxNibbleCnt[0],currentTxNibbleCnt[6],currentTxNibbleCnt[7],currentTxNibbleCnt[8],currentTxNibbleCnt[9],currentTxNibbleCnt[10],currentTxNibbleCnt[11]}),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_2 ),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_4 (\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg (\PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ),
        .\PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg (\PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ),
        .\PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg (\PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ),
        .\PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ),
        .Q(Q[10:0]),
        .S(S),
        .SR(crcComboRst),
        .STATE0A_0(STATE0A),
        .STATE10A_0(STATE10A),
        .STATE10A_1(INST_TX_INTRFCE_n_9),
        .STATE11A_0(INST_TX_INTRFCE_n_10),
        .STATE11A_1(INST_TXBUSFIFOWRITENIBBLECOUNT_n_5),
        .STATE12A_0(INST_TX_STATE_MACHINE_n_24),
        .STATE12A_1(STATE12A),
        .STATE15A_0(INST_TX_STATE_MACHINE_n_41),
        .STATE15A_1(INST_TX_STATE_MACHINE_n_48),
        .STATE15A_2(INST_TX_STATE_MACHINE_n_49),
        .STATE15A_3(INST_TX_STATE_MACHINE_n_50),
        .STATE15A_4(INST_TX_STATE_MACHINE_n_51),
        .STATE16A_0(INST_TX_INTRFCE_n_7),
        .STATE17A_0(STATE17A),
        .STATE9A_0(INST_TXBUSFIFOWRITENIBBLECOUNT_n_4),
        .S_0(S_3),
        .S_2(S_1),
        .S_3(S_0),
        .axi_phy_tx_en_i_p0(axi_phy_tx_en_i_p0),
        .checkBusFifoFull(checkBusFifoFull),
        .checkBusFifoFullCrc(checkBusFifoFullCrc),
        .checkBusFifoFullSFD(checkBusFifoFullSFD),
        .crcCnt(crcCnt),
        .currentTxBusFifoWrCnt({currentTxBusFifoWrCnt[8],currentTxBusFifoWrCnt[9],currentTxBusFifoWrCnt[10],currentTxBusFifoWrCnt[11]}),
        .douta(douta),
        .emac_tx_wr_d1(emac_tx_wr_d1),
        .\emac_tx_wr_data_d1_reg[0] ({mux_in_data[16],mux_in_data[17],mux_in_data[18],mux_in_data[19]}),
        .emac_tx_wr_i(emac_tx_wr_i),
        .enblCRC(enblCRC),
        .enblData(enblData),
        .enblPreamble(enblPreamble),
        .enblSFD(enblSFD),
        .full(\I_TX_FIFO/full ),
        .\gen_wr_b.gen_word_wide.mem_reg (INST_TX_STATE_MACHINE_n_34),
        .\gen_wr_b.gen_word_wide.mem_reg_0 (INST_TX_STATE_MACHINE_n_52),
        .ldLngthCntr(ldLngthCntr),
        .lngthDelay1(lngthDelay1),
        .loopback_en(loopback_en),
        .mac_addr_ram_addr_wr(mac_addr_ram_addr_wr),
        .mac_addr_ram_we(mac_addr_ram_we),
        .mac_program_start_reg_reg_0(mac_program_start_reg_reg),
        .p_11_in(p_11_in),
        .phytx_en_reg_reg_0(INST_TX_STATE_MACHINE_n_32),
        .prmry_in(tx_en_i),
        .rst(Rst0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(SS),
        .s_axi_aresetn_1(s_axi_aresetn_0),
        .s_axi_aresetn_2(s_axi_aresetn_1),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[4] (\s_axi_wdata[4] ),
        .select_2(select_2),
        .txComboBusFifoWrCntRst(txComboBusFifoWrCntRst),
        .txComboNibbleCntRst(txComboNibbleCntRst),
        .txCrcEn(txCrcEn),
        .txCrcEn_reg(txCrcEn_reg),
        .txNibbleCnt_pad0(txNibbleCnt_pad0),
        .\txNibbleCnt_pad_reg[0] (ONR_HOT_MUX_n_4),
        .\txNibbleCnt_pad_reg[11] (INST_TXNIBBLECOUNT_n_7),
        .\txNibbleCnt_pad_reg[11]_0 (txNibbleCnt_pad[11]),
        .tx_addr_en(tx_addr_en),
        .tx_done_d2(tx_done_d2),
        .tx_intr_en0(tx_intr_en0),
        .\txbuffer_addr_reg[9] (\txbuffer_addr_reg[9] ),
        .txfifo_empty(txfifo_empty),
        .waitFifoEmpty(waitFifoEmpty),
        .wr_rst_busy(\I_TX_FIFO/wr_rst_busy ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux_onehot_f ONR_HOT_MUX
       (.D({emac_tx_wr_data_i[0],emac_tx_wr_data_i[1],emac_tx_wr_data_i[2],emac_tx_wr_data_i[3]}),
        .Q({txNibbleCnt_pad[0],txNibbleCnt_pad[1],txNibbleCnt_pad[2],txNibbleCnt_pad[3],txNibbleCnt_pad[4],txNibbleCnt_pad[5],txNibbleCnt_pad[6],txNibbleCnt_pad[7],txNibbleCnt_pad[8],txNibbleCnt_pad[9],txNibbleCnt_pad[10],txNibbleCnt_pad[11]}),
        .\emac_tx_wr_data_d1_reg[0] (INST_TX_STATE_MACHINE_n_52),
        .\emac_tx_wr_data_d1_reg[0]_0 (INST_TX_STATE_MACHINE_n_51),
        .\emac_tx_wr_data_d1_reg[1] (INST_TX_STATE_MACHINE_n_34),
        .\emac_tx_wr_data_d1_reg[1]_0 (INST_TX_STATE_MACHINE_n_50),
        .\emac_tx_wr_data_d1_reg[2] (\emac_tx_wr_data_d1_reg[2]_0 ),
        .\emac_tx_wr_data_d1_reg[2]_0 (INST_TX_STATE_MACHINE_n_49),
        .\emac_tx_wr_data_d1_reg[3] (\emac_tx_wr_data_d1_reg[3]_0 ),
        .\emac_tx_wr_data_d1_reg[3]_0 (INST_TX_STATE_MACHINE_n_48),
        .\txNibbleCnt_pad_reg[0] (ONR_HOT_MUX_n_4));
  FDRE axi_phy_tx_en_i_p_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_phy_tx_en_i_p0),
        .Q(axi_phy_tx_en_i_p),
        .R(SS));
  FDRE emac_tx_wr_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(emac_tx_wr_i),
        .Q(emac_tx_wr_d1),
        .R(SS));
  FDRE \emac_tx_wr_data_d1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(emac_tx_wr_data_i[0]),
        .Q(emac_tx_wr_data_d1[0]),
        .R(SS));
  FDRE \emac_tx_wr_data_d1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(emac_tx_wr_data_i[1]),
        .Q(emac_tx_wr_data_d1[1]),
        .R(SS));
  FDRE \emac_tx_wr_data_d1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(emac_tx_wr_data_i[2]),
        .Q(emac_tx_wr_data_d1[2]),
        .R(SS));
  FDRE \emac_tx_wr_data_d1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(emac_tx_wr_data_i[3]),
        .Q(emac_tx_wr_data_d1[3]),
        .R(SS));
  FDRE fifo_tx_en_reg
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(CDC_TX_EN_n_0),
        .Q(fifo_tx_en),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(txNibbleCnt_pad[3]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(txNibbleCnt_pad[4]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(txNibbleCnt_pad[5]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(txNibbleCnt_pad[6]),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(txNibbleCnt_pad[0]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(txNibbleCnt_pad[1]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(txNibbleCnt_pad[2]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(txNibbleCnt_pad[7]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(txNibbleCnt_pad[8]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(txNibbleCnt_pad[9]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(txNibbleCnt_pad[10]),
        .O(i__carry_i_4_n_0));
  CARRY4 \txNibbleCnt_pad0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\txNibbleCnt_pad0_inferred__0/i__carry_n_0 ,\txNibbleCnt_pad0_inferred__0/i__carry_n_1 ,\txNibbleCnt_pad0_inferred__0/i__carry_n_2 ,\txNibbleCnt_pad0_inferred__0/i__carry_n_3 }),
        .CYINIT(txNibbleCnt_pad[11]),
        .DI({txNibbleCnt_pad[7],txNibbleCnt_pad[8],txNibbleCnt_pad[9],txNibbleCnt_pad[10]}),
        .O(txNibbleCnt_pad0[4:1]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \txNibbleCnt_pad0_inferred__0/i__carry__0 
       (.CI(\txNibbleCnt_pad0_inferred__0/i__carry_n_0 ),
        .CO({\txNibbleCnt_pad0_inferred__0/i__carry__0_n_0 ,\txNibbleCnt_pad0_inferred__0/i__carry__0_n_1 ,\txNibbleCnt_pad0_inferred__0/i__carry__0_n_2 ,\txNibbleCnt_pad0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({txNibbleCnt_pad[3],txNibbleCnt_pad[4],txNibbleCnt_pad[5],txNibbleCnt_pad[6]}),
        .O(txNibbleCnt_pad0[8:5]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \txNibbleCnt_pad0_inferred__0/i__carry__1 
       (.CI(\txNibbleCnt_pad0_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_txNibbleCnt_pad0_inferred__0/i__carry__1_CO_UNCONNECTED [3:2],\txNibbleCnt_pad0_inferred__0/i__carry__1_n_2 ,\txNibbleCnt_pad0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,txNibbleCnt_pad[1],txNibbleCnt_pad[2]}),
        .O({\NLW_txNibbleCnt_pad0_inferred__0/i__carry__1_O_UNCONNECTED [3],txNibbleCnt_pad0[11:9]}),
        .S({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  FDRE \txNibbleCnt_pad_reg[0] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_24),
        .D(p_1_in[11]),
        .Q(txNibbleCnt_pad[0]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[10] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_24),
        .D(p_1_in[1]),
        .Q(txNibbleCnt_pad[10]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[11] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_24),
        .D(p_1_in[0]),
        .Q(txNibbleCnt_pad[11]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[1] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_24),
        .D(p_1_in[10]),
        .Q(txNibbleCnt_pad[1]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[2] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_24),
        .D(p_1_in[9]),
        .Q(txNibbleCnt_pad[2]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[3] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_24),
        .D(p_1_in[8]),
        .Q(txNibbleCnt_pad[3]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[4] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_24),
        .D(p_1_in[7]),
        .Q(txNibbleCnt_pad[4]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[5] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_24),
        .D(p_1_in[6]),
        .Q(txNibbleCnt_pad[5]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[6] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_24),
        .D(p_1_in[5]),
        .Q(txNibbleCnt_pad[6]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[7] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_24),
        .D(p_1_in[4]),
        .Q(txNibbleCnt_pad[7]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[8] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_24),
        .D(p_1_in[3]),
        .Q(txNibbleCnt_pad[8]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[9] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_24),
        .D(p_1_in[2]),
        .Q(txNibbleCnt_pad[9]),
        .R(SS));
  FDRE txcrcen_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(txCrcEn),
        .Q(txCrcEn_reg),
        .R(SS));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx_intrfce
   (full,
    wr_rst_busy,
    dout,
    txfifo_empty,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    D20_out,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ,
    prmry_in,
    rst,
    s_axi_aclk,
    wr_en,
    din,
    phy_tx_clk,
    rd_en,
    STATE16A,
    waitFifoEmpty,
    checkBusFifoFull,
    D22_out,
    checkBusFifoFullSFD,
    STATE10A,
    enblSFD,
    axi_phy_tx_en_i_p);
  output full;
  output wr_rst_busy;
  output [3:0]dout;
  output txfifo_empty;
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  output D20_out;
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ;
  output prmry_in;
  input rst;
  input s_axi_aclk;
  input wr_en;
  input [4:0]din;
  input phy_tx_clk;
  input rd_en;
  input STATE16A;
  input waitFifoEmpty;
  input checkBusFifoFull;
  input D22_out;
  input checkBusFifoFullSFD;
  input STATE10A;
  input enblSFD;
  input axi_phy_tx_en_i_p;

  wire D20_out;
  wire D22_out;
  wire STATE10A;
  wire STATE16A;
  wire axi_phy_tx_en_i_p;
  wire checkBusFifoFull;
  wire checkBusFifoFullSFD;
  wire [4:0]din;
  wire [3:0]dout;
  wire enblSFD;
  wire fifo_empty_c;
  wire fifo_empty_i;
  wire full;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire phy_tx_clk;
  wire prmry_in;
  wire rd_en;
  wire rst;
  wire s_axi_aclk;
  wire txfifo_empty;
  wire waitFifoEmpty;
  wire wr_en;
  wire wr_rst_busy;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2 CDC_FIFO_EMPTY
       (.prmry_in(fifo_empty_i),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(fifo_empty_c));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo_fg I_TX_FIFO
       (.D20_out(D20_out),
        .D22_out(D22_out),
        .STATE10A(STATE10A),
        .STATE16A(STATE16A),
        .axi_phy_tx_en_i_p(axi_phy_tx_en_i_p),
        .checkBusFifoFull(checkBusFifoFull),
        .checkBusFifoFullSFD(checkBusFifoFullSFD),
        .din(din),
        .dout(dout),
        .empty(fifo_empty_i),
        .enblSFD(enblSFD),
        .full(full),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ),
        .phy_tx_clk(phy_tx_clk),
        .prmry_in(prmry_in),
        .rd_en(rd_en),
        .rst(rst),
        .s_axi_aclk(s_axi_aclk),
        .txfifo_empty(txfifo_empty),
        .waitFifoEmpty(waitFifoEmpty),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    pipeIt
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_empty_c),
        .Q(txfifo_empty),
        .R(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx_statemachine
   (STATE0A_0,
    s_axi_aresetn_0,
    lngthDelay1,
    ldLngthCntr,
    enblPreamble,
    checkBusFifoFullSFD,
    enblSFD,
    checkBusFifoFull,
    enblData,
    checkBusFifoFullCrc,
    enblCRC,
    waitFifoEmpty,
    STATE17A_0,
    prmry_in,
    mac_addr_ram_we,
    mac_addr_ram_addr_wr,
    txCrcEn,
    STATE10A_0,
    E,
    CE,
    S_0,
    STATE12A_0,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,
    \txbuffer_addr_reg[9] ,
    s_axi_aresetn_1,
    rst,
    axi_phy_tx_en_i_p0,
    SR,
    CE_1,
    phytx_en_reg_reg_0,
    txComboBusFifoWrCntRst,
    \gen_wr_b.gen_word_wide.mem_reg ,
    STATE12A_1,
    \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ,
    \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ,
    \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ,
    emac_tx_wr_i,
    S_2,
    STATE15A_0,
    S_3,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,
    txComboNibbleCntRst,
    s_axi_aresetn_2,
    tx_addr_en,
    STATE15A_1,
    STATE15A_2,
    STATE15A_3,
    STATE15A_4,
    \gen_wr_b.gen_word_wide.mem_reg_0 ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_4 ,
    \s_axi_wdata[4] ,
    \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ,
    D,
    s_axi_aclk,
    D23_out,
    D24_out,
    STATE10A_1,
    D20_out,
    D22_out,
    D9_out,
    STATE16A_0,
    s_axi_aresetn,
    txCrcEn_reg,
    emac_tx_wr_d1,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ,
    \txNibbleCnt_pad_reg[11] ,
    Q,
    S,
    douta,
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ,
    select_2,
    currentTxBusFifoWrCnt,
    p_11_in,
    mac_program_start_reg_reg_0,
    tx_done_d2,
    crcCnt,
    STATE11A_0,
    STATE11A_1,
    \emac_tx_wr_data_d1_reg[0] ,
    \txNibbleCnt_pad_reg[0] ,
    wr_rst_busy,
    full,
    STATE9A_0,
    txfifo_empty,
    s_axi_wdata,
    tx_intr_en0,
    loopback_en,
    txNibbleCnt_pad0,
    \txNibbleCnt_pad_reg[11]_0 );
  output STATE0A_0;
  output s_axi_aresetn_0;
  output lngthDelay1;
  output ldLngthCntr;
  output enblPreamble;
  output checkBusFifoFullSFD;
  output enblSFD;
  output checkBusFifoFull;
  output enblData;
  output checkBusFifoFullCrc;
  output enblCRC;
  output waitFifoEmpty;
  output STATE17A_0;
  output prmry_in;
  output mac_addr_ram_we;
  output [0:3]mac_addr_ram_addr_wr;
  output txCrcEn;
  output STATE10A_0;
  output [0:0]E;
  output CE;
  output S_0;
  output [0:0]STATE12A_0;
  output \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  output \txbuffer_addr_reg[9] ;
  output s_axi_aresetn_1;
  output rst;
  output axi_phy_tx_en_i_p0;
  output [0:0]SR;
  output CE_1;
  output phytx_en_reg_reg_0;
  output txComboBusFifoWrCntRst;
  output \gen_wr_b.gen_word_wide.mem_reg ;
  output STATE12A_1;
  output \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ;
  output \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ;
  output \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ;
  output emac_tx_wr_i;
  output S_2;
  output STATE15A_0;
  output S_3;
  output \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  output txComboNibbleCntRst;
  output s_axi_aresetn_2;
  output tx_addr_en;
  output STATE15A_1;
  output STATE15A_2;
  output STATE15A_3;
  output STATE15A_4;
  output \gen_wr_b.gen_word_wide.mem_reg_0 ;
  output \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_4 ;
  output \s_axi_wdata[4] ;
  output \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  output [11:0]D;
  input s_axi_aclk;
  input D23_out;
  input D24_out;
  input STATE10A_1;
  input D20_out;
  input D22_out;
  input D9_out;
  input STATE16A_0;
  input s_axi_aresetn;
  input txCrcEn_reg;
  input emac_tx_wr_d1;
  input [6:0]\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ;
  input \txNibbleCnt_pad_reg[11] ;
  input [10:0]Q;
  input [0:0]S;
  input [1:0]douta;
  input [1:0]\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  input select_2;
  input [3:0]currentTxBusFifoWrCnt;
  input [0:0]p_11_in;
  input mac_program_start_reg_reg_0;
  input tx_done_d2;
  input [0:3]crcCnt;
  input STATE11A_0;
  input STATE11A_1;
  input [3:0]\emac_tx_wr_data_d1_reg[0] ;
  input \txNibbleCnt_pad_reg[0] ;
  input wr_rst_busy;
  input full;
  input STATE9A_0;
  input txfifo_empty;
  input [0:0]s_axi_wdata;
  input tx_intr_en0;
  input loopback_en;
  input [10:0]txNibbleCnt_pad0;
  input [0:0]\txNibbleCnt_pad_reg[11]_0 ;

  wire CE;
  wire CE_1;
  wire [11:0]D;
  wire D20_out;
  wire D22_out;
  wire D23_out;
  wire D24_out;
  wire D25_out;
  wire D27_out;
  wire D28_out;
  wire D30_out;
  wire D9_out;
  wire D_0;
  wire [0:0]E;
  wire [1:0]\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  wire \Mac_addr_ram_addr_wr[0]_i_1_n_0 ;
  wire \Mac_addr_ram_addr_wr[0]_i_2_n_0 ;
  wire \Mac_addr_ram_addr_wr[0]_i_3_n_0 ;
  wire \Mac_addr_ram_addr_wr[0]_i_4_n_0 ;
  wire \Mac_addr_ram_addr_wr[1]_i_1_n_0 ;
  wire \Mac_addr_ram_addr_wr[1]_i_2_n_0 ;
  wire \Mac_addr_ram_addr_wr[2]_i_1_n_0 ;
  wire \Mac_addr_ram_addr_wr[2]_i_2_n_0 ;
  wire \Mac_addr_ram_addr_wr[2]_i_3_n_0 ;
  wire \Mac_addr_ram_addr_wr[2]_i_4_n_0 ;
  wire \Mac_addr_ram_addr_wr[3]_i_1_n_0 ;
  wire \Mac_addr_ram_addr_wr[3]_i_2_n_0 ;
  wire \Mac_addr_ram_addr_wr[3]_i_3_n_0 ;
  wire Mac_addr_ram_we_i_1_n_0;
  wire [6:0]\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_4 ;
  wire \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ;
  wire \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ;
  wire \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ;
  wire \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ;
  wire [10:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire STATE0A_0;
  wire STATE10A_0;
  wire STATE10A_1;
  wire STATE11A_0;
  wire STATE11A_1;
  wire [0:0]STATE12A_0;
  wire STATE12A_1;
  wire STATE15A_0;
  wire STATE15A_1;
  wire STATE15A_2;
  wire STATE15A_3;
  wire STATE15A_4;
  wire STATE16A_0;
  wire STATE17A_0;
  wire STATE26A_i_1_n_0;
  wire STATE5A_i_1_n_0;
  wire STATE9A_0;
  wire S_0;
  wire S_2;
  wire S_3;
  wire axi_fifo_tx_en;
  wire axi_phy_tx_en_i_p0;
  wire busFifoWrCntRst_reg;
  wire checkBusFifoFull;
  wire checkBusFifoFullCrc;
  wire checkBusFifoFullSFD;
  wire checkCrc;
  wire chgMacAdr1;
  wire chgMacAdr10;
  wire chgMacAdr11;
  wire chgMacAdr12;
  wire chgMacAdr13;
  wire chgMacAdr14;
  wire chgMacAdr2;
  wire chgMacAdr3;
  wire chgMacAdr4;
  wire chgMacAdr5;
  wire chgMacAdr6;
  wire chgMacAdr7;
  wire chgMacAdr8;
  wire chgMacAdr9;
  wire [0:3]crcCnt;
  wire [3:0]currentTxBusFifoWrCnt;
  wire [1:0]douta;
  wire emac_tx_wr_d1;
  wire [3:0]\emac_tx_wr_data_d1_reg[0] ;
  wire emac_tx_wr_i;
  wire enblCRC;
  wire enblData;
  wire enblPreamble;
  wire enblSFD;
  wire full;
  wire \gen_wr_b.gen_word_wide.mem_reg ;
  wire \gen_wr_b.gen_word_wide.mem_reg_0 ;
  wire ldLngthCntr;
  wire lngthDelay1;
  wire lngthDelay2;
  wire loopback_en;
  wire [0:3]mac_addr_ram_addr_wr;
  wire mac_addr_ram_we;
  wire mac_program_start;
  wire mac_program_start_reg;
  wire mac_program_start_reg_reg_0;
  wire [0:0]p_11_in;
  wire phytx_en_reg_reg_0;
  wire prmry_in;
  wire rst;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire s_axi_aresetn_1;
  wire s_axi_aresetn_2;
  wire [0:0]s_axi_wdata;
  wire \s_axi_wdata[4] ;
  wire select_2;
  wire transmit_start;
  wire transmit_start_reg;
  wire txBusFifoWrCntRst;
  wire txComboBusFifoWrCntRst;
  wire txComboNibbleCntRst;
  wire txCrcEn;
  wire txCrcEn_reg;
  wire txDone2;
  wire txDonePause;
  wire [10:0]txNibbleCnt_pad0;
  wire \txNibbleCnt_pad_reg[0] ;
  wire \txNibbleCnt_pad_reg[11] ;
  wire [0:0]\txNibbleCnt_pad_reg[11]_0 ;
  wire tx_addr_en;
  wire tx_done_d2;
  wire tx_intr_en0;
  wire \txbuffer_addr[11]_i_4_n_0 ;
  wire \txbuffer_addr_reg[9] ;
  wire txcrcen_d1_i_2_n_0;
  wire txfifo_empty;
  wire waitFifoEmpty;
  wire wr_rst_busy;
  wire \xpm_mem_gen.xpm_memory_inst_1_i_4_n_0 ;
  wire \xpm_mem_gen.xpm_memory_inst_1_i_6_n_0 ;
  wire \xpm_mem_gen.xpm_memory_inst_1_i_8_n_0 ;

  LUT6 #(
    .INIT(64'h00000000FFFF775F)) 
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(STATE12A_1),
        .I1(douta[1]),
        .I2(\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I [1]),
        .I3(select_2),
        .I4(STATE0A_0),
        .I5(enblSFD),
        .O(\gen_wr_b.gen_word_wide.mem_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2 
       (.I0(enblData),
        .I1(\txNibbleCnt_pad_reg[0] ),
        .O(STATE12A_1));
  LUT2 #(
    .INIT(4'h7)) 
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(enblCRC),
        .I1(\emac_tx_wr_data_d1_reg[0] [3]),
        .O(STATE15A_4));
  LUT6 #(
    .INIT(64'hFFFF775F00000000)) 
    \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(STATE12A_1),
        .I1(douta[0]),
        .I2(\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I [0]),
        .I3(select_2),
        .I4(STATE0A_0),
        .I5(STATE10A_0),
        .O(\gen_wr_b.gen_word_wide.mem_reg ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2 
       (.I0(enblSFD),
        .I1(enblPreamble),
        .O(STATE10A_0));
  LUT2 #(
    .INIT(4'h7)) 
    \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(enblCRC),
        .I1(\emac_tx_wr_data_d1_reg[0] [2]),
        .O(STATE15A_3));
  LUT2 #(
    .INIT(4'h7)) 
    \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(enblCRC),
        .I1(\emac_tx_wr_data_d1_reg[0] [1]),
        .O(STATE15A_2));
  LUT2 #(
    .INIT(4'h7)) 
    \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(enblCRC),
        .I1(\emac_tx_wr_data_d1_reg[0] [0]),
        .O(STATE15A_1));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h1110)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1 
       (.I0(STATE0A_0),
        .I1(STATE17A_0),
        .I2(enblPreamble),
        .I3(axi_fifo_tx_en),
        .O(prmry_in));
  LUT1 #(
    .INIT(2'h1)) 
    IP2INTC_IRPT_REG_I_i_1
       (.I0(s_axi_aresetn),
        .O(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \Mac_addr_ram_addr_wr[0]_i_1 
       (.I0(chgMacAdr10),
        .I1(chgMacAdr11),
        .I2(chgMacAdr13),
        .I3(chgMacAdr12),
        .I4(\Mac_addr_ram_addr_wr[0]_i_2_n_0 ),
        .I5(\Mac_addr_ram_addr_wr[0]_i_3_n_0 ),
        .O(\Mac_addr_ram_addr_wr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \Mac_addr_ram_addr_wr[0]_i_2 
       (.I0(chgMacAdr7),
        .I1(chgMacAdr6),
        .I2(chgMacAdr9),
        .I3(chgMacAdr8),
        .I4(\Mac_addr_ram_addr_wr[0]_i_4_n_0 ),
        .O(\Mac_addr_ram_addr_wr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CF4F0000)) 
    \Mac_addr_ram_addr_wr[0]_i_3 
       (.I0(tx_done_d2),
        .I1(mac_program_start_reg_reg_0),
        .I2(STATE0A_0),
        .I3(p_11_in),
        .I4(s_axi_aresetn),
        .I5(txDonePause),
        .O(\Mac_addr_ram_addr_wr[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Mac_addr_ram_addr_wr[0]_i_4 
       (.I0(chgMacAdr5),
        .I1(chgMacAdr4),
        .I2(chgMacAdr3),
        .I3(chgMacAdr2),
        .O(\Mac_addr_ram_addr_wr[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \Mac_addr_ram_addr_wr[1]_i_1 
       (.I0(\Mac_addr_ram_addr_wr[1]_i_2_n_0 ),
        .I1(chgMacAdr5),
        .I2(chgMacAdr4),
        .I3(chgMacAdr3),
        .I4(chgMacAdr2),
        .I5(\Mac_addr_ram_addr_wr[0]_i_3_n_0 ),
        .O(\Mac_addr_ram_addr_wr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \Mac_addr_ram_addr_wr[1]_i_2 
       (.I0(chgMacAdr8),
        .I1(chgMacAdr9),
        .I2(chgMacAdr6),
        .I3(chgMacAdr7),
        .O(\Mac_addr_ram_addr_wr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1010101000001000)) 
    \Mac_addr_ram_addr_wr[2]_i_1 
       (.I0(chgMacAdr2),
        .I1(chgMacAdr3),
        .I2(\Mac_addr_ram_addr_wr[0]_i_3_n_0 ),
        .I3(\Mac_addr_ram_addr_wr[2]_i_2_n_0 ),
        .I4(\Mac_addr_ram_addr_wr[2]_i_3_n_0 ),
        .I5(\Mac_addr_ram_addr_wr[2]_i_4_n_0 ),
        .O(\Mac_addr_ram_addr_wr[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Mac_addr_ram_addr_wr[2]_i_2 
       (.I0(chgMacAdr7),
        .I1(chgMacAdr6),
        .O(\Mac_addr_ram_addr_wr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111110001)) 
    \Mac_addr_ram_addr_wr[2]_i_3 
       (.I0(chgMacAdr8),
        .I1(chgMacAdr9),
        .I2(chgMacAdr12),
        .I3(chgMacAdr13),
        .I4(chgMacAdr11),
        .I5(chgMacAdr10),
        .O(\Mac_addr_ram_addr_wr[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Mac_addr_ram_addr_wr[2]_i_4 
       (.I0(chgMacAdr4),
        .I1(chgMacAdr5),
        .O(\Mac_addr_ram_addr_wr[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00004404)) 
    \Mac_addr_ram_addr_wr[3]_i_1 
       (.I0(chgMacAdr2),
        .I1(\Mac_addr_ram_addr_wr[0]_i_3_n_0 ),
        .I2(chgMacAdr4),
        .I3(chgMacAdr3),
        .I4(\Mac_addr_ram_addr_wr[3]_i_2_n_0 ),
        .O(\Mac_addr_ram_addr_wr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1111111110111010)) 
    \Mac_addr_ram_addr_wr[3]_i_2 
       (.I0(chgMacAdr5),
        .I1(chgMacAdr3),
        .I2(\Mac_addr_ram_addr_wr[3]_i_3_n_0 ),
        .I3(chgMacAdr7),
        .I4(chgMacAdr8),
        .I5(chgMacAdr6),
        .O(\Mac_addr_ram_addr_wr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1111111101010001)) 
    \Mac_addr_ram_addr_wr[3]_i_3 
       (.I0(chgMacAdr9),
        .I1(chgMacAdr7),
        .I2(chgMacAdr11),
        .I3(chgMacAdr13),
        .I4(chgMacAdr12),
        .I5(chgMacAdr10),
        .O(\Mac_addr_ram_addr_wr[3]_i_3_n_0 ));
  FDRE \Mac_addr_ram_addr_wr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Mac_addr_ram_addr_wr[0]_i_1_n_0 ),
        .Q(mac_addr_ram_addr_wr[0]),
        .R(1'b0));
  FDRE \Mac_addr_ram_addr_wr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Mac_addr_ram_addr_wr[1]_i_1_n_0 ),
        .Q(mac_addr_ram_addr_wr[1]),
        .R(1'b0));
  FDRE \Mac_addr_ram_addr_wr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Mac_addr_ram_addr_wr[2]_i_1_n_0 ),
        .Q(mac_addr_ram_addr_wr[2]),
        .R(1'b0));
  FDRE \Mac_addr_ram_addr_wr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Mac_addr_ram_addr_wr[3]_i_1_n_0 ),
        .Q(mac_addr_ram_addr_wr[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000045055505)) 
    Mac_addr_ram_we_i_1
       (.I0(rst),
        .I1(p_11_in),
        .I2(STATE0A_0),
        .I3(mac_program_start_reg_reg_0),
        .I4(tx_done_d2),
        .I5(\txbuffer_addr[11]_i_4_n_0 ),
        .O(Mac_addr_ram_we_i_1_n_0));
  FDRE Mac_addr_ram_we_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Mac_addr_ram_we_i_1_n_0),
        .Q(mac_addr_ram_we),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h2E)) 
    \PERBIT_GEN[0].XORCY_i1_i_1 
       (.I0(Q[10]),
        .I1(enblData),
        .I2(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 [6]),
        .O(\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT2 #(
    .INIT(4'h7)) 
    \PERBIT_GEN[0].XORCY_i1_i_1__0 
       (.I0(enblCRC),
        .I1(crcCnt[0]),
        .O(\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_4 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \PERBIT_GEN[10].MUXCY_i1_i_1 
       (.I0(currentTxBusFifoWrCnt[1]),
        .I1(enblSFD),
        .I2(enblPreamble),
        .I3(enblData),
        .I4(enblCRC),
        .O(\PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ));
  LUT4 #(
    .INIT(16'h1D0C)) 
    \PERBIT_GEN[10].MUXCY_i1_i_1__0 
       (.I0(\txNibbleCnt_pad_reg[11] ),
        .I1(enblData),
        .I2(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 [1]),
        .I3(Q[0]),
        .O(\PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEFEFFFF)) 
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_i_1 
       (.I0(STATE0A_0),
        .I1(STATE17A_0),
        .I2(busFifoWrCntRst_reg),
        .I3(enblPreamble),
        .I4(s_axi_aresetn),
        .I5(txDonePause),
        .O(txComboBusFifoWrCntRst));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_i_1__0 
       (.I0(STATE0A_0),
        .I1(s_axi_aresetn),
        .I2(txDonePause),
        .O(txComboNibbleCntRst));
  LUT2 #(
    .INIT(4'hE)) 
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_i_2 
       (.I0(enblData),
        .I1(enblSFD),
        .O(CE));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \PERBIT_GEN[11].MULT_AND_i1_i_1 
       (.I0(enblSFD),
        .I1(enblPreamble),
        .I2(enblData),
        .I3(enblCRC),
        .O(emac_tx_wr_i));
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[11].MUXCY_i1_i_1 
       (.I0(enblData),
        .I1(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 [0]),
        .O(S_0));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \PERBIT_GEN[11].MUXCY_i1_i_1__0 
       (.I0(enblSFD),
        .I1(enblPreamble),
        .I2(enblData),
        .I3(enblCRC),
        .I4(currentTxBusFifoWrCnt[0]),
        .O(S_2));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1__0 
       (.I0(enblCRC),
        .I1(crcCnt[1]),
        .O(\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[2].MUXCY_i1_i_1__0 
       (.I0(enblCRC),
        .I1(crcCnt[2]),
        .O(\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'hFEFEFEFF)) 
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_i_1 
       (.I0(enblCRC),
        .I1(STATE0A_0),
        .I2(STATE17A_0),
        .I3(enblPreamble),
        .I4(axi_fifo_tx_en),
        .O(CE_1));
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1__0 
       (.I0(enblCRC),
        .I1(crcCnt[3]),
        .O(S_3));
  LUT4 #(
    .INIT(16'h3F2E)) 
    \PERBIT_GEN[6].MUXCY_i1_i_1 
       (.I0(\txNibbleCnt_pad_reg[11] ),
        .I1(enblData),
        .I2(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 [5]),
        .I3(Q[4]),
        .O(\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT4 #(
    .INIT(16'h3F2E)) 
    \PERBIT_GEN[7].MUXCY_i1_i_1 
       (.I0(\txNibbleCnt_pad_reg[11] ),
        .I1(enblData),
        .I2(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 [4]),
        .I3(Q[3]),
        .O(\PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT4 #(
    .INIT(16'h3F2E)) 
    \PERBIT_GEN[8].MUXCY_i1_i_1 
       (.I0(\txNibbleCnt_pad_reg[11] ),
        .I1(enblData),
        .I2(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 [3]),
        .I3(Q[2]),
        .O(\PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \PERBIT_GEN[8].XORCY_i1_i_1 
       (.I0(currentTxBusFifoWrCnt[3]),
        .I1(enblSFD),
        .I2(enblPreamble),
        .I3(enblData),
        .I4(enblCRC),
        .O(\PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \PERBIT_GEN[9].MUXCY_i1_i_1 
       (.I0(currentTxBusFifoWrCnt[2]),
        .I1(enblSFD),
        .I2(enblPreamble),
        .I3(enblData),
        .I4(enblCRC),
        .O(\PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ));
  LUT4 #(
    .INIT(16'h1D0C)) 
    \PERBIT_GEN[9].MUXCY_i1_i_1__0 
       (.I0(\txNibbleCnt_pad_reg[11] ),
        .I1(enblData),
        .I2(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 [2]),
        .I3(Q[1]),
        .O(\PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ));
  (* XILINX_LEGACY_PRIM = "FDS" *) 
  (* box_type = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1)) 
    STATE0A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D_0),
        .Q(STATE0A_0),
        .S(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'hAFAAEFAA)) 
    STATE0A_i_1
       (.I0(txDonePause),
        .I1(tx_done_d2),
        .I2(mac_program_start_reg_reg_0),
        .I3(STATE0A_0),
        .I4(p_11_in),
        .O(D_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE10A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(STATE10A_1),
        .Q(enblSFD),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE11A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D27_out),
        .Q(checkBusFifoFull),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFFF22F222F222F2)) 
    STATE11A_i_1
       (.I0(enblData),
        .I1(D22_out),
        .I2(checkBusFifoFull),
        .I3(STATE11A_0),
        .I4(STATE11A_1),
        .I5(enblSFD),
        .O(D27_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE12A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D20_out),
        .Q(enblData),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE13A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D22_out),
        .Q(checkCrc),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE14A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D28_out),
        .Q(checkBusFifoFullCrc),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'hFFFEEEEE)) 
    STATE14A_i_1
       (.I0(checkCrc),
        .I1(enblCRC),
        .I2(wr_rst_busy),
        .I3(full),
        .I4(checkBusFifoFullCrc),
        .O(D28_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE15A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D9_out),
        .Q(enblCRC),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE16A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(STATE16A_0),
        .Q(waitFifoEmpty),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE17A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D30_out),
        .Q(STATE17A_0),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    STATE17A_i_1
       (.I0(waitFifoEmpty),
        .I1(txfifo_empty),
        .I2(chgMacAdr14),
        .O(D30_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE24A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(STATE17A_0),
        .Q(txDone2),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE25A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(txDone2),
        .Q(txDonePause),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE26A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(STATE26A_i_1_n_0),
        .Q(chgMacAdr1),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    STATE26A_i_1
       (.I0(mac_program_start_reg),
        .I1(STATE0A_0),
        .I2(mac_program_start_reg_reg_0),
        .I3(p_11_in),
        .O(STATE26A_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE27A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr1),
        .Q(chgMacAdr2),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE28A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr2),
        .Q(chgMacAdr3),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE29A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr3),
        .Q(chgMacAdr4),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE30A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr4),
        .Q(chgMacAdr5),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE31A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr5),
        .Q(chgMacAdr6),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE32A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr6),
        .Q(chgMacAdr7),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE33A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr7),
        .Q(chgMacAdr8),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE34A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr8),
        .Q(chgMacAdr9),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE35A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr9),
        .Q(chgMacAdr10),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE36A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr10),
        .Q(chgMacAdr11),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE37A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr11),
        .Q(chgMacAdr12),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE38A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr12),
        .Q(chgMacAdr13),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE39A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr13),
        .Q(chgMacAdr14),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE5A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(STATE5A_i_1_n_0),
        .Q(lngthDelay1),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    STATE5A_i_1
       (.I0(transmit_start_reg),
        .I1(STATE0A_0),
        .I2(p_11_in),
        .I3(mac_program_start_reg_reg_0),
        .I4(tx_done_d2),
        .O(STATE5A_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE6A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(lngthDelay1),
        .Q(lngthDelay2),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE7A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D23_out),
        .Q(ldLngthCntr),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE8A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D24_out),
        .Q(enblPreamble),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE9A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D25_out),
        .Q(checkBusFifoFullSFD),
        .R(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    STATE9A_i_1
       (.I0(STATE9A_0),
        .I1(enblPreamble),
        .I2(wr_rst_busy),
        .I3(full),
        .I4(checkBusFifoFullSFD),
        .O(D25_out));
  LUT3 #(
    .INIT(8'h02)) 
    axi_phy_tx_en_i_p_i_1
       (.I0(axi_fifo_tx_en),
        .I1(STATE17A_0),
        .I2(STATE0A_0),
        .O(axi_phy_tx_en_i_p0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    busFifoWrCntRst_reg_i_1
       (.I0(enblPreamble),
        .I1(busFifoWrCntRst_reg),
        .I2(STATE17A_0),
        .I3(STATE0A_0),
        .O(txBusFifoWrCntRst));
  FDRE busFifoWrCntRst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(txBusFifoWrCntRst),
        .Q(busFifoWrCntRst_reg),
        .R(s_axi_aresetn_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    loopback_en_i_1
       (.I0(s_axi_wdata),
        .I1(tx_intr_en0),
        .I2(STATE0A_0),
        .I3(loopback_en),
        .O(\s_axi_wdata[4] ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mac_program_start_reg_i_1
       (.I0(p_11_in),
        .I1(mac_program_start_reg_reg_0),
        .O(mac_program_start));
  FDRE mac_program_start_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mac_program_start),
        .Q(mac_program_start_reg),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'hEEEFFFFF)) 
    \nibData[31]_i_1 
       (.I0(STATE0A_0),
        .I1(STATE17A_0),
        .I2(enblPreamble),
        .I3(axi_fifo_tx_en),
        .I4(s_axi_aresetn),
        .O(SR));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \nibData[31]_i_2 
       (.I0(emac_tx_wr_d1),
        .I1(txCrcEn_reg),
        .I2(checkBusFifoFullCrc),
        .I3(enblCRC),
        .O(E));
  FDRE phytx_en_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(axi_fifo_tx_en),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h02)) 
    transmit_start_reg_i_1
       (.I0(mac_program_start_reg_reg_0),
        .I1(tx_done_d2),
        .I2(p_11_in),
        .O(transmit_start));
  FDRE transmit_start_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(transmit_start),
        .Q(transmit_start_reg),
        .R(s_axi_aresetn_0));
  LUT3 #(
    .INIT(8'hF8)) 
    \txNibbleCnt_pad[0]_i_1 
       (.I0(\txNibbleCnt_pad_reg[11] ),
        .I1(enblData),
        .I2(enblSFD),
        .O(STATE12A_0));
  LUT4 #(
    .INIT(16'hD1C0)) 
    \txNibbleCnt_pad[0]_i_2 
       (.I0(\txNibbleCnt_pad_reg[0] ),
        .I1(enblSFD),
        .I2(Q[10]),
        .I3(txNibbleCnt_pad0[10]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hD1C0)) 
    \txNibbleCnt_pad[10]_i_1 
       (.I0(\txNibbleCnt_pad_reg[0] ),
        .I1(enblSFD),
        .I2(Q[0]),
        .I3(txNibbleCnt_pad0[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \txNibbleCnt_pad[11]_i_1 
       (.I0(\txNibbleCnt_pad_reg[0] ),
        .I1(enblSFD),
        .I2(\txNibbleCnt_pad_reg[11]_0 ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hD1C0)) 
    \txNibbleCnt_pad[1]_i_1 
       (.I0(\txNibbleCnt_pad_reg[0] ),
        .I1(enblSFD),
        .I2(Q[9]),
        .I3(txNibbleCnt_pad0[9]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hD1C0)) 
    \txNibbleCnt_pad[2]_i_1 
       (.I0(\txNibbleCnt_pad_reg[0] ),
        .I1(enblSFD),
        .I2(Q[8]),
        .I3(txNibbleCnt_pad0[8]),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hD1C0)) 
    \txNibbleCnt_pad[3]_i_1 
       (.I0(\txNibbleCnt_pad_reg[0] ),
        .I1(enblSFD),
        .I2(Q[7]),
        .I3(txNibbleCnt_pad0[7]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hD1C0)) 
    \txNibbleCnt_pad[4]_i_1 
       (.I0(\txNibbleCnt_pad_reg[0] ),
        .I1(enblSFD),
        .I2(Q[6]),
        .I3(txNibbleCnt_pad0[6]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hD1C0)) 
    \txNibbleCnt_pad[5]_i_1 
       (.I0(\txNibbleCnt_pad_reg[0] ),
        .I1(enblSFD),
        .I2(Q[5]),
        .I3(txNibbleCnt_pad0[5]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hD1C0)) 
    \txNibbleCnt_pad[6]_i_1 
       (.I0(\txNibbleCnt_pad_reg[0] ),
        .I1(enblSFD),
        .I2(Q[4]),
        .I3(txNibbleCnt_pad0[4]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'hD1C0)) 
    \txNibbleCnt_pad[7]_i_1 
       (.I0(\txNibbleCnt_pad_reg[0] ),
        .I1(enblSFD),
        .I2(Q[3]),
        .I3(txNibbleCnt_pad0[3]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hD1C0)) 
    \txNibbleCnt_pad[8]_i_1 
       (.I0(\txNibbleCnt_pad_reg[0] ),
        .I1(enblSFD),
        .I2(Q[2]),
        .I3(txNibbleCnt_pad0[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'hD1C0)) 
    \txNibbleCnt_pad[9]_i_1 
       (.I0(\txNibbleCnt_pad_reg[0] ),
        .I1(enblSFD),
        .I2(Q[1]),
        .I3(txNibbleCnt_pad0[1]),
        .O(D[2]));
  LUT3 #(
    .INIT(8'hFD)) 
    \txbuffer_addr[11]_i_1 
       (.I0(s_axi_aresetn),
        .I1(chgMacAdr1),
        .I2(enblPreamble),
        .O(s_axi_aresetn_2));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \txbuffer_addr[11]_i_2 
       (.I0(chgMacAdr14),
        .I1(enblData),
        .I2(\txbuffer_addr[11]_i_4_n_0 ),
        .O(tx_addr_en));
  LUT5 #(
    .INIT(32'h00000002)) 
    \txbuffer_addr[11]_i_4 
       (.I0(\Mac_addr_ram_addr_wr[0]_i_2_n_0 ),
        .I1(chgMacAdr12),
        .I2(chgMacAdr13),
        .I3(chgMacAdr11),
        .I4(chgMacAdr10),
        .O(\txbuffer_addr[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04000000)) 
    txcrcen_d1_i_1
       (.I0(STATE0A_0),
        .I1(txCrcEn_reg),
        .I2(checkBusFifoFullSFD),
        .I3(STATE10A_0),
        .I4(txcrcen_d1_i_2_n_0),
        .I5(checkBusFifoFull),
        .O(txCrcEn));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h1)) 
    txcrcen_d1_i_2
       (.I0(checkBusFifoFullCrc),
        .I1(enblCRC),
        .O(txcrcen_d1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \xpm_fifo_instance.xpm_fifo_async_inst_i_1 
       (.I0(txDonePause),
        .I1(s_axi_aresetn),
        .O(rst));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \xpm_fifo_instance.xpm_fifo_async_inst_i_4 
       (.I0(enblCRC),
        .I1(enblData),
        .I2(enblPreamble),
        .I3(enblSFD),
        .O(STATE15A_0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'hFFF1)) 
    \xpm_fifo_instance.xpm_fifo_async_inst_i_5 
       (.I0(axi_fifo_tx_en),
        .I1(enblPreamble),
        .I2(STATE17A_0),
        .I3(STATE0A_0),
        .O(phytx_en_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_1__0 
       (.I0(s_axi_aresetn),
        .I1(S),
        .I2(\xpm_mem_gen.xpm_memory_inst_1_i_4_n_0 ),
        .O(s_axi_aresetn_1));
  LUT5 #(
    .INIT(32'h01000000)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_4 
       (.I0(lngthDelay1),
        .I1(lngthDelay2),
        .I2(txDone2),
        .I3(\xpm_mem_gen.xpm_memory_inst_1_i_6_n_0 ),
        .I4(\txbuffer_addr[11]_i_4_n_0 ),
        .O(\xpm_mem_gen.xpm_memory_inst_1_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_6 
       (.I0(\xpm_mem_gen.xpm_memory_inst_1_i_8_n_0 ),
        .I1(rst),
        .I2(ldLngthCntr),
        .I3(chgMacAdr14),
        .I4(chgMacAdr1),
        .I5(checkBusFifoFull),
        .O(\xpm_mem_gen.xpm_memory_inst_1_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_8 
       (.I0(STATE0A_0),
        .I1(STATE17A_0),
        .O(\xpm_mem_gen.xpm_memory_inst_1_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \xpm_mem_gen.xpm_memory_inst_2_i_1__0 
       (.I0(S),
        .I1(s_axi_aresetn),
        .I2(\xpm_mem_gen.xpm_memory_inst_1_i_4_n_0 ),
        .O(\txbuffer_addr_reg[9] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xemac
   (SR,
    ip2intc_irpt,
    rx_done,
    reg_access,
    tx_intr_en_reg_0,
    p_7_in,
    p_5_in,
    loopback_en,
    ping_soft_status,
    ping_rx_status,
    \reg_data_out_reg[31]_0 ,
    p_91_in,
    p_16_in70_in,
    p_13_in60_in,
    \reg_data_out_reg[2]_0 ,
    \reg_data_out_reg[0]_0 ,
    D,
    \ping_pkt_lenth_reg[5]_0 ,
    \status_reg_reg[5]_0 ,
    \ping_pkt_lenth_reg[2]_0 ,
    prmry_vect_in,
    prmry_in,
    s_axi_aclk,
    phy_rx_clk,
    din,
    phy_tx_clk,
    phy_crs,
    enb,
    web,
    Q,
    s_axi_wdata,
    \gen_wr_b.gen_word_wide.mem_reg ,
    \reg_data_out_reg[6]_0 ,
    \reg_data_out_reg[15]_0 ,
    reg_access_reg_0,
    tx_intr_en_reg_1,
    rx_intr_en_reg_0,
    gie_enable_reg_0,
    ping_soft_status_reg_0,
    ping_rx_status_reg_0,
    \reg_data_out_reg[31]_1 ,
    \reg_data_out_reg[30]_0 ,
    \reg_data_out_reg[5]_0 ,
    \reg_data_out_reg[4]_0 ,
    \reg_data_out_reg[2]_1 ,
    \reg_data_out_reg[0]_1 ,
    s_axi_aresetn,
    \reg_data_out_reg[1]_0 ,
    \reg_data_out_reg[3]_0 ,
    \reg_data_out_reg[1]_1 ,
    \reg_data_out_reg[3]_1 ,
    tx_intr_en0,
    reg_data_out,
    \reg_data_out_reg[3]_2 ,
    E);
  output [0:0]SR;
  output ip2intc_irpt;
  output rx_done;
  output reg_access;
  output [1:0]tx_intr_en_reg_0;
  output [0:0]p_7_in;
  output [0:0]p_5_in;
  output loopback_en;
  output ping_soft_status;
  output ping_rx_status;
  output \reg_data_out_reg[31]_0 ;
  output p_91_in;
  output p_16_in70_in;
  output p_13_in60_in;
  output \reg_data_out_reg[2]_0 ;
  output \reg_data_out_reg[0]_0 ;
  output [31:0]D;
  output [2:0]\ping_pkt_lenth_reg[5]_0 ;
  output [0:0]\status_reg_reg[5]_0 ;
  output \ping_pkt_lenth_reg[2]_0 ;
  output [3:0]prmry_vect_in;
  output prmry_in;
  input s_axi_aclk;
  input phy_rx_clk;
  input [5:0]din;
  input phy_tx_clk;
  input phy_crs;
  input enb;
  input [0:0]web;
  input [10:0]Q;
  input [31:0]s_axi_wdata;
  input \gen_wr_b.gen_word_wide.mem_reg ;
  input \reg_data_out_reg[6]_0 ;
  input \reg_data_out_reg[15]_0 ;
  input reg_access_reg_0;
  input tx_intr_en_reg_1;
  input rx_intr_en_reg_0;
  input gie_enable_reg_0;
  input ping_soft_status_reg_0;
  input ping_rx_status_reg_0;
  input \reg_data_out_reg[31]_1 ;
  input \reg_data_out_reg[30]_0 ;
  input \reg_data_out_reg[5]_0 ;
  input \reg_data_out_reg[4]_0 ;
  input \reg_data_out_reg[2]_1 ;
  input \reg_data_out_reg[0]_1 ;
  input s_axi_aresetn;
  input \reg_data_out_reg[1]_0 ;
  input \reg_data_out_reg[3]_0 ;
  input \reg_data_out_reg[1]_1 ;
  input \reg_data_out_reg[3]_1 ;
  input tx_intr_en0;
  input reg_data_out;
  input \reg_data_out_reg[3]_2 ;
  input [0:0]E;

  wire [31:0]D;
  wire D_1;
  wire [3:2]Data_out_a_2;
  wire [0:0]E;
  wire EMAC_I_n_34;
  wire EMAC_I_n_37;
  wire EMAC_I_n_40;
  wire [10:0]Q;
  wire Q_0;
  wire [0:0]SR;
  wire \TX/INST_TX_STATE_MACHINE/txDone ;
  wire TX_PING_n_37;
  wire TX_PING_n_38;
  wire [3:1]data4;
  wire [5:0]din;
  wire [3:2]douta;
  wire ena;
  wire ena4_out;
  wire ena4_out_1;
  wire ena_0;
  wire enb;
  wire \gen_wr_b.gen_word_wide.mem_reg ;
  wire gie_enable_reg_0;
  wire ip2intc_irpt;
  wire loopback_en;
  wire [0:10]nibbleLength_orig;
  wire p_10_in;
  wire [1:1]p_11_in;
  wire p_13_in60_in;
  wire p_16_in70_in;
  wire p_19_in78_in;
  wire p_22_in;
  wire p_25_in97_in;
  wire p_28_in107_in;
  wire p_31_in;
  wire p_34_in;
  wire p_37_in;
  wire p_40_in;
  wire p_43_in;
  wire p_46_in;
  wire p_4_in34_in;
  wire [0:0]p_5_in;
  wire [0:0]p_7_in;
  wire p_91_in;
  wire phy_crs;
  wire phy_rx_clk;
  wire phy_tx_clk;
  wire ping_mac_program_i_1_n_0;
  wire [15:1]ping_pkt_lenth;
  wire \ping_pkt_lenth_reg[2]_0 ;
  wire [2:0]\ping_pkt_lenth_reg[5]_0 ;
  wire ping_rx_status;
  wire ping_rx_status_reg_0;
  wire ping_soft_status;
  wire ping_soft_status_reg_0;
  wire ping_tx_status_i_1_n_0;
  wire prmry_in;
  wire [3:0]prmry_vect_in;
  wire reg_access;
  wire reg_access_reg_0;
  wire reg_data_out;
  wire \reg_data_out[10]_i_1_n_0 ;
  wire \reg_data_out[11]_i_1_n_0 ;
  wire \reg_data_out[12]_i_1_n_0 ;
  wire \reg_data_out[13]_i_1_n_0 ;
  wire \reg_data_out[14]_i_1_n_0 ;
  wire \reg_data_out[15]_i_3_n_0 ;
  wire \reg_data_out[1]_i_1_n_0 ;
  wire \reg_data_out[1]_i_2_n_0 ;
  wire \reg_data_out[3]_i_1_n_0 ;
  wire \reg_data_out[3]_i_2_n_0 ;
  wire \reg_data_out[3]_i_5_n_0 ;
  wire \reg_data_out[6]_i_1_n_0 ;
  wire \reg_data_out[7]_i_1_n_0 ;
  wire \reg_data_out[8]_i_1_n_0 ;
  wire \reg_data_out[9]_i_1_n_0 ;
  wire \reg_data_out_reg[0]_0 ;
  wire \reg_data_out_reg[0]_1 ;
  wire \reg_data_out_reg[15]_0 ;
  wire \reg_data_out_reg[1]_0 ;
  wire \reg_data_out_reg[1]_1 ;
  wire \reg_data_out_reg[2]_0 ;
  wire \reg_data_out_reg[2]_1 ;
  wire \reg_data_out_reg[30]_0 ;
  wire \reg_data_out_reg[31]_0 ;
  wire \reg_data_out_reg[31]_1 ;
  wire \reg_data_out_reg[3]_0 ;
  wire \reg_data_out_reg[3]_1 ;
  wire \reg_data_out_reg[3]_2 ;
  wire \reg_data_out_reg[4]_0 ;
  wire \reg_data_out_reg[5]_0 ;
  wire \reg_data_out_reg[6]_0 ;
  wire [11:0]rx_DPM_adr;
  wire [3:0]rx_DPM_wr_data;
  wire rx_done;
  wire rx_done_d1;
  wire rx_intr_en_reg_0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [31:0]s_axi_wdata;
  wire select_2;
  wire \status_reg[1]_i_1_n_0 ;
  wire \status_reg[3]_i_1_n_0 ;
  wire \status_reg[5]_i_1_n_0 ;
  wire [0:0]\status_reg_reg[5]_0 ;
  wire [11:0]tx_DPM_adr;
  wire [3:0]tx_DPM_rd_data;
  wire tx_done_d2;
  wire tx_idle;
  wire tx_intr_en0;
  wire [1:0]tx_intr_en_reg_0;
  wire tx_intr_en_reg_1;
  wire \tx_packet_length_reg_n_0_[11] ;
  wire \tx_packet_length_reg_n_0_[12] ;
  wire \tx_packet_length_reg_n_0_[13] ;
  wire \tx_packet_length_reg_n_0_[14] ;
  wire \tx_packet_length_reg_n_0_[15] ;
  wire [31:0]tx_ping_data_out;
  wire wea;
  wire wea3_out;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_ethernetlite_v3_0_17_emac EMAC_I
       (.D(tx_DPM_rd_data),
        .D_1(D_1),
        .\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I (douta),
        .IP2INTC_IRPT_REG_I(tx_intr_en_reg_0[1]),
        .Q({\tx_packet_length_reg_n_0_[15] ,\tx_packet_length_reg_n_0_[14] ,\tx_packet_length_reg_n_0_[13] ,\tx_packet_length_reg_n_0_[12] ,\tx_packet_length_reg_n_0_[11] ,nibbleLength_orig[0],nibbleLength_orig[1],nibbleLength_orig[2],nibbleLength_orig[3],nibbleLength_orig[4],nibbleLength_orig[5],nibbleLength_orig[6],nibbleLength_orig[7],nibbleLength_orig[8],nibbleLength_orig[9],nibbleLength_orig[10]}),
        .STATE10A(EMAC_I_n_34),
        .STATE12A(EMAC_I_n_37),
        .addra({rx_DPM_adr[11:3],rx_DPM_adr[1:0]}),
        .din(din),
        .dout(rx_DPM_wr_data),
        .douta(Data_out_a_2),
        .\emac_tx_wr_data_d1_reg[2] (TX_PING_n_38),
        .\emac_tx_wr_data_d1_reg[3] (TX_PING_n_37),
        .ena(ena4_out_1),
        .loopback_en(loopback_en),
        .mac_program_start_reg_reg(tx_intr_en_reg_0[0]),
        .p_11_in(p_11_in),
        .p_5_in(p_5_in),
        .p_7_in(p_7_in),
        .phy_crs(phy_crs),
        .phy_rx_clk(phy_rx_clk),
        .phy_tx_clk(phy_tx_clk),
        .ping_rx_status(ping_rx_status),
        .prmry_in(prmry_in),
        .prmry_vect_in(prmry_vect_in),
        .rx_done(rx_done),
        .\rxbuffer_addr_reg[9]_0 (ena_0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(SR),
        .s_axi_aresetn_1(ena),
        .s_axi_wdata(s_axi_wdata[4]),
        .\s_axi_wdata[4] (EMAC_I_n_40),
        .select_2(select_2),
        .state17a(wea),
        .txDone(\TX/INST_TX_STATE_MACHINE/txDone ),
        .tx_DPM_adr(tx_DPM_adr),
        .tx_done_d2(tx_done_d2),
        .tx_idle(tx_idle),
        .tx_intr_en0(tx_intr_en0),
        .\txbuffer_addr_reg[9]_0 (ena4_out),
        .wea(wea3_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    IP2INTC_IRPT_REG_I
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D_1),
        .Q(ip2intc_irpt),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    RX_DONE_D1_I
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_done),
        .Q(rx_done_d1),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emac_dpram RX_PING
       (.\AXI4_RDATA_GEN.S_AXI_RDATA_reg[0] (\reg_data_out_reg[0]_0 ),
        .\AXI4_RDATA_GEN.S_AXI_RDATA_reg[2] (\reg_data_out_reg[2]_0 ),
        .\AXI4_RDATA_GEN.S_AXI_RDATA_reg[30] (p_91_in),
        .\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31] (reg_access),
        .\AXI4_RDATA_GEN.S_AXI_RDATA_reg[31]_0 (\reg_data_out_reg[31]_0 ),
        .D(D),
        .Q(Q),
        .addra({rx_DPM_adr[11:3],rx_DPM_adr[1:0]}),
        .dout(rx_DPM_wr_data),
        .ena(ena4_out_1),
        .\gen_wr_b.gen_word_wide.mem_reg (ena_0),
        .\gen_wr_b.gen_word_wide.mem_reg_0 (wea),
        .\gen_wr_b.gen_word_wide.mem_reg_1 (\gen_wr_b.gen_word_wide.mem_reg ),
        .p_10_in(p_10_in),
        .p_13_in60_in(p_13_in60_in),
        .p_16_in70_in(p_16_in70_in),
        .p_19_in78_in(p_19_in78_in),
        .p_22_in(p_22_in),
        .p_25_in97_in(p_25_in97_in),
        .p_28_in107_in(p_28_in107_in),
        .p_31_in(p_31_in),
        .p_34_in(p_34_in),
        .p_37_in(p_37_in),
        .p_40_in(p_40_in),
        .p_43_in(p_43_in),
        .p_46_in(p_46_in),
        .p_4_in34_in(p_4_in34_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tx_ping_data_out(tx_ping_data_out),
        .wea(wea3_out),
        .web(web));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    TX_DONE_D1_I
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\TX/INST_TX_STATE_MACHINE/txDone ),
        .Q(Q_0),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    TX_DONE_D2_I
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q_0),
        .Q(tx_done_d2),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emac_dpram__xdcDup__1 TX_PING
       (.D(tx_DPM_rd_data),
        .\GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I (EMAC_I_n_37),
        .\GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I (EMAC_I_n_34),
        .Q(Q[8:0]),
        .STATE0A(TX_PING_n_38),
        .douta(douta),
        .enb(enb),
        .\gen_wr_b.gen_word_wide.mem_reg (Data_out_a_2),
        .\gen_wr_b.gen_word_wide.mem_reg_0 (TX_PING_n_37),
        .\gen_wr_b.gen_word_wide.mem_reg_1 (ena),
        .\gen_wr_b.gen_word_wide.mem_reg_2 (ena4_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .select_2(select_2),
        .tx_DPM_adr(tx_DPM_adr),
        .tx_idle(tx_idle),
        .tx_ping_data_out(tx_ping_data_out),
        .web(web),
        .\xpm_mem_gen.select_2_reg_0 (SR));
  FDRE gie_enable_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gie_enable_reg_0),
        .Q(p_5_in),
        .R(SR));
  FDRE loopback_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(EMAC_I_n_40),
        .Q(loopback_en),
        .R(SR));
  LUT4 #(
    .INIT(16'hA3A0)) 
    ping_mac_program_i_1
       (.I0(s_axi_wdata[1]),
        .I1(Q_0),
        .I2(tx_intr_en0),
        .I3(p_11_in),
        .O(ping_mac_program_i_1_n_0));
  FDRE ping_mac_program_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_mac_program_i_1_n_0),
        .Q(p_11_in),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(\ping_pkt_lenth_reg[5]_0 [0]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[10]),
        .Q(ping_pkt_lenth[10]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[11]),
        .Q(ping_pkt_lenth[11]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[12]),
        .Q(ping_pkt_lenth[12]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[13]),
        .Q(ping_pkt_lenth[13]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[14]),
        .Q(ping_pkt_lenth[14]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[15]),
        .Q(ping_pkt_lenth[15]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(ping_pkt_lenth[1]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(ping_pkt_lenth[2]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(ping_pkt_lenth[3]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(\ping_pkt_lenth_reg[5]_0 [1]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(\ping_pkt_lenth_reg[5]_0 [2]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(ping_pkt_lenth[6]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(ping_pkt_lenth[7]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[8]),
        .Q(ping_pkt_lenth[8]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[9]),
        .Q(ping_pkt_lenth[9]),
        .R(SR));
  FDRE ping_rx_status_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_rx_status_reg_0),
        .Q(ping_rx_status),
        .R(SR));
  FDRE ping_soft_status_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_soft_status_reg_0),
        .Q(ping_soft_status),
        .R(SR));
  LUT4 #(
    .INIT(16'hA3A0)) 
    ping_tx_status_i_1
       (.I0(s_axi_wdata[0]),
        .I1(Q_0),
        .I2(tx_intr_en0),
        .I3(tx_intr_en_reg_0[0]),
        .O(ping_tx_status_i_1_n_0));
  FDRE ping_tx_status_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_tx_status_i_1_n_0),
        .Q(tx_intr_en_reg_0[0]),
        .R(SR));
  FDRE reg_access_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(reg_access_reg_0),
        .Q(reg_access),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_data_out[10]_i_1 
       (.I0(ping_pkt_lenth[10]),
        .I1(\reg_data_out_reg[3]_0 ),
        .O(\reg_data_out[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_data_out[11]_i_1 
       (.I0(ping_pkt_lenth[11]),
        .I1(\reg_data_out_reg[3]_0 ),
        .O(\reg_data_out[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_data_out[12]_i_1 
       (.I0(ping_pkt_lenth[12]),
        .I1(\reg_data_out_reg[3]_0 ),
        .O(\reg_data_out[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_data_out[13]_i_1 
       (.I0(ping_pkt_lenth[13]),
        .I1(\reg_data_out_reg[3]_0 ),
        .O(\reg_data_out[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_data_out[14]_i_1 
       (.I0(ping_pkt_lenth[14]),
        .I1(\reg_data_out_reg[3]_0 ),
        .O(\reg_data_out[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_data_out[15]_i_3 
       (.I0(ping_pkt_lenth[15]),
        .I1(\reg_data_out_reg[3]_0 ),
        .O(\reg_data_out[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000E200)) 
    \reg_data_out[1]_i_1 
       (.I0(p_4_in34_in),
        .I1(reg_data_out),
        .I2(\reg_data_out[1]_i_2_n_0 ),
        .I3(s_axi_aresetn),
        .I4(\reg_data_out_reg[1]_1 ),
        .O(\reg_data_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFEACFEACFEAC0EA)) 
    \reg_data_out[1]_i_2 
       (.I0(ping_pkt_lenth[1]),
        .I1(p_11_in),
        .I2(\reg_data_out_reg[1]_0 ),
        .I3(\reg_data_out_reg[3]_0 ),
        .I4(\reg_data_out_reg[1]_1 ),
        .I5(data4[1]),
        .O(\reg_data_out[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data_out[2]_i_2 
       (.I0(ping_pkt_lenth[2]),
        .I1(\reg_data_out_reg[3]_0 ),
        .O(\ping_pkt_lenth_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \reg_data_out[3]_i_1 
       (.I0(p_10_in),
        .I1(reg_data_out),
        .I2(ping_pkt_lenth[3]),
        .I3(\reg_data_out_reg[3]_0 ),
        .I4(\reg_data_out[3]_i_2_n_0 ),
        .I5(\reg_data_out_reg[3]_2 ),
        .O(\reg_data_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00CF0000)) 
    \reg_data_out[3]_i_2 
       (.I0(tx_intr_en_reg_0[1]),
        .I1(p_7_in),
        .I2(\reg_data_out_reg[3]_1 ),
        .I3(\reg_data_out[3]_i_5_n_0 ),
        .I4(\reg_data_out_reg[3]_0 ),
        .I5(\reg_data_out_reg[1]_0 ),
        .O(\reg_data_out[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \reg_data_out[3]_i_5 
       (.I0(data4[3]),
        .I1(\reg_data_out_reg[1]_1 ),
        .O(\reg_data_out[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_data_out[6]_i_1 
       (.I0(ping_pkt_lenth[6]),
        .I1(\reg_data_out_reg[3]_0 ),
        .O(\reg_data_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_data_out[7]_i_1 
       (.I0(ping_pkt_lenth[7]),
        .I1(\reg_data_out_reg[3]_0 ),
        .O(\reg_data_out[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \reg_data_out[8]_i_1 
       (.I0(ping_pkt_lenth[8]),
        .I1(\reg_data_out_reg[3]_0 ),
        .O(\reg_data_out[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_data_out[9]_i_1 
       (.I0(ping_pkt_lenth[9]),
        .I1(\reg_data_out_reg[3]_0 ),
        .O(\reg_data_out[9]_i_1_n_0 ));
  FDRE \reg_data_out_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out_reg[0]_1 ),
        .Q(\reg_data_out_reg[0]_0 ),
        .R(1'b0));
  FDRE \reg_data_out_reg[10] 
       (.C(s_axi_aclk),
        .CE(\reg_data_out_reg[15]_0 ),
        .D(\reg_data_out[10]_i_1_n_0 ),
        .Q(p_31_in),
        .R(\reg_data_out_reg[6]_0 ));
  FDRE \reg_data_out_reg[11] 
       (.C(s_axi_aclk),
        .CE(\reg_data_out_reg[15]_0 ),
        .D(\reg_data_out[11]_i_1_n_0 ),
        .Q(p_34_in),
        .R(\reg_data_out_reg[6]_0 ));
  FDRE \reg_data_out_reg[12] 
       (.C(s_axi_aclk),
        .CE(\reg_data_out_reg[15]_0 ),
        .D(\reg_data_out[12]_i_1_n_0 ),
        .Q(p_37_in),
        .R(\reg_data_out_reg[6]_0 ));
  FDRE \reg_data_out_reg[13] 
       (.C(s_axi_aclk),
        .CE(\reg_data_out_reg[15]_0 ),
        .D(\reg_data_out[13]_i_1_n_0 ),
        .Q(p_40_in),
        .R(\reg_data_out_reg[6]_0 ));
  FDRE \reg_data_out_reg[14] 
       (.C(s_axi_aclk),
        .CE(\reg_data_out_reg[15]_0 ),
        .D(\reg_data_out[14]_i_1_n_0 ),
        .Q(p_43_in),
        .R(\reg_data_out_reg[6]_0 ));
  FDRE \reg_data_out_reg[15] 
       (.C(s_axi_aclk),
        .CE(\reg_data_out_reg[15]_0 ),
        .D(\reg_data_out[15]_i_3_n_0 ),
        .Q(p_46_in),
        .R(\reg_data_out_reg[6]_0 ));
  FDRE \reg_data_out_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out[1]_i_1_n_0 ),
        .Q(p_4_in34_in),
        .R(1'b0));
  FDRE \reg_data_out_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out_reg[2]_1 ),
        .Q(\reg_data_out_reg[2]_0 ),
        .R(1'b0));
  FDRE \reg_data_out_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out_reg[30]_0 ),
        .Q(p_91_in),
        .R(1'b0));
  FDRE \reg_data_out_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out_reg[31]_1 ),
        .Q(\reg_data_out_reg[31]_0 ),
        .R(1'b0));
  FDRE \reg_data_out_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out[3]_i_1_n_0 ),
        .Q(p_10_in),
        .R(1'b0));
  FDRE \reg_data_out_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out_reg[4]_0 ),
        .Q(p_13_in60_in),
        .R(1'b0));
  FDRE \reg_data_out_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out_reg[5]_0 ),
        .Q(p_16_in70_in),
        .R(1'b0));
  FDRE \reg_data_out_reg[6] 
       (.C(s_axi_aclk),
        .CE(\reg_data_out_reg[15]_0 ),
        .D(\reg_data_out[6]_i_1_n_0 ),
        .Q(p_19_in78_in),
        .R(\reg_data_out_reg[6]_0 ));
  FDRE \reg_data_out_reg[7] 
       (.C(s_axi_aclk),
        .CE(\reg_data_out_reg[15]_0 ),
        .D(\reg_data_out[7]_i_1_n_0 ),
        .Q(p_22_in),
        .R(\reg_data_out_reg[6]_0 ));
  FDRE \reg_data_out_reg[8] 
       (.C(s_axi_aclk),
        .CE(\reg_data_out_reg[15]_0 ),
        .D(\reg_data_out[8]_i_1_n_0 ),
        .Q(p_25_in97_in),
        .R(\reg_data_out_reg[6]_0 ));
  FDRE \reg_data_out_reg[9] 
       (.C(s_axi_aclk),
        .CE(\reg_data_out_reg[15]_0 ),
        .D(\reg_data_out[9]_i_1_n_0 ),
        .Q(p_28_in107_in),
        .R(\reg_data_out_reg[6]_0 ));
  FDRE rx_intr_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_intr_en_reg_0),
        .Q(p_7_in),
        .R(SR));
  LUT5 #(
    .INIT(32'h808C8080)) 
    \status_reg[1]_i_1 
       (.I0(p_11_in),
        .I1(s_axi_aresetn),
        .I2(\TX/INST_TX_STATE_MACHINE/txDone ),
        .I3(rx_done_d1),
        .I4(data4[1]),
        .O(\status_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'h2220)) 
    \status_reg[3]_i_1 
       (.I0(s_axi_aresetn),
        .I1(\TX/INST_TX_STATE_MACHINE/txDone ),
        .I2(rx_done_d1),
        .I3(data4[3]),
        .O(\status_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h404C4040)) 
    \status_reg[5]_i_1 
       (.I0(p_11_in),
        .I1(s_axi_aresetn),
        .I2(\TX/INST_TX_STATE_MACHINE/txDone ),
        .I3(rx_done_d1),
        .I4(\status_reg_reg[5]_0 ),
        .O(\status_reg[5]_i_1_n_0 ));
  FDRE \status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\status_reg[1]_i_1_n_0 ),
        .Q(data4[1]),
        .R(1'b0));
  FDRE \status_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\status_reg[3]_i_1_n_0 ),
        .Q(data4[3]),
        .R(1'b0));
  FDRE \status_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\status_reg[5]_i_1_n_0 ),
        .Q(\status_reg_reg[5]_0 ),
        .R(1'b0));
  FDRE tx_intr_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_intr_en_reg_1),
        .Q(tx_intr_en_reg_0[1]),
        .R(SR));
  FDRE \tx_packet_length_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ping_pkt_lenth_reg[5]_0 [0]),
        .Q(nibbleLength_orig[10]),
        .R(SR));
  FDRE \tx_packet_length_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_pkt_lenth[10]),
        .Q(nibbleLength_orig[0]),
        .R(SR));
  FDRE \tx_packet_length_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_pkt_lenth[11]),
        .Q(\tx_packet_length_reg_n_0_[11] ),
        .R(SR));
  FDRE \tx_packet_length_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_pkt_lenth[12]),
        .Q(\tx_packet_length_reg_n_0_[12] ),
        .R(SR));
  FDRE \tx_packet_length_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_pkt_lenth[13]),
        .Q(\tx_packet_length_reg_n_0_[13] ),
        .R(SR));
  FDRE \tx_packet_length_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_pkt_lenth[14]),
        .Q(\tx_packet_length_reg_n_0_[14] ),
        .R(SR));
  FDRE \tx_packet_length_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_pkt_lenth[15]),
        .Q(\tx_packet_length_reg_n_0_[15] ),
        .R(SR));
  FDRE \tx_packet_length_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_pkt_lenth[1]),
        .Q(nibbleLength_orig[9]),
        .R(SR));
  FDRE \tx_packet_length_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_pkt_lenth[2]),
        .Q(nibbleLength_orig[8]),
        .R(SR));
  FDRE \tx_packet_length_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_pkt_lenth[3]),
        .Q(nibbleLength_orig[7]),
        .R(SR));
  FDRE \tx_packet_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ping_pkt_lenth_reg[5]_0 [1]),
        .Q(nibbleLength_orig[6]),
        .R(SR));
  FDRE \tx_packet_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ping_pkt_lenth_reg[5]_0 [2]),
        .Q(nibbleLength_orig[5]),
        .R(SR));
  FDRE \tx_packet_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_pkt_lenth[6]),
        .Q(nibbleLength_orig[4]),
        .R(SR));
  FDRE \tx_packet_length_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_pkt_lenth[7]),
        .Q(nibbleLength_orig[3]),
        .R(SR));
  FDRE \tx_packet_length_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_pkt_lenth[8]),
        .Q(nibbleLength_orig[2]),
        .R(SR));
  FDRE \tx_packet_length_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_pkt_lenth[9]),
        .Q(nibbleLength_orig[1]),
        .R(SR));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* REG_OUTPUT = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [2:0]\^dest_out_bin ;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  assign dest_out_bin[3] = \dest_graysync_ff[1] [3];
  assign dest_out_bin[2:0] = \^dest_out_bin [2:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__4
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [2:0]\^dest_out_bin ;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  assign dest_out_bin[3] = \dest_graysync_ff[1] [3];
  assign dest_out_bin[2:0] = \^dest_out_bin [2:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__5
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [2:0]\^dest_out_bin ;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  assign dest_out_bin[3] = \dest_graysync_ff[1] [3];
  assign dest_out_bin[2:0] = \^dest_out_bin [2:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__6
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [2:0]\^dest_out_bin ;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  assign dest_out_bin[3] = \dest_graysync_ff[1] [3];
  assign dest_out_bin[2:0] = \^dest_out_bin [2:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [3:0]\^dest_out_bin ;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  assign dest_out_bin[4] = \dest_graysync_ff[1] [4];
  assign dest_out_bin[3:0] = \^dest_out_bin [3:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__4
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [3:0]\^dest_out_bin ;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  assign dest_out_bin[4] = \dest_graysync_ff[1] [4];
  assign dest_out_bin[3:0] = \^dest_out_bin [3:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__5
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [3:0]\^dest_out_bin ;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  assign dest_out_bin[4] = \dest_graysync_ff[1] [4];
  assign dest_out_bin[3:0] = \^dest_out_bin [3:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__6
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [3:0]\^dest_out_bin ;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  assign dest_out_bin[4] = \dest_graysync_ff[1] [4];
  assign dest_out_bin[3:0] = \^dest_out_bin [3:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__4
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__5
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__6
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn
   (Q,
    wrst_busy,
    wr_pntr_plus1_pf_carry,
    wr_clk);
  output [3:0]Q;
  input wrst_busy;
  input wr_pntr_plus1_pf_carry;
  input wr_clk;

  wire [3:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__2 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn_12
   (Q,
    wrst_busy,
    wr_pntr_plus1_pf_carry,
    wr_clk);
  output [3:0]Q;
  input wrst_busy;
  input wr_pntr_plus1_pf_carry;
  input wr_clk;

  wire [3:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__2 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0
   (Q,
    SR,
    E,
    rd_clk);
  output [3:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__4_n_0 ;
  wire \count_value_i[1]_i_1__5_n_0 ;
  wire \count_value_i[2]_i_1__5_n_0 ;
  wire \count_value_i[3]_i_1__5_n_0 ;
  wire rd_clk;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__4 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__4_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__5_n_0 ),
        .Q(Q[1]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__5_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__5_n_0 ),
        .Q(Q[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_11
   (Q,
    SR,
    E,
    rd_clk);
  output [3:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__4_n_0 ;
  wire \count_value_i[1]_i_1__5_n_0 ;
  wire \count_value_i[2]_i_1__5_n_0 ;
  wire \count_value_i[3]_i_1__5_n_0 ;
  wire rd_clk;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__4 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__4_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__5_n_0 ),
        .Q(Q[1]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__5_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__5_n_0 ),
        .Q(Q[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_22
   (Q,
    wrst_busy,
    wr_pntr_plus1_pf_carry,
    wr_clk);
  output [3:0]Q;
  input wrst_busy;
  input wr_pntr_plus1_pf_carry;
  input wr_clk;

  wire [3:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_8
   (Q,
    wrst_busy,
    wr_pntr_plus1_pf_carry,
    wr_clk);
  output [3:0]Q;
  input wrst_busy;
  input wr_pntr_plus1_pf_carry;
  input wr_clk;

  wire [3:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1
   (D,
    Q,
    \reg_out_i_reg[3] ,
    E,
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] ,
    rd_en,
    \count_value_i_reg[0]_0 ,
    \grdc.rd_data_count_i_reg[4] ,
    SR,
    rd_clk);
  output [1:0]D;
  output [4:0]Q;
  output [1:0]\reg_out_i_reg[3] ;
  output [0:0]E;
  input [3:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] ;
  input rd_en;
  input \count_value_i_reg[0]_0 ;
  input [4:0]\grdc.rd_data_count_i_reg[4] ;
  input [0:0]SR;
  input rd_clk;

  wire [1:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__5_n_0 ;
  wire \count_value_i[1]_i_1__4_n_0 ;
  wire \count_value_i[2]_i_1__4_n_0 ;
  wire \count_value_i[3]_i_1__4_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ;
  wire [3:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] ;
  wire \grdc.rd_data_count_i[4]_i_2_n_0 ;
  wire [4:0]\grdc.rd_data_count_i_reg[4] ;
  wire rd_clk;
  wire rd_en;
  wire [1:0]\reg_out_i_reg[3] ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__5 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__5_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__4_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__4_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__4_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_1 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [2]),
        .I2(Q[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_1 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [2]),
        .I2(Q[2]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [3]),
        .I4(Q[3]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hD4D444D4DDDDD4DD)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [1]),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [0]),
        .I3(rd_en),
        .I4(\count_value_i_reg[0]_0 ),
        .I5(Q[0]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \grdc.rd_data_count_i[3]_i_1 
       (.I0(\grdc.rd_data_count_i[4]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(\grdc.rd_data_count_i_reg[4] [3]),
        .O(\reg_out_i_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \grdc.rd_data_count_i[4]_i_1 
       (.I0(\grdc.rd_data_count_i[4]_i_2_n_0 ),
        .I1(\grdc.rd_data_count_i_reg[4] [3]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\grdc.rd_data_count_i_reg[4] [4]),
        .O(\reg_out_i_reg[3] [1]));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    \grdc.rd_data_count_i[4]_i_2 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[4] [2]),
        .I2(\grdc.rd_data_count_i_reg[4] [0]),
        .I3(Q[0]),
        .I4(\grdc.rd_data_count_i_reg[4] [1]),
        .I5(Q[1]),
        .O(\grdc.rd_data_count_i[4]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_17
   (D,
    Q,
    \reg_out_i_reg[3] ,
    E,
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] ,
    rd_en,
    \count_value_i_reg[0]_0 ,
    \grdc.rd_data_count_i_reg[4] ,
    SR,
    rd_clk);
  output [1:0]D;
  output [4:0]Q;
  output [1:0]\reg_out_i_reg[3] ;
  output [0:0]E;
  input [3:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] ;
  input rd_en;
  input \count_value_i_reg[0]_0 ;
  input [4:0]\grdc.rd_data_count_i_reg[4] ;
  input [0:0]SR;
  input rd_clk;

  wire [1:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__5_n_0 ;
  wire \count_value_i[1]_i_1__4_n_0 ;
  wire \count_value_i[2]_i_1__4_n_0 ;
  wire \count_value_i[3]_i_1__4_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ;
  wire [3:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] ;
  wire \grdc.rd_data_count_i[4]_i_2_n_0 ;
  wire [4:0]\grdc.rd_data_count_i_reg[4] ;
  wire rd_clk;
  wire rd_en;
  wire [1:0]\reg_out_i_reg[3] ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__5 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__5_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__4_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__4_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__4_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_1 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [2]),
        .I2(Q[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_1 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [2]),
        .I2(Q[2]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [3]),
        .I4(Q[3]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hD4D444D4DDDDD4DD)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [1]),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [0]),
        .I3(rd_en),
        .I4(\count_value_i_reg[0]_0 ),
        .I5(Q[0]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \grdc.rd_data_count_i[3]_i_1 
       (.I0(\grdc.rd_data_count_i[4]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(\grdc.rd_data_count_i_reg[4] [3]),
        .O(\reg_out_i_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \grdc.rd_data_count_i[4]_i_1 
       (.I0(\grdc.rd_data_count_i[4]_i_2_n_0 ),
        .I1(\grdc.rd_data_count_i_reg[4] [3]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\grdc.rd_data_count_i_reg[4] [4]),
        .O(\reg_out_i_reg[3] [1]));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    \grdc.rd_data_count_i[4]_i_2 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[4] [2]),
        .I2(\grdc.rd_data_count_i_reg[4] [0]),
        .I3(Q[0]),
        .I4(\grdc.rd_data_count_i_reg[4] [1]),
        .I5(Q[1]),
        .O(\grdc.rd_data_count_i[4]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_20
   (Q,
    wrst_busy,
    wr_pntr_plus1_pf_carry,
    wr_clk);
  output [4:0]Q;
  input wrst_busy;
  input wr_pntr_plus1_pf_carry;
  input wr_clk;

  wire [4:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_6
   (Q,
    wrst_busy,
    wr_pntr_plus1_pf_carry,
    wr_clk);
  output [4:0]Q;
  input wrst_busy;
  input wr_pntr_plus1_pf_carry;
  input wr_clk;

  wire [4:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2
   (Q,
    SR,
    E,
    rd_clk);
  output [3:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire rd_clk;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__3 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(Q[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(Q[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_18
   (Q,
    SR,
    E,
    rd_clk);
  output [3:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire rd_clk;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__3 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(Q[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(Q[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_21
   (D,
    Q,
    wr_pntr_plus1_pf_carry,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] ,
    wrst_busy,
    wr_clk);
  output [0:0]D;
  output [3:0]Q;
  input wr_pntr_plus1_pf_carry;
  input [1:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] ;
  input wrst_busy;
  input wr_clk;

  wire [0:0]D;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire [1:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[2]_i_1 
       (.I0(wr_pntr_plus1_pf_carry),
        .I1(Q[0]),
        .I2(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] [0]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] [1]),
        .I4(Q[1]),
        .O(D));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_7
   (D,
    Q,
    wr_pntr_plus1_pf_carry,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] ,
    wrst_busy,
    wr_clk);
  output [0:0]D;
  output [3:0]Q;
  input wr_pntr_plus1_pf_carry;
  input [1:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] ;
  input wrst_busy;
  input wr_clk;

  wire [0:0]D;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire [1:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[2]_i_1 
       (.I0(wr_pntr_plus1_pf_carry),
        .I1(Q[0]),
        .I2(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] [0]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] [1]),
        .I4(Q[1]),
        .O(D));
endmodule

(* CDC_SYNC_STAGES = "2" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_ASYNC = "16'b0001111100011111" *) (* FIFO_MEMORY_TYPE = "auto" *) (* FIFO_READ_LATENCY = "1" *) 
(* FIFO_WRITE_DEPTH = "16" *) (* FULL_RESET_VALUE = "1" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "10" *) (* P_COMMON_CLOCK = "0" *) (* P_ECC_MODE = "0" *) 
(* P_FIFO_MEMORY_TYPE = "0" *) (* P_READ_MODE = "0" *) (* P_WAKEUP_TIME = "2" *) 
(* RD_DATA_COUNT_WIDTH = "2" *) (* READ_DATA_WIDTH = "6" *) (* READ_MODE = "std" *) 
(* RELATED_CLOCKS = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "1F1F" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "6" *) (* WR_DATA_COUNT_WIDTH = "2" *) 
(* XPM_MODULE = "TRUE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [5:0]din;
  output full;
  output prog_full;
  output [1:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [5:0]dout;
  output empty;
  output prog_empty;
  output [1:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire almost_empty;
  wire almost_full;
  wire data_valid;
  wire [5:0]din;
  wire [5:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire prog_empty;
  wire prog_full;
  wire rd_clk;
  wire [1:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire sleep;
  wire underflow;
  wire wr_ack;
  wire wr_clk;
  wire [1:0]wr_data_count;
  wire wr_en;
  wire wr_rst_busy;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001111100011111" *) 
  (* EN_AE = "1'b1" *) 
  (* EN_AF = "1'b1" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b1" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "16" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_SIZE = "96" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* PE_THRESH_ADJ = "10" *) 
  (* PE_THRESH_MAX = "13" *) 
  (* PE_THRESH_MIN = "3" *) 
  (* PF_THRESH_ADJ = "10" *) 
  (* PF_THRESH_MAX = "13" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "2" *) 
  (* RD_DC_WIDTH_EXT = "5" *) 
  (* RD_LATENCY = "1" *) 
  (* RD_MODE = "0" *) 
  (* RD_PNTR_WIDTH = "4" *) 
  (* READ_DATA_WIDTH = "6" *) 
  (* READ_MODE = "0" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "6" *) 
  (* WR_DATA_COUNT_WIDTH = "2" *) 
  (* WR_DC_WIDTH_EXT = "5" *) 
  (* WR_DEPTH_LOG = "4" *) 
  (* WR_PNTR_WIDTH = "4" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "3" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base \gnuram_async_fifo.xpm_fifo_base_inst 
       (.almost_empty(almost_empty),
        .almost_full(almost_full),
        .data_valid(data_valid),
        .dbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .full_n(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(prog_empty),
        .prog_full(prog_full),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .sbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ),
        .sleep(sleep),
        .underflow(underflow),
        .wr_ack(wr_ack),
        .wr_clk(wr_clk),
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* CDC_SYNC_STAGES = "2" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_ASYNC = "16'b0001111100011111" *) (* FIFO_MEMORY_TYPE = "auto" *) (* FIFO_READ_LATENCY = "1" *) 
(* FIFO_WRITE_DEPTH = "16" *) (* FULL_RESET_VALUE = "1" *) (* ORIG_REF_NAME = "xpm_fifo_async" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* P_COMMON_CLOCK = "0" *) 
(* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) (* P_READ_MODE = "0" *) 
(* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "2" *) (* READ_DATA_WIDTH = "6" *) 
(* READ_MODE = "std" *) (* RELATED_CLOCKS = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "1F1F" *) (* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "6" *) 
(* WR_DATA_COUNT_WIDTH = "2" *) (* XPM_MODULE = "TRUE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async__xdcDup__1
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [5:0]din;
  output full;
  output prog_full;
  output [1:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [5:0]dout;
  output empty;
  output prog_empty;
  output [1:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire almost_empty;
  wire almost_full;
  wire data_valid;
  wire [5:0]din;
  wire [5:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire prog_empty;
  wire prog_full;
  wire rd_clk;
  wire [1:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire sleep;
  wire underflow;
  wire wr_ack;
  wire wr_clk;
  wire [1:0]wr_data_count;
  wire wr_en;
  wire wr_rst_busy;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001111100011111" *) 
  (* EN_AE = "1'b1" *) 
  (* EN_AF = "1'b1" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b1" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "16" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_SIZE = "96" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* PE_THRESH_ADJ = "10" *) 
  (* PE_THRESH_MAX = "13" *) 
  (* PE_THRESH_MIN = "3" *) 
  (* PF_THRESH_ADJ = "10" *) 
  (* PF_THRESH_MAX = "13" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "2" *) 
  (* RD_DC_WIDTH_EXT = "5" *) 
  (* RD_LATENCY = "1" *) 
  (* RD_MODE = "0" *) 
  (* RD_PNTR_WIDTH = "4" *) 
  (* READ_DATA_WIDTH = "6" *) 
  (* READ_MODE = "0" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "6" *) 
  (* WR_DATA_COUNT_WIDTH = "2" *) 
  (* WR_DC_WIDTH_EXT = "5" *) 
  (* WR_DEPTH_LOG = "4" *) 
  (* WR_PNTR_WIDTH = "4" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "3" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__xdcDup__1 \gnuram_async_fifo.xpm_fifo_base_inst 
       (.almost_empty(almost_empty),
        .almost_full(almost_full),
        .data_valid(data_valid),
        .dbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .full_n(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(prog_empty),
        .prog_full(prog_full),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .sbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ),
        .sleep(sleep),
        .underflow(underflow),
        .wr_ack(wr_ack),
        .wr_clk(wr_clk),
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "0" *) (* DOUT_RESET_VALUE = "0" *) 
(* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) (* EN_ADV_FEATURE = "16'b0001111100011111" *) 
(* EN_AE = "1'b1" *) (* EN_AF = "1'b1" *) (* EN_DVLD = "1'b1" *) 
(* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) (* EN_PF = "1'b1" *) 
(* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) (* EN_WACK = "1'b1" *) 
(* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "0" *) 
(* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "16" *) (* FIFO_READ_LATENCY = "1" *) 
(* FIFO_SIZE = "96" *) (* FIFO_WRITE_DEPTH = "16" *) (* FULL_RESET_VALUE = "1" *) 
(* FULL_RST_VAL = "1'b1" *) (* PE_THRESH_ADJ = "10" *) (* PE_THRESH_MAX = "13" *) 
(* PE_THRESH_MIN = "3" *) (* PF_THRESH_ADJ = "10" *) (* PF_THRESH_MAX = "13" *) 
(* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* RD_DATA_COUNT_WIDTH = "2" *) (* RD_DC_WIDTH_EXT = "5" *) (* RD_LATENCY = "1" *) 
(* RD_MODE = "0" *) (* RD_PNTR_WIDTH = "4" *) (* READ_DATA_WIDTH = "6" *) 
(* READ_MODE = "0" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "1F1F" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "6" *) 
(* WR_DATA_COUNT_WIDTH = "2" *) (* WR_DC_WIDTH_EXT = "5" *) (* WR_DEPTH_LOG = "4" *) 
(* WR_PNTR_WIDTH = "4" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "3" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [5:0]din;
  output full;
  output full_n;
  output prog_full;
  output [1:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [5:0]dout;
  output empty;
  output prog_empty;
  output [1:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire almost_empty;
  wire almost_full;
  wire clr_full;
  wire [3:0]count_value_i;
  wire data_valid;
  wire [3:0]diff_pntr_pe;
  wire [4:2]diff_pntr_pf_q;
  wire [4:2]diff_pntr_pf_q0;
  wire [5:0]din;
  wire [5:0]dout;
  wire empty;
  wire empty_i0;
  wire full;
  wire \gae_rptr_p2.rdpp2_inst_n_0 ;
  wire \gae_rptr_p2.rdpp2_inst_n_1 ;
  wire \gae_rptr_p2.rdpp2_inst_n_2 ;
  wire \gae_rptr_p2.rdpp2_inst_n_3 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_0 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_7 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ;
  wire [4:3]\grdc.diff_wr_rd_pntr_rdc0_out ;
  wire [4:3]\gwdc.diff_wr_rd_pntr1_out ;
  wire overflow;
  wire overflow_i0;
  wire prog_empty;
  wire prog_full;
  wire rd_clk;
  wire [1:0]rd_data_count;
  wire rd_en;
  wire [4:0]rd_pntr_ext;
  wire [1:0]rd_pntr_wr;
  wire [3:0]rd_pntr_wr_cdc;
  wire [4:0]rd_pntr_wr_cdc_dc;
  wire rd_rst_busy;
  wire rdp_inst_n_9;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_1;
  wire sleep;
  wire underflow;
  wire underflow_i0;
  wire wr_ack;
  wire wr_clk;
  wire [1:0]wr_data_count;
  wire wr_en;
  wire [4:0]wr_pntr_ext;
  wire [4:1]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire [3:0]wr_pntr_rd_cdc;
  wire [4:0]wr_pntr_rd_cdc_dc;
  wire wr_rst_busy;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire wrst_busy;
  wire xpm_fifo_rst_inst_n_2;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [5:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign full_n = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0 \gae_rptr_p2.rdpp2_inst 
       (.E(rdp_inst_n_9),
        .Q({\gae_rptr_p2.rdpp2_inst_n_0 ,\gae_rptr_p2.rdpp2_inst_n_1 ,\gae_rptr_p2.rdpp2_inst_n_2 ,\gae_rptr_p2.rdpp2_inst_n_3 }),
        .SR(rd_rst_busy),
        .rd_clk(rd_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn \gaf_wptr_p3.wrpp3_inst 
       (.Q(count_value_i),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gdvld.data_valid_std_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rdp_inst_n_9),
        .Q(data_valid),
        .R(rd_rst_busy));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc_dc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext[3:0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec \gen_cdc_pntr.rpw_gray_reg 
       (.D(diff_pntr_pf_q0[4:3]),
        .Q(wr_pntr_plus1_pf),
        .almost_full(almost_full),
        .clr_full(clr_full),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg (full),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 (count_value_i),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 ({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .\reg_out_i_reg[1]_0 (rd_pntr_wr),
        .\reg_out_i_reg[3]_0 (\gen_cdc_pntr.rpw_gray_reg_n_5 ),
        .\reg_out_i_reg[3]_1 (rd_pntr_wr_cdc),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0 \gen_cdc_pntr.rpw_gray_reg_dc 
       (.D(\gwdc.diff_wr_rd_pntr1_out ),
        .Q(wr_pntr_ext),
        .\reg_out_i_reg[4]_0 (rd_pntr_wr_cdc_dc),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_4 \gen_cdc_pntr.wpr_gray_reg 
       (.D(diff_pntr_pe[1:0]),
        .Q(rd_pntr_ext[3:0]),
        .SR(rd_rst_busy),
        .almost_empty(almost_empty),
        .empty_i0(empty_i0),
        .\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg (empty),
        .\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 ({\gae_rptr_p2.rdpp2_inst_n_0 ,\gae_rptr_p2.rdpp2_inst_n_1 ,\gae_rptr_p2.rdpp2_inst_n_2 ,\gae_rptr_p2.rdpp2_inst_n_3 }),
        .\gen_pf_ic_rc.ram_empty_i_reg (\gen_cdc_pntr.wpr_gray_reg_n_7 ),
        .\gen_pf_ic_rc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\reg_out_i_reg[3]_0 ({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 }),
        .\reg_out_i_reg[3]_1 (wr_pntr_rd_cdc));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_5 \gen_cdc_pntr.wpr_gray_reg_dc 
       (.D(wr_pntr_rd_cdc_dc),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 }),
        .SR(rd_rst_busy),
        .rd_clk(rd_clk));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__6 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc_dc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__6 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[3:0]));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.wpr_gray_reg_n_7 ),
        .Q(almost_empty),
        .S(rd_rst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .Q(almost_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_5 ),
        .Q(full),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[0]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[1]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[2]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[3]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .R(rd_rst_busy));
  LUT6 #(
    .INIT(64'hFFFF15FF000015FF)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .I4(empty),
        .I5(prog_empty),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ),
        .Q(prog_empty),
        .S(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[2]),
        .Q(diff_pntr_pf_q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[3]),
        .Q(diff_pntr_pf_q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_1),
        .Q(prog_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(empty_i0),
        .Q(empty),
        .S(rd_rst_busy));
  (* ADDR_WIDTH_A = "4" *) 
  (* ADDR_WIDTH_B = "4" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "6" *) 
  (* BYTE_WRITE_WIDTH_B = "6" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "96" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "16" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "6" *) 
  (* P_MIN_WIDTH_DATA_A = "6" *) 
  (* P_MIN_WIDTH_DATA_B = "6" *) 
  (* P_MIN_WIDTH_DATA_ECC = "6" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "6" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "4" *) 
  (* P_WIDTH_ADDR_READ_B = "4" *) 
  (* P_WIDTH_ADDR_WRITE_A = "4" *) 
  (* P_WIDTH_ADDR_WRITE_B = "4" *) 
  (* P_WIDTH_COL_WRITE_A = "6" *) 
  (* P_WIDTH_COL_WRITE_B = "6" *) 
  (* READ_DATA_WIDTH_A = "6" *) 
  (* READ_DATA_WIDTH_B = "6" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "6" *) 
  (* WRITE_DATA_WIDTH_B = "6" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "8" *) 
  (* rstb_loop_iter = "8" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[3:0]),
        .addrb(rd_pntr_ext[3:0]),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [5:0]),
        .doutb(dout),
        .ena(wr_pntr_plus1_pf_carry),
        .enb(rdp_inst_n_9),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rstb(rd_rst_busy),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(1'b0),
        .web(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gof.overflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(overflow_i0),
        .Q(overflow),
        .R(1'b0));
  FDRE \grdc.rd_data_count_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc0_out [3]),
        .Q(rd_data_count[0]),
        .R(rd_rst_busy));
  FDRE \grdc.rd_data_count_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc0_out [4]),
        .Q(rd_data_count[1]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \guf.underflow_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gwack.wr_ack_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_2),
        .Q(wr_ack),
        .R(1'b0));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [3]),
        .Q(wr_data_count[0]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [4]),
        .Q(wr_data_count[1]),
        .R(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1 rdp_inst
       (.D(diff_pntr_pe[3:2]),
        .E(rdp_inst_n_9),
        .Q(rd_pntr_ext),
        .SR(rd_rst_busy),
        .\count_value_i_reg[0]_0 (empty),
        .\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] ({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 }),
        .\grdc.rd_data_count_i_reg[4] ({\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 }),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\reg_out_i_reg[3] (\grdc.diff_wr_rd_pntr_rdc0_out ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2 rdpp1_inst
       (.E(rdp_inst_n_9),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .SR(rd_rst_busy),
        .rd_clk(rd_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit rst_d1_inst
       (.Q(diff_pntr_pf_q),
        .clr_full(clr_full),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] (rst_d1_inst_n_1),
        .\gen_pf_ic_rc.gpf_ic.prog_full_i_reg (full),
        .overflow_i0(overflow_i0),
        .prog_full(prog_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_6 wrp_inst
       (.Q(wr_pntr_ext),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_7 wrpp1_inst
       (.D(diff_pntr_pf_q0[2]),
        .Q(wr_pntr_plus1_pf),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] (rd_pntr_wr),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_8 wrpp2_inst
       (.Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst xpm_fifo_rst_inst
       (.SR(rd_rst_busy),
        .d_out_reg(xpm_fifo_rst_inst_n_2),
        .\guf.underflow_i_reg (empty),
        .\gwack.wr_ack_i_reg (full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wr_rst_busy(wr_rst_busy),
        .wrst_busy(wrst_busy));
endmodule

(* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "0" *) (* DOUT_RESET_VALUE = "0" *) 
(* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) (* EN_ADV_FEATURE = "16'b0001111100011111" *) 
(* EN_AE = "1'b1" *) (* EN_AF = "1'b1" *) (* EN_DVLD = "1'b1" *) 
(* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) (* EN_PF = "1'b1" *) 
(* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) (* EN_WACK = "1'b1" *) 
(* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "0" *) 
(* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "16" *) (* FIFO_READ_LATENCY = "1" *) 
(* FIFO_SIZE = "96" *) (* FIFO_WRITE_DEPTH = "16" *) (* FULL_RESET_VALUE = "1" *) 
(* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) (* PE_THRESH_ADJ = "10" *) 
(* PE_THRESH_MAX = "13" *) (* PE_THRESH_MIN = "3" *) (* PF_THRESH_ADJ = "10" *) 
(* PF_THRESH_MAX = "13" *) (* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "2" *) (* RD_DC_WIDTH_EXT = "5" *) 
(* RD_LATENCY = "1" *) (* RD_MODE = "0" *) (* RD_PNTR_WIDTH = "4" *) 
(* READ_DATA_WIDTH = "6" *) (* READ_MODE = "0" *) (* RELATED_CLOCKS = "0" *) 
(* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "1F1F" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) 
(* WRITE_DATA_WIDTH = "6" *) (* WR_DATA_COUNT_WIDTH = "2" *) (* WR_DC_WIDTH_EXT = "5" *) 
(* WR_DEPTH_LOG = "4" *) (* WR_PNTR_WIDTH = "4" *) (* WR_RD_RATIO = "0" *) 
(* WR_WIDTH_LOG = "3" *) (* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) 
(* invalid = "0" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__xdcDup__1
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [5:0]din;
  output full;
  output full_n;
  output prog_full;
  output [1:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [5:0]dout;
  output empty;
  output prog_empty;
  output [1:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire almost_empty;
  wire almost_full;
  wire clr_full;
  wire [3:0]count_value_i;
  wire data_valid;
  wire [3:0]diff_pntr_pe;
  wire [4:2]diff_pntr_pf_q;
  wire [4:2]diff_pntr_pf_q0;
  wire [5:0]din;
  wire [5:0]dout;
  wire empty;
  wire empty_i0;
  wire full;
  wire \gae_rptr_p2.rdpp2_inst_n_0 ;
  wire \gae_rptr_p2.rdpp2_inst_n_1 ;
  wire \gae_rptr_p2.rdpp2_inst_n_2 ;
  wire \gae_rptr_p2.rdpp2_inst_n_3 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_0 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_7 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ;
  wire [4:3]\grdc.diff_wr_rd_pntr_rdc0_out ;
  wire [4:3]\gwdc.diff_wr_rd_pntr1_out ;
  wire overflow;
  wire overflow_i0;
  wire prog_empty;
  wire prog_full;
  wire rd_clk;
  wire [1:0]rd_data_count;
  wire rd_en;
  wire [4:0]rd_pntr_ext;
  wire [1:0]rd_pntr_wr;
  wire [3:0]rd_pntr_wr_cdc;
  wire [4:0]rd_pntr_wr_cdc_dc;
  wire rd_rst_busy;
  wire rdp_inst_n_9;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_1;
  wire sleep;
  wire underflow;
  wire underflow_i0;
  wire wr_ack;
  wire wr_clk;
  wire [1:0]wr_data_count;
  wire wr_en;
  wire [4:0]wr_pntr_ext;
  wire [4:1]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire [3:0]wr_pntr_rd_cdc;
  wire [4:0]wr_pntr_rd_cdc_dc;
  wire wr_rst_busy;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire wrst_busy;
  wire xpm_fifo_rst_inst_n_2;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [5:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign full_n = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_11 \gae_rptr_p2.rdpp2_inst 
       (.E(rdp_inst_n_9),
        .Q({\gae_rptr_p2.rdpp2_inst_n_0 ,\gae_rptr_p2.rdpp2_inst_n_1 ,\gae_rptr_p2.rdpp2_inst_n_2 ,\gae_rptr_p2.rdpp2_inst_n_3 }),
        .SR(rd_rst_busy),
        .rd_clk(rd_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn_12 \gaf_wptr_p3.wrpp3_inst 
       (.Q(count_value_i),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gdvld.data_valid_std_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rdp_inst_n_9),
        .Q(data_valid),
        .R(rd_rst_busy));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__5 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc_dc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__5 \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext[3:0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_13 \gen_cdc_pntr.rpw_gray_reg 
       (.D(diff_pntr_pf_q0[4:3]),
        .Q(wr_pntr_plus1_pf),
        .almost_full(almost_full),
        .clr_full(clr_full),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg (full),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 (count_value_i),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 ({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .\reg_out_i_reg[1]_0 (rd_pntr_wr),
        .\reg_out_i_reg[3]_0 (\gen_cdc_pntr.rpw_gray_reg_n_5 ),
        .\reg_out_i_reg[3]_1 (rd_pntr_wr_cdc),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_14 \gen_cdc_pntr.rpw_gray_reg_dc 
       (.D(\gwdc.diff_wr_rd_pntr1_out ),
        .Q(wr_pntr_ext),
        .\reg_out_i_reg[4]_0 (rd_pntr_wr_cdc_dc),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_15 \gen_cdc_pntr.wpr_gray_reg 
       (.D(diff_pntr_pe[1:0]),
        .Q(rd_pntr_ext[3:0]),
        .SR(rd_rst_busy),
        .almost_empty(almost_empty),
        .empty_i0(empty_i0),
        .\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg (empty),
        .\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 ({\gae_rptr_p2.rdpp2_inst_n_0 ,\gae_rptr_p2.rdpp2_inst_n_1 ,\gae_rptr_p2.rdpp2_inst_n_2 ,\gae_rptr_p2.rdpp2_inst_n_3 }),
        .\gen_pf_ic_rc.ram_empty_i_reg (\gen_cdc_pntr.wpr_gray_reg_n_7 ),
        .\gen_pf_ic_rc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\reg_out_i_reg[3]_0 ({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 }),
        .\reg_out_i_reg[3]_1 (wr_pntr_rd_cdc));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_16 \gen_cdc_pntr.wpr_gray_reg_dc 
       (.D(wr_pntr_rd_cdc_dc),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 }),
        .SR(rd_rst_busy),
        .rd_clk(rd_clk));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0__4 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc_dc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__4 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[3:0]));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.wpr_gray_reg_n_7 ),
        .Q(almost_empty),
        .S(rd_rst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .Q(almost_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_5 ),
        .Q(full),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[0]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[1]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[2]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[3]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .R(rd_rst_busy));
  LUT6 #(
    .INIT(64'hFFFF15FF000015FF)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .I4(empty),
        .I5(prog_empty),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ),
        .Q(prog_empty),
        .S(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[2]),
        .Q(diff_pntr_pf_q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[3]),
        .Q(diff_pntr_pf_q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_1),
        .Q(prog_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(empty_i0),
        .Q(empty),
        .S(rd_rst_busy));
  (* ADDR_WIDTH_A = "4" *) 
  (* ADDR_WIDTH_B = "4" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "6" *) 
  (* BYTE_WRITE_WIDTH_B = "6" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "96" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "16" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "6" *) 
  (* P_MIN_WIDTH_DATA_A = "6" *) 
  (* P_MIN_WIDTH_DATA_B = "6" *) 
  (* P_MIN_WIDTH_DATA_ECC = "6" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "6" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "4" *) 
  (* P_WIDTH_ADDR_READ_B = "4" *) 
  (* P_WIDTH_ADDR_WRITE_A = "4" *) 
  (* P_WIDTH_ADDR_WRITE_B = "4" *) 
  (* P_WIDTH_COL_WRITE_A = "6" *) 
  (* P_WIDTH_COL_WRITE_B = "6" *) 
  (* READ_DATA_WIDTH_A = "6" *) 
  (* READ_DATA_WIDTH_B = "6" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "6" *) 
  (* WRITE_DATA_WIDTH_B = "6" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "8" *) 
  (* rstb_loop_iter = "8" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2 \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[3:0]),
        .addrb(rd_pntr_ext[3:0]),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [5:0]),
        .doutb(dout),
        .ena(wr_pntr_plus1_pf_carry),
        .enb(rdp_inst_n_9),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rstb(rd_rst_busy),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(1'b0),
        .web(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gof.overflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(overflow_i0),
        .Q(overflow),
        .R(1'b0));
  FDRE \grdc.rd_data_count_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc0_out [3]),
        .Q(rd_data_count[0]),
        .R(rd_rst_busy));
  FDRE \grdc.rd_data_count_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc0_out [4]),
        .Q(rd_data_count[1]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \guf.underflow_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gwack.wr_ack_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_2),
        .Q(wr_ack),
        .R(1'b0));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [3]),
        .Q(wr_data_count[0]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [4]),
        .Q(wr_data_count[1]),
        .R(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_17 rdp_inst
       (.D(diff_pntr_pe[3:2]),
        .E(rdp_inst_n_9),
        .Q(rd_pntr_ext),
        .SR(rd_rst_busy),
        .\count_value_i_reg[0]_0 (empty),
        .\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] ({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 }),
        .\grdc.rd_data_count_i_reg[4] ({\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 }),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\reg_out_i_reg[3] (\grdc.diff_wr_rd_pntr_rdc0_out ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_18 rdpp1_inst
       (.E(rdp_inst_n_9),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .SR(rd_rst_busy),
        .rd_clk(rd_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_19 rst_d1_inst
       (.Q(diff_pntr_pf_q),
        .clr_full(clr_full),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] (rst_d1_inst_n_1),
        .\gen_pf_ic_rc.gpf_ic.prog_full_i_reg (full),
        .overflow_i0(overflow_i0),
        .prog_full(prog_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_20 wrp_inst
       (.Q(wr_pntr_ext),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_21 wrpp1_inst
       (.D(diff_pntr_pf_q0[2]),
        .Q(wr_pntr_plus1_pf),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] (rd_pntr_wr),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_22 wrpp2_inst
       (.Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst__xdcDup__1 xpm_fifo_rst_inst
       (.SR(rd_rst_busy),
        .d_out_reg(xpm_fifo_rst_inst_n_2),
        .\guf.underflow_i_reg (empty),
        .\gwack.wr_ack_i_reg (full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wr_rst_busy(wr_rst_busy),
        .wrst_busy(wrst_busy));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
   (rst_d1,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] ,
    clr_full,
    overflow_i0,
    wrst_busy,
    wr_clk,
    Q,
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ,
    prog_full,
    wr_en,
    rst);
  output rst_d1;
  output \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] ;
  output clr_full;
  output overflow_i0;
  input wrst_busy;
  input wr_clk;
  input [2:0]Q;
  input \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  input prog_full;
  input wr_en;
  input rst;

  wire [2:0]Q;
  wire clr_full;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  wire overflow_i0;
  wire prog_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrst_busy),
        .Q(rst_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(rst),
        .I1(rst_d1),
        .I2(wrst_busy),
        .O(clr_full));
  LUT6 #(
    .INIT(64'h00FF00E0000000E0)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(clr_full),
        .I4(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I5(prog_full),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(rst_d1),
        .I1(wrst_busy),
        .I2(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I3(wr_en),
        .O(overflow_i0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_19
   (rst_d1,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] ,
    clr_full,
    overflow_i0,
    wrst_busy,
    wr_clk,
    Q,
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ,
    prog_full,
    wr_en,
    rst);
  output rst_d1;
  output \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] ;
  output clr_full;
  output overflow_i0;
  input wrst_busy;
  input wr_clk;
  input [2:0]Q;
  input \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  input prog_full;
  input wr_en;
  input rst;

  wire [2:0]Q;
  wire clr_full;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  wire overflow_i0;
  wire prog_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrst_busy),
        .Q(rst_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(rst),
        .I1(rst_d1),
        .I2(wrst_busy),
        .O(clr_full));
  LUT6 #(
    .INIT(64'h00FF00E0000000E0)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(clr_full),
        .I4(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I5(prog_full),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(rst_d1),
        .I1(wrst_busy),
        .I2(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I3(wr_en),
        .O(overflow_i0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec
   (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    D,
    \reg_out_i_reg[1]_0 ,
    \reg_out_i_reg[3]_0 ,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ,
    rst,
    rst_d1,
    almost_full,
    Q,
    wr_pntr_plus1_pf_carry,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 ,
    wrst_busy,
    wr_en,
    clr_full,
    \reg_out_i_reg[3]_1 ,
    wr_clk);
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  output [1:0]D;
  output [1:0]\reg_out_i_reg[1]_0 ;
  output \reg_out_i_reg[3]_0 ;
  input \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  input rst;
  input rst_d1;
  input almost_full;
  input [3:0]Q;
  input wr_pntr_plus1_pf_carry;
  input [3:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ;
  input [3:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 ;
  input wrst_busy;
  input wr_en;
  input clr_full;
  input [3:0]\reg_out_i_reg[3]_1 ;
  input wr_clk;

  wire [1:0]D;
  wire [3:0]Q;
  wire almost_full;
  wire clr_full;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  wire [3:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ;
  wire [3:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[3]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ;
  wire leaving_afull;
  wire ram_afull_i0;
  wire [3:2]rd_pntr_wr;
  wire [1:0]\reg_out_i_reg[1]_0 ;
  wire \reg_out_i_reg[3]_0 ;
  wire [3:0]\reg_out_i_reg[3]_1 ;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT5 #(
    .INIT(32'hF0FE0002)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1 
       (.I0(ram_afull_i0),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ),
        .I2(rst),
        .I3(rst_d1),
        .I4(almost_full),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'hFF8080802020FF20)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2 
       (.I0(wr_pntr_plus1_pf_carry),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [3]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [3]),
        .I5(rd_pntr_wr[3]),
        .O(ram_afull_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3 
       (.I0(\reg_out_i_reg[1]_0 [0]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [2]),
        .I3(rd_pntr_wr[2]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [1]),
        .I5(\reg_out_i_reg[1]_0 [1]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF909090)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(rd_pntr_wr[3]),
        .I1(Q[3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ),
        .I3(leaving_afull),
        .I4(wr_pntr_plus1_pf_carry),
        .I5(clr_full),
        .O(\reg_out_i_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(\reg_out_i_reg[1]_0 [0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(rd_pntr_wr[2]),
        .I4(Q[1]),
        .I5(\reg_out_i_reg[1]_0 [1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(rd_pntr_wr[3]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .O(leaving_afull));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(\reg_out_i_reg[1]_0 [0]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [0]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [2]),
        .I3(rd_pntr_wr[2]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [1]),
        .I5(\reg_out_i_reg[1]_0 [1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[3]_i_1 
       (.I0(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[3]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\reg_out_i_reg[1]_0 [1]),
        .I3(rd_pntr_wr[2]),
        .I4(Q[2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h4444444D44444444)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[3]_i_2 
       (.I0(\reg_out_i_reg[1]_0 [0]),
        .I1(Q[0]),
        .I2(rst_d1),
        .I3(wrst_busy),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ),
        .I5(wr_en),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_1 
       (.I0(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(rd_pntr_wr[2]),
        .I3(rd_pntr_wr[3]),
        .I4(Q[3]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hD444DDD4)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2 
       (.I0(\reg_out_i_reg[1]_0 [1]),
        .I1(Q[1]),
        .I2(wr_pntr_plus1_pf_carry),
        .I3(Q[0]),
        .I4(\reg_out_i_reg[1]_0 [0]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [0]),
        .Q(\reg_out_i_reg[1]_0 [0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [1]),
        .Q(\reg_out_i_reg[1]_0 [1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [2]),
        .Q(rd_pntr_wr[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [3]),
        .Q(rd_pntr_wr[3]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_13
   (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    D,
    \reg_out_i_reg[1]_0 ,
    \reg_out_i_reg[3]_0 ,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ,
    rst,
    rst_d1,
    almost_full,
    Q,
    wr_pntr_plus1_pf_carry,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 ,
    wrst_busy,
    wr_en,
    clr_full,
    \reg_out_i_reg[3]_1 ,
    wr_clk);
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  output [1:0]D;
  output [1:0]\reg_out_i_reg[1]_0 ;
  output \reg_out_i_reg[3]_0 ;
  input \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  input rst;
  input rst_d1;
  input almost_full;
  input [3:0]Q;
  input wr_pntr_plus1_pf_carry;
  input [3:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ;
  input [3:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 ;
  input wrst_busy;
  input wr_en;
  input clr_full;
  input [3:0]\reg_out_i_reg[3]_1 ;
  input wr_clk;

  wire [1:0]D;
  wire [3:0]Q;
  wire almost_full;
  wire clr_full;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  wire [3:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ;
  wire [3:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[3]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ;
  wire leaving_afull;
  wire ram_afull_i0;
  wire [3:2]rd_pntr_wr;
  wire [1:0]\reg_out_i_reg[1]_0 ;
  wire \reg_out_i_reg[3]_0 ;
  wire [3:0]\reg_out_i_reg[3]_1 ;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT5 #(
    .INIT(32'hF0FE0002)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1 
       (.I0(ram_afull_i0),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ),
        .I2(rst),
        .I3(rst_d1),
        .I4(almost_full),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'hFF8080802020FF20)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2 
       (.I0(wr_pntr_plus1_pf_carry),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [3]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [3]),
        .I5(rd_pntr_wr[3]),
        .O(ram_afull_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3 
       (.I0(\reg_out_i_reg[1]_0 [0]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [2]),
        .I3(rd_pntr_wr[2]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [1]),
        .I5(\reg_out_i_reg[1]_0 [1]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF909090)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(rd_pntr_wr[3]),
        .I1(Q[3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ),
        .I3(leaving_afull),
        .I4(wr_pntr_plus1_pf_carry),
        .I5(clr_full),
        .O(\reg_out_i_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(\reg_out_i_reg[1]_0 [0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(rd_pntr_wr[2]),
        .I4(Q[1]),
        .I5(\reg_out_i_reg[1]_0 [1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(rd_pntr_wr[3]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .O(leaving_afull));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(\reg_out_i_reg[1]_0 [0]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [0]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [2]),
        .I3(rd_pntr_wr[2]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [1]),
        .I5(\reg_out_i_reg[1]_0 [1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[3]_i_1 
       (.I0(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[3]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\reg_out_i_reg[1]_0 [1]),
        .I3(rd_pntr_wr[2]),
        .I4(Q[2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h4444444D44444444)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[3]_i_2 
       (.I0(\reg_out_i_reg[1]_0 [0]),
        .I1(Q[0]),
        .I2(rst_d1),
        .I3(wrst_busy),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ),
        .I5(wr_en),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_1 
       (.I0(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(rd_pntr_wr[2]),
        .I3(rd_pntr_wr[3]),
        .I4(Q[3]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hD444DDD4)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2 
       (.I0(\reg_out_i_reg[1]_0 [1]),
        .I1(Q[1]),
        .I2(wr_pntr_plus1_pf_carry),
        .I3(Q[0]),
        .I4(\reg_out_i_reg[1]_0 [0]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [0]),
        .Q(\reg_out_i_reg[1]_0 [0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [1]),
        .Q(\reg_out_i_reg[1]_0 [1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [2]),
        .Q(rd_pntr_wr[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [3]),
        .Q(rd_pntr_wr[3]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_15
   (empty_i0,
    \reg_out_i_reg[3]_0 ,
    D,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    rd_en,
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ,
    Q,
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 ,
    \gen_pf_ic_rc.ram_empty_i_reg_0 ,
    almost_empty,
    SR,
    \reg_out_i_reg[3]_1 ,
    rd_clk);
  output empty_i0;
  output [3:0]\reg_out_i_reg[3]_0 ;
  output [1:0]D;
  output \gen_pf_ic_rc.ram_empty_i_reg ;
  input rd_en;
  input \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ;
  input [3:0]Q;
  input [3:0]\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 ;
  input [3:0]\gen_pf_ic_rc.ram_empty_i_reg_0 ;
  input almost_empty;
  input [0:0]SR;
  input [3:0]\reg_out_i_reg[3]_1 ;
  input rd_clk;

  wire [1:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire almost_empty;
  wire empty_i0;
  wire \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ;
  wire [3:0]\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_4_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg ;
  wire [3:0]\gen_pf_ic_rc.ram_empty_i_reg_0 ;
  wire going_aempty;
  wire leaving_aempty;
  wire rd_clk;
  wire rd_en;
  wire [3:0]\reg_out_i_reg[3]_0 ;
  wire [3:0]\reg_out_i_reg[3]_1 ;

  LUT4 #(
    .INIT(16'hFE0E)) 
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_1 
       (.I0(going_aempty),
        .I1(leaving_aempty),
        .I2(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ),
        .I3(almost_empty),
        .O(\gen_pf_ic_rc.ram_empty_i_reg ));
  LUT5 #(
    .INIT(32'h00820000)) 
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_2 
       (.I0(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_3_n_0 ),
        .I1(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 [3]),
        .I2(\reg_out_i_reg[3]_0 [3]),
        .I3(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ),
        .I4(rd_en),
        .O(going_aempty));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_3 
       (.I0(\reg_out_i_reg[3]_0 [0]),
        .I1(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 [2]),
        .I3(\reg_out_i_reg[3]_0 [2]),
        .I4(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 [1]),
        .I5(\reg_out_i_reg[3]_0 [1]),
        .O(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6696)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[0]_i_1 
       (.I0(\reg_out_i_reg[3]_0 [0]),
        .I1(Q[0]),
        .I2(rd_en),
        .I3(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h5D04A2FBA2FB5D04)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[1]_i_1 
       (.I0(\reg_out_i_reg[3]_0 [0]),
        .I1(rd_en),
        .I2(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ),
        .I3(Q[0]),
        .I4(\reg_out_i_reg[3]_0 [1]),
        .I5(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFF2020202020FF20)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(rd_en),
        .I1(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ),
        .I2(leaving_aempty),
        .I3(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ),
        .I4(Q[3]),
        .I5(\reg_out_i_reg[3]_0 [3]),
        .O(empty_i0));
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pf_ic_rc.ram_empty_i_i_2 
       (.I0(\reg_out_i_reg[3]_0 [3]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ),
        .O(leaving_aempty));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_3 
       (.I0(\reg_out_i_reg[3]_0 [0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\reg_out_i_reg[3]_0 [2]),
        .I4(Q[1]),
        .I5(\reg_out_i_reg[3]_0 [1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_4 
       (.I0(\reg_out_i_reg[3]_0 [0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_0 [2]),
        .I3(\reg_out_i_reg[3]_0 [2]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_0 [1]),
        .I5(\reg_out_i_reg[3]_0 [1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [0]),
        .Q(\reg_out_i_reg[3]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [1]),
        .Q(\reg_out_i_reg[3]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [2]),
        .Q(\reg_out_i_reg[3]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [3]),
        .Q(\reg_out_i_reg[3]_0 [3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_4
   (empty_i0,
    \reg_out_i_reg[3]_0 ,
    D,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    rd_en,
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ,
    Q,
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 ,
    \gen_pf_ic_rc.ram_empty_i_reg_0 ,
    almost_empty,
    SR,
    \reg_out_i_reg[3]_1 ,
    rd_clk);
  output empty_i0;
  output [3:0]\reg_out_i_reg[3]_0 ;
  output [1:0]D;
  output \gen_pf_ic_rc.ram_empty_i_reg ;
  input rd_en;
  input \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ;
  input [3:0]Q;
  input [3:0]\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 ;
  input [3:0]\gen_pf_ic_rc.ram_empty_i_reg_0 ;
  input almost_empty;
  input [0:0]SR;
  input [3:0]\reg_out_i_reg[3]_1 ;
  input rd_clk;

  wire [1:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire almost_empty;
  wire empty_i0;
  wire \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ;
  wire [3:0]\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_4_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg ;
  wire [3:0]\gen_pf_ic_rc.ram_empty_i_reg_0 ;
  wire going_aempty;
  wire leaving_aempty;
  wire rd_clk;
  wire rd_en;
  wire [3:0]\reg_out_i_reg[3]_0 ;
  wire [3:0]\reg_out_i_reg[3]_1 ;

  LUT4 #(
    .INIT(16'hFE0E)) 
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_1 
       (.I0(going_aempty),
        .I1(leaving_aempty),
        .I2(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ),
        .I3(almost_empty),
        .O(\gen_pf_ic_rc.ram_empty_i_reg ));
  LUT5 #(
    .INIT(32'h00820000)) 
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_2 
       (.I0(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_3_n_0 ),
        .I1(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 [3]),
        .I2(\reg_out_i_reg[3]_0 [3]),
        .I3(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ),
        .I4(rd_en),
        .O(going_aempty));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_3 
       (.I0(\reg_out_i_reg[3]_0 [0]),
        .I1(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 [2]),
        .I3(\reg_out_i_reg[3]_0 [2]),
        .I4(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 [1]),
        .I5(\reg_out_i_reg[3]_0 [1]),
        .O(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6696)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[0]_i_1 
       (.I0(\reg_out_i_reg[3]_0 [0]),
        .I1(Q[0]),
        .I2(rd_en),
        .I3(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h5D04A2FBA2FB5D04)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[1]_i_1 
       (.I0(\reg_out_i_reg[3]_0 [0]),
        .I1(rd_en),
        .I2(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ),
        .I3(Q[0]),
        .I4(\reg_out_i_reg[3]_0 [1]),
        .I5(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFF2020202020FF20)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(rd_en),
        .I1(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ),
        .I2(leaving_aempty),
        .I3(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ),
        .I4(Q[3]),
        .I5(\reg_out_i_reg[3]_0 [3]),
        .O(empty_i0));
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pf_ic_rc.ram_empty_i_i_2 
       (.I0(\reg_out_i_reg[3]_0 [3]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ),
        .O(leaving_aempty));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_3 
       (.I0(\reg_out_i_reg[3]_0 [0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\reg_out_i_reg[3]_0 [2]),
        .I4(Q[1]),
        .I5(\reg_out_i_reg[3]_0 [1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_4 
       (.I0(\reg_out_i_reg[3]_0 [0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_0 [2]),
        .I3(\reg_out_i_reg[3]_0 [2]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_0 [1]),
        .I5(\reg_out_i_reg[3]_0 [1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [0]),
        .Q(\reg_out_i_reg[3]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [1]),
        .Q(\reg_out_i_reg[3]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [2]),
        .Q(\reg_out_i_reg[3]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [3]),
        .Q(\reg_out_i_reg[3]_0 [3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0
   (D,
    Q,
    wrst_busy,
    \reg_out_i_reg[4]_0 ,
    wr_clk);
  output [1:0]D;
  input [4:0]Q;
  input wrst_busy;
  input [4:0]\reg_out_i_reg[4]_0 ;
  input wr_clk;

  wire [1:0]D;
  wire [4:0]Q;
  wire \gwdc.wr_data_count_i[4]_i_2_n_0 ;
  wire [4:0]\reg_out_i_reg[4]_0 ;
  wire \reg_out_i_reg_n_0_[0] ;
  wire \reg_out_i_reg_n_0_[1] ;
  wire \reg_out_i_reg_n_0_[2] ;
  wire \reg_out_i_reg_n_0_[3] ;
  wire \reg_out_i_reg_n_0_[4] ;
  wire wr_clk;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gwdc.wr_data_count_i[3]_i_1 
       (.I0(\gwdc.wr_data_count_i[4]_i_2_n_0 ),
        .I1(\reg_out_i_reg_n_0_[3] ),
        .I2(Q[3]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gwdc.wr_data_count_i[4]_i_1 
       (.I0(\gwdc.wr_data_count_i[4]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(\reg_out_i_reg_n_0_[3] ),
        .I3(\reg_out_i_reg_n_0_[4] ),
        .I4(Q[4]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    \gwdc.wr_data_count_i[4]_i_2 
       (.I0(\reg_out_i_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\reg_out_i_reg_n_0_[0] ),
        .I4(Q[1]),
        .I5(\reg_out_i_reg_n_0_[1] ),
        .O(\gwdc.wr_data_count_i[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [0]),
        .Q(\reg_out_i_reg_n_0_[0] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [1]),
        .Q(\reg_out_i_reg_n_0_[1] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [2]),
        .Q(\reg_out_i_reg_n_0_[2] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [3]),
        .Q(\reg_out_i_reg_n_0_[3] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [4]),
        .Q(\reg_out_i_reg_n_0_[4] ),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_14
   (D,
    Q,
    wrst_busy,
    \reg_out_i_reg[4]_0 ,
    wr_clk);
  output [1:0]D;
  input [4:0]Q;
  input wrst_busy;
  input [4:0]\reg_out_i_reg[4]_0 ;
  input wr_clk;

  wire [1:0]D;
  wire [4:0]Q;
  wire \gwdc.wr_data_count_i[4]_i_2_n_0 ;
  wire [4:0]\reg_out_i_reg[4]_0 ;
  wire \reg_out_i_reg_n_0_[0] ;
  wire \reg_out_i_reg_n_0_[1] ;
  wire \reg_out_i_reg_n_0_[2] ;
  wire \reg_out_i_reg_n_0_[3] ;
  wire \reg_out_i_reg_n_0_[4] ;
  wire wr_clk;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gwdc.wr_data_count_i[3]_i_1 
       (.I0(\gwdc.wr_data_count_i[4]_i_2_n_0 ),
        .I1(\reg_out_i_reg_n_0_[3] ),
        .I2(Q[3]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gwdc.wr_data_count_i[4]_i_1 
       (.I0(\gwdc.wr_data_count_i[4]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(\reg_out_i_reg_n_0_[3] ),
        .I3(\reg_out_i_reg_n_0_[4] ),
        .I4(Q[4]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    \gwdc.wr_data_count_i[4]_i_2 
       (.I0(\reg_out_i_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\reg_out_i_reg_n_0_[0] ),
        .I4(Q[1]),
        .I5(\reg_out_i_reg_n_0_[1] ),
        .O(\gwdc.wr_data_count_i[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [0]),
        .Q(\reg_out_i_reg_n_0_[0] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [1]),
        .Q(\reg_out_i_reg_n_0_[1] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [2]),
        .Q(\reg_out_i_reg_n_0_[2] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [3]),
        .Q(\reg_out_i_reg_n_0_[3] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [4]),
        .Q(\reg_out_i_reg_n_0_[4] ),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_16
   (Q,
    SR,
    D,
    rd_clk);
  output [4:0]Q;
  input [0:0]SR;
  input [4:0]D;
  input rd_clk;

  wire [4:0]D;
  wire [4:0]Q;
  wire [0:0]SR;
  wire rd_clk;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_5
   (Q,
    SR,
    D,
    rd_clk);
  output [4:0]Q;
  input [0:0]SR;
  input [4:0]D;
  input rd_clk;

  wire [4:0]D;
  wire [4:0]Q;
  wire [0:0]SR;
  wire rd_clk;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
   (SR,
    wrst_busy,
    d_out_reg,
    wr_pntr_plus1_pf_carry,
    wr_rst_busy,
    underflow_i0,
    rd_clk,
    wr_clk,
    rst,
    rst_d1,
    \gwack.wr_ack_i_reg ,
    wr_en,
    \guf.underflow_i_reg ,
    rd_en);
  output [0:0]SR;
  output wrst_busy;
  output d_out_reg;
  output wr_pntr_plus1_pf_carry;
  output wr_rst_busy;
  output underflow_i0;
  input rd_clk;
  input wr_clk;
  input rst;
  input rst_d1;
  input \gwack.wr_ack_i_reg ;
  input wr_en;
  input \guf.underflow_i_reg ;
  input rd_en;

  wire \/i__n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ;
  wire [0:0]SR;
  wire d_out_reg;
  wire [1:0]\gen_rst_ic.curr_rrst_state ;
  wire \gen_rst_ic.fifo_rd_rst_i ;
  wire \gen_rst_ic.fifo_rd_rst_wr_i ;
  wire \gen_rst_ic.fifo_wr_rst_ic ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_rd ;
  wire [1:0]\gen_rst_ic.next_rrst_state ;
  wire \gen_rst_ic.rst_seq_reentered_i_1_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_i_2_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_reg_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ;
  wire \guf.underflow_i_reg ;
  wire \gwack.wr_ack_i_reg ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire rst_i__0;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wr_rst_busy;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \/i_ 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\/i__n_0 ));
  LUT6 #(
    .INIT(64'h03030200FFFFFFFF)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I5(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'hFEFEFEEE)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I3(rst),
        .I4(p_0_in),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EEE0FFFFEEE0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h03000200)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I1(rst),
        .I2(p_0_in),
        .I3(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst),
        .I3(p_0_in),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1 
       (.I0(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1 
       (.I0(\gen_rst_ic.curr_rrst_state [0]),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .O(\gen_rst_ic.next_rrst_state [1]));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [0]),
        .Q(\gen_rst_ic.curr_rrst_state [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [1]),
        .Q(\gen_rst_ic.curr_rrst_state [1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \__0/i_ 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.next_rrst_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h3E)) 
    \gen_rst_ic.fifo_rd_rst_ic_i_1 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.fifo_rd_rst_i ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_rd_rst_i ),
        .Q(SR),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst_i__0),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I4(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ),
        .I5(\gen_rst_ic.fifo_wr_rst_ic ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_2 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i__0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_3 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ),
        .Q(\gen_rst_ic.fifo_wr_rst_ic ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(SR));
  LUT3 #(
    .INIT(8'h02)) 
    \gen_rst_ic.rst_seq_reentered_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ),
        .I1(rst),
        .I2(p_0_in),
        .O(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \gen_rst_ic.rst_seq_reentered_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I5(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.rst_seq_reentered_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFFEF00)) 
    \gen_rst_ic.wr_rst_busy_ic_i_1 
       (.I0(rst),
        .I1(p_0_in),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I3(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ),
        .I4(wrst_busy),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000116)) 
    \gen_rst_ic.wr_rst_busy_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.wr_rst_busy_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ),
        .Q(wrst_busy),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__6 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(\gen_rst_ic.fifo_wr_rst_rd ),
        .src_rst(\gen_rst_ic.fifo_wr_rst_ic ));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\gwack.wr_ack_i_reg ),
        .I2(wrst_busy),
        .I3(rst_d1),
        .O(wr_pntr_plus1_pf_carry));
  LUT3 #(
    .INIT(8'hE0)) 
    \guf.underflow_i_i_1 
       (.I0(\guf.underflow_i_reg ),
        .I1(SR),
        .I2(rd_en),
        .O(underflow_i0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gwack.wr_ack_i_i_1 
       (.I0(rst_d1),
        .I1(\gwack.wr_ack_i_reg ),
        .I2(wr_en),
        .I3(wrst_busy),
        .I4(\gen_rst_ic.fifo_wr_rst_ic ),
        .I5(rst),
        .O(d_out_reg));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    wr_rst_busy_INST_0
       (.I0(wrst_busy),
        .I1(rst_d1),
        .O(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst__xdcDup__1
   (SR,
    wrst_busy,
    d_out_reg,
    wr_pntr_plus1_pf_carry,
    wr_rst_busy,
    underflow_i0,
    rd_clk,
    wr_clk,
    rst,
    rst_d1,
    \gwack.wr_ack_i_reg ,
    wr_en,
    \guf.underflow_i_reg ,
    rd_en);
  output [0:0]SR;
  output wrst_busy;
  output d_out_reg;
  output wr_pntr_plus1_pf_carry;
  output wr_rst_busy;
  output underflow_i0;
  input rd_clk;
  input wr_clk;
  input rst;
  input rst_d1;
  input \gwack.wr_ack_i_reg ;
  input wr_en;
  input \guf.underflow_i_reg ;
  input rd_en;

  wire \/i__n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ;
  wire [0:0]SR;
  wire d_out_reg;
  wire [1:0]\gen_rst_ic.curr_rrst_state ;
  wire \gen_rst_ic.fifo_rd_rst_i ;
  wire \gen_rst_ic.fifo_rd_rst_wr_i ;
  wire \gen_rst_ic.fifo_wr_rst_ic ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_rd ;
  wire [1:0]\gen_rst_ic.next_rrst_state ;
  wire \gen_rst_ic.rst_seq_reentered_i_1_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_i_2_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_reg_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ;
  wire \guf.underflow_i_reg ;
  wire \gwack.wr_ack_i_reg ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire rst_i__0;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wr_rst_busy;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \/i_ 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\/i__n_0 ));
  LUT6 #(
    .INIT(64'h03030200FFFFFFFF)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I5(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFEFEFEEE)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I3(rst),
        .I4(p_0_in),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EEE0FFFFEEE0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h03000200)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I1(rst),
        .I2(p_0_in),
        .I3(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst),
        .I3(p_0_in),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1 
       (.I0(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1 
       (.I0(\gen_rst_ic.curr_rrst_state [0]),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .O(\gen_rst_ic.next_rrst_state [1]));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [0]),
        .Q(\gen_rst_ic.curr_rrst_state [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [1]),
        .Q(\gen_rst_ic.curr_rrst_state [1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \__0/i_ 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.next_rrst_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h3E)) 
    \gen_rst_ic.fifo_rd_rst_ic_i_1 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.fifo_rd_rst_i ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_rd_rst_i ),
        .Q(SR),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst_i__0),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I4(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ),
        .I5(\gen_rst_ic.fifo_wr_rst_ic ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_2 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i__0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_3 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ),
        .Q(\gen_rst_ic.fifo_wr_rst_ic ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__5 \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(SR));
  LUT3 #(
    .INIT(8'h02)) 
    \gen_rst_ic.rst_seq_reentered_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ),
        .I1(rst),
        .I2(p_0_in),
        .O(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \gen_rst_ic.rst_seq_reentered_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I5(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.rst_seq_reentered_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFFEF00)) 
    \gen_rst_ic.wr_rst_busy_ic_i_1 
       (.I0(rst),
        .I1(p_0_in),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I3(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ),
        .I4(wrst_busy),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000116)) 
    \gen_rst_ic.wr_rst_busy_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.wr_rst_busy_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ),
        .Q(wrst_busy),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__4 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(\gen_rst_ic.fifo_wr_rst_rd ),
        .src_rst(\gen_rst_ic.fifo_wr_rst_ic ));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\gwack.wr_ack_i_reg ),
        .I2(wrst_busy),
        .I3(rst_d1),
        .O(wr_pntr_plus1_pf_carry));
  LUT3 #(
    .INIT(8'hE0)) 
    \guf.underflow_i_i_1 
       (.I0(\guf.underflow_i_reg ),
        .I1(SR),
        .I2(rd_en),
        .O(underflow_i0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gwack.wr_ack_i_i_1 
       (.I0(rst_d1),
        .I1(\gwack.wr_ack_i_reg ),
        .I2(wr_en),
        .I3(wrst_busy),
        .I4(\gen_rst_ic.fifo_wr_rst_ic ),
        .I5(rst),
        .O(d_out_reg));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    wr_rst_busy_INST_0
       (.I0(wrst_busy),
        .I1(rst_d1),
        .O(wr_rst_busy));
endmodule

(* ADDR_WIDTH_A = "4" *) (* ADDR_WIDTH_B = "4" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "6" *) (* BYTE_WRITE_WIDTH_B = "6" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "1" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "96" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "16" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) (* P_MIN_WIDTH_DATA = "6" *) 
(* P_MIN_WIDTH_DATA_A = "6" *) (* P_MIN_WIDTH_DATA_B = "6" *) (* P_MIN_WIDTH_DATA_ECC = "6" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "6" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "4" *) (* P_WIDTH_ADDR_READ_B = "4" *) 
(* P_WIDTH_ADDR_WRITE_A = "4" *) (* P_WIDTH_ADDR_WRITE_B = "4" *) (* P_WIDTH_COL_WRITE_A = "6" *) 
(* P_WIDTH_COL_WRITE_B = "6" *) (* READ_DATA_WIDTH_A = "6" *) (* READ_DATA_WIDTH_B = "6" *) 
(* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "6" *) 
(* WRITE_DATA_WIDTH_B = "6" *) (* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) 
(* XPM_MODULE = "TRUE" *) (* rsta_loop_iter = "8" *) (* rstb_loop_iter = "8" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [3:0]addra;
  input [5:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [5:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [3:0]addrb;
  input [5:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [5:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [5:0]dina;
  wire [5:0]doutb;
  wire ena;
  wire enb;
  wire [5:0]\gen_rd_b.doutb_reg0 ;
  wire rstb;
  wire sleep;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[0] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [0]),
        .Q(doutb[0]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[1] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [1]),
        .Q(doutb[1]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[2] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [2]),
        .Q(doutb[2]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[3] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [3]),
        .Q(doutb[3]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[4] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [4]),
        .Q(doutb[4]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[5] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [5]),
        .Q(doutb[5]),
        .R(rstb));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[1:0]),
        .DIB(dina[3:2]),
        .DIC(dina[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [1:0]),
        .DOB(\gen_rd_b.doutb_reg0 [3:2]),
        .DOC(\gen_rd_b.doutb_reg0 [5:4]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
endmodule

(* ADDR_WIDTH_A = "4" *) (* ADDR_WIDTH_B = "4" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "6" *) (* BYTE_WRITE_WIDTH_B = "6" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "1" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "96" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "16" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "6" *) (* P_MIN_WIDTH_DATA_A = "6" *) (* P_MIN_WIDTH_DATA_B = "6" *) 
(* P_MIN_WIDTH_DATA_ECC = "6" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "6" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "4" *) 
(* P_WIDTH_ADDR_READ_B = "4" *) (* P_WIDTH_ADDR_WRITE_A = "4" *) (* P_WIDTH_ADDR_WRITE_B = "4" *) 
(* P_WIDTH_COL_WRITE_A = "6" *) (* P_WIDTH_COL_WRITE_B = "6" *) (* READ_DATA_WIDTH_A = "6" *) 
(* READ_DATA_WIDTH_B = "6" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "1" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "6" *) (* WRITE_DATA_WIDTH_B = "6" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "2" *) (* XPM_MODULE = "TRUE" *) (* rsta_loop_iter = "8" *) 
(* rstb_loop_iter = "8" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [3:0]addra;
  input [5:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [5:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [3:0]addrb;
  input [5:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [5:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [5:0]dina;
  wire [5:0]doutb;
  wire ena;
  wire enb;
  wire [5:0]\gen_rd_b.doutb_reg0 ;
  wire rstb;
  wire sleep;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[0] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [0]),
        .Q(doutb[0]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[1] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [1]),
        .Q(doutb[1]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[2] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [2]),
        .Q(doutb[2]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[3] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [3]),
        .Q(doutb[3]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[4] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [4]),
        .Q(doutb[4]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[5] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [5]),
        .Q(doutb[5]),
        .R(rstb));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[1:0]),
        .DIB(dina[3:2]),
        .DIC(dina[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [1:0]),
        .DOB(\gen_rd_b.doutb_reg0 [3:2]),
        .DOC(\gen_rd_b.doutb_reg0 [5:4]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "8192" *) (* MEMORY_TYPE = "2" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "2048" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) 
(* P_MIN_WIDTH_DATA = "4" *) (* P_MIN_WIDTH_DATA_A = "4" *) (* P_MIN_WIDTH_DATA_B = "16" *) 
(* P_MIN_WIDTH_DATA_ECC = "4" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "4" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "4" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) (* P_WIDTH_ADDR_READ_A = "11" *) 
(* P_WIDTH_ADDR_READ_B = "9" *) (* P_WIDTH_ADDR_WRITE_A = "11" *) (* P_WIDTH_ADDR_WRITE_B = "9" *) 
(* P_WIDTH_COL_WRITE_A = "4" *) (* P_WIDTH_COL_WRITE_B = "4" *) (* READ_DATA_WIDTH_A = "4" *) 
(* READ_DATA_WIDTH_B = "16" *) (* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "1" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) (* WRITE_MODE_A = "1" *) 
(* WRITE_MODE_B = "1" *) (* XPM_MODULE = "TRUE" *) (* rsta_loop_iter = "4" *) 
(* rstb_loop_iter = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__parameterized0
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire [15:4]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "3" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "15" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_b.gen_word_wide.mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_aspect_ratio = "4" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_b.gen_word_wide.mem_reg 
       (.ADDRARDADDR({1'b0,addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,addrb,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI(dinb),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED [15:4],douta}),
        .DOBDO(doutb),
        .DOPADOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ),
        .ENBWREN(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rsta),
        .RSTRAMB(rstb),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 }),
        .WEBWE({1'b0,1'b0,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 }));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_1 
       (.I0(rsta),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_2 
       (.I0(rstb),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_3 
       (.I0(wea),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_4 
       (.I0(web),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "8192" *) (* MEMORY_TYPE = "2" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "2048" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) 
(* P_MIN_WIDTH_DATA = "4" *) (* P_MIN_WIDTH_DATA_A = "4" *) (* P_MIN_WIDTH_DATA_B = "16" *) 
(* P_MIN_WIDTH_DATA_ECC = "4" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "4" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "4" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) (* P_WIDTH_ADDR_READ_A = "11" *) 
(* P_WIDTH_ADDR_READ_B = "9" *) (* P_WIDTH_ADDR_WRITE_A = "11" *) (* P_WIDTH_ADDR_WRITE_B = "9" *) 
(* P_WIDTH_COL_WRITE_A = "4" *) (* P_WIDTH_COL_WRITE_B = "4" *) (* READ_DATA_WIDTH_A = "4" *) 
(* READ_DATA_WIDTH_B = "16" *) (* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "1" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) (* WRITE_MODE_A = "1" *) 
(* WRITE_MODE_B = "1" *) (* XPM_MODULE = "TRUE" *) (* rsta_loop_iter = "4" *) 
(* rstb_loop_iter = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__parameterized0__2
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire [15:4]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "3" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "15" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_b.gen_word_wide.mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_aspect_ratio = "4" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_b.gen_word_wide.mem_reg 
       (.ADDRARDADDR({1'b0,addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,addrb,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI(dinb),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED [15:4],douta}),
        .DOBDO(doutb),
        .DOPADOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ),
        .ENBWREN(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rsta),
        .RSTRAMB(rstb),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 }),
        .WEBWE({1'b0,1'b0,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 }));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_1 
       (.I0(rsta),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_2 
       (.I0(rstb),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_3 
       (.I0(wea),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_4 
       (.I0(web),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "8192" *) (* MEMORY_TYPE = "2" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "2048" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) 
(* P_MIN_WIDTH_DATA = "4" *) (* P_MIN_WIDTH_DATA_A = "4" *) (* P_MIN_WIDTH_DATA_B = "16" *) 
(* P_MIN_WIDTH_DATA_ECC = "4" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "4" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "4" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) (* P_WIDTH_ADDR_READ_A = "11" *) 
(* P_WIDTH_ADDR_READ_B = "9" *) (* P_WIDTH_ADDR_WRITE_A = "11" *) (* P_WIDTH_ADDR_WRITE_B = "9" *) 
(* P_WIDTH_COL_WRITE_A = "4" *) (* P_WIDTH_COL_WRITE_B = "4" *) (* READ_DATA_WIDTH_A = "4" *) 
(* READ_DATA_WIDTH_B = "16" *) (* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "1" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) (* WRITE_MODE_A = "1" *) 
(* WRITE_MODE_B = "1" *) (* XPM_MODULE = "TRUE" *) (* rsta_loop_iter = "4" *) 
(* rstb_loop_iter = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__parameterized0__3
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire [15:4]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "3" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "15" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_b.gen_word_wide.mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_aspect_ratio = "4" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_b.gen_word_wide.mem_reg 
       (.ADDRARDADDR({1'b0,addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,addrb,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI(dinb),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED [15:4],douta}),
        .DOBDO(doutb),
        .DOPADOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ),
        .ENBWREN(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rsta),
        .RSTRAMB(rstb),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 }),
        .WEBWE({1'b0,1'b0,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 }));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_1 
       (.I0(rsta),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_2 
       (.I0(rstb),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_3 
       (.I0(wea),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_4 
       (.I0(web),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "8192" *) (* MEMORY_TYPE = "2" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "2048" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) 
(* P_MIN_WIDTH_DATA = "4" *) (* P_MIN_WIDTH_DATA_A = "4" *) (* P_MIN_WIDTH_DATA_B = "16" *) 
(* P_MIN_WIDTH_DATA_ECC = "4" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "4" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "4" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) (* P_WIDTH_ADDR_READ_A = "11" *) 
(* P_WIDTH_ADDR_READ_B = "9" *) (* P_WIDTH_ADDR_WRITE_A = "11" *) (* P_WIDTH_ADDR_WRITE_B = "9" *) 
(* P_WIDTH_COL_WRITE_A = "4" *) (* P_WIDTH_COL_WRITE_B = "4" *) (* READ_DATA_WIDTH_A = "4" *) 
(* READ_DATA_WIDTH_B = "16" *) (* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "1" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) (* WRITE_MODE_A = "1" *) 
(* WRITE_MODE_B = "1" *) (* XPM_MODULE = "TRUE" *) (* rsta_loop_iter = "4" *) 
(* rstb_loop_iter = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__parameterized0__4
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire [15:4]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "3" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "15" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_b.gen_word_wide.mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_aspect_ratio = "4" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_b.gen_word_wide.mem_reg 
       (.ADDRARDADDR({1'b0,addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,addrb,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI(dinb),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED [15:4],douta}),
        .DOBDO(doutb),
        .DOPADOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ),
        .ENBWREN(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rsta),
        .RSTRAMB(rstb),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 }),
        .WEBWE({1'b0,1'b0,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 }));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_1 
       (.I0(rsta),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_2 
       (.I0(rstb),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_3 
       (.I0(wea),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_4 
       (.I0(web),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "blockram" *) 
(* MEMORY_SIZE = "8192" *) (* MESSAGE_CONTROL = "0" *) (* P_CLOCKING_MODE = "0" *) 
(* P_ECC_MODE = "0" *) (* P_MEMORY_OPTIMIZATION = "1" *) (* P_MEMORY_PRIMITIVE = "2" *) 
(* P_WAKEUP_TIME = "0" *) (* P_WRITE_MODE_A = "1" *) (* P_WRITE_MODE_B = "1" *) 
(* READ_DATA_WIDTH_A = "4" *) (* READ_DATA_WIDTH_B = "16" *) (* READ_LATENCY_A = "1" *) 
(* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) 
(* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) (* WAKEUP_TIME = "disable_sleep" *) 
(* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) (* WRITE_MODE_A = "read_first" *) 
(* WRITE_MODE_B = "read_first" *) (* XPM_MODULE = "TRUE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "3" *) 
  (* \MEM.ADDRESS_SPACE_END  = "2047" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "4" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MEMORY_TYPE = "2" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "2048" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "4" *) 
  (* P_MIN_WIDTH_DATA_A = "4" *) 
  (* P_MIN_WIDTH_DATA_B = "16" *) 
  (* P_MIN_WIDTH_DATA_ECC = "4" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "4" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "4" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) 
  (* P_WIDTH_ADDR_READ_A = "11" *) 
  (* P_WIDTH_ADDR_READ_B = "9" *) 
  (* P_WIDTH_ADDR_WRITE_A = "11" *) 
  (* P_WIDTH_ADDR_WRITE_B = "9" *) 
  (* P_WIDTH_COL_WRITE_A = "4" *) 
  (* P_WIDTH_COL_WRITE_B = "4" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "1" *) 
  (* WRITE_MODE_B = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "4" *) 
  (* rstb_loop_iter = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__parameterized0 xpm_memory_base_inst
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rstb(rstb),
        .sbiterra(NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED),
        .sbiterrb(NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "blockram" *) 
(* MEMORY_SIZE = "8192" *) (* MESSAGE_CONTROL = "0" *) (* ORIG_REF_NAME = "xpm_memory_tdpram" *) 
(* P_CLOCKING_MODE = "0" *) (* P_ECC_MODE = "0" *) (* P_MEMORY_OPTIMIZATION = "1" *) 
(* P_MEMORY_PRIMITIVE = "2" *) (* P_WAKEUP_TIME = "0" *) (* P_WRITE_MODE_A = "1" *) 
(* P_WRITE_MODE_B = "1" *) (* READ_DATA_WIDTH_A = "4" *) (* READ_DATA_WIDTH_B = "16" *) 
(* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) 
(* WAKEUP_TIME = "disable_sleep" *) (* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) 
(* WRITE_MODE_A = "read_first" *) (* WRITE_MODE_B = "read_first" *) (* XPM_MODULE = "TRUE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram__2
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "3" *) 
  (* \MEM.ADDRESS_SPACE_END  = "2047" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "4" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MEMORY_TYPE = "2" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "2048" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "4" *) 
  (* P_MIN_WIDTH_DATA_A = "4" *) 
  (* P_MIN_WIDTH_DATA_B = "16" *) 
  (* P_MIN_WIDTH_DATA_ECC = "4" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "4" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "4" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) 
  (* P_WIDTH_ADDR_READ_A = "11" *) 
  (* P_WIDTH_ADDR_READ_B = "9" *) 
  (* P_WIDTH_ADDR_WRITE_A = "11" *) 
  (* P_WIDTH_ADDR_WRITE_B = "9" *) 
  (* P_WIDTH_COL_WRITE_A = "4" *) 
  (* P_WIDTH_COL_WRITE_B = "4" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "1" *) 
  (* WRITE_MODE_B = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "4" *) 
  (* rstb_loop_iter = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__parameterized0__2 xpm_memory_base_inst
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rstb(rstb),
        .sbiterra(NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED),
        .sbiterrb(NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "blockram" *) 
(* MEMORY_SIZE = "8192" *) (* MESSAGE_CONTROL = "0" *) (* ORIG_REF_NAME = "xpm_memory_tdpram" *) 
(* P_CLOCKING_MODE = "0" *) (* P_ECC_MODE = "0" *) (* P_MEMORY_OPTIMIZATION = "1" *) 
(* P_MEMORY_PRIMITIVE = "2" *) (* P_WAKEUP_TIME = "0" *) (* P_WRITE_MODE_A = "1" *) 
(* P_WRITE_MODE_B = "1" *) (* READ_DATA_WIDTH_A = "4" *) (* READ_DATA_WIDTH_B = "16" *) 
(* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) 
(* WAKEUP_TIME = "disable_sleep" *) (* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) 
(* WRITE_MODE_A = "read_first" *) (* WRITE_MODE_B = "read_first" *) (* XPM_MODULE = "TRUE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram__3
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "3" *) 
  (* \MEM.ADDRESS_SPACE_END  = "2047" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "4" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MEMORY_TYPE = "2" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "2048" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "4" *) 
  (* P_MIN_WIDTH_DATA_A = "4" *) 
  (* P_MIN_WIDTH_DATA_B = "16" *) 
  (* P_MIN_WIDTH_DATA_ECC = "4" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "4" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "4" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) 
  (* P_WIDTH_ADDR_READ_A = "11" *) 
  (* P_WIDTH_ADDR_READ_B = "9" *) 
  (* P_WIDTH_ADDR_WRITE_A = "11" *) 
  (* P_WIDTH_ADDR_WRITE_B = "9" *) 
  (* P_WIDTH_COL_WRITE_A = "4" *) 
  (* P_WIDTH_COL_WRITE_B = "4" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "1" *) 
  (* WRITE_MODE_B = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "4" *) 
  (* rstb_loop_iter = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__parameterized0__3 xpm_memory_base_inst
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rstb(rstb),
        .sbiterra(NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED),
        .sbiterrb(NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "blockram" *) 
(* MEMORY_SIZE = "8192" *) (* MESSAGE_CONTROL = "0" *) (* ORIG_REF_NAME = "xpm_memory_tdpram" *) 
(* P_CLOCKING_MODE = "0" *) (* P_ECC_MODE = "0" *) (* P_MEMORY_OPTIMIZATION = "1" *) 
(* P_MEMORY_PRIMITIVE = "2" *) (* P_WAKEUP_TIME = "0" *) (* P_WRITE_MODE_A = "1" *) 
(* P_WRITE_MODE_B = "1" *) (* READ_DATA_WIDTH_A = "4" *) (* READ_DATA_WIDTH_B = "16" *) 
(* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) 
(* WAKEUP_TIME = "disable_sleep" *) (* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) 
(* WRITE_MODE_A = "read_first" *) (* WRITE_MODE_B = "read_first" *) (* XPM_MODULE = "TRUE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram__4
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "3" *) 
  (* \MEM.ADDRESS_SPACE_END  = "2047" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "4" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MEMORY_TYPE = "2" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "2048" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "4" *) 
  (* P_MIN_WIDTH_DATA_A = "4" *) 
  (* P_MIN_WIDTH_DATA_B = "16" *) 
  (* P_MIN_WIDTH_DATA_ECC = "4" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "4" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "4" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) 
  (* P_WIDTH_ADDR_READ_A = "11" *) 
  (* P_WIDTH_ADDR_READ_B = "9" *) 
  (* P_WIDTH_ADDR_WRITE_A = "11" *) 
  (* P_WIDTH_ADDR_WRITE_B = "9" *) 
  (* P_WIDTH_COL_WRITE_A = "4" *) 
  (* P_WIDTH_COL_WRITE_B = "4" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "1" *) 
  (* WRITE_MODE_B = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "4" *) 
  (* rstb_loop_iter = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__parameterized0__4 xpm_memory_base_inst
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rstb(rstb),
        .sbiterra(NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED),
        .sbiterrb(NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED),
        .sleep(sleep),
        .wea(wea),
        .web(web));
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
