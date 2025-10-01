// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Jun 16 12:45:18 2022
// Host        : TOR00094 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_AXI_DMA_0_sim_netlist.v
// Design      : design_1_AXI_DMA_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad_mem_asym
   (m_dest_axi_wdata,
    E,
    m_dest_axi_aclk,
    fifo_wr_clk,
    ADDRARDADDR,
    ADDRBWRADDR,
    fifo_wr_din,
    m_ram_reg_0,
    dest_valid,
    m_ram_reg_1,
    m_dest_axi_wready);
  output [31:0]m_dest_axi_wdata;
  output [0:0]E;
  input m_dest_axi_aclk;
  input fifo_wr_clk;
  input [7:0]ADDRARDADDR;
  input [7:0]ADDRBWRADDR;
  input [31:0]fifo_wr_din;
  input [0:0]m_ram_reg_0;
  input dest_valid;
  input m_ram_reg_1;
  input m_dest_axi_wready;

  wire [7:0]ADDRARDADDR;
  wire [7:0]ADDRBWRADDR;
  wire [0:0]E;
  wire dest_valid;
  wire fifo_wr_clk;
  wire [31:0]fifo_wr_din;
  wire m_dest_axi_aclk;
  wire [31:0]m_dest_axi_wdata;
  wire m_dest_axi_wready;
  wire [0:0]m_ram_reg_0;
  wire m_ram_reg_1;
  wire [1:0]NLW_m_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_m_ram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "m_ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "31" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "256" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
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
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(m_dest_axi_aclk),
        .CLKBWRCLK(fifo_wr_clk),
        .DIADI(fifo_wr_din[15:0]),
        .DIBDI(fifo_wr_din[31:16]),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(m_dest_axi_wdata[15:0]),
        .DOBDO(m_dest_axi_wdata[31:16]),
        .DOPADOP(NLW_m_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_m_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(E),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({m_ram_reg_0,m_ram_reg_0,m_ram_reg_0,m_ram_reg_0}));
  LUT3 #(
    .INIT(8'hA2)) 
    m_ram_reg_i_1
       (.I0(dest_valid),
        .I1(m_ram_reg_1),
        .I2(m_dest_axi_wready),
        .O(E));
endmodule

(* ALLOW_ASYM_MEM = "1" *) (* ASYNC_CLK_DEST_REQ = "1'b0" *) (* ASYNC_CLK_REQ_SRC = "1'b1" *) 
(* ASYNC_CLK_SRC_DEST = "1'b1" *) (* AXI_ID_WIDTH_DEST = "1" *) (* AXI_ID_WIDTH_SRC = "1" *) 
(* AXI_SLICE_DEST = "1'b0" *) (* AXI_SLICE_SRC = "1'b0" *) (* BEATS_PER_BURST_LIMIT_DEST = "256" *) 
(* BEATS_PER_BURST_LIMIT_SRC = "1024" *) (* BYTES_PER_BEAT_WIDTH_DEST = "2" *) (* BYTES_PER_BEAT_WIDTH_SRC = "2" *) 
(* BYTES_PER_BURST_LIMIT = "1024" *) (* BYTES_PER_BURST_LIMIT_DEST = "1024" *) (* BYTES_PER_BURST_LIMIT_SRC = "4096" *) 
(* BYTES_PER_BURST_WIDTH = "7" *) (* CYCLIC = "1'b0" *) (* DBG_ID_PADDING = "4" *) 
(* DISABLE_DEBUG_REGISTERS = "1'b0" *) (* DMA_2D_TRANSFER = "1'b0" *) (* DMA_AXIS_DEST_W = "4" *) 
(* DMA_AXIS_ID_W = "8" *) (* DMA_AXI_ADDR_WIDTH = "30" *) (* DMA_AXI_PROTOCOL_DEST = "0" *) 
(* DMA_AXI_PROTOCOL_SRC = "0" *) (* DMA_DATA_WIDTH_DEST = "32" *) (* DMA_DATA_WIDTH_SRC = "32" *) 
(* DMA_LENGTH_ALIGN = "2" *) (* DMA_LENGTH_ALIGN_DEST = "0" *) (* DMA_LENGTH_ALIGN_SRC = "2" *) 
(* DMA_LENGTH_WIDTH = "24" *) (* DMA_TYPE_AXI_MM = "0" *) (* DMA_TYPE_AXI_STREAM = "1" *) 
(* DMA_TYPE_DEST = "0" *) (* DMA_TYPE_FIFO = "2" *) (* DMA_TYPE_SRC = "2" *) 
(* ENABLE_DIAGNOSTICS_IF = "1'b0" *) (* FIFO_SIZE = "8" *) (* HAS_DEST_ADDR = "1'b1" *) 
(* HAS_SRC_ADDR = "1'b0" *) (* ID = "0" *) (* ID_WIDTH = "4" *) 
(* MAX_BYTES_PER_BURST = "128" *) (* REAL_MAX_BYTES_PER_BURST = "128" *) (* SYNC_TRANSFER_START = "1'b1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awprot,
    s_axi_wvalid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_arready,
    s_axi_arprot,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rdata,
    irq,
    m_dest_axi_aclk,
    m_dest_axi_aresetn,
    m_dest_axi_awaddr,
    m_dest_axi_awlen,
    m_dest_axi_awsize,
    m_dest_axi_awburst,
    m_dest_axi_awprot,
    m_dest_axi_awcache,
    m_dest_axi_awvalid,
    m_dest_axi_awready,
    m_dest_axi_awid,
    m_dest_axi_awlock,
    m_dest_axi_wdata,
    m_dest_axi_wstrb,
    m_dest_axi_wready,
    m_dest_axi_wvalid,
    m_dest_axi_wlast,
    m_dest_axi_wid,
    m_dest_axi_bvalid,
    m_dest_axi_bresp,
    m_dest_axi_bready,
    m_dest_axi_bid,
    m_dest_axi_arvalid,
    m_dest_axi_araddr,
    m_dest_axi_arlen,
    m_dest_axi_arsize,
    m_dest_axi_arburst,
    m_dest_axi_arcache,
    m_dest_axi_arprot,
    m_dest_axi_arready,
    m_dest_axi_rvalid,
    m_dest_axi_rresp,
    m_dest_axi_rdata,
    m_dest_axi_rready,
    m_dest_axi_arid,
    m_dest_axi_arlock,
    m_dest_axi_rid,
    m_dest_axi_rlast,
    m_src_axi_aclk,
    m_src_axi_aresetn,
    m_src_axi_arready,
    m_src_axi_arvalid,
    m_src_axi_araddr,
    m_src_axi_arlen,
    m_src_axi_arsize,
    m_src_axi_arburst,
    m_src_axi_arprot,
    m_src_axi_arcache,
    m_src_axi_arid,
    m_src_axi_arlock,
    m_src_axi_rdata,
    m_src_axi_rready,
    m_src_axi_rvalid,
    m_src_axi_rresp,
    m_src_axi_rid,
    m_src_axi_rlast,
    m_src_axi_awvalid,
    m_src_axi_awaddr,
    m_src_axi_awlen,
    m_src_axi_awsize,
    m_src_axi_awburst,
    m_src_axi_awcache,
    m_src_axi_awprot,
    m_src_axi_awready,
    m_src_axi_wvalid,
    m_src_axi_wdata,
    m_src_axi_wstrb,
    m_src_axi_wlast,
    m_src_axi_wready,
    m_src_axi_bvalid,
    m_src_axi_bresp,
    m_src_axi_bready,
    m_src_axi_awid,
    m_src_axi_awlock,
    m_src_axi_wid,
    m_src_axi_bid,
    s_axis_aclk,
    s_axis_ready,
    s_axis_valid,
    s_axis_data,
    s_axis_strb,
    s_axis_keep,
    s_axis_user,
    s_axis_id,
    s_axis_dest,
    s_axis_last,
    s_axis_xfer_req,
    m_axis_aclk,
    m_axis_ready,
    m_axis_valid,
    m_axis_data,
    m_axis_strb,
    m_axis_keep,
    m_axis_user,
    m_axis_id,
    m_axis_dest,
    m_axis_last,
    m_axis_xfer_req,
    fifo_wr_clk,
    fifo_wr_en,
    fifo_wr_din,
    fifo_wr_overflow,
    fifo_wr_sync,
    fifo_wr_xfer_req,
    fifo_rd_clk,
    fifo_rd_en,
    fifo_rd_valid,
    fifo_rd_dout,
    fifo_rd_underflow,
    fifo_rd_xfer_req,
    dest_diag_level_bursts);
  input s_axi_aclk;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input [10:0]s_axi_awaddr;
  output s_axi_awready;
  input [2:0]s_axi_awprot;
  input s_axi_wvalid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  output s_axi_wready;
  output s_axi_bvalid;
  output [1:0]s_axi_bresp;
  input s_axi_bready;
  input s_axi_arvalid;
  input [10:0]s_axi_araddr;
  output s_axi_arready;
  input [2:0]s_axi_arprot;
  output s_axi_rvalid;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output [31:0]s_axi_rdata;
  output irq;
  input m_dest_axi_aclk;
  input m_dest_axi_aresetn;
  output [29:0]m_dest_axi_awaddr;
  output [7:0]m_dest_axi_awlen;
  output [2:0]m_dest_axi_awsize;
  output [1:0]m_dest_axi_awburst;
  output [2:0]m_dest_axi_awprot;
  output [3:0]m_dest_axi_awcache;
  output m_dest_axi_awvalid;
  input m_dest_axi_awready;
  output [0:0]m_dest_axi_awid;
  output [0:0]m_dest_axi_awlock;
  output [31:0]m_dest_axi_wdata;
  output [3:0]m_dest_axi_wstrb;
  input m_dest_axi_wready;
  output m_dest_axi_wvalid;
  output m_dest_axi_wlast;
  output [0:0]m_dest_axi_wid;
  input m_dest_axi_bvalid;
  input [1:0]m_dest_axi_bresp;
  output m_dest_axi_bready;
  input [0:0]m_dest_axi_bid;
  output m_dest_axi_arvalid;
  output [29:0]m_dest_axi_araddr;
  output [7:0]m_dest_axi_arlen;
  output [2:0]m_dest_axi_arsize;
  output [1:0]m_dest_axi_arburst;
  output [3:0]m_dest_axi_arcache;
  output [2:0]m_dest_axi_arprot;
  input m_dest_axi_arready;
  input m_dest_axi_rvalid;
  input [1:0]m_dest_axi_rresp;
  input [31:0]m_dest_axi_rdata;
  output m_dest_axi_rready;
  output [0:0]m_dest_axi_arid;
  output [0:0]m_dest_axi_arlock;
  input [0:0]m_dest_axi_rid;
  input m_dest_axi_rlast;
  input m_src_axi_aclk;
  input m_src_axi_aresetn;
  input m_src_axi_arready;
  output m_src_axi_arvalid;
  output [29:0]m_src_axi_araddr;
  output [7:0]m_src_axi_arlen;
  output [2:0]m_src_axi_arsize;
  output [1:0]m_src_axi_arburst;
  output [2:0]m_src_axi_arprot;
  output [3:0]m_src_axi_arcache;
  output [0:0]m_src_axi_arid;
  output [0:0]m_src_axi_arlock;
  input [31:0]m_src_axi_rdata;
  output m_src_axi_rready;
  input m_src_axi_rvalid;
  input [1:0]m_src_axi_rresp;
  input [0:0]m_src_axi_rid;
  input m_src_axi_rlast;
  output m_src_axi_awvalid;
  output [29:0]m_src_axi_awaddr;
  output [7:0]m_src_axi_awlen;
  output [2:0]m_src_axi_awsize;
  output [1:0]m_src_axi_awburst;
  output [3:0]m_src_axi_awcache;
  output [2:0]m_src_axi_awprot;
  input m_src_axi_awready;
  output m_src_axi_wvalid;
  output [31:0]m_src_axi_wdata;
  output [3:0]m_src_axi_wstrb;
  output m_src_axi_wlast;
  input m_src_axi_wready;
  input m_src_axi_bvalid;
  input [1:0]m_src_axi_bresp;
  output m_src_axi_bready;
  output [0:0]m_src_axi_awid;
  output [0:0]m_src_axi_awlock;
  output [0:0]m_src_axi_wid;
  input [0:0]m_src_axi_bid;
  input s_axis_aclk;
  output s_axis_ready;
  input s_axis_valid;
  input [31:0]s_axis_data;
  input [3:0]s_axis_strb;
  input [3:0]s_axis_keep;
  input [0:0]s_axis_user;
  input [7:0]s_axis_id;
  input [3:0]s_axis_dest;
  input s_axis_last;
  output s_axis_xfer_req;
  input m_axis_aclk;
  input m_axis_ready;
  output m_axis_valid;
  output [31:0]m_axis_data;
  output [3:0]m_axis_strb;
  output [3:0]m_axis_keep;
  output [0:0]m_axis_user;
  output [7:0]m_axis_id;
  output [3:0]m_axis_dest;
  output m_axis_last;
  output m_axis_xfer_req;
  input fifo_wr_clk;
  input fifo_wr_en;
  input [31:0]fifo_wr_din;
  output fifo_wr_overflow;
  input fifo_wr_sync;
  output fifo_wr_xfer_req;
  input fifo_rd_clk;
  input fifo_rd_en;
  output fifo_rd_valid;
  output [31:0]fifo_rd_dout;
  output fifo_rd_underflow;
  output fifo_rd_xfer_req;
  output [7:0]dest_diag_level_bursts;

  wire \<const0> ;
  wire \<const1> ;
  wire ctrl_enable;
  wire ctrl_pause;
  wire [29:2]data3;
  wire [1:0]data8;
  wire [27:24]dbg_ids1;
  wire [6:0]dbg_status;
  wire fifo_wr_clk;
  wire [31:0]fifo_wr_din;
  wire fifo_wr_en;
  wire fifo_wr_overflow;
  wire fifo_wr_sync;
  wire fifo_wr_xfer_req;
  wire i_regmap_n_0;
  wire i_regmap_n_41;
  wire i_regmap_n_42;
  wire i_regmap_n_43;
  wire i_regmap_n_44;
  wire i_regmap_n_45;
  wire i_regmap_n_46;
  wire i_regmap_n_47;
  wire [2:2]\i_regmap_request/p_3_in ;
  wire \i_regmap_request/p_7_in ;
  wire \i_regmap_request/up_bl_partial ;
  wire \i_regmap_request/up_clear_tl ;
  wire \i_request_arb/i_response_manager/req_eot ;
  wire [2:0]\i_request_arb/i_response_manager/state ;
  wire \i_request_arb/req_gen_ready ;
  wire i_transfer_n_100;
  wire i_transfer_n_101;
  wire i_transfer_n_102;
  wire i_transfer_n_103;
  wire i_transfer_n_104;
  wire i_transfer_n_105;
  wire i_transfer_n_106;
  wire i_transfer_n_107;
  wire i_transfer_n_108;
  wire i_transfer_n_41;
  wire i_transfer_n_42;
  wire i_transfer_n_91;
  wire i_transfer_n_92;
  wire i_transfer_n_93;
  wire i_transfer_n_94;
  wire i_transfer_n_95;
  wire i_transfer_n_96;
  wire i_transfer_n_97;
  wire i_transfer_n_98;
  wire i_transfer_n_99;
  wire irq;
  wire m_dest_axi_aclk;
  wire [29:2]\^m_dest_axi_awaddr ;
  wire [4:0]\^m_dest_axi_awlen ;
  wire m_dest_axi_awready;
  wire m_dest_axi_awvalid;
  wire m_dest_axi_bready;
  wire m_dest_axi_bvalid;
  wire [31:0]m_dest_axi_wdata;
  wire m_dest_axi_wlast;
  wire m_dest_axi_wready;
  wire m_dest_axi_wvalid;
  wire [6:0]measured_burst_length;
  wire [16:0]req_burst_count;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [3:0]src_request_id;
  wire up_dma_req_valid;
  wire up_eot;
  wire up_response_ready;
  wire up_response_valid;
  wire up_sot;

  assign dest_diag_level_bursts[7] = \<const0> ;
  assign dest_diag_level_bursts[6] = \<const0> ;
  assign dest_diag_level_bursts[5] = \<const0> ;
  assign dest_diag_level_bursts[4] = \<const0> ;
  assign dest_diag_level_bursts[3] = \<const0> ;
  assign dest_diag_level_bursts[2] = \<const0> ;
  assign dest_diag_level_bursts[1] = \<const0> ;
  assign dest_diag_level_bursts[0] = \<const0> ;
  assign fifo_rd_dout[31] = \<const0> ;
  assign fifo_rd_dout[30] = \<const0> ;
  assign fifo_rd_dout[29] = \<const0> ;
  assign fifo_rd_dout[28] = \<const0> ;
  assign fifo_rd_dout[27] = \<const0> ;
  assign fifo_rd_dout[26] = \<const0> ;
  assign fifo_rd_dout[25] = \<const0> ;
  assign fifo_rd_dout[24] = \<const0> ;
  assign fifo_rd_dout[23] = \<const0> ;
  assign fifo_rd_dout[22] = \<const0> ;
  assign fifo_rd_dout[21] = \<const0> ;
  assign fifo_rd_dout[20] = \<const0> ;
  assign fifo_rd_dout[19] = \<const0> ;
  assign fifo_rd_dout[18] = \<const0> ;
  assign fifo_rd_dout[17] = \<const0> ;
  assign fifo_rd_dout[16] = \<const0> ;
  assign fifo_rd_dout[15] = \<const0> ;
  assign fifo_rd_dout[14] = \<const0> ;
  assign fifo_rd_dout[13] = \<const0> ;
  assign fifo_rd_dout[12] = \<const0> ;
  assign fifo_rd_dout[11] = \<const0> ;
  assign fifo_rd_dout[10] = \<const0> ;
  assign fifo_rd_dout[9] = \<const0> ;
  assign fifo_rd_dout[8] = \<const0> ;
  assign fifo_rd_dout[7] = \<const0> ;
  assign fifo_rd_dout[6] = \<const0> ;
  assign fifo_rd_dout[5] = \<const0> ;
  assign fifo_rd_dout[4] = \<const0> ;
  assign fifo_rd_dout[3] = \<const0> ;
  assign fifo_rd_dout[2] = \<const0> ;
  assign fifo_rd_dout[1] = \<const0> ;
  assign fifo_rd_dout[0] = \<const0> ;
  assign fifo_rd_underflow = \<const0> ;
  assign fifo_rd_valid = \<const0> ;
  assign fifo_rd_xfer_req = \<const0> ;
  assign m_axis_data[31] = \<const0> ;
  assign m_axis_data[30] = \<const0> ;
  assign m_axis_data[29] = \<const0> ;
  assign m_axis_data[28] = \<const0> ;
  assign m_axis_data[27] = \<const0> ;
  assign m_axis_data[26] = \<const0> ;
  assign m_axis_data[25] = \<const0> ;
  assign m_axis_data[24] = \<const0> ;
  assign m_axis_data[23] = \<const0> ;
  assign m_axis_data[22] = \<const0> ;
  assign m_axis_data[21] = \<const0> ;
  assign m_axis_data[20] = \<const0> ;
  assign m_axis_data[19] = \<const0> ;
  assign m_axis_data[18] = \<const0> ;
  assign m_axis_data[17] = \<const0> ;
  assign m_axis_data[16] = \<const0> ;
  assign m_axis_data[15] = \<const0> ;
  assign m_axis_data[14] = \<const0> ;
  assign m_axis_data[13] = \<const0> ;
  assign m_axis_data[12] = \<const0> ;
  assign m_axis_data[11] = \<const0> ;
  assign m_axis_data[10] = \<const0> ;
  assign m_axis_data[9] = \<const0> ;
  assign m_axis_data[8] = \<const0> ;
  assign m_axis_data[7] = \<const0> ;
  assign m_axis_data[6] = \<const0> ;
  assign m_axis_data[5] = \<const0> ;
  assign m_axis_data[4] = \<const0> ;
  assign m_axis_data[3] = \<const0> ;
  assign m_axis_data[2] = \<const0> ;
  assign m_axis_data[1] = \<const0> ;
  assign m_axis_data[0] = \<const0> ;
  assign m_axis_dest[3] = \<const0> ;
  assign m_axis_dest[2] = \<const0> ;
  assign m_axis_dest[1] = \<const0> ;
  assign m_axis_dest[0] = \<const0> ;
  assign m_axis_id[7] = \<const0> ;
  assign m_axis_id[6] = \<const0> ;
  assign m_axis_id[5] = \<const0> ;
  assign m_axis_id[4] = \<const0> ;
  assign m_axis_id[3] = \<const0> ;
  assign m_axis_id[2] = \<const0> ;
  assign m_axis_id[1] = \<const0> ;
  assign m_axis_id[0] = \<const0> ;
  assign m_axis_keep[3] = \<const1> ;
  assign m_axis_keep[2] = \<const1> ;
  assign m_axis_keep[1] = \<const1> ;
  assign m_axis_keep[0] = \<const1> ;
  assign m_axis_last = \<const0> ;
  assign m_axis_strb[3] = \<const1> ;
  assign m_axis_strb[2] = \<const1> ;
  assign m_axis_strb[1] = \<const1> ;
  assign m_axis_strb[0] = \<const1> ;
  assign m_axis_user[0] = \<const0> ;
  assign m_axis_valid = \<const0> ;
  assign m_axis_xfer_req = \<const0> ;
  assign m_dest_axi_araddr[29] = \<const0> ;
  assign m_dest_axi_araddr[28] = \<const0> ;
  assign m_dest_axi_araddr[27] = \<const0> ;
  assign m_dest_axi_araddr[26] = \<const0> ;
  assign m_dest_axi_araddr[25] = \<const0> ;
  assign m_dest_axi_araddr[24] = \<const0> ;
  assign m_dest_axi_araddr[23] = \<const0> ;
  assign m_dest_axi_araddr[22] = \<const0> ;
  assign m_dest_axi_araddr[21] = \<const0> ;
  assign m_dest_axi_araddr[20] = \<const0> ;
  assign m_dest_axi_araddr[19] = \<const0> ;
  assign m_dest_axi_araddr[18] = \<const0> ;
  assign m_dest_axi_araddr[17] = \<const0> ;
  assign m_dest_axi_araddr[16] = \<const0> ;
  assign m_dest_axi_araddr[15] = \<const0> ;
  assign m_dest_axi_araddr[14] = \<const0> ;
  assign m_dest_axi_araddr[13] = \<const0> ;
  assign m_dest_axi_araddr[12] = \<const0> ;
  assign m_dest_axi_araddr[11] = \<const0> ;
  assign m_dest_axi_araddr[10] = \<const0> ;
  assign m_dest_axi_araddr[9] = \<const0> ;
  assign m_dest_axi_araddr[8] = \<const0> ;
  assign m_dest_axi_araddr[7] = \<const0> ;
  assign m_dest_axi_araddr[6] = \<const0> ;
  assign m_dest_axi_araddr[5] = \<const0> ;
  assign m_dest_axi_araddr[4] = \<const0> ;
  assign m_dest_axi_araddr[3] = \<const0> ;
  assign m_dest_axi_araddr[2] = \<const0> ;
  assign m_dest_axi_araddr[1] = \<const0> ;
  assign m_dest_axi_araddr[0] = \<const0> ;
  assign m_dest_axi_arburst[1] = \<const0> ;
  assign m_dest_axi_arburst[0] = \<const0> ;
  assign m_dest_axi_arcache[3] = \<const0> ;
  assign m_dest_axi_arcache[2] = \<const0> ;
  assign m_dest_axi_arcache[1] = \<const0> ;
  assign m_dest_axi_arcache[0] = \<const0> ;
  assign m_dest_axi_arid[0] = \<const0> ;
  assign m_dest_axi_arlen[7] = \<const0> ;
  assign m_dest_axi_arlen[6] = \<const0> ;
  assign m_dest_axi_arlen[5] = \<const0> ;
  assign m_dest_axi_arlen[4] = \<const0> ;
  assign m_dest_axi_arlen[3] = \<const0> ;
  assign m_dest_axi_arlen[2] = \<const0> ;
  assign m_dest_axi_arlen[1] = \<const0> ;
  assign m_dest_axi_arlen[0] = \<const0> ;
  assign m_dest_axi_arlock[0] = \<const0> ;
  assign m_dest_axi_arprot[2] = \<const0> ;
  assign m_dest_axi_arprot[1] = \<const0> ;
  assign m_dest_axi_arprot[0] = \<const0> ;
  assign m_dest_axi_arsize[2] = \<const0> ;
  assign m_dest_axi_arsize[1] = \<const0> ;
  assign m_dest_axi_arsize[0] = \<const0> ;
  assign m_dest_axi_arvalid = \<const0> ;
  assign m_dest_axi_awaddr[29:2] = \^m_dest_axi_awaddr [29:2];
  assign m_dest_axi_awaddr[1] = \<const0> ;
  assign m_dest_axi_awaddr[0] = \<const0> ;
  assign m_dest_axi_awburst[1] = \<const0> ;
  assign m_dest_axi_awburst[0] = \<const1> ;
  assign m_dest_axi_awcache[3] = \<const0> ;
  assign m_dest_axi_awcache[2] = \<const0> ;
  assign m_dest_axi_awcache[1] = \<const1> ;
  assign m_dest_axi_awcache[0] = \<const1> ;
  assign m_dest_axi_awid[0] = \<const0> ;
  assign m_dest_axi_awlen[7] = \<const0> ;
  assign m_dest_axi_awlen[6] = \<const0> ;
  assign m_dest_axi_awlen[5] = \<const0> ;
  assign m_dest_axi_awlen[4:0] = \^m_dest_axi_awlen [4:0];
  assign m_dest_axi_awlock[0] = \<const0> ;
  assign m_dest_axi_awprot[2] = \<const0> ;
  assign m_dest_axi_awprot[1] = \<const0> ;
  assign m_dest_axi_awprot[0] = \<const0> ;
  assign m_dest_axi_awsize[2] = \<const0> ;
  assign m_dest_axi_awsize[1] = \<const1> ;
  assign m_dest_axi_awsize[0] = \<const0> ;
  assign m_dest_axi_rready = \<const0> ;
  assign m_dest_axi_wid[0] = \<const0> ;
  assign m_dest_axi_wstrb[3] = \<const1> ;
  assign m_dest_axi_wstrb[2] = \<const1> ;
  assign m_dest_axi_wstrb[1] = \<const1> ;
  assign m_dest_axi_wstrb[0] = \<const1> ;
  assign m_src_axi_araddr[29] = \<const0> ;
  assign m_src_axi_araddr[28] = \<const0> ;
  assign m_src_axi_araddr[27] = \<const0> ;
  assign m_src_axi_araddr[26] = \<const0> ;
  assign m_src_axi_araddr[25] = \<const0> ;
  assign m_src_axi_araddr[24] = \<const0> ;
  assign m_src_axi_araddr[23] = \<const0> ;
  assign m_src_axi_araddr[22] = \<const0> ;
  assign m_src_axi_araddr[21] = \<const0> ;
  assign m_src_axi_araddr[20] = \<const0> ;
  assign m_src_axi_araddr[19] = \<const0> ;
  assign m_src_axi_araddr[18] = \<const0> ;
  assign m_src_axi_araddr[17] = \<const0> ;
  assign m_src_axi_araddr[16] = \<const0> ;
  assign m_src_axi_araddr[15] = \<const0> ;
  assign m_src_axi_araddr[14] = \<const0> ;
  assign m_src_axi_araddr[13] = \<const0> ;
  assign m_src_axi_araddr[12] = \<const0> ;
  assign m_src_axi_araddr[11] = \<const0> ;
  assign m_src_axi_araddr[10] = \<const0> ;
  assign m_src_axi_araddr[9] = \<const0> ;
  assign m_src_axi_araddr[8] = \<const0> ;
  assign m_src_axi_araddr[7] = \<const0> ;
  assign m_src_axi_araddr[6] = \<const0> ;
  assign m_src_axi_araddr[5] = \<const0> ;
  assign m_src_axi_araddr[4] = \<const0> ;
  assign m_src_axi_araddr[3] = \<const0> ;
  assign m_src_axi_araddr[2] = \<const0> ;
  assign m_src_axi_araddr[1] = \<const0> ;
  assign m_src_axi_araddr[0] = \<const0> ;
  assign m_src_axi_arburst[1] = \<const0> ;
  assign m_src_axi_arburst[0] = \<const0> ;
  assign m_src_axi_arcache[3] = \<const0> ;
  assign m_src_axi_arcache[2] = \<const0> ;
  assign m_src_axi_arcache[1] = \<const0> ;
  assign m_src_axi_arcache[0] = \<const0> ;
  assign m_src_axi_arid[0] = \<const0> ;
  assign m_src_axi_arlen[7] = \<const0> ;
  assign m_src_axi_arlen[6] = \<const0> ;
  assign m_src_axi_arlen[5] = \<const0> ;
  assign m_src_axi_arlen[4] = \<const0> ;
  assign m_src_axi_arlen[3] = \<const0> ;
  assign m_src_axi_arlen[2] = \<const0> ;
  assign m_src_axi_arlen[1] = \<const0> ;
  assign m_src_axi_arlen[0] = \<const0> ;
  assign m_src_axi_arlock[0] = \<const0> ;
  assign m_src_axi_arprot[2] = \<const0> ;
  assign m_src_axi_arprot[1] = \<const0> ;
  assign m_src_axi_arprot[0] = \<const0> ;
  assign m_src_axi_arsize[2] = \<const0> ;
  assign m_src_axi_arsize[1] = \<const0> ;
  assign m_src_axi_arsize[0] = \<const0> ;
  assign m_src_axi_arvalid = \<const0> ;
  assign m_src_axi_awaddr[29] = \<const0> ;
  assign m_src_axi_awaddr[28] = \<const0> ;
  assign m_src_axi_awaddr[27] = \<const0> ;
  assign m_src_axi_awaddr[26] = \<const0> ;
  assign m_src_axi_awaddr[25] = \<const0> ;
  assign m_src_axi_awaddr[24] = \<const0> ;
  assign m_src_axi_awaddr[23] = \<const0> ;
  assign m_src_axi_awaddr[22] = \<const0> ;
  assign m_src_axi_awaddr[21] = \<const0> ;
  assign m_src_axi_awaddr[20] = \<const0> ;
  assign m_src_axi_awaddr[19] = \<const0> ;
  assign m_src_axi_awaddr[18] = \<const0> ;
  assign m_src_axi_awaddr[17] = \<const0> ;
  assign m_src_axi_awaddr[16] = \<const0> ;
  assign m_src_axi_awaddr[15] = \<const0> ;
  assign m_src_axi_awaddr[14] = \<const0> ;
  assign m_src_axi_awaddr[13] = \<const0> ;
  assign m_src_axi_awaddr[12] = \<const0> ;
  assign m_src_axi_awaddr[11] = \<const0> ;
  assign m_src_axi_awaddr[10] = \<const0> ;
  assign m_src_axi_awaddr[9] = \<const0> ;
  assign m_src_axi_awaddr[8] = \<const0> ;
  assign m_src_axi_awaddr[7] = \<const0> ;
  assign m_src_axi_awaddr[6] = \<const0> ;
  assign m_src_axi_awaddr[5] = \<const0> ;
  assign m_src_axi_awaddr[4] = \<const0> ;
  assign m_src_axi_awaddr[3] = \<const0> ;
  assign m_src_axi_awaddr[2] = \<const0> ;
  assign m_src_axi_awaddr[1] = \<const0> ;
  assign m_src_axi_awaddr[0] = \<const0> ;
  assign m_src_axi_awburst[1] = \<const0> ;
  assign m_src_axi_awburst[0] = \<const0> ;
  assign m_src_axi_awcache[3] = \<const0> ;
  assign m_src_axi_awcache[2] = \<const0> ;
  assign m_src_axi_awcache[1] = \<const0> ;
  assign m_src_axi_awcache[0] = \<const0> ;
  assign m_src_axi_awid[0] = \<const0> ;
  assign m_src_axi_awlen[7] = \<const0> ;
  assign m_src_axi_awlen[6] = \<const0> ;
  assign m_src_axi_awlen[5] = \<const0> ;
  assign m_src_axi_awlen[4] = \<const0> ;
  assign m_src_axi_awlen[3] = \<const0> ;
  assign m_src_axi_awlen[2] = \<const0> ;
  assign m_src_axi_awlen[1] = \<const0> ;
  assign m_src_axi_awlen[0] = \<const0> ;
  assign m_src_axi_awlock[0] = \<const0> ;
  assign m_src_axi_awprot[2] = \<const0> ;
  assign m_src_axi_awprot[1] = \<const0> ;
  assign m_src_axi_awprot[0] = \<const0> ;
  assign m_src_axi_awsize[2] = \<const0> ;
  assign m_src_axi_awsize[1] = \<const0> ;
  assign m_src_axi_awsize[0] = \<const0> ;
  assign m_src_axi_awvalid = \<const0> ;
  assign m_src_axi_bready = \<const0> ;
  assign m_src_axi_rready = \<const0> ;
  assign m_src_axi_wdata[31] = \<const0> ;
  assign m_src_axi_wdata[30] = \<const0> ;
  assign m_src_axi_wdata[29] = \<const0> ;
  assign m_src_axi_wdata[28] = \<const0> ;
  assign m_src_axi_wdata[27] = \<const0> ;
  assign m_src_axi_wdata[26] = \<const0> ;
  assign m_src_axi_wdata[25] = \<const0> ;
  assign m_src_axi_wdata[24] = \<const0> ;
  assign m_src_axi_wdata[23] = \<const0> ;
  assign m_src_axi_wdata[22] = \<const0> ;
  assign m_src_axi_wdata[21] = \<const0> ;
  assign m_src_axi_wdata[20] = \<const0> ;
  assign m_src_axi_wdata[19] = \<const0> ;
  assign m_src_axi_wdata[18] = \<const0> ;
  assign m_src_axi_wdata[17] = \<const0> ;
  assign m_src_axi_wdata[16] = \<const0> ;
  assign m_src_axi_wdata[15] = \<const0> ;
  assign m_src_axi_wdata[14] = \<const0> ;
  assign m_src_axi_wdata[13] = \<const0> ;
  assign m_src_axi_wdata[12] = \<const0> ;
  assign m_src_axi_wdata[11] = \<const0> ;
  assign m_src_axi_wdata[10] = \<const0> ;
  assign m_src_axi_wdata[9] = \<const0> ;
  assign m_src_axi_wdata[8] = \<const0> ;
  assign m_src_axi_wdata[7] = \<const0> ;
  assign m_src_axi_wdata[6] = \<const0> ;
  assign m_src_axi_wdata[5] = \<const0> ;
  assign m_src_axi_wdata[4] = \<const0> ;
  assign m_src_axi_wdata[3] = \<const0> ;
  assign m_src_axi_wdata[2] = \<const0> ;
  assign m_src_axi_wdata[1] = \<const0> ;
  assign m_src_axi_wdata[0] = \<const0> ;
  assign m_src_axi_wid[0] = \<const0> ;
  assign m_src_axi_wlast = \<const0> ;
  assign m_src_axi_wstrb[3] = \<const0> ;
  assign m_src_axi_wstrb[2] = \<const0> ;
  assign m_src_axi_wstrb[1] = \<const0> ;
  assign m_src_axi_wstrb[0] = \<const0> ;
  assign m_src_axi_wvalid = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axis_ready = \<const0> ;
  assign s_axis_xfer_req = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_regmap i_regmap
       (.D({data3,i_regmap_n_41,i_regmap_n_42,i_regmap_n_43,i_regmap_n_44,i_regmap_n_45}),
        .E(up_sot),
        .Q(req_burst_count),
        .ctrl_enable(ctrl_enable),
        .ctrl_pause(ctrl_pause),
        .data8(data8),
        .dbg_ids1(dbg_ids1),
        .dbg_status({dbg_status[6],dbg_status[1:0]}),
        .irq(irq),
        .m_dest_axi_awaddr({\^m_dest_axi_awaddr [29:28],\^m_dest_axi_awaddr [23:20],\^m_dest_axi_awaddr [15:12]}),
        .p_3_in(\i_regmap_request/p_3_in ),
        .p_7_in(\i_regmap_request/p_7_in ),
        .req_eot(\i_request_arb/i_response_manager/req_eot ),
        .req_gen_ready(\i_request_arb/req_gen_ready ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[10:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(i_regmap_n_0),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[10:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .src_request_id(src_request_id),
        .up_axi_rvalid_int_reg(s_axi_rvalid),
        .up_bl_partial(\i_regmap_request/up_bl_partial ),
        .up_clear_tl(\i_regmap_request/up_clear_tl ),
        .up_clear_tl_reg(i_transfer_n_108),
        .up_dma_req_valid(up_dma_req_valid),
        .up_eot(up_eot),
        .\up_measured_transfer_length_reg[7] (measured_burst_length),
        .\up_raddr_int_reg[6] (i_regmap_n_47),
        .\up_raddr_int_reg[7] (i_regmap_n_46),
        .\up_rdata_reg[10]_0 (i_transfer_n_91),
        .\up_rdata_reg[11]_0 (i_transfer_n_99),
        .\up_rdata_reg[16]_0 (i_transfer_n_100),
        .\up_rdata_reg[17]_0 (i_transfer_n_101),
        .\up_rdata_reg[18]_0 (i_transfer_n_102),
        .\up_rdata_reg[19]_0 (i_transfer_n_103),
        .\up_rdata_reg[24]_0 (i_transfer_n_104),
        .\up_rdata_reg[25]_0 (i_transfer_n_105),
        .\up_rdata_reg[26]_0 (i_transfer_n_106),
        .\up_rdata_reg[27]_0 (i_transfer_n_107),
        .\up_rdata_reg[2]_0 (i_transfer_n_97),
        .\up_rdata_reg[3]_0 (i_transfer_n_98),
        .\up_rdata_reg[4]_0 (i_transfer_n_96),
        .\up_rdata_reg[5]_0 (i_transfer_n_95),
        .\up_rdata_reg[6]_0 (i_transfer_n_94),
        .\up_rdata_reg[7]_0 (\^m_dest_axi_awaddr [7]),
        .\up_rdata_reg[8]_0 (i_transfer_n_92),
        .\up_rdata_reg[9]_0 (i_transfer_n_93),
        .up_response_ready(up_response_ready),
        .up_response_valid(up_response_valid),
        .\up_transfer_id_eot_reg[0] (\i_request_arb/i_response_manager/state ),
        .\up_transfer_id_reg[0] (i_transfer_n_41),
        .\up_transfer_id_reg[0]_0 (i_transfer_n_42));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_transfer i_transfer
       (.D({data3,i_regmap_n_41,i_regmap_n_42,i_regmap_n_43,i_regmap_n_44,i_regmap_n_45}),
        .E(up_sot),
        .Q(\i_request_arb/i_response_manager/state ),
        .SR(i_regmap_n_0),
        .active_reg(fifo_wr_xfer_req),
        .addr_valid_reg(m_dest_axi_awvalid),
        .\burst_count_reg[16] (req_burst_count),
        .\cdc_sync_stage2_reg[0] (i_transfer_n_42),
        .\cdc_sync_stage2_reg[0]_0 (i_transfer_n_95),
        .\cdc_sync_stage2_reg[1] (data8),
        .\cdc_sync_stage2_reg[2] (i_transfer_n_97),
        .\cdc_sync_stage2_reg[3] (i_transfer_n_98),
        .ctrl_enable(ctrl_enable),
        .ctrl_pause(ctrl_pause),
        .dbg_ids1(dbg_ids1),
        .\dest_id_reg[0] (i_transfer_n_100),
        .\dest_id_reg[1] (i_transfer_n_101),
        .\dest_id_reg[2] (i_transfer_n_102),
        .\dest_id_reg[3] (i_transfer_n_103),
        .dest_mem_data_valid_reg(m_dest_axi_wvalid),
        .do_enable_reg({dbg_status[6],dbg_status[1:0]}),
        .do_enable_reg_0(i_transfer_n_94),
        .enabled_reg(i_transfer_n_96),
        .fifo_wr_clk(fifo_wr_clk),
        .fifo_wr_din(fifo_wr_din),
        .fifo_wr_en(fifo_wr_en),
        .fifo_wr_overflow(fifo_wr_overflow),
        .fifo_wr_sync(fifo_wr_sync),
        .\id_reg[0] (i_transfer_n_92),
        .\id_reg[0]_0 (i_transfer_n_104),
        .\id_reg[1] (i_transfer_n_93),
        .\id_reg[1]_0 (i_transfer_n_105),
        .\id_reg[2] (i_transfer_n_91),
        .\id_reg[2]_0 (i_transfer_n_106),
        .\id_reg[3] (i_transfer_n_99),
        .\id_reg[3]_0 (i_transfer_n_107),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_awaddr(\^m_dest_axi_awaddr ),
        .m_dest_axi_awlen(\^m_dest_axi_awlen ),
        .m_dest_axi_awready(m_dest_axi_awready),
        .m_dest_axi_bready(m_dest_axi_bready),
        .m_dest_axi_bvalid(m_dest_axi_bvalid),
        .m_dest_axi_wdata(m_dest_axi_wdata),
        .m_dest_axi_wlast(m_dest_axi_wlast),
        .m_dest_axi_wready(m_dest_axi_wready),
        .\measured_burst_length_reg[6] (measured_burst_length),
        .p_3_in(\i_regmap_request/p_3_in ),
        .p_7_in(\i_regmap_request/p_7_in ),
        .req_eot(\i_request_arb/i_response_manager/req_eot ),
        .req_gen_ready(\i_request_arb/req_gen_ready ),
        .s_axi_aclk(s_axi_aclk),
        .s_axis_waddr_reg(i_transfer_n_41),
        .src_request_id(src_request_id),
        .\state_reg[1] (i_transfer_n_108),
        .up_bl_partial(\i_regmap_request/up_bl_partial ),
        .up_clear_tl(\i_regmap_request/up_clear_tl ),
        .up_dma_req_valid(up_dma_req_valid),
        .up_eot(up_eot),
        .\up_rdata_reg[5] (i_regmap_n_46),
        .\up_rdata_reg[5]_0 (i_regmap_n_47),
        .up_response_ready(up_response_ready),
        .up_response_valid(up_response_valid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_burst_memory
   (m_dest_axi_wdata,
    Q,
    dest_burst_info_write,
    \dest_id_next_reg[3]_0 ,
    dest_mem_data_valid_reg_0,
    m_dest_axi_wlast,
    \src_throttled_request_id_reg[2] ,
    \cdc_sync_stage2_reg[2] ,
    data8,
    \cdc_sync_stage2_reg[3] ,
    \dest_id_reg[0]_0 ,
    \dest_id_reg[1]_0 ,
    \dest_id_reg[2]_0 ,
    \dest_id_reg[3]_0 ,
    \dest_burst_len_data_reg[7]_0 ,
    \src_throttled_request_id_reg[0] ,
    \cdc_sync_stage2_reg[1] ,
    m_dest_axi_aclk,
    fifo_wr_clk,
    fifo_wr_din,
    E,
    \src_id_reg[0]_0 ,
    dest_valid_reg_0,
    src_last_beat__0,
    m_dest_axi_wready,
    \src_throttled_request_id_reg[0]_0 ,
    \up_rdata_reg[2] ,
    \up_rdata_reg[3] ,
    \up_rdata_reg[3]_0 ,
    m_dest_axi_awaddr,
    dest_burst_valid,
    SR);
  output [31:0]m_dest_axi_wdata;
  output [3:0]Q;
  output dest_burst_info_write;
  output [3:0]\dest_id_next_reg[3]_0 ;
  output dest_mem_data_valid_reg_0;
  output m_dest_axi_wlast;
  output \src_throttled_request_id_reg[2] ;
  output \cdc_sync_stage2_reg[2] ;
  output [1:0]data8;
  output \cdc_sync_stage2_reg[3] ;
  output \dest_id_reg[0]_0 ;
  output \dest_id_reg[1]_0 ;
  output \dest_id_reg[2]_0 ;
  output \dest_id_reg[3]_0 ;
  output [5:0]\dest_burst_len_data_reg[7]_0 ;
  output \src_throttled_request_id_reg[0] ;
  output [1:0]\cdc_sync_stage2_reg[1] ;
  input m_dest_axi_aclk;
  input fifo_wr_clk;
  input [31:0]fifo_wr_din;
  input [0:0]E;
  input [0:0]\src_id_reg[0]_0 ;
  input [0:0]dest_valid_reg_0;
  input src_last_beat__0;
  input m_dest_axi_wready;
  input [3:0]\src_throttled_request_id_reg[0]_0 ;
  input [0:0]\up_rdata_reg[2] ;
  input \up_rdata_reg[3] ;
  input \up_rdata_reg[3]_0 ;
  input [5:0]m_dest_axi_awaddr;
  input dest_burst_valid;
  input [0:0]SR;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire b2g0_return017_out;
  wire b2g0_return018_out;
  wire b2g1_return07_out;
  wire b2g1_return09_out;
  wire [1:0]\cdc_sync_stage2_reg[1] ;
  wire \cdc_sync_stage2_reg[2] ;
  wire \cdc_sync_stage2_reg[3] ;
  wire [1:0]data8;
  wire dest_beat;
  wire dest_beat_counter0;
  wire [4:0]dest_beat_counter_reg;
  wire dest_burst_info_write;
  wire [7:2]dest_burst_len_data;
  wire [5:0]\dest_burst_len_data_reg[7]_0 ;
  wire dest_burst_ready;
  wire dest_burst_valid;
  wire \dest_id_next[0]_i_1_n_0 ;
  wire [3:0]\dest_id_next_reg[3]_0 ;
  wire dest_id_reduced_msb;
  wire dest_id_reduced_msb_next_i_1_n_0;
  wire [2:2]dest_id_reduced_next;
  wire \dest_id_reg[0]_0 ;
  wire \dest_id_reg[1]_0 ;
  wire \dest_id_reg[2]_0 ;
  wire \dest_id_reg[3]_0 ;
  wire dest_last;
  wire dest_mem_data_last_i_1_n_0;
  wire dest_mem_data_last_i_3_n_0;
  wire dest_mem_data_valid_i_1_n_0;
  wire dest_mem_data_valid_reg_0;
  wire dest_valid;
  wire dest_valid_i_1_n_0;
  wire [0:0]dest_valid_reg_0;
  wire fifo_wr_clk;
  wire [31:0]fifo_wr_din;
  wire id0;
  wire m_dest_axi_aclk;
  wire [5:0]m_dest_axi_awaddr;
  wire [31:0]m_dest_axi_wdata;
  wire m_dest_axi_wlast;
  wire m_dest_axi_wready;
  wire [4:0]p_0_in;
  wire [4:0]p_0_in_0;
  wire [4:0]p_0_in__1;
  wire p_1_in;
  wire p_1_in8_in;
  wire p_3_in;
  wire \src_id[0]_i_1_n_0 ;
  wire [2:0]src_id_reduced;
  wire src_id_reduced_msb_i_1_n_0;
  wire [0:0]\src_id_reg[0]_0 ;
  wire \src_id_reg_n_0_[2] ;
  wire src_last_beat__0;
  wire \src_throttled_request_id_reg[0] ;
  wire [3:0]\src_throttled_request_id_reg[0]_0 ;
  wire \src_throttled_request_id_reg[2] ;
  wire [0:0]\up_rdata_reg[2] ;
  wire \up_rdata_reg[3] ;
  wire \up_rdata_reg[3]_0 ;
  wire [1:0]NLW_burst_len_mem_reg_0_7_0_5_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "48" *) 
  (* RTL_RAM_NAME = "i_transfer/i_request_arb/i_store_and_forward/burst_len_mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M burst_len_mem_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,dest_id_reduced_next,\dest_id_next_reg[3]_0 [1:0]}),
        .ADDRB({1'b0,1'b0,dest_id_reduced_next,\dest_id_next_reg[3]_0 [1:0]}),
        .ADDRC({1'b0,1'b0,dest_id_reduced_next,\dest_id_next_reg[3]_0 [1:0]}),
        .ADDRD({1'b0,1'b0,src_id_reduced}),
        .DIA(p_0_in_0[1:0]),
        .DIB(p_0_in_0[3:2]),
        .DIC({1'b0,p_0_in_0[4]}),
        .DID({1'b0,1'b0}),
        .DOA(dest_burst_len_data[3:2]),
        .DOB(dest_burst_len_data[5:4]),
        .DOC(dest_burst_len_data[7:6]),
        .DOD(NLW_burst_len_mem_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(fifo_wr_clk),
        .WE(src_last_beat__0));
  LUT1 #(
    .INIT(2'h1)) 
    \dest_beat_counter[0]_i_1 
       (.I0(dest_beat_counter_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dest_beat_counter[1]_i_1 
       (.I0(dest_beat_counter_reg[0]),
        .I1(dest_beat_counter_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \dest_beat_counter[2]_i_1 
       (.I0(dest_beat_counter_reg[0]),
        .I1(dest_beat_counter_reg[1]),
        .I2(dest_beat_counter_reg[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \dest_beat_counter[3]_i_1 
       (.I0(dest_beat_counter_reg[1]),
        .I1(dest_beat_counter_reg[0]),
        .I2(dest_beat_counter_reg[2]),
        .I3(dest_beat_counter_reg[3]),
        .O(p_0_in__1[3]));
  LUT5 #(
    .INIT(32'hFFFF8A00)) 
    \dest_beat_counter[4]_i_1 
       (.I0(dest_last),
        .I1(m_dest_axi_wready),
        .I2(dest_mem_data_valid_reg_0),
        .I3(dest_valid),
        .I4(dest_valid_reg_0),
        .O(dest_beat_counter0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \dest_beat_counter[4]_i_2 
       (.I0(dest_beat_counter_reg[2]),
        .I1(dest_beat_counter_reg[0]),
        .I2(dest_beat_counter_reg[1]),
        .I3(dest_beat_counter_reg[3]),
        .I4(dest_beat_counter_reg[4]),
        .O(p_0_in__1[4]));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(dest_beat),
        .D(p_0_in__1[0]),
        .Q(dest_beat_counter_reg[0]),
        .R(dest_beat_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(dest_beat),
        .D(p_0_in__1[1]),
        .Q(dest_beat_counter_reg[1]),
        .R(dest_beat_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(dest_beat),
        .D(p_0_in__1[2]),
        .Q(dest_beat_counter_reg[2]),
        .R(dest_beat_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(dest_beat),
        .D(p_0_in__1[3]),
        .Q(dest_beat_counter_reg[3]),
        .R(dest_beat_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[4] 
       (.C(m_dest_axi_aclk),
        .CE(dest_beat),
        .D(p_0_in__1[4]),
        .Q(dest_beat_counter_reg[4]),
        .R(dest_beat_counter0));
  FDRE #(
    .INIT(1'b0)) 
    dest_burst_info_write_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(id0),
        .Q(dest_burst_info_write),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_data_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(dest_burst_len_data[2]),
        .Q(\dest_burst_len_data_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_data_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(dest_burst_len_data[3]),
        .Q(\dest_burst_len_data_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_data_reg[4] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(dest_burst_len_data[4]),
        .Q(\dest_burst_len_data_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_data_reg[5] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(dest_burst_len_data[5]),
        .Q(\dest_burst_len_data_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_data_reg[6] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(dest_burst_len_data[6]),
        .Q(\dest_burst_len_data_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_data_reg[7] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(dest_burst_len_data[7]),
        .Q(\dest_burst_len_data_reg[7]_0 [5]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hD0FF)) 
    \dest_id[3]_i_1 
       (.I0(dest_mem_data_valid_reg_0),
        .I1(m_dest_axi_wready),
        .I2(dest_last),
        .I3(dest_valid),
        .O(dest_burst_ready));
  LUT3 #(
    .INIT(8'h69)) 
    \dest_id_next[0]_i_1 
       (.I0(\dest_id_next_reg[3]_0 [1]),
        .I1(\dest_id_next_reg[3]_0 [3]),
        .I2(\dest_id_next_reg[3]_0 [2]),
        .O(\dest_id_next[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h99F0)) 
    \dest_id_next[1]_i_1 
       (.I0(\dest_id_next_reg[3]_0 [2]),
        .I1(\dest_id_next_reg[3]_0 [3]),
        .I2(\dest_id_next_reg[3]_0 [1]),
        .I3(\dest_id_next_reg[3]_0 [0]),
        .O(b2g1_return07_out));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hD1F0)) 
    \dest_id_next[2]_i_1 
       (.I0(\dest_id_next_reg[3]_0 [3]),
        .I1(\dest_id_next_reg[3]_0 [0]),
        .I2(\dest_id_next_reg[3]_0 [2]),
        .I3(\dest_id_next_reg[3]_0 [1]),
        .O(b2g1_return09_out));
  LUT5 #(
    .INIT(32'hD0FF0000)) 
    \dest_id_next[3]_i_1 
       (.I0(dest_mem_data_valid_reg_0),
        .I1(m_dest_axi_wready),
        .I2(dest_last),
        .I3(dest_valid),
        .I4(dest_burst_valid),
        .O(id0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hFE04)) 
    \dest_id_next[3]_i_2 
       (.I0(\dest_id_next_reg[3]_0 [1]),
        .I1(\dest_id_next_reg[3]_0 [2]),
        .I2(\dest_id_next_reg[3]_0 [0]),
        .I3(\dest_id_next_reg[3]_0 [3]),
        .O(p_1_in8_in));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_next_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(\dest_id_next[0]_i_1_n_0 ),
        .Q(\dest_id_next_reg[3]_0 [0]),
        .R(dest_valid_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_next_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(b2g1_return07_out),
        .Q(\dest_id_next_reg[3]_0 [1]),
        .R(dest_valid_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_next_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(b2g1_return09_out),
        .Q(\dest_id_next_reg[3]_0 [2]),
        .R(dest_valid_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_next_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(p_1_in8_in),
        .Q(\dest_id_next_reg[3]_0 [3]),
        .R(dest_valid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h3ACA)) 
    dest_id_reduced_msb_next_i_1
       (.I0(\dest_id_next_reg[3]_0 [1]),
        .I1(\dest_id_next_reg[3]_0 [2]),
        .I2(\dest_id_next_reg[3]_0 [0]),
        .I3(\dest_id_next_reg[3]_0 [3]),
        .O(dest_id_reduced_msb_next_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_id_reduced_msb_next_reg
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(dest_id_reduced_msb_next_i_1_n_0),
        .Q(dest_id_reduced_next),
        .R(dest_valid_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_id_reduced_msb_reg
       (.C(m_dest_axi_aclk),
        .CE(dest_burst_ready),
        .D(dest_id_reduced_next),
        .Q(dest_id_reduced_msb),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(dest_burst_ready),
        .D(\dest_id_next_reg[3]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(dest_burst_ready),
        .D(\dest_id_next_reg[3]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(dest_burst_ready),
        .D(\dest_id_next_reg[3]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(dest_burst_ready),
        .D(\dest_id_next_reg[3]_0 [3]),
        .Q(Q[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000CACC0A0A)) 
    dest_mem_data_last_i_1
       (.I0(m_dest_axi_wlast),
        .I1(dest_last),
        .I2(m_dest_axi_wready),
        .I3(dest_mem_data_valid_reg_0),
        .I4(dest_valid),
        .I5(dest_valid_reg_0),
        .O(dest_mem_data_last_i_1_n_0));
  LUT5 #(
    .INIT(32'h90000090)) 
    dest_mem_data_last_i_2
       (.I0(dest_beat_counter_reg[3]),
        .I1(\dest_burst_len_data_reg[7]_0 [3]),
        .I2(dest_mem_data_last_i_3_n_0),
        .I3(\dest_burst_len_data_reg[7]_0 [4]),
        .I4(dest_beat_counter_reg[4]),
        .O(dest_last));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    dest_mem_data_last_i_3
       (.I0(dest_beat_counter_reg[0]),
        .I1(\dest_burst_len_data_reg[7]_0 [0]),
        .I2(\dest_burst_len_data_reg[7]_0 [2]),
        .I3(dest_beat_counter_reg[2]),
        .I4(\dest_burst_len_data_reg[7]_0 [1]),
        .I5(dest_beat_counter_reg[1]),
        .O(dest_mem_data_last_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_mem_data_last_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(dest_mem_data_last_i_1_n_0),
        .Q(m_dest_axi_wlast),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    dest_mem_data_valid_i_1
       (.I0(dest_valid),
        .I1(m_dest_axi_wready),
        .I2(dest_mem_data_valid_reg_0),
        .O(dest_mem_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_mem_data_valid_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(dest_mem_data_valid_i_1_n_0),
        .Q(dest_mem_data_valid_reg_0),
        .R(dest_valid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'hFFFF7500)) 
    dest_valid_i_1
       (.I0(dest_last),
        .I1(m_dest_axi_wready),
        .I2(dest_mem_data_valid_reg_0),
        .I3(dest_valid),
        .I4(dest_burst_valid),
        .O(dest_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_valid_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(dest_valid_i_1_n_0),
        .Q(dest_valid),
        .R(dest_valid_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized1__xdcDup__1 i_dest_sync_id
       (.\cdc_sync_stage1_reg[2]_0 (\src_id_reg_n_0_[2] ),
        .\cdc_sync_stage2_reg[1]_0 (\cdc_sync_stage2_reg[1] ),
        .\cdc_sync_stage2_reg[2]_0 (\cdc_sync_stage2_reg[2] ),
        .\cdc_sync_stage2_reg[3]_0 (\cdc_sync_stage2_reg[3] ),
        .data8(data8),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_awaddr(m_dest_axi_awaddr[1:0]),
        .p_1_in(p_1_in),
        .src_id_reduced(src_id_reduced[1:0]),
        .\up_rdata_reg[2] (\up_rdata_reg[2] ),
        .\up_rdata_reg[3] (\up_rdata_reg[3] ),
        .\up_rdata_reg[3]_0 (\up_rdata_reg[3]_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad_mem_asym i_mem
       (.ADDRARDADDR({dest_id_reduced_msb,Q[1:0],dest_beat_counter_reg}),
        .ADDRBWRADDR({src_id_reduced,p_0_in_0}),
        .E(dest_beat),
        .dest_valid(dest_valid),
        .fifo_wr_clk(fifo_wr_clk),
        .fifo_wr_din(fifo_wr_din),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_wdata(m_dest_axi_wdata),
        .m_dest_axi_wready(m_dest_axi_wready),
        .m_ram_reg_0(E),
        .m_ram_reg_1(dest_mem_data_valid_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized1__xdcDup__2 i_src_sync_id
       (.Q(Q),
        .fifo_wr_clk(fifo_wr_clk),
        .\src_throttled_request_id_reg[0] (\src_throttled_request_id_reg[0] ),
        .\src_throttled_request_id_reg[0]_0 (\src_throttled_request_id_reg[0]_0 ),
        .\src_throttled_request_id_reg[2] (\src_throttled_request_id_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \src_beat_counter[0]_i_1 
       (.I0(p_0_in_0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_beat_counter[1]_i_1 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \src_beat_counter[2]_i_1 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \src_beat_counter[3]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \src_beat_counter[4]_i_2 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[4]),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[0] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(p_0_in[0]),
        .Q(p_0_in_0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[1] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(p_0_in[1]),
        .Q(p_0_in_0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[2] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(p_0_in[2]),
        .Q(p_0_in_0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[3] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(p_0_in[3]),
        .Q(p_0_in_0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[4] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(p_0_in[4]),
        .Q(p_0_in_0[4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \src_id[0]_i_1 
       (.I0(src_id_reduced[1]),
        .I1(p_1_in),
        .I2(\src_id_reg_n_0_[2] ),
        .O(\src_id[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h99F0)) 
    \src_id[1]_i_1 
       (.I0(\src_id_reg_n_0_[2] ),
        .I1(p_1_in),
        .I2(src_id_reduced[1]),
        .I3(src_id_reduced[0]),
        .O(b2g0_return017_out));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hD1F0)) 
    \src_id[2]_i_1 
       (.I0(p_1_in),
        .I1(src_id_reduced[0]),
        .I2(\src_id_reg_n_0_[2] ),
        .I3(src_id_reduced[1]),
        .O(b2g0_return018_out));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hFE04)) 
    \src_id[3]_i_2 
       (.I0(src_id_reduced[1]),
        .I1(\src_id_reg_n_0_[2] ),
        .I2(src_id_reduced[0]),
        .I3(p_1_in),
        .O(p_3_in));
  LUT5 #(
    .INIT(32'h55D1AAE2)) 
    src_id_reduced_msb_i_1
       (.I0(\src_id_reg_n_0_[2] ),
        .I1(src_last_beat__0),
        .I2(src_id_reduced[1]),
        .I3(src_id_reduced[0]),
        .I4(p_1_in),
        .O(src_id_reduced_msb_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    src_id_reduced_msb_reg
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(src_id_reduced_msb_i_1_n_0),
        .Q(src_id_reduced[2]),
        .R(\src_id_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \src_id_reg[0] 
       (.C(fifo_wr_clk),
        .CE(src_last_beat__0),
        .D(\src_id[0]_i_1_n_0 ),
        .Q(src_id_reduced[0]),
        .R(\src_id_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \src_id_reg[1] 
       (.C(fifo_wr_clk),
        .CE(src_last_beat__0),
        .D(b2g0_return017_out),
        .Q(src_id_reduced[1]),
        .R(\src_id_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \src_id_reg[2] 
       (.C(fifo_wr_clk),
        .CE(src_last_beat__0),
        .D(b2g0_return018_out),
        .Q(\src_id_reg_n_0_[2] ),
        .R(\src_id_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \src_id_reg[3] 
       (.C(fifo_wr_clk),
        .CE(src_last_beat__0),
        .D(p_3_in),
        .Q(p_1_in),
        .R(\src_id_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \up_rdata[16]_i_3 
       (.I0(Q[0]),
        .I1(\up_rdata_reg[3] ),
        .I2(\up_rdata_reg[3]_0 ),
        .I3(m_dest_axi_awaddr[2]),
        .O(\dest_id_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \up_rdata[17]_i_3 
       (.I0(Q[1]),
        .I1(\up_rdata_reg[3] ),
        .I2(\up_rdata_reg[3]_0 ),
        .I3(m_dest_axi_awaddr[3]),
        .O(\dest_id_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \up_rdata[18]_i_3 
       (.I0(Q[2]),
        .I1(\up_rdata_reg[3] ),
        .I2(\up_rdata_reg[3]_0 ),
        .I3(m_dest_axi_awaddr[4]),
        .O(\dest_id_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \up_rdata[19]_i_3 
       (.I0(Q[3]),
        .I1(\up_rdata_reg[3] ),
        .I2(\up_rdata_reg[3]_0 ),
        .I3(m_dest_axi_awaddr[5]),
        .O(\dest_id_reg[3]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_regmap
   (s_axi_aresetn_0,
    irq,
    ctrl_enable,
    p_3_in,
    up_dma_req_valid,
    up_response_ready,
    up_clear_tl,
    s_axi_bvalid,
    s_axi_awready,
    s_axi_wready,
    s_axi_arready,
    ctrl_pause,
    up_axi_rvalid_int_reg,
    D,
    \up_raddr_int_reg[7] ,
    \up_raddr_int_reg[6] ,
    Q,
    s_axi_rdata,
    s_axi_aclk,
    up_clear_tl_reg,
    up_bl_partial,
    up_response_valid,
    s_axi_aresetn,
    E,
    up_eot,
    s_axi_bready,
    s_axi_wvalid,
    s_axi_awvalid,
    \up_rdata_reg[10]_0 ,
    \up_rdata_reg[8]_0 ,
    \up_rdata_reg[9]_0 ,
    s_axi_arvalid,
    src_request_id,
    \up_rdata_reg[2]_0 ,
    \up_rdata_reg[3]_0 ,
    \up_rdata_reg[4]_0 ,
    \up_rdata_reg[5]_0 ,
    \up_rdata_reg[6]_0 ,
    \up_rdata_reg[11]_0 ,
    \up_rdata_reg[16]_0 ,
    \up_rdata_reg[17]_0 ,
    \up_rdata_reg[18]_0 ,
    \up_rdata_reg[19]_0 ,
    \up_rdata_reg[24]_0 ,
    dbg_ids1,
    \up_rdata_reg[25]_0 ,
    \up_rdata_reg[26]_0 ,
    \up_rdata_reg[27]_0 ,
    data8,
    dbg_status,
    s_axi_rready,
    \up_rdata_reg[7]_0 ,
    m_dest_axi_awaddr,
    s_axi_wdata,
    s_axi_awaddr,
    \up_transfer_id_eot_reg[0] ,
    req_eot,
    p_7_in,
    \up_transfer_id_reg[0] ,
    \up_transfer_id_reg[0]_0 ,
    req_gen_ready,
    s_axi_araddr,
    \up_measured_transfer_length_reg[7] );
  output s_axi_aresetn_0;
  output irq;
  output ctrl_enable;
  output [0:0]p_3_in;
  output up_dma_req_valid;
  output up_response_ready;
  output up_clear_tl;
  output s_axi_bvalid;
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_arready;
  output ctrl_pause;
  output up_axi_rvalid_int_reg;
  output [32:0]D;
  output \up_raddr_int_reg[7] ;
  output \up_raddr_int_reg[6] ;
  output [16:0]Q;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input up_clear_tl_reg;
  input up_bl_partial;
  input up_response_valid;
  input s_axi_aresetn;
  input [0:0]E;
  input up_eot;
  input s_axi_bready;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input \up_rdata_reg[10]_0 ;
  input \up_rdata_reg[8]_0 ;
  input \up_rdata_reg[9]_0 ;
  input s_axi_arvalid;
  input [3:0]src_request_id;
  input \up_rdata_reg[2]_0 ;
  input \up_rdata_reg[3]_0 ;
  input \up_rdata_reg[4]_0 ;
  input \up_rdata_reg[5]_0 ;
  input \up_rdata_reg[6]_0 ;
  input \up_rdata_reg[11]_0 ;
  input \up_rdata_reg[16]_0 ;
  input \up_rdata_reg[17]_0 ;
  input \up_rdata_reg[18]_0 ;
  input \up_rdata_reg[19]_0 ;
  input \up_rdata_reg[24]_0 ;
  input [3:0]dbg_ids1;
  input \up_rdata_reg[25]_0 ;
  input \up_rdata_reg[26]_0 ;
  input \up_rdata_reg[27]_0 ;
  input [1:0]data8;
  input [2:0]dbg_status;
  input s_axi_rready;
  input \up_rdata_reg[7]_0 ;
  input [9:0]m_dest_axi_awaddr;
  input [31:0]s_axi_wdata;
  input [8:0]s_axi_awaddr;
  input [2:0]\up_transfer_id_eot_reg[0] ;
  input req_eot;
  input p_7_in;
  input \up_transfer_id_reg[0] ;
  input \up_transfer_id_reg[0]_0 ;
  input req_gen_ready;
  input [8:0]s_axi_araddr;
  input [6:0]\up_measured_transfer_length_reg[7] ;

  wire [32:0]D;
  wire [0:0]E;
  wire [16:0]Q;
  wire ctrl_enable;
  wire ctrl_pause;
  wire [31:0]data5;
  wire [1:0]data8;
  wire [1:0]data9;
  wire [3:0]dbg_ids1;
  wire [2:0]dbg_status;
  wire i_regmap_request_n_10;
  wire i_regmap_request_n_100;
  wire i_regmap_request_n_101;
  wire i_regmap_request_n_102;
  wire i_regmap_request_n_103;
  wire i_regmap_request_n_104;
  wire i_regmap_request_n_107;
  wire i_regmap_request_n_108;
  wire i_regmap_request_n_109;
  wire i_regmap_request_n_11;
  wire i_regmap_request_n_110;
  wire i_regmap_request_n_111;
  wire i_regmap_request_n_112;
  wire i_regmap_request_n_113;
  wire i_regmap_request_n_114;
  wire i_regmap_request_n_115;
  wire i_regmap_request_n_116;
  wire i_regmap_request_n_117;
  wire i_regmap_request_n_118;
  wire i_regmap_request_n_119;
  wire i_regmap_request_n_120;
  wire i_regmap_request_n_121;
  wire i_regmap_request_n_122;
  wire i_regmap_request_n_123;
  wire i_regmap_request_n_124;
  wire i_regmap_request_n_125;
  wire i_regmap_request_n_126;
  wire i_regmap_request_n_127;
  wire i_regmap_request_n_128;
  wire i_regmap_request_n_67;
  wire i_regmap_request_n_68;
  wire i_regmap_request_n_69;
  wire i_regmap_request_n_70;
  wire i_regmap_request_n_71;
  wire i_regmap_request_n_8;
  wire i_regmap_request_n_89;
  wire i_regmap_request_n_90;
  wire i_regmap_request_n_91;
  wire i_regmap_request_n_92;
  wire i_regmap_request_n_93;
  wire i_regmap_request_n_94;
  wire i_regmap_request_n_95;
  wire i_regmap_request_n_96;
  wire i_regmap_request_n_97;
  wire i_regmap_request_n_98;
  wire i_regmap_request_n_99;
  wire i_up_axi_n_10;
  wire i_up_axi_n_11;
  wire i_up_axi_n_12;
  wire i_up_axi_n_13;
  wire i_up_axi_n_14;
  wire i_up_axi_n_15;
  wire i_up_axi_n_16;
  wire i_up_axi_n_39;
  wire i_up_axi_n_40;
  wire i_up_axi_n_41;
  wire i_up_axi_n_42;
  wire i_up_axi_n_44;
  wire i_up_axi_n_45;
  wire i_up_axi_n_8;
  wire i_up_axi_n_85;
  wire i_up_axi_n_86;
  wire i_up_axi_n_87;
  wire i_up_axi_n_88;
  wire i_up_axi_n_89;
  wire i_up_axi_n_9;
  wire irq;
  wire irq_i_1_n_0;
  wire [9:0]m_dest_axi_awaddr;
  wire [0:0]p_3_in;
  wire p_7_in;
  wire p_8_in;
  wire req_eot;
  wire req_gen_ready;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [3:0]src_request_id;
  wire up_axi_rvalid_int_reg;
  wire up_bl_partial;
  wire up_clear_tl;
  wire up_clear_tl_reg;
  wire up_dma_dest_address;
  wire up_dma_last;
  wire up_dma_req_valid;
  wire [23:2]up_dma_x_length0_in;
  wire up_eot;
  wire \up_irq_mask[0]_i_1_n_0 ;
  wire \up_irq_mask[1]_i_1_n_0 ;
  wire \up_irq_mask_reg_n_0_[0] ;
  wire \up_irq_mask_reg_n_0_[1] ;
  wire [1:0]up_irq_source;
  wire [23:0]up_measured_transfer_length;
  wire [6:0]\up_measured_transfer_length_reg[7] ;
  wire up_rack;
  wire [4:1]up_raddr;
  wire \up_raddr_int_reg[6] ;
  wire \up_raddr_int_reg[7] ;
  wire [31:0]up_rdata;
  wire [31:0]up_rdata_0;
  wire \up_rdata_reg[10]_0 ;
  wire \up_rdata_reg[11]_0 ;
  wire \up_rdata_reg[16]_0 ;
  wire \up_rdata_reg[17]_0 ;
  wire \up_rdata_reg[18]_0 ;
  wire \up_rdata_reg[19]_0 ;
  wire \up_rdata_reg[24]_0 ;
  wire \up_rdata_reg[25]_0 ;
  wire \up_rdata_reg[26]_0 ;
  wire \up_rdata_reg[27]_0 ;
  wire \up_rdata_reg[2]_0 ;
  wire \up_rdata_reg[3]_0 ;
  wire \up_rdata_reg[4]_0 ;
  wire \up_rdata_reg[5]_0 ;
  wire \up_rdata_reg[6]_0 ;
  wire \up_rdata_reg[7]_0 ;
  wire \up_rdata_reg[8]_0 ;
  wire \up_rdata_reg[9]_0 ;
  wire up_response_ready;
  wire up_response_valid;
  wire up_rreq;
  wire [31:0]up_scratch;
  wire [1:1]up_transfer_id;
  wire [2:0]\up_transfer_id_eot_reg[0] ;
  wire \up_transfer_id_reg[0] ;
  wire \up_transfer_id_reg[0]_0 ;
  wire up_wack;
  wire up_wreq;

  FDRE #(
    .INIT(1'b0)) 
    ctrl_enable_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_89),
        .Q(ctrl_enable),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    ctrl_pause_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_88),
        .Q(ctrl_pause),
        .R(s_axi_aresetn_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_regmap_request i_regmap_request
       (.D(D),
        .E(E),
        .Q(up_raddr),
        .SR(s_axi_aresetn_0),
        .\data_reg[25] ({data9,i_regmap_request_n_107,i_regmap_request_n_108,i_regmap_request_n_109,i_regmap_request_n_110,i_regmap_request_n_111,i_regmap_request_n_112,i_regmap_request_n_113,i_regmap_request_n_114,i_regmap_request_n_115,i_regmap_request_n_116,i_regmap_request_n_117,i_regmap_request_n_118,i_regmap_request_n_119,i_regmap_request_n_120,i_regmap_request_n_121,i_regmap_request_n_122,i_regmap_request_n_123,i_regmap_request_n_124,i_regmap_request_n_125,i_regmap_request_n_126,i_regmap_request_n_127,i_regmap_request_n_128}),
        .dbg_status(dbg_status[2]),
        .\m_axis_raddr_reg[0] (ctrl_enable),
        .p_3_in(p_3_in),
        .p_7_in(p_7_in),
        .p_8_in(p_8_in),
        .req_eot(req_eot),
        .req_gen_ready(req_gen_ready),
        .response_ready_reg_0(up_response_ready),
        .s_axi_aclk(s_axi_aclk),
        .up_bl_partial(up_bl_partial),
        .up_clear_tl(up_clear_tl),
        .up_clear_tl_reg_0(up_clear_tl_reg),
        .\up_dma_dest_address_reg[29]_0 ({i_up_axi_n_11,i_up_axi_n_12,i_up_axi_n_13,i_up_axi_n_14,i_up_axi_n_15,i_up_axi_n_16,up_dma_x_length0_in}),
        .\up_dma_dest_address_reg[29]_1 (up_dma_dest_address),
        .up_dma_enable_tlen_reporting_reg_0(i_up_axi_n_87),
        .up_dma_last(up_dma_last),
        .up_dma_last_reg_0(i_up_axi_n_86),
        .up_dma_req_valid_reg_0(up_dma_req_valid),
        .up_dma_req_valid_reg_1(i_up_axi_n_8),
        .\up_dma_x_length_reg[10]_0 (i_regmap_request_n_91),
        .\up_dma_x_length_reg[11]_0 (i_regmap_request_n_92),
        .\up_dma_x_length_reg[12]_0 (i_regmap_request_n_93),
        .\up_dma_x_length_reg[13]_0 (i_regmap_request_n_94),
        .\up_dma_x_length_reg[14]_0 (i_regmap_request_n_95),
        .\up_dma_x_length_reg[15]_0 (i_regmap_request_n_96),
        .\up_dma_x_length_reg[16]_0 (i_regmap_request_n_97),
        .\up_dma_x_length_reg[17]_0 (i_regmap_request_n_98),
        .\up_dma_x_length_reg[18]_0 (i_regmap_request_n_99),
        .\up_dma_x_length_reg[19]_0 (i_regmap_request_n_100),
        .\up_dma_x_length_reg[20]_0 (i_regmap_request_n_101),
        .\up_dma_x_length_reg[21]_0 (i_regmap_request_n_102),
        .\up_dma_x_length_reg[22]_0 (i_regmap_request_n_103),
        .\up_dma_x_length_reg[23]_0 (Q),
        .\up_dma_x_length_reg[23]_1 (i_regmap_request_n_104),
        .\up_dma_x_length_reg[2]_0 (i_regmap_request_n_11),
        .\up_dma_x_length_reg[2]_1 (i_up_axi_n_85),
        .\up_dma_x_length_reg[3]_0 (i_regmap_request_n_67),
        .\up_dma_x_length_reg[4]_0 (i_regmap_request_n_68),
        .\up_dma_x_length_reg[5]_0 (i_regmap_request_n_69),
        .\up_dma_x_length_reg[6]_0 (i_regmap_request_n_70),
        .\up_dma_x_length_reg[7]_0 (i_regmap_request_n_71),
        .\up_dma_x_length_reg[8]_0 (i_regmap_request_n_89),
        .\up_dma_x_length_reg[9]_0 (i_regmap_request_n_90),
        .up_eot(up_eot),
        .\up_measured_transfer_length_reg[23]_0 ({up_measured_transfer_length[23:4],up_measured_transfer_length[1:0]}),
        .\up_measured_transfer_length_reg[7]_0 (\up_measured_transfer_length_reg[7] ),
        .up_partial_length_valid_reg_0({data5[31],data5[1:0]}),
        .up_response_valid(up_response_valid),
        .\up_transfer_id_eot_reg[0]_0 (i_regmap_request_n_8),
        .\up_transfer_id_eot_reg[0]_1 (\up_transfer_id_eot_reg[0] ),
        .\up_transfer_id_eot_reg[1]_0 (i_regmap_request_n_10),
        .\up_transfer_id_reg[0]_0 (\up_transfer_id_reg[0] ),
        .\up_transfer_id_reg[0]_1 (\up_transfer_id_reg[0]_0 ),
        .\up_transfer_id_reg[1]_0 (up_transfer_id));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_axi i_up_axi
       (.D({i_up_axi_n_41,i_up_axi_n_42}),
        .E(E),
        .Q({i_up_axi_n_9,i_up_axi_n_10,i_up_axi_n_11,i_up_axi_n_12,i_up_axi_n_13,i_up_axi_n_14,i_up_axi_n_15,i_up_axi_n_16,up_dma_x_length0_in,i_up_axi_n_39,i_up_axi_n_40}),
        .SR(s_axi_aresetn_0),
        .ctrl_enable_reg(ctrl_enable),
        .ctrl_pause(ctrl_pause),
        .data8(data8),
        .dbg_ids1(dbg_ids1),
        .dbg_status(dbg_status[1:0]),
        .m_dest_axi_awaddr(m_dest_axi_awaddr),
        .p_3_in(p_3_in),
        .p_8_in(p_8_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .src_request_id(src_request_id),
        .up_axi_rvalid_int_reg_0(up_axi_rvalid_int_reg),
        .up_dma_last(up_dma_last),
        .up_dma_req_valid(up_dma_req_valid),
        .up_dma_req_valid_reg(i_up_axi_n_8),
        .up_eot(up_eot),
        .\up_irq_source_reg[1] (up_irq_source),
        .up_rack(up_rack),
        .\up_raddr_int_reg[4]_0 (up_raddr),
        .\up_raddr_int_reg[6]_0 (\up_raddr_int_reg[6] ),
        .\up_raddr_int_reg[7]_0 (\up_raddr_int_reg[7] ),
        .\up_rdata[10]_i_4_0 (i_regmap_request_n_91),
        .\up_rdata[11]_i_4_0 (i_regmap_request_n_92),
        .\up_rdata[12]_i_4_0 (i_regmap_request_n_93),
        .\up_rdata[13]_i_4_0 (i_regmap_request_n_94),
        .\up_rdata[14]_i_4_0 (i_regmap_request_n_95),
        .\up_rdata[15]_i_4_0 (i_regmap_request_n_96),
        .\up_rdata[16]_i_4_0 (i_regmap_request_n_97),
        .\up_rdata[17]_i_4_0 (i_regmap_request_n_98),
        .\up_rdata[18]_i_4_0 (i_regmap_request_n_99),
        .\up_rdata[19]_i_4_0 (i_regmap_request_n_100),
        .\up_rdata[1]_i_4_0 ({data9,i_regmap_request_n_107,i_regmap_request_n_108,i_regmap_request_n_109,i_regmap_request_n_110,i_regmap_request_n_111,i_regmap_request_n_112,i_regmap_request_n_113,i_regmap_request_n_114,i_regmap_request_n_115,i_regmap_request_n_116,i_regmap_request_n_117,i_regmap_request_n_118,i_regmap_request_n_119,i_regmap_request_n_120,i_regmap_request_n_121,i_regmap_request_n_122,i_regmap_request_n_123,i_regmap_request_n_124,i_regmap_request_n_125,i_regmap_request_n_126,i_regmap_request_n_127,i_regmap_request_n_128}),
        .\up_rdata[1]_i_4_1 (up_transfer_id),
        .\up_rdata[1]_i_4_2 (i_regmap_request_n_10),
        .\up_rdata[20]_i_4_0 (i_regmap_request_n_101),
        .\up_rdata[21]_i_4_0 (i_regmap_request_n_102),
        .\up_rdata[22]_i_4_0 (i_regmap_request_n_103),
        .\up_rdata[23]_i_4_0 ({up_measured_transfer_length[23:4],up_measured_transfer_length[1:0]}),
        .\up_rdata[23]_i_4_1 (i_regmap_request_n_104),
        .\up_rdata[31]_i_6_0 ({data5[31],data5[1:0]}),
        .\up_rdata[4]_i_4_0 (i_regmap_request_n_68),
        .\up_rdata[5]_i_4_0 (i_regmap_request_n_69),
        .\up_rdata[6]_i_4_0 (i_regmap_request_n_70),
        .\up_rdata[7]_i_4_0 (i_regmap_request_n_71),
        .\up_rdata[8]_i_4_0 (i_regmap_request_n_89),
        .\up_rdata[9]_i_4_0 (i_regmap_request_n_90),
        .\up_rdata_d_reg[31]_0 (up_rdata),
        .\up_rdata_reg[0] (i_regmap_request_n_8),
        .\up_rdata_reg[0]_0 (\up_irq_mask_reg_n_0_[0] ),
        .\up_rdata_reg[10] (\up_rdata_reg[10]_0 ),
        .\up_rdata_reg[11] (\up_rdata_reg[11]_0 ),
        .\up_rdata_reg[16] (\up_rdata_reg[16]_0 ),
        .\up_rdata_reg[17] (\up_rdata_reg[17]_0 ),
        .\up_rdata_reg[18] (\up_rdata_reg[18]_0 ),
        .\up_rdata_reg[19] (\up_rdata_reg[19]_0 ),
        .\up_rdata_reg[1] (\up_irq_mask_reg_n_0_[1] ),
        .\up_rdata_reg[24] (\up_rdata_reg[24]_0 ),
        .\up_rdata_reg[25] (\up_rdata_reg[25]_0 ),
        .\up_rdata_reg[26] (\up_rdata_reg[26]_0 ),
        .\up_rdata_reg[27] (\up_rdata_reg[27]_0 ),
        .\up_rdata_reg[29] ({D[32:27],D[6:5]}),
        .\up_rdata_reg[2] (\up_rdata_reg[2]_0 ),
        .\up_rdata_reg[2]_0 (i_regmap_request_n_11),
        .\up_rdata_reg[31] (up_scratch),
        .\up_rdata_reg[3] (\up_rdata_reg[3]_0 ),
        .\up_rdata_reg[3]_0 (i_regmap_request_n_67),
        .\up_rdata_reg[4] (\up_rdata_reg[4]_0 ),
        .\up_rdata_reg[5] (\up_rdata_reg[5]_0 ),
        .\up_rdata_reg[6] (\up_rdata_reg[6]_0 ),
        .\up_rdata_reg[7] (\up_rdata_reg[7]_0 ),
        .\up_rdata_reg[8] (\up_rdata_reg[8]_0 ),
        .\up_rdata_reg[9] (\up_rdata_reg[9]_0 ),
        .up_rreq(up_rreq),
        .\up_scratch_reg[31] (up_rdata_0),
        .up_wack(up_wack),
        .\up_waddr_int_reg[0]_0 (i_up_axi_n_85),
        .\up_wdata_int_reg[0]_0 (i_up_axi_n_89),
        .\up_wdata_int_reg[1]_0 (i_up_axi_n_86),
        .\up_wdata_int_reg[1]_1 (i_up_axi_n_88),
        .\up_wdata_int_reg[2]_0 (i_up_axi_n_87),
        .up_wreq(up_wreq),
        .up_wreq_int_reg_0(up_dma_dest_address),
        .up_wreq_int_reg_1(i_up_axi_n_44),
        .up_wreq_int_reg_2(i_up_axi_n_45));
  LUT4 #(
    .INIT(16'h4F44)) 
    irq_i_1
       (.I0(\up_irq_mask_reg_n_0_[0] ),
        .I1(up_irq_source[0]),
        .I2(\up_irq_mask_reg_n_0_[1] ),
        .I3(up_irq_source[1]),
        .O(irq_i_1_n_0));
  FDRE irq_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irq_i_1_n_0),
        .Q(irq),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \up_irq_mask[0]_i_1 
       (.I0(i_up_axi_n_40),
        .I1(i_up_axi_n_44),
        .I2(\up_irq_mask_reg_n_0_[0] ),
        .O(\up_irq_mask[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \up_irq_mask[1]_i_1 
       (.I0(i_up_axi_n_39),
        .I1(i_up_axi_n_44),
        .I2(\up_irq_mask_reg_n_0_[1] ),
        .O(\up_irq_mask[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \up_irq_mask_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_irq_mask[0]_i_1_n_0 ),
        .Q(\up_irq_mask_reg_n_0_[0] ),
        .S(s_axi_aresetn_0));
  FDSE #(
    .INIT(1'b1)) 
    \up_irq_mask_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_irq_mask[1]_i_1_n_0 ),
        .Q(\up_irq_mask_reg_n_0_[1] ),
        .S(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_irq_source_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_42),
        .Q(up_irq_source[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_irq_source_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_41),
        .Q(up_irq_source[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    up_rack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rreq),
        .Q(up_rack),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[0]),
        .Q(up_rdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[10]),
        .Q(up_rdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[11]),
        .Q(up_rdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[12]),
        .Q(up_rdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[13]),
        .Q(up_rdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[14]),
        .Q(up_rdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[15]),
        .Q(up_rdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[16]),
        .Q(up_rdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[17]),
        .Q(up_rdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[18]),
        .Q(up_rdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[19]),
        .Q(up_rdata[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[1]),
        .Q(up_rdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[20]),
        .Q(up_rdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[21]),
        .Q(up_rdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[22]),
        .Q(up_rdata[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[23]),
        .Q(up_rdata[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[24]),
        .Q(up_rdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[25]),
        .Q(up_rdata[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[26]),
        .Q(up_rdata[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[27]),
        .Q(up_rdata[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[28]),
        .Q(up_rdata[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[29]),
        .Q(up_rdata[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[2]),
        .Q(up_rdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[30]),
        .Q(up_rdata[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[31]),
        .Q(up_rdata[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[3]),
        .Q(up_rdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[4]),
        .Q(up_rdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[5]),
        .Q(up_rdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[6]),
        .Q(up_rdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[7]),
        .Q(up_rdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[8]),
        .Q(up_rdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[9]),
        .Q(up_rdata[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[0] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(i_up_axi_n_40),
        .Q(up_scratch[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[10] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[10]),
        .Q(up_scratch[10]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[11] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[11]),
        .Q(up_scratch[11]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[12] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[12]),
        .Q(up_scratch[12]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[13] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[13]),
        .Q(up_scratch[13]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[14] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[14]),
        .Q(up_scratch[14]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[15] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[15]),
        .Q(up_scratch[15]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[16] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[16]),
        .Q(up_scratch[16]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[17] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[17]),
        .Q(up_scratch[17]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[18] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[18]),
        .Q(up_scratch[18]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[19] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[19]),
        .Q(up_scratch[19]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[1] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(i_up_axi_n_39),
        .Q(up_scratch[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[20] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[20]),
        .Q(up_scratch[20]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[21] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[21]),
        .Q(up_scratch[21]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[22] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[22]),
        .Q(up_scratch[22]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[23] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[23]),
        .Q(up_scratch[23]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[24] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(i_up_axi_n_16),
        .Q(up_scratch[24]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[25] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(i_up_axi_n_15),
        .Q(up_scratch[25]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[26] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(i_up_axi_n_14),
        .Q(up_scratch[26]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[27] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(i_up_axi_n_13),
        .Q(up_scratch[27]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[28] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(i_up_axi_n_12),
        .Q(up_scratch[28]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[29] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(i_up_axi_n_11),
        .Q(up_scratch[29]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[2] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[2]),
        .Q(up_scratch[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[30] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(i_up_axi_n_10),
        .Q(up_scratch[30]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[31] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(i_up_axi_n_9),
        .Q(up_scratch[31]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[3] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[3]),
        .Q(up_scratch[3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[4] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[4]),
        .Q(up_scratch[4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[5] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[5]),
        .Q(up_scratch[5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[6] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[6]),
        .Q(up_scratch[6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[7] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[7]),
        .Q(up_scratch[7]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[8] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[8]),
        .Q(up_scratch[8]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[9] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[9]),
        .Q(up_scratch[9]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    up_wack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wreq),
        .Q(up_wack),
        .R(s_axi_aresetn_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_regmap_request
   (p_3_in,
    up_dma_req_valid_reg_0,
    response_ready_reg_0,
    up_clear_tl,
    up_dma_last,
    up_partial_length_valid_reg_0,
    \up_transfer_id_eot_reg[0]_0 ,
    \up_transfer_id_reg[1]_0 ,
    \up_transfer_id_eot_reg[1]_0 ,
    \up_dma_x_length_reg[2]_0 ,
    D,
    \up_measured_transfer_length_reg[23]_0 ,
    \up_dma_x_length_reg[3]_0 ,
    \up_dma_x_length_reg[4]_0 ,
    \up_dma_x_length_reg[5]_0 ,
    \up_dma_x_length_reg[6]_0 ,
    \up_dma_x_length_reg[7]_0 ,
    \up_dma_x_length_reg[23]_0 ,
    \up_dma_x_length_reg[8]_0 ,
    \up_dma_x_length_reg[9]_0 ,
    \up_dma_x_length_reg[10]_0 ,
    \up_dma_x_length_reg[11]_0 ,
    \up_dma_x_length_reg[12]_0 ,
    \up_dma_x_length_reg[13]_0 ,
    \up_dma_x_length_reg[14]_0 ,
    \up_dma_x_length_reg[15]_0 ,
    \up_dma_x_length_reg[16]_0 ,
    \up_dma_x_length_reg[17]_0 ,
    \up_dma_x_length_reg[18]_0 ,
    \up_dma_x_length_reg[19]_0 ,
    \up_dma_x_length_reg[20]_0 ,
    \up_dma_x_length_reg[21]_0 ,
    \up_dma_x_length_reg[22]_0 ,
    \up_dma_x_length_reg[23]_1 ,
    \data_reg[25] ,
    s_axi_aclk,
    SR,
    up_dma_enable_tlen_reporting_reg_0,
    up_dma_req_valid_reg_1,
    up_clear_tl_reg_0,
    up_dma_last_reg_0,
    up_bl_partial,
    up_response_valid,
    p_8_in,
    \m_axis_raddr_reg[0] ,
    Q,
    up_eot,
    \up_transfer_id_eot_reg[0]_1 ,
    req_eot,
    p_7_in,
    E,
    dbg_status,
    \up_transfer_id_reg[0]_0 ,
    \up_transfer_id_reg[0]_1 ,
    req_gen_ready,
    \up_dma_x_length_reg[2]_1 ,
    \up_dma_dest_address_reg[29]_0 ,
    \up_dma_dest_address_reg[29]_1 ,
    \up_measured_transfer_length_reg[7]_0 );
  output [0:0]p_3_in;
  output up_dma_req_valid_reg_0;
  output response_ready_reg_0;
  output up_clear_tl;
  output up_dma_last;
  output [2:0]up_partial_length_valid_reg_0;
  output \up_transfer_id_eot_reg[0]_0 ;
  output [0:0]\up_transfer_id_reg[1]_0 ;
  output \up_transfer_id_eot_reg[1]_0 ;
  output \up_dma_x_length_reg[2]_0 ;
  output [32:0]D;
  output [21:0]\up_measured_transfer_length_reg[23]_0 ;
  output \up_dma_x_length_reg[3]_0 ;
  output \up_dma_x_length_reg[4]_0 ;
  output \up_dma_x_length_reg[5]_0 ;
  output \up_dma_x_length_reg[6]_0 ;
  output \up_dma_x_length_reg[7]_0 ;
  output [16:0]\up_dma_x_length_reg[23]_0 ;
  output \up_dma_x_length_reg[8]_0 ;
  output \up_dma_x_length_reg[9]_0 ;
  output \up_dma_x_length_reg[10]_0 ;
  output \up_dma_x_length_reg[11]_0 ;
  output \up_dma_x_length_reg[12]_0 ;
  output \up_dma_x_length_reg[13]_0 ;
  output \up_dma_x_length_reg[14]_0 ;
  output \up_dma_x_length_reg[15]_0 ;
  output \up_dma_x_length_reg[16]_0 ;
  output \up_dma_x_length_reg[17]_0 ;
  output \up_dma_x_length_reg[18]_0 ;
  output \up_dma_x_length_reg[19]_0 ;
  output \up_dma_x_length_reg[20]_0 ;
  output \up_dma_x_length_reg[21]_0 ;
  output \up_dma_x_length_reg[22]_0 ;
  output \up_dma_x_length_reg[23]_1 ;
  output [23:0]\data_reg[25] ;
  input s_axi_aclk;
  input [0:0]SR;
  input up_dma_enable_tlen_reporting_reg_0;
  input up_dma_req_valid_reg_1;
  input up_clear_tl_reg_0;
  input up_dma_last_reg_0;
  input up_bl_partial;
  input up_response_valid;
  input p_8_in;
  input \m_axis_raddr_reg[0] ;
  input [3:0]Q;
  input up_eot;
  input [2:0]\up_transfer_id_eot_reg[0]_1 ;
  input req_eot;
  input p_7_in;
  input [0:0]E;
  input [0:0]dbg_status;
  input \up_transfer_id_reg[0]_0 ;
  input \up_transfer_id_reg[0]_1 ;
  input req_gen_ready;
  input [0:0]\up_dma_x_length_reg[2]_1 ;
  input [27:0]\up_dma_dest_address_reg[29]_0 ;
  input [0:0]\up_dma_dest_address_reg[29]_1 ;
  input [6:0]\up_measured_transfer_length_reg[7]_0 ;

  wire [32:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [3:2]data5;
  wire [23:0]\data_reg[25] ;
  wire [0:0]dbg_status;
  wire i_transfer_lenghts_fifo_n_0;
  wire i_transfer_lenghts_fifo_n_1;
  wire i_transfer_lenghts_fifo_n_4;
  wire i_transfer_lenghts_fifo_n_5;
  wire \m_axis_raddr_reg[0] ;
  wire [0:0]p_3_in;
  wire p_7_in;
  wire p_8_in;
  wire req_eot;
  wire req_gen_ready;
  wire response_ready_reg_0;
  wire s_axi_aclk;
  wire up_bl_partial;
  wire up_clear_tl;
  wire up_clear_tl_reg_0;
  wire [27:0]\up_dma_dest_address_reg[29]_0 ;
  wire [0:0]\up_dma_dest_address_reg[29]_1 ;
  wire up_dma_enable_tlen_reporting_reg_0;
  wire up_dma_last;
  wire up_dma_last_reg_0;
  wire up_dma_req_valid_reg_0;
  wire up_dma_req_valid_reg_1;
  wire \up_dma_x_length_reg[10]_0 ;
  wire \up_dma_x_length_reg[11]_0 ;
  wire \up_dma_x_length_reg[12]_0 ;
  wire \up_dma_x_length_reg[13]_0 ;
  wire \up_dma_x_length_reg[14]_0 ;
  wire \up_dma_x_length_reg[15]_0 ;
  wire \up_dma_x_length_reg[16]_0 ;
  wire \up_dma_x_length_reg[17]_0 ;
  wire \up_dma_x_length_reg[18]_0 ;
  wire \up_dma_x_length_reg[19]_0 ;
  wire \up_dma_x_length_reg[20]_0 ;
  wire \up_dma_x_length_reg[21]_0 ;
  wire \up_dma_x_length_reg[22]_0 ;
  wire [16:0]\up_dma_x_length_reg[23]_0 ;
  wire \up_dma_x_length_reg[23]_1 ;
  wire \up_dma_x_length_reg[2]_0 ;
  wire [0:0]\up_dma_x_length_reg[2]_1 ;
  wire \up_dma_x_length_reg[3]_0 ;
  wire \up_dma_x_length_reg[4]_0 ;
  wire \up_dma_x_length_reg[5]_0 ;
  wire \up_dma_x_length_reg[6]_0 ;
  wire \up_dma_x_length_reg[7]_0 ;
  wire \up_dma_x_length_reg[8]_0 ;
  wire \up_dma_x_length_reg[9]_0 ;
  wire up_eot;
  wire [3:2]up_measured_transfer_length;
  wire \up_measured_transfer_length[23]_i_1_n_0 ;
  wire \up_measured_transfer_length[3]_i_2_n_0 ;
  wire \up_measured_transfer_length[3]_i_3_n_0 ;
  wire \up_measured_transfer_length[3]_i_4_n_0 ;
  wire \up_measured_transfer_length[3]_i_5_n_0 ;
  wire \up_measured_transfer_length[7]_i_2_n_0 ;
  wire \up_measured_transfer_length[7]_i_3_n_0 ;
  wire \up_measured_transfer_length[7]_i_4_n_0 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_0 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_1 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_2 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_3 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_4 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_5 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_6 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_7 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_0 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_1 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_2 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_3 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_4 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_5 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_6 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_7 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_0 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_1 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_2 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_3 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_4 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_5 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_6 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_7 ;
  wire [21:0]\up_measured_transfer_length_reg[23]_0 ;
  wire \up_measured_transfer_length_reg[23]_i_3_n_1 ;
  wire \up_measured_transfer_length_reg[23]_i_3_n_2 ;
  wire \up_measured_transfer_length_reg[23]_i_3_n_3 ;
  wire \up_measured_transfer_length_reg[23]_i_3_n_4 ;
  wire \up_measured_transfer_length_reg[23]_i_3_n_5 ;
  wire \up_measured_transfer_length_reg[23]_i_3_n_6 ;
  wire \up_measured_transfer_length_reg[23]_i_3_n_7 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_0 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_1 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_2 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_3 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_4 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_5 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_6 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_7 ;
  wire [6:0]\up_measured_transfer_length_reg[7]_0 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_0 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_1 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_2 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_3 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_4 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_5 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_6 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_7 ;
  wire [2:0]up_partial_length_valid_reg_0;
  wire up_response_valid;
  wire up_tlf_s_valid_reg_n_0;
  wire \up_transfer_done_bitmap[0]_i_1_n_0 ;
  wire \up_transfer_done_bitmap[0]_i_2_n_0 ;
  wire \up_transfer_done_bitmap[1]_i_1_n_0 ;
  wire \up_transfer_done_bitmap[1]_i_2_n_0 ;
  wire \up_transfer_done_bitmap[2]_i_1_n_0 ;
  wire \up_transfer_done_bitmap[2]_i_2_n_0 ;
  wire \up_transfer_done_bitmap[3]_i_1_n_0 ;
  wire \up_transfer_done_bitmap[3]_i_2_n_0 ;
  wire [0:0]up_transfer_id;
  wire \up_transfer_id[0]_i_1_n_0 ;
  wire \up_transfer_id[1]_i_1_n_0 ;
  wire [1:0]up_transfer_id_eot;
  wire \up_transfer_id_eot[0]_i_1_n_0 ;
  wire \up_transfer_id_eot[1]_i_1_n_0 ;
  wire [1:0]up_transfer_id_eot_d;
  wire \up_transfer_id_eot_d[0]_i_1_n_0 ;
  wire \up_transfer_id_eot_d[1]_i_1_n_0 ;
  wire \up_transfer_id_eot_reg[0]_0 ;
  wire [2:0]\up_transfer_id_eot_reg[0]_1 ;
  wire \up_transfer_id_eot_reg[1]_0 ;
  wire \up_transfer_id_reg[0]_0 ;
  wire \up_transfer_id_reg[0]_1 ;
  wire [0:0]\up_transfer_id_reg[1]_0 ;
  wire [3:3]\NLW_up_measured_transfer_length_reg[23]_i_3_CO_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo i_transfer_lenghts_fifo
       (.Q({Q[3:2],Q[0]}),
        .ctrl_enable_reg(i_transfer_lenghts_fifo_n_0),
        .\data_reg[25]_0 (\data_reg[25] ),
        .\level_reg[2] (up_tlf_s_valid_reg_n_0),
        .\m_axis_raddr_reg[0] (\m_axis_raddr_reg[0] ),
        .p_8_in(p_8_in),
        .response_ready_reg(response_ready_reg_0),
        .response_valid_reg(i_transfer_lenghts_fifo_n_4),
        .s_axi_aclk(s_axi_aclk),
        .s_axis_data({up_transfer_id_eot_d,\up_measured_transfer_length_reg[23]_0 [21:2],up_measured_transfer_length,\up_measured_transfer_length_reg[23]_0 [1:0]}),
        .up_bl_partial(up_bl_partial),
        .up_dma_last(up_dma_last),
        .up_partial_length_valid_reg(up_partial_length_valid_reg_0[2]),
        .up_response_valid(up_response_valid),
        .up_tlf_s_valid_reg(i_transfer_lenghts_fifo_n_1),
        .up_transfer_id(up_transfer_id),
        .up_transfer_id_eot(up_transfer_id_eot),
        .\up_transfer_id_eot_reg[0] (\up_transfer_id_eot_reg[0]_0 ),
        .\up_transfer_id_eot_reg[1] (\up_transfer_id_eot_reg[1]_0 ),
        .valid_reg_0(i_transfer_lenghts_fifo_n_5));
  FDSE #(
    .INIT(1'b1)) 
    response_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_transfer_lenghts_fifo_n_4),
        .Q(response_ready_reg_0),
        .S(i_transfer_lenghts_fifo_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_clear_tl_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_clear_tl_reg_0),
        .Q(up_clear_tl),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [8]),
        .Q(D[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [9]),
        .Q(D[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [10]),
        .Q(D[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [11]),
        .Q(D[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [12]),
        .Q(D[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [13]),
        .Q(D[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[16] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [14]),
        .Q(D[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[17] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [15]),
        .Q(D[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[18] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [16]),
        .Q(D[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[19] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [17]),
        .Q(D[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[20] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [18]),
        .Q(D[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[21] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [19]),
        .Q(D[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[22] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [20]),
        .Q(D[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[23] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [21]),
        .Q(D[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[24] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [22]),
        .Q(D[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[25] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [23]),
        .Q(D[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[26] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [24]),
        .Q(D[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[27] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [25]),
        .Q(D[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[28] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [26]),
        .Q(D[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[29] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [27]),
        .Q(D[32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [0]),
        .Q(D[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [1]),
        .Q(D[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [2]),
        .Q(D[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [3]),
        .Q(D[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [4]),
        .Q(D[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [5]),
        .Q(D[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [6]),
        .Q(D[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[29]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [7]),
        .Q(D[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    up_dma_enable_tlen_reporting_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_dma_enable_tlen_reporting_reg_0),
        .Q(p_3_in),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    up_dma_last_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_dma_last_reg_0),
        .Q(up_dma_last),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    up_dma_req_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_dma_req_valid_reg_1),
        .Q(up_dma_req_valid_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [8]),
        .Q(\up_dma_x_length_reg[23]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [9]),
        .Q(\up_dma_x_length_reg[23]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [10]),
        .Q(\up_dma_x_length_reg[23]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [11]),
        .Q(\up_dma_x_length_reg[23]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [12]),
        .Q(\up_dma_x_length_reg[23]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [13]),
        .Q(\up_dma_x_length_reg[23]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[16] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [14]),
        .Q(\up_dma_x_length_reg[23]_0 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[17] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [15]),
        .Q(\up_dma_x_length_reg[23]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[18] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [16]),
        .Q(\up_dma_x_length_reg[23]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[19] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [17]),
        .Q(\up_dma_x_length_reg[23]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[20] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [18]),
        .Q(\up_dma_x_length_reg[23]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[21] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [19]),
        .Q(\up_dma_x_length_reg[23]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[22] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [20]),
        .Q(\up_dma_x_length_reg[23]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[23] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [21]),
        .Q(\up_dma_x_length_reg[23]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [0]),
        .Q(D[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [1]),
        .Q(D[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [2]),
        .Q(D[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [3]),
        .Q(D[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [4]),
        .Q(D[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [5]),
        .Q(\up_dma_x_length_reg[23]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [6]),
        .Q(\up_dma_x_length_reg[23]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_1 ),
        .D(\up_dma_dest_address_reg[29]_0 [7]),
        .Q(\up_dma_x_length_reg[23]_0 [2]),
        .R(SR));
  LUT4 #(
    .INIT(16'h70FF)) 
    \up_measured_transfer_length[23]_i_1 
       (.I0(up_response_valid),
        .I1(response_ready_reg_0),
        .I2(up_clear_tl),
        .I3(\m_axis_raddr_reg[0] ),
        .O(\up_measured_transfer_length[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[3]_i_2 
       (.I0(up_measured_transfer_length[3]),
        .I1(\up_measured_transfer_length_reg[7]_0 [3]),
        .O(\up_measured_transfer_length[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[3]_i_3 
       (.I0(up_measured_transfer_length[2]),
        .I1(\up_measured_transfer_length_reg[7]_0 [2]),
        .O(\up_measured_transfer_length[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[3]_i_4 
       (.I0(\up_measured_transfer_length_reg[23]_0 [1]),
        .I1(\up_measured_transfer_length_reg[7]_0 [1]),
        .O(\up_measured_transfer_length[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[3]_i_5 
       (.I0(\up_measured_transfer_length_reg[23]_0 [0]),
        .I1(\up_measured_transfer_length_reg[7]_0 [0]),
        .O(\up_measured_transfer_length[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[7]_i_2 
       (.I0(\up_measured_transfer_length_reg[23]_0 [4]),
        .I1(\up_measured_transfer_length_reg[7]_0 [6]),
        .O(\up_measured_transfer_length[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[7]_i_3 
       (.I0(\up_measured_transfer_length_reg[23]_0 [3]),
        .I1(\up_measured_transfer_length_reg[7]_0 [5]),
        .O(\up_measured_transfer_length[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[7]_i_4 
       (.I0(\up_measured_transfer_length_reg[23]_0 [2]),
        .I1(\up_measured_transfer_length_reg[7]_0 [4]),
        .O(\up_measured_transfer_length[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[3]_i_1_n_7 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [0]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[11]_i_1_n_5 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [8]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[11]_i_1_n_4 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [9]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  CARRY4 \up_measured_transfer_length_reg[11]_i_1 
       (.CI(\up_measured_transfer_length_reg[7]_i_1_n_0 ),
        .CO({\up_measured_transfer_length_reg[11]_i_1_n_0 ,\up_measured_transfer_length_reg[11]_i_1_n_1 ,\up_measured_transfer_length_reg[11]_i_1_n_2 ,\up_measured_transfer_length_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\up_measured_transfer_length_reg[11]_i_1_n_4 ,\up_measured_transfer_length_reg[11]_i_1_n_5 ,\up_measured_transfer_length_reg[11]_i_1_n_6 ,\up_measured_transfer_length_reg[11]_i_1_n_7 }),
        .S(\up_measured_transfer_length_reg[23]_0 [9:6]));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[15]_i_1_n_7 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [10]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[15]_i_1_n_6 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [11]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[14] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[15]_i_1_n_5 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [12]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[15] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[15]_i_1_n_4 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [13]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  CARRY4 \up_measured_transfer_length_reg[15]_i_1 
       (.CI(\up_measured_transfer_length_reg[11]_i_1_n_0 ),
        .CO({\up_measured_transfer_length_reg[15]_i_1_n_0 ,\up_measured_transfer_length_reg[15]_i_1_n_1 ,\up_measured_transfer_length_reg[15]_i_1_n_2 ,\up_measured_transfer_length_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\up_measured_transfer_length_reg[15]_i_1_n_4 ,\up_measured_transfer_length_reg[15]_i_1_n_5 ,\up_measured_transfer_length_reg[15]_i_1_n_6 ,\up_measured_transfer_length_reg[15]_i_1_n_7 }),
        .S(\up_measured_transfer_length_reg[23]_0 [13:10]));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[16] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[19]_i_1_n_7 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [14]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[17] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[19]_i_1_n_6 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [15]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[18] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[19]_i_1_n_5 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [16]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[19] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[19]_i_1_n_4 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [17]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  CARRY4 \up_measured_transfer_length_reg[19]_i_1 
       (.CI(\up_measured_transfer_length_reg[15]_i_1_n_0 ),
        .CO({\up_measured_transfer_length_reg[19]_i_1_n_0 ,\up_measured_transfer_length_reg[19]_i_1_n_1 ,\up_measured_transfer_length_reg[19]_i_1_n_2 ,\up_measured_transfer_length_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\up_measured_transfer_length_reg[19]_i_1_n_4 ,\up_measured_transfer_length_reg[19]_i_1_n_5 ,\up_measured_transfer_length_reg[19]_i_1_n_6 ,\up_measured_transfer_length_reg[19]_i_1_n_7 }),
        .S(\up_measured_transfer_length_reg[23]_0 [17:14]));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[3]_i_1_n_6 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [1]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[20] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[23]_i_3_n_7 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [18]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[21] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[23]_i_3_n_6 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [19]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[22] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[23]_i_3_n_5 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [20]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[23] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[23]_i_3_n_4 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [21]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  CARRY4 \up_measured_transfer_length_reg[23]_i_3 
       (.CI(\up_measured_transfer_length_reg[19]_i_1_n_0 ),
        .CO({\NLW_up_measured_transfer_length_reg[23]_i_3_CO_UNCONNECTED [3],\up_measured_transfer_length_reg[23]_i_3_n_1 ,\up_measured_transfer_length_reg[23]_i_3_n_2 ,\up_measured_transfer_length_reg[23]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\up_measured_transfer_length_reg[23]_i_3_n_4 ,\up_measured_transfer_length_reg[23]_i_3_n_5 ,\up_measured_transfer_length_reg[23]_i_3_n_6 ,\up_measured_transfer_length_reg[23]_i_3_n_7 }),
        .S(\up_measured_transfer_length_reg[23]_0 [21:18]));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[3]_i_1_n_5 ),
        .Q(up_measured_transfer_length[2]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[3]_i_1_n_4 ),
        .Q(up_measured_transfer_length[3]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  CARRY4 \up_measured_transfer_length_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\up_measured_transfer_length_reg[3]_i_1_n_0 ,\up_measured_transfer_length_reg[3]_i_1_n_1 ,\up_measured_transfer_length_reg[3]_i_1_n_2 ,\up_measured_transfer_length_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({up_measured_transfer_length,\up_measured_transfer_length_reg[23]_0 [1:0]}),
        .O({\up_measured_transfer_length_reg[3]_i_1_n_4 ,\up_measured_transfer_length_reg[3]_i_1_n_5 ,\up_measured_transfer_length_reg[3]_i_1_n_6 ,\up_measured_transfer_length_reg[3]_i_1_n_7 }),
        .S({\up_measured_transfer_length[3]_i_2_n_0 ,\up_measured_transfer_length[3]_i_3_n_0 ,\up_measured_transfer_length[3]_i_4_n_0 ,\up_measured_transfer_length[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[7]_i_1_n_7 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [2]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[7]_i_1_n_6 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [3]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[7]_i_1_n_5 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [4]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[7]_i_1_n_4 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [5]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  CARRY4 \up_measured_transfer_length_reg[7]_i_1 
       (.CI(\up_measured_transfer_length_reg[3]_i_1_n_0 ),
        .CO({\up_measured_transfer_length_reg[7]_i_1_n_0 ,\up_measured_transfer_length_reg[7]_i_1_n_1 ,\up_measured_transfer_length_reg[7]_i_1_n_2 ,\up_measured_transfer_length_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\up_measured_transfer_length_reg[23]_0 [4:2]}),
        .O({\up_measured_transfer_length_reg[7]_i_1_n_4 ,\up_measured_transfer_length_reg[7]_i_1_n_5 ,\up_measured_transfer_length_reg[7]_i_1_n_6 ,\up_measured_transfer_length_reg[7]_i_1_n_7 }),
        .S({\up_measured_transfer_length_reg[23]_0 [5],\up_measured_transfer_length[7]_i_2_n_0 ,\up_measured_transfer_length[7]_i_3_n_0 ,\up_measured_transfer_length[7]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[11]_i_1_n_7 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [6]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_7_in),
        .D(\up_measured_transfer_length_reg[11]_i_1_n_6 ),
        .Q(\up_measured_transfer_length_reg[23]_0 [7]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    up_partial_length_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_transfer_lenghts_fifo_n_5),
        .Q(up_partial_length_valid_reg_0[2]),
        .R(i_transfer_lenghts_fifo_n_0));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[10]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(D[13]),
        .O(\up_dma_x_length_reg[10]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[11]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(D[14]),
        .O(\up_dma_x_length_reg[11]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[12]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [5]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(D[15]),
        .O(\up_dma_x_length_reg[12]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[13]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [6]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(D[16]),
        .O(\up_dma_x_length_reg[13]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[14]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [7]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(D[17]),
        .O(\up_dma_x_length_reg[14]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[15]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [8]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(D[18]),
        .O(\up_dma_x_length_reg[15]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[16]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [9]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(D[19]),
        .O(\up_dma_x_length_reg[16]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[17]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [10]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(D[20]),
        .O(\up_dma_x_length_reg[17]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[18]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [11]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(D[21]),
        .O(\up_dma_x_length_reg[18]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[19]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [12]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(D[22]),
        .O(\up_dma_x_length_reg[19]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[20]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [13]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(D[23]),
        .O(\up_dma_x_length_reg[20]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[21]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [14]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(D[24]),
        .O(\up_dma_x_length_reg[21]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[22]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [15]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(D[25]),
        .O(\up_dma_x_length_reg[22]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[23]_i_7 
       (.I0(\up_dma_x_length_reg[23]_0 [16]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(D[26]),
        .O(\up_dma_x_length_reg[23]_1 ));
  LUT6 #(
    .INIT(64'h0033308800003088)) 
    \up_rdata[2]_i_6 
       (.I0(D[0]),
        .I1(Q[1]),
        .I2(data5[2]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(up_measured_transfer_length[2]),
        .O(\up_dma_x_length_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0033308800003088)) 
    \up_rdata[3]_i_6 
       (.I0(D[1]),
        .I1(Q[1]),
        .I2(data5[3]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(up_measured_transfer_length[3]),
        .O(\up_dma_x_length_reg[3]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[4]_i_6 
       (.I0(D[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(D[7]),
        .O(\up_dma_x_length_reg[4]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[5]_i_6 
       (.I0(D[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(D[8]),
        .O(\up_dma_x_length_reg[5]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[6]_i_6 
       (.I0(D[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(D[9]),
        .O(\up_dma_x_length_reg[6]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[7]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(D[10]),
        .O(\up_dma_x_length_reg[7]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[8]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(D[11]),
        .O(\up_dma_x_length_reg[8]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[9]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(D[12]),
        .O(\up_dma_x_length_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    up_tlf_s_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_transfer_lenghts_fifo_n_1),
        .Q(up_tlf_s_valid_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF8F88888888)) 
    \up_transfer_done_bitmap[0]_i_1 
       (.I0(\up_transfer_done_bitmap[0]_i_2_n_0 ),
        .I1(up_eot),
        .I2(E),
        .I3(up_transfer_id),
        .I4(\up_transfer_id_reg[1]_0 ),
        .I5(up_partial_length_valid_reg_0[0]),
        .O(\up_transfer_done_bitmap[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \up_transfer_done_bitmap[0]_i_2 
       (.I0(up_transfer_id_eot[1]),
        .I1(up_transfer_id_eot[0]),
        .O(\up_transfer_done_bitmap[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF8FFFFF88888888)) 
    \up_transfer_done_bitmap[1]_i_1 
       (.I0(\up_transfer_done_bitmap[1]_i_2_n_0 ),
        .I1(up_eot),
        .I2(E),
        .I3(\up_transfer_id_reg[1]_0 ),
        .I4(up_transfer_id),
        .I5(up_partial_length_valid_reg_0[1]),
        .O(\up_transfer_done_bitmap[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \up_transfer_done_bitmap[1]_i_2 
       (.I0(up_transfer_id_eot[0]),
        .I1(up_transfer_id_eot[1]),
        .O(\up_transfer_done_bitmap[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF8FFFFF88888888)) 
    \up_transfer_done_bitmap[2]_i_1 
       (.I0(\up_transfer_done_bitmap[2]_i_2_n_0 ),
        .I1(up_eot),
        .I2(E),
        .I3(up_transfer_id),
        .I4(\up_transfer_id_reg[1]_0 ),
        .I5(data5[2]),
        .O(\up_transfer_done_bitmap[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \up_transfer_done_bitmap[2]_i_2 
       (.I0(up_transfer_id_eot[1]),
        .I1(up_transfer_id_eot[0]),
        .O(\up_transfer_done_bitmap[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FFFFFFF88888888)) 
    \up_transfer_done_bitmap[3]_i_1 
       (.I0(\up_transfer_done_bitmap[3]_i_2_n_0 ),
        .I1(up_eot),
        .I2(E),
        .I3(up_transfer_id),
        .I4(\up_transfer_id_reg[1]_0 ),
        .I5(data5[3]),
        .O(\up_transfer_done_bitmap[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_transfer_done_bitmap[3]_i_2 
       (.I0(up_transfer_id_eot[1]),
        .I1(up_transfer_id_eot[0]),
        .O(\up_transfer_done_bitmap[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_done_bitmap_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_done_bitmap[0]_i_1_n_0 ),
        .Q(up_partial_length_valid_reg_0[0]),
        .R(i_transfer_lenghts_fifo_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_done_bitmap_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_done_bitmap[1]_i_1_n_0 ),
        .Q(up_partial_length_valid_reg_0[1]),
        .R(i_transfer_lenghts_fifo_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_done_bitmap_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_done_bitmap[2]_i_1_n_0 ),
        .Q(data5[2]),
        .R(i_transfer_lenghts_fifo_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_done_bitmap_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_done_bitmap[3]_i_1_n_0 ),
        .Q(data5[3]),
        .R(i_transfer_lenghts_fifo_n_0));
  LUT6 #(
    .INIT(64'h7FF7FFFF80080000)) 
    \up_transfer_id[0]_i_1 
       (.I0(up_dma_req_valid_reg_0),
        .I1(dbg_status),
        .I2(\up_transfer_id_reg[0]_0 ),
        .I3(\up_transfer_id_reg[0]_1 ),
        .I4(req_gen_ready),
        .I5(up_transfer_id),
        .O(\up_transfer_id[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \up_transfer_id[1]_i_1 
       (.I0(up_transfer_id),
        .I1(E),
        .I2(\up_transfer_id_reg[1]_0 ),
        .O(\up_transfer_id[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFFFFFD0000)) 
    \up_transfer_id_eot[0]_i_1 
       (.I0(\up_transfer_id_eot_reg[0]_1 [1]),
        .I1(\up_transfer_id_eot_reg[0]_1 [2]),
        .I2(\up_transfer_id_eot_reg[0]_1 [0]),
        .I3(req_eot),
        .I4(p_7_in),
        .I5(up_transfer_id_eot[0]),
        .O(\up_transfer_id_eot[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \up_transfer_id_eot[1]_i_1 
       (.I0(up_transfer_id_eot[0]),
        .I1(up_eot),
        .I2(up_transfer_id_eot[1]),
        .O(\up_transfer_id_eot[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \up_transfer_id_eot_d[0]_i_1 
       (.I0(up_transfer_id_eot[0]),
        .I1(up_response_valid),
        .I2(response_ready_reg_0),
        .I3(up_transfer_id_eot_d[0]),
        .O(\up_transfer_id_eot_d[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \up_transfer_id_eot_d[1]_i_1 
       (.I0(up_transfer_id_eot[1]),
        .I1(up_response_valid),
        .I2(response_ready_reg_0),
        .I3(up_transfer_id_eot_d[1]),
        .O(\up_transfer_id_eot_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_eot_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id_eot_d[0]_i_1_n_0 ),
        .Q(up_transfer_id_eot_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_eot_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id_eot_d[1]_i_1_n_0 ),
        .Q(up_transfer_id_eot_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_eot_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id_eot[0]_i_1_n_0 ),
        .Q(up_transfer_id_eot[0]),
        .R(i_transfer_lenghts_fifo_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_eot_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id_eot[1]_i_1_n_0 ),
        .Q(up_transfer_id_eot[1]),
        .R(i_transfer_lenghts_fifo_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id[0]_i_1_n_0 ),
        .Q(up_transfer_id),
        .R(i_transfer_lenghts_fifo_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id[1]_i_1_n_0 ),
        .Q(\up_transfer_id_reg[1]_0 ),
        .R(i_transfer_lenghts_fifo_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_reset_manager
   (Q,
    \reset_gen[1].reset_sync_reg[0]_0 ,
    do_enable_reg_0,
    src_enable,
    needs_reset_reg_0,
    \reset_gen[2].reset_sync_reg[0]_0 ,
    \state_reg[1]_0 ,
    do_enable_reg_1,
    \cdc_sync_stage2_reg[0] ,
    m_dest_axi_aclk,
    fifo_wr_clk,
    s_axi_aclk,
    \FSM_onehot_state[5]_i_2 ,
    ctrl_pause,
    ctrl_enable,
    \up_rdata_reg[5] ,
    \up_rdata_reg[5]_0 ,
    m_dest_axi_awaddr,
    SR);
  output [0:0]Q;
  output [0:0]\reset_gen[1].reset_sync_reg[0]_0 ;
  output do_enable_reg_0;
  output src_enable;
  output [1:0]needs_reset_reg_0;
  output [0:0]\reset_gen[2].reset_sync_reg[0]_0 ;
  output [1:0]\state_reg[1]_0 ;
  output do_enable_reg_1;
  output \cdc_sync_stage2_reg[0] ;
  input m_dest_axi_aclk;
  input fifo_wr_clk;
  input s_axi_aclk;
  input [0:0]\FSM_onehot_state[5]_i_2 ;
  input ctrl_pause;
  input ctrl_enable;
  input \up_rdata_reg[5] ;
  input \up_rdata_reg[5]_0 ;
  input [1:0]m_dest_axi_awaddr;
  input [0:0]SR;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire [0:0]\FSM_onehot_state[5]_i_2 ;
  wire \FSM_onehot_state[5]_i_5_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \cdc_sync_stage2_reg[0] ;
  wire ctrl_enable;
  wire ctrl_pause;
  wire do_enable0;
  wire do_enable_reg_0;
  wire do_enable_reg_1;
  wire do_reset;
  wire do_reset_0;
  wire fifo_wr_clk;
  wire m_dest_axi_aclk;
  wire [1:0]m_dest_axi_awaddr;
  wire needs_reset;
  wire needs_reset_i_1_n_0;
  wire [1:0]needs_reset_reg_0;
  wire \reset_gen[0].reset_async_reg_n_0_[0] ;
  wire \reset_gen[0].reset_async_reg_n_0_[1] ;
  wire \reset_gen[0].reset_async_reg_n_0_[2] ;
  wire \reset_gen[0].reset_async_reg_n_0_[3] ;
  wire \reset_gen[0].reset_sync_in ;
  wire \reset_gen[0].reset_sync_reg_n_0_[1] ;
  wire \reset_gen[1].reset_async_reg_n_0_[0] ;
  wire \reset_gen[1].reset_async_reg_n_0_[1] ;
  wire \reset_gen[1].reset_async_reg_n_0_[2] ;
  wire \reset_gen[1].reset_async_reg_n_0_[3] ;
  wire \reset_gen[1].reset_sync_in ;
  wire [0:0]\reset_gen[1].reset_sync_reg[0]_0 ;
  wire \reset_gen[1].reset_sync_reg_n_0_[1] ;
  wire \reset_gen[2].reset_async_reg_n_0_[1] ;
  wire \reset_gen[2].reset_async_reg_n_0_[2] ;
  wire \reset_gen[2].reset_async_reg_n_0_[3] ;
  wire \reset_gen[2].reset_sync_in ;
  wire [0:0]\reset_gen[2].reset_sync_reg[0]_0 ;
  wire \reset_gen[2].reset_sync_reg_n_0_[1] ;
  wire reset_sync_chain_0;
  wire s_axi_aclk;
  wire src_enable;
  wire state;
  wire \state[0]_i_1__1_n_0 ;
  wire \state[1]_i_1__0_n_0 ;
  wire \state[2]_i_1__0_n_0 ;
  wire [1:0]\state_reg[1]_0 ;
  wire \up_rdata_reg[5] ;
  wire \up_rdata_reg[5]_0 ;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(needs_reset_reg_0[1]),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(needs_reset),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(needs_reset_reg_0[1]),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[5]_i_5 
       (.I0(needs_reset),
        .I1(\reset_gen[2].reset_sync_reg[0]_0 ),
        .I2(ctrl_enable),
        .O(\FSM_onehot_state[5]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(do_reset_0),
        .S(SR));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(do_reset_0),
        .Q(needs_reset),
        .R(SR));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    do_enable_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(do_enable0));
  FDRE #(
    .INIT(1'b0)) 
    do_enable_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_enable0),
        .Q(do_enable_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    do_reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_reset_0),
        .Q(do_reset),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__7 i_sync_control_src
       (.\cdc_sync_stage1_reg[0]_0 (do_enable_reg_0),
        .fifo_wr_clk(fifo_wr_clk),
        .src_enable(src_enable));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0 i_sync_status_src
       (.E(state),
        .\FSM_onehot_state[5]_i_2_0 (\FSM_onehot_state[5]_i_2 ),
        .\FSM_onehot_state[5]_i_2_1 (do_enable_reg_0),
        .Q({\FSM_onehot_state_reg_n_0_[5] ,\FSM_onehot_state_reg_n_0_[4] ,\FSM_onehot_state_reg_n_0_[3] ,\FSM_onehot_state_reg_n_0_[2] ,do_reset_0}),
        .\cdc_sync_stage2_reg[0]_0 (\cdc_sync_stage2_reg[0] ),
        .ctrl_pause(ctrl_pause),
        .m_dest_axi_awaddr(m_dest_axi_awaddr[0]),
        .s_axi_aclk(s_axi_aclk),
        .src_enable(src_enable),
        .\state_reg[0] (needs_reset_reg_0[1]),
        .\state_reg[0]_0 (\FSM_onehot_state[5]_i_5_n_0 ),
        .\up_rdata_reg[5] (\up_rdata_reg[5] ),
        .\up_rdata_reg[5]_0 (\up_rdata_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    needs_reset_i_1
       (.I0(ctrl_enable),
        .I1(needs_reset_reg_0[1]),
        .I2(needs_reset),
        .O(needs_reset_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    needs_reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(needs_reset_i_1_n_0),
        .Q(needs_reset_reg_0[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_async_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_async_reg_n_0_[1] ),
        .PRE(do_reset),
        .Q(\reset_gen[0].reset_async_reg_n_0_[0] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_async_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_async_reg_n_0_[2] ),
        .PRE(do_reset),
        .Q(\reset_gen[0].reset_async_reg_n_0_[1] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_async_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_async_reg_n_0_[3] ),
        .PRE(do_reset),
        .Q(\reset_gen[0].reset_async_reg_n_0_[2] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_async_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(do_reset),
        .Q(\reset_gen[0].reset_async_reg_n_0_[3] ));
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_sync_in_reg 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_async_reg_n_0_[0] ),
        .PRE(reset_sync_chain_0),
        .Q(\reset_gen[0].reset_sync_in ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_sync_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_sync_reg_n_0_[1] ),
        .Q(Q),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_sync_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_sync_in ),
        .Q(\reset_gen[0].reset_sync_reg_n_0_[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[1].reset_async_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\reset_gen[1].reset_async_reg_n_0_[1] ),
        .PRE(do_reset),
        .Q(\reset_gen[1].reset_async_reg_n_0_[0] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[1].reset_async_reg[1] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\reset_gen[1].reset_async_reg_n_0_[2] ),
        .PRE(do_reset),
        .Q(\reset_gen[1].reset_async_reg_n_0_[1] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[1].reset_async_reg[2] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\reset_gen[1].reset_async_reg_n_0_[3] ),
        .PRE(do_reset),
        .Q(\reset_gen[1].reset_async_reg_n_0_[2] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[1].reset_async_reg[3] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_async_reg_n_0_[0] ),
        .PRE(do_reset),
        .Q(\reset_gen[1].reset_async_reg_n_0_[3] ));
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[1].reset_sync_in_reg 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\reset_gen[1].reset_async_reg_n_0_[0] ),
        .PRE(Q),
        .Q(\reset_gen[1].reset_sync_in ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \reset_gen[1].reset_sync_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\reset_gen[1].reset_sync_reg_n_0_[1] ),
        .Q(\reset_gen[1].reset_sync_reg[0]_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \reset_gen[1].reset_sync_reg[1] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\reset_gen[1].reset_sync_in ),
        .Q(\reset_gen[1].reset_sync_reg_n_0_[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[2].reset_async_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[2].reset_async_reg_n_0_[1] ),
        .PRE(do_reset),
        .Q(reset_sync_chain_0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[2].reset_async_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[2].reset_async_reg_n_0_[2] ),
        .PRE(do_reset),
        .Q(\reset_gen[2].reset_async_reg_n_0_[1] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[2].reset_async_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[2].reset_async_reg_n_0_[3] ),
        .PRE(do_reset),
        .Q(\reset_gen[2].reset_async_reg_n_0_[2] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[2].reset_async_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[1].reset_async_reg_n_0_[0] ),
        .PRE(do_reset),
        .Q(\reset_gen[2].reset_async_reg_n_0_[3] ));
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[2].reset_sync_in_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(reset_sync_chain_0),
        .PRE(\reset_gen[1].reset_sync_reg[0]_0 ),
        .Q(\reset_gen[2].reset_sync_in ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \reset_gen[2].reset_sync_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[2].reset_sync_reg_n_0_[1] ),
        .Q(\reset_gen[2].reset_sync_reg[0]_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \reset_gen[2].reset_sync_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[2].reset_sync_in ),
        .Q(\reset_gen[2].reset_sync_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \state[0]_i_1__1 
       (.I0(\state_reg[1]_0 [0]),
        .I1(needs_reset_reg_0[1]),
        .I2(\state_reg[1]_0 [1]),
        .O(\state[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \state[1]_i_1__0 
       (.I0(\state_reg[1]_0 [0]),
        .I1(\state_reg[1]_0 [1]),
        .I2(needs_reset_reg_0[1]),
        .O(\state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[2]_i_1__0 
       (.I0(\state_reg[1]_0 [1]),
        .I1(\state_reg[1]_0 [0]),
        .I2(needs_reset_reg_0[0]),
        .O(\state[2]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\state[0]_i_1__1_n_0 ),
        .Q(\state_reg[1]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(\state_reg[1]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\state[2]_i_1__0_n_0 ),
        .Q(needs_reset_reg_0[0]),
        .R(SR));
  LUT4 #(
    .INIT(16'h3808)) 
    \up_rdata[6]_i_3 
       (.I0(do_enable_reg_0),
        .I1(\up_rdata_reg[5] ),
        .I2(\up_rdata_reg[5]_0 ),
        .I3(m_dest_axi_awaddr[1]),
        .O(do_enable_reg_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_response_manager
   (req_eot_reg_0,
    response_valid_reg_0,
    up_eot,
    \state_reg[2]_0 ,
    up_bl_partial,
    p_7_in,
    id0,
    dest_response_ready,
    \state_reg[1]_0 ,
    \measured_burst_length_reg[6]_0 ,
    Q,
    s_axi_aclk,
    s_axis_waddr_reg,
    m_dest_axi_aclk,
    up_response_ready,
    p_3_in,
    active__6,
    m_dest_axi_bvalid,
    up_clear_tl,
    D);
  output req_eot_reg_0;
  output response_valid_reg_0;
  output up_eot;
  output [2:0]\state_reg[2]_0 ;
  output up_bl_partial;
  output p_7_in;
  output id0;
  output dest_response_ready;
  output \state_reg[1]_0 ;
  output [6:0]\measured_burst_length_reg[6]_0 ;
  input [0:0]Q;
  input s_axi_aclk;
  input [0:0]s_axis_waddr_reg;
  input m_dest_axi_aclk;
  input up_response_ready;
  input [0:0]p_3_in;
  input active__6;
  input m_dest_axi_bvalid;
  input up_clear_tl;
  input [8:0]D;

  wire [8:0]D;
  wire [0:0]Q;
  wire active__6;
  wire dest_response_ready;
  wire i_dest_response_fifo_n_1;
  wire i_dest_response_fifo_n_16;
  wire i_dest_response_fifo_n_2;
  wire i_dest_response_fifo_n_3;
  wire i_dest_response_fifo_n_4;
  wire i_dest_response_fifo_n_6;
  wire i_dest_response_fifo_n_7;
  wire id0;
  wire m_dest_axi_aclk;
  wire m_dest_axi_bvalid;
  wire \measured_burst_length[6]_i_1_n_0 ;
  wire \measured_burst_length[6]_i_2_n_0 ;
  wire [6:0]\measured_burst_length_reg[6]_0 ;
  wire nx_state15_in;
  wire [0:0]p_3_in;
  wire p_7_in;
  wire req_eot_reg_0;
  wire [6:0]req_response_dest_data_burst_length;
  wire req_response_partial;
  wire [6:0]response_dest_data_burst_length;
  wire response_dest_partial;
  wire response_dest_ready;
  wire response_valid_reg_0;
  wire s_axi_aclk;
  wire [0:0]s_axis_waddr_reg;
  wire \state[1]_i_3_n_0 ;
  wire \state_reg[1]_0 ;
  wire [2:0]\state_reg[2]_0 ;
  wire [1:0]to_complete_count;
  wire to_complete_count0__3;
  wire \to_complete_count[0]_i_1_n_0 ;
  wire \to_complete_count[1]_i_1_n_0 ;
  wire [1:0]transfer_id;
  wire \transfer_id[0]_i_1_n_0 ;
  wire \transfer_id[1]_i_1_n_0 ;
  wire up_bl_partial;
  wire up_clear_tl;
  wire up_eot;
  wire up_response_ready;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized3 i_dest_response_fifo
       (.D({i_dest_response_fifo_n_2,i_dest_response_fifo_n_3,i_dest_response_fifo_n_4}),
        .E(i_dest_response_fifo_n_7),
        .Q(Q),
        .active__6(active__6),
        .\cdc_sync_fifo_ram_reg[8]_0 ({response_dest_data_burst_length,response_dest_partial,i_dest_response_fifo_n_16}),
        .\cdc_sync_fifo_ram_reg[8]_1 (D),
        .dest_response_ready(dest_response_ready),
        .id0(id0),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_bvalid(m_dest_axi_bvalid),
        .nx_state15_in(nx_state15_in),
        .response_dest_ready(response_dest_ready),
        .response_ready_reg(i_dest_response_fifo_n_6),
        .response_valid_reg(response_valid_reg_0),
        .s_axi_aclk(s_axi_aclk),
        .s_axis_waddr_reg_0(s_axis_waddr_reg),
        .\state_reg[0] (\state[1]_i_3_n_0 ),
        .\state_reg[1] (i_dest_response_fifo_n_1),
        .\state_reg[2] (\state_reg[2]_0 ),
        .transfer_id(transfer_id),
        .up_response_ready(up_response_ready));
  LUT3 #(
    .INIT(8'h40)) 
    \measured_burst_length[6]_i_1 
       (.I0(\state_reg[2]_0 [2]),
        .I1(\state_reg[2]_0 [0]),
        .I2(\state_reg[2]_0 [1]),
        .O(\measured_burst_length[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \measured_burst_length[6]_i_2 
       (.I0(\state_reg[2]_0 [0]),
        .I1(\state_reg[2]_0 [2]),
        .I2(\state_reg[2]_0 [1]),
        .O(\measured_burst_length[6]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \measured_burst_length_reg[0] 
       (.C(s_axi_aclk),
        .CE(\measured_burst_length[6]_i_2_n_0 ),
        .D(req_response_dest_data_burst_length[0]),
        .Q(\measured_burst_length_reg[6]_0 [0]),
        .S(\measured_burst_length[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \measured_burst_length_reg[1] 
       (.C(s_axi_aclk),
        .CE(\measured_burst_length[6]_i_2_n_0 ),
        .D(req_response_dest_data_burst_length[1]),
        .Q(\measured_burst_length_reg[6]_0 [1]),
        .S(\measured_burst_length[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \measured_burst_length_reg[2] 
       (.C(s_axi_aclk),
        .CE(\measured_burst_length[6]_i_2_n_0 ),
        .D(req_response_dest_data_burst_length[2]),
        .Q(\measured_burst_length_reg[6]_0 [2]),
        .S(\measured_burst_length[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \measured_burst_length_reg[3] 
       (.C(s_axi_aclk),
        .CE(\measured_burst_length[6]_i_2_n_0 ),
        .D(req_response_dest_data_burst_length[3]),
        .Q(\measured_burst_length_reg[6]_0 [3]),
        .S(\measured_burst_length[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \measured_burst_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(\measured_burst_length[6]_i_2_n_0 ),
        .D(req_response_dest_data_burst_length[4]),
        .Q(\measured_burst_length_reg[6]_0 [4]),
        .S(\measured_burst_length[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \measured_burst_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(\measured_burst_length[6]_i_2_n_0 ),
        .D(req_response_dest_data_burst_length[5]),
        .Q(\measured_burst_length_reg[6]_0 [5]),
        .S(\measured_burst_length[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \measured_burst_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(\measured_burst_length[6]_i_2_n_0 ),
        .D(req_response_dest_data_burst_length[6]),
        .Q(\measured_burst_length_reg[6]_0 [6]),
        .S(\measured_burst_length[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    req_eot_reg
       (.C(s_axi_aclk),
        .CE(i_dest_response_fifo_n_7),
        .D(i_dest_response_fifo_n_16),
        .Q(req_eot_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \req_response_dest_data_burst_length_reg[0] 
       (.C(s_axi_aclk),
        .CE(i_dest_response_fifo_n_7),
        .D(response_dest_data_burst_length[0]),
        .Q(req_response_dest_data_burst_length[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \req_response_dest_data_burst_length_reg[1] 
       (.C(s_axi_aclk),
        .CE(i_dest_response_fifo_n_7),
        .D(response_dest_data_burst_length[1]),
        .Q(req_response_dest_data_burst_length[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \req_response_dest_data_burst_length_reg[2] 
       (.C(s_axi_aclk),
        .CE(i_dest_response_fifo_n_7),
        .D(response_dest_data_burst_length[2]),
        .Q(req_response_dest_data_burst_length[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \req_response_dest_data_burst_length_reg[3] 
       (.C(s_axi_aclk),
        .CE(i_dest_response_fifo_n_7),
        .D(response_dest_data_burst_length[3]),
        .Q(req_response_dest_data_burst_length[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \req_response_dest_data_burst_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(i_dest_response_fifo_n_7),
        .D(response_dest_data_burst_length[4]),
        .Q(req_response_dest_data_burst_length[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \req_response_dest_data_burst_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(i_dest_response_fifo_n_7),
        .D(response_dest_data_burst_length[5]),
        .Q(req_response_dest_data_burst_length[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \req_response_dest_data_burst_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(i_dest_response_fifo_n_7),
        .D(response_dest_data_burst_length[6]),
        .Q(req_response_dest_data_burst_length[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    req_response_partial_reg
       (.C(s_axi_aclk),
        .CE(i_dest_response_fifo_n_7),
        .D(response_dest_partial),
        .Q(req_response_partial),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    response_dest_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_dest_response_fifo_n_1),
        .Q(response_dest_ready),
        .S(Q));
  FDRE #(
    .INIT(1'b0)) 
    response_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_dest_response_fifo_n_6),
        .Q(response_valid_reg_0),
        .R(Q));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state[1]_i_3 
       (.I0(transfer_id[0]),
        .I1(transfer_id[1]),
        .O(\state[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \state[2]_i_3 
       (.I0(to_complete_count[0]),
        .I1(to_complete_count[1]),
        .O(nx_state15_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_dest_response_fifo_n_4),
        .Q(\state_reg[2]_0 [0]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_dest_response_fifo_n_3),
        .Q(\state_reg[2]_0 [1]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_dest_response_fifo_n_2),
        .Q(\state_reg[2]_0 [2]),
        .R(Q));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hFFF70008)) 
    \to_complete_count[0]_i_1 
       (.I0(up_response_ready),
        .I1(\state_reg[2]_0 [2]),
        .I2(\state_reg[2]_0 [0]),
        .I3(\state_reg[2]_0 [1]),
        .I4(to_complete_count[0]),
        .O(\to_complete_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF01000000)) 
    \to_complete_count[1]_i_1 
       (.I0(to_complete_count[0]),
        .I1(\state_reg[2]_0 [1]),
        .I2(\state_reg[2]_0 [0]),
        .I3(\state_reg[2]_0 [2]),
        .I4(up_response_ready),
        .I5(to_complete_count[1]),
        .O(\to_complete_count[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \to_complete_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\to_complete_count[0]_i_1_n_0 ),
        .Q(to_complete_count[0]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \to_complete_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\to_complete_count[1]_i_1_n_0 ),
        .Q(to_complete_count[1]),
        .R(Q));
  LUT6 #(
    .INIT(64'hEBFBEFFF14041000)) 
    \transfer_id[0]_i_1 
       (.I0(\state_reg[2]_0 [1]),
        .I1(\state_reg[2]_0 [0]),
        .I2(\state_reg[2]_0 [2]),
        .I3(up_response_ready),
        .I4(req_eot_reg_0),
        .I5(transfer_id[0]),
        .O(\transfer_id[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h557FAA80)) 
    \transfer_id[1]_i_1 
       (.I0(transfer_id[0]),
        .I1(req_eot_reg_0),
        .I2(\measured_burst_length[6]_i_2_n_0 ),
        .I3(to_complete_count0__3),
        .I4(transfer_id[1]),
        .O(\transfer_id[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \transfer_id[1]_i_2 
       (.I0(\state_reg[2]_0 [1]),
        .I1(\state_reg[2]_0 [0]),
        .I2(\state_reg[2]_0 [2]),
        .I3(up_response_ready),
        .O(to_complete_count0__3));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_id_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\transfer_id[0]_i_1_n_0 ),
        .Q(transfer_id[0]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_id_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\transfer_id[1]_i_1_n_0 ),
        .Q(transfer_id[1]),
        .R(Q));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFD0000)) 
    up_clear_tl_i_1
       (.I0(\state_reg[2]_0 [1]),
        .I1(\state_reg[2]_0 [2]),
        .I2(\state_reg[2]_0 [0]),
        .I3(req_eot_reg_0),
        .I4(p_7_in),
        .I5(up_clear_tl),
        .O(\state_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \up_measured_transfer_length[23]_i_2 
       (.I0(response_valid_reg_0),
        .I1(up_response_ready),
        .O(p_7_in));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    up_tlf_s_valid_i_2
       (.I0(p_3_in),
        .I1(\state_reg[2]_0 [0]),
        .I2(\state_reg[2]_0 [2]),
        .I3(\state_reg[2]_0 [1]),
        .I4(req_response_partial),
        .I5(p_7_in),
        .O(up_bl_partial));
  LUT6 #(
    .INIT(64'h8888888088888888)) 
    \up_transfer_id_eot[1]_i_2 
       (.I0(up_response_ready),
        .I1(response_valid_reg_0),
        .I2(req_eot_reg_0),
        .I3(\state_reg[2]_0 [0]),
        .I4(\state_reg[2]_0 [2]),
        .I5(\state_reg[2]_0 [1]),
        .O(up_eot));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_transfer
   (m_dest_axi_wdata,
    do_enable_reg,
    dbg_ids1,
    addr_valid_reg,
    fifo_wr_overflow,
    s_axis_waddr_reg,
    \cdc_sync_stage2_reg[0] ,
    req_gen_ready,
    req_eot,
    m_dest_axi_awaddr,
    up_response_valid,
    active_reg,
    dest_mem_data_valid_reg,
    m_dest_axi_wlast,
    E,
    up_eot,
    Q,
    up_bl_partial,
    p_7_in,
    \cdc_sync_stage2_reg[1] ,
    m_dest_axi_bready,
    src_request_id,
    \id_reg[2] ,
    \id_reg[0] ,
    \id_reg[1] ,
    do_enable_reg_0,
    \cdc_sync_stage2_reg[0]_0 ,
    enabled_reg,
    \cdc_sync_stage2_reg[2] ,
    \cdc_sync_stage2_reg[3] ,
    \id_reg[3] ,
    \dest_id_reg[0] ,
    \dest_id_reg[1] ,
    \dest_id_reg[2] ,
    \dest_id_reg[3] ,
    \id_reg[0]_0 ,
    \id_reg[1]_0 ,
    \id_reg[2]_0 ,
    \id_reg[3]_0 ,
    \state_reg[1] ,
    \measured_burst_length_reg[6] ,
    m_dest_axi_awlen,
    m_dest_axi_aclk,
    fifo_wr_clk,
    fifo_wr_din,
    s_axi_aclk,
    m_dest_axi_wready,
    up_dma_req_valid,
    up_response_ready,
    p_3_in,
    ctrl_pause,
    m_dest_axi_awready,
    m_dest_axi_bvalid,
    fifo_wr_sync,
    fifo_wr_en,
    \up_rdata_reg[5] ,
    \up_rdata_reg[5]_0 ,
    ctrl_enable,
    \burst_count_reg[16] ,
    up_clear_tl,
    SR,
    D);
  output [31:0]m_dest_axi_wdata;
  output [2:0]do_enable_reg;
  output [3:0]dbg_ids1;
  output addr_valid_reg;
  output fifo_wr_overflow;
  output s_axis_waddr_reg;
  output \cdc_sync_stage2_reg[0] ;
  output req_gen_ready;
  output req_eot;
  output [27:0]m_dest_axi_awaddr;
  output up_response_valid;
  output active_reg;
  output dest_mem_data_valid_reg;
  output m_dest_axi_wlast;
  output [0:0]E;
  output up_eot;
  output [2:0]Q;
  output up_bl_partial;
  output p_7_in;
  output [1:0]\cdc_sync_stage2_reg[1] ;
  output m_dest_axi_bready;
  output [3:0]src_request_id;
  output \id_reg[2] ;
  output \id_reg[0] ;
  output \id_reg[1] ;
  output do_enable_reg_0;
  output \cdc_sync_stage2_reg[0]_0 ;
  output enabled_reg;
  output \cdc_sync_stage2_reg[2] ;
  output \cdc_sync_stage2_reg[3] ;
  output \id_reg[3] ;
  output \dest_id_reg[0] ;
  output \dest_id_reg[1] ;
  output \dest_id_reg[2] ;
  output \dest_id_reg[3] ;
  output \id_reg[0]_0 ;
  output \id_reg[1]_0 ;
  output \id_reg[2]_0 ;
  output \id_reg[3]_0 ;
  output \state_reg[1] ;
  output [6:0]\measured_burst_length_reg[6] ;
  output [4:0]m_dest_axi_awlen;
  input m_dest_axi_aclk;
  input fifo_wr_clk;
  input [31:0]fifo_wr_din;
  input s_axi_aclk;
  input m_dest_axi_wready;
  input up_dma_req_valid;
  input up_response_ready;
  input [0:0]p_3_in;
  input ctrl_pause;
  input m_dest_axi_awready;
  input m_dest_axi_bvalid;
  input fifo_wr_sync;
  input fifo_wr_en;
  input \up_rdata_reg[5] ;
  input \up_rdata_reg[5]_0 ;
  input ctrl_enable;
  input [16:0]\burst_count_reg[16] ;
  input up_clear_tl;
  input [0:0]SR;
  input [32:0]D;

  wire [32:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]SR;
  wire active_reg;
  wire addr_valid_reg;
  wire [16:0]\burst_count_reg[16] ;
  wire \cdc_sync_stage2_reg[0] ;
  wire \cdc_sync_stage2_reg[0]_0 ;
  wire [1:0]\cdc_sync_stage2_reg[1] ;
  wire \cdc_sync_stage2_reg[2] ;
  wire \cdc_sync_stage2_reg[3] ;
  wire ctrl_enable;
  wire ctrl_pause;
  wire [3:0]dbg_ids1;
  wire [11:2]dbg_status;
  wire \dest_id_reg[0] ;
  wire \dest_id_reg[1] ;
  wire \dest_id_reg[2] ;
  wire \dest_id_reg[3] ;
  wire dest_mem_data_valid_reg;
  wire [2:0]do_enable_reg;
  wire do_enable_reg_0;
  wire enabled_reg;
  wire fifo_wr_clk;
  wire [31:0]fifo_wr_din;
  wire fifo_wr_en;
  wire fifo_wr_overflow;
  wire fifo_wr_sync;
  wire i_reset_manager_n_6;
  wire \id_reg[0] ;
  wire \id_reg[0]_0 ;
  wire \id_reg[1] ;
  wire \id_reg[1]_0 ;
  wire \id_reg[2] ;
  wire \id_reg[2]_0 ;
  wire \id_reg[3] ;
  wire \id_reg[3]_0 ;
  wire m_dest_axi_aclk;
  wire [27:0]m_dest_axi_awaddr;
  wire [4:0]m_dest_axi_awlen;
  wire m_dest_axi_awready;
  wire m_dest_axi_bready;
  wire m_dest_axi_bvalid;
  wire [31:0]m_dest_axi_wdata;
  wire m_dest_axi_wlast;
  wire m_dest_axi_wready;
  wire [6:0]\measured_burst_length_reg[6] ;
  wire [0:0]p_3_in;
  wire p_7_in;
  wire req_eot;
  wire req_gen_ready;
  wire reset_sync_chain_1;
  wire reset_sync_chain_2;
  wire s_axi_aclk;
  wire s_axis_waddr_reg;
  wire src_enable;
  wire [3:0]src_request_id;
  wire \state_reg[1] ;
  wire up_bl_partial;
  wire up_clear_tl;
  wire up_dma_req_valid;
  wire up_eot;
  wire \up_rdata_reg[5] ;
  wire \up_rdata_reg[5]_0 ;
  wire up_response_ready;
  wire up_response_valid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_request_arb i_request_arb
       (.D(D),
        .E(E),
        .Q(i_reset_manager_n_6),
        .active_reg(active_reg),
        .addr_valid_reg(addr_valid_reg),
        .\burst_count_reg[16] (\burst_count_reg[16] ),
        .\cdc_sync_stage2_reg[0] (\cdc_sync_stage2_reg[0] ),
        .\cdc_sync_stage2_reg[1] (\cdc_sync_stage2_reg[1] ),
        .\cdc_sync_stage2_reg[2] (\cdc_sync_stage2_reg[2] ),
        .\cdc_sync_stage2_reg[3] (\cdc_sync_stage2_reg[3] ),
        .dbg_status(dbg_status[4]),
        .\dest_id_reg[0] (\dest_id_reg[0] ),
        .\dest_id_reg[1] (\dest_id_reg[1] ),
        .\dest_id_reg[2] (\dest_id_reg[2] ),
        .\dest_id_reg[3] (\dest_id_reg[3] ),
        .dest_mem_data_valid_reg(dest_mem_data_valid_reg),
        .dest_valid_reg(reset_sync_chain_1),
        .enabled_reg(enabled_reg),
        .fifo_wr_clk(fifo_wr_clk),
        .fifo_wr_din(fifo_wr_din),
        .fifo_wr_en(fifo_wr_en),
        .fifo_wr_overflow(fifo_wr_overflow),
        .fifo_wr_sync(fifo_wr_sync),
        .g(dbg_ids1),
        .\id_reg[0] (\id_reg[0] ),
        .\id_reg[0]_0 (\id_reg[0]_0 ),
        .\id_reg[1] (\id_reg[1] ),
        .\id_reg[1]_0 (\id_reg[1]_0 ),
        .\id_reg[2] (\id_reg[2] ),
        .\id_reg[2]_0 (\id_reg[2]_0 ),
        .\id_reg[3] (\id_reg[3] ),
        .\id_reg[3]_0 (\id_reg[3]_0 ),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_awaddr(m_dest_axi_awaddr),
        .m_dest_axi_awlen(m_dest_axi_awlen),
        .m_dest_axi_awready(m_dest_axi_awready),
        .m_dest_axi_bready(m_dest_axi_bready),
        .m_dest_axi_bvalid(m_dest_axi_bvalid),
        .m_dest_axi_wdata(m_dest_axi_wdata),
        .m_dest_axi_wlast(m_dest_axi_wlast),
        .m_dest_axi_wready(m_dest_axi_wready),
        .\measured_burst_length_reg[6] (\measured_burst_length_reg[6] ),
        .p_3_in(p_3_in),
        .p_7_in(p_7_in),
        .req_eot_reg(req_eot),
        .req_ready_reg(req_gen_ready),
        .response_valid_reg(up_response_valid),
        .s_axi_aclk(s_axi_aclk),
        .s_axis_waddr_reg(s_axis_waddr_reg),
        .s_axis_waddr_reg_0(do_enable_reg[2]),
        .src_enable(src_enable),
        .\src_id_reg[0] (reset_sync_chain_2),
        .src_request_id(src_request_id),
        .\state_reg[1] (\state_reg[1] ),
        .\state_reg[2] (Q),
        .up_bl_partial(up_bl_partial),
        .up_clear_tl(up_clear_tl),
        .up_dma_req_valid(up_dma_req_valid),
        .up_eot(up_eot),
        .\up_rdata_reg[11] ({dbg_status[11],dbg_status[2]}),
        .\up_rdata_reg[3] (\up_rdata_reg[5] ),
        .\up_rdata_reg[3]_0 (\up_rdata_reg[5]_0 ),
        .up_response_ready(up_response_ready));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_reset_manager i_reset_manager
       (.\FSM_onehot_state[5]_i_2 (dbg_status[4]),
        .Q(reset_sync_chain_1),
        .SR(SR),
        .\cdc_sync_stage2_reg[0] (\cdc_sync_stage2_reg[0]_0 ),
        .ctrl_enable(ctrl_enable),
        .ctrl_pause(ctrl_pause),
        .do_enable_reg_0(do_enable_reg[2]),
        .do_enable_reg_1(do_enable_reg_0),
        .fifo_wr_clk(fifo_wr_clk),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_awaddr(m_dest_axi_awaddr[4:3]),
        .needs_reset_reg_0({dbg_status[11],dbg_status[2]}),
        .\reset_gen[1].reset_sync_reg[0]_0 (reset_sync_chain_2),
        .\reset_gen[2].reset_sync_reg[0]_0 (i_reset_manager_n_6),
        .s_axi_aclk(s_axi_aclk),
        .src_enable(src_enable),
        .\state_reg[1]_0 (do_enable_reg[1:0]),
        .\up_rdata_reg[5] (\up_rdata_reg[5] ),
        .\up_rdata_reg[5]_0 (\up_rdata_reg[5]_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_AXI_DMA_0,axi_dmac,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axi_dmac,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awprot,
    s_axi_wvalid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_arready,
    s_axi_arprot,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rdata,
    irq,
    m_dest_axi_aclk,
    m_dest_axi_aresetn,
    m_dest_axi_awaddr,
    m_dest_axi_awlen,
    m_dest_axi_awsize,
    m_dest_axi_awburst,
    m_dest_axi_awprot,
    m_dest_axi_awcache,
    m_dest_axi_awvalid,
    m_dest_axi_awready,
    m_dest_axi_wdata,
    m_dest_axi_wstrb,
    m_dest_axi_wready,
    m_dest_axi_wvalid,
    m_dest_axi_wlast,
    m_dest_axi_bvalid,
    m_dest_axi_bresp,
    m_dest_axi_bready,
    fifo_wr_clk,
    fifo_wr_en,
    fifo_wr_din,
    fifo_wr_overflow,
    fifo_wr_sync,
    fifo_wr_xfer_req);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_CLK_COMMON_0_axi_periph_clk, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [10:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [10:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 11, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_CLK_COMMON_0_axi_periph_clk, NUM_READ_THREADS 1, NU\nM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_dest_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_dest_axi_aclk, ASSOCIATED_BUSIF m_dest_axi, ASSOCIATED_RESET m_dest_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_CLK_COMMON_0_axi_periph_clk, INSERT_VIP 0" *) input m_dest_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_dest_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_dest_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_dest_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWADDR" *) output [29:0]m_dest_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWLEN" *) output [7:0]m_dest_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWSIZE" *) output [2:0]m_dest_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWBURST" *) output [1:0]m_dest_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWPROT" *) output [2:0]m_dest_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWCACHE" *) output [3:0]m_dest_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWVALID" *) output m_dest_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWREADY" *) input m_dest_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi WDATA" *) output [31:0]m_dest_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi WSTRB" *) output [3:0]m_dest_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi WREADY" *) input m_dest_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi WVALID" *) output m_dest_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi WLAST" *) output m_dest_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi BVALID" *) input m_dest_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi BRESP" *) input [1:0]m_dest_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_dest_axi, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 30, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, NUM_READ_OUTSTANDING 0, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 32, PHASE 0.0, CLK_DOMAIN design_1_CLK_COMMON_0_axi_periph_clk, NUM_READ_THREADS 1, \nNUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_dest_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fifo_wr_clk CLK, xilinx.com:signal:clock:1.0 fifo_wr_signal_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_wr_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0, XIL_INTERFACENAME fifo_wr_signal_clock, ASSOCIATED_BUSIF fifo_wr, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN design_1_clk_DSP_0_sample_rate_30_72, INSERT_VIP 0" *) input fifo_wr_clk;
  (* X_INTERFACE_INFO = "analog.com:interface:fifo_wr:1.0 fifo_wr EN" *) input fifo_wr_en;
  (* X_INTERFACE_INFO = "analog.com:interface:fifo_wr:1.0 fifo_wr DATA" *) input [31:0]fifo_wr_din;
  (* X_INTERFACE_INFO = "analog.com:interface:fifo_wr:1.0 fifo_wr OVERFLOW" *) output fifo_wr_overflow;
  (* X_INTERFACE_INFO = "analog.com:interface:fifo_wr:1.0 fifo_wr SYNC" *) input fifo_wr_sync;
  (* X_INTERFACE_INFO = "analog.com:interface:fifo_wr:1.0 fifo_wr XFER_REQ" *) output fifo_wr_xfer_req;

  wire fifo_wr_clk;
  wire [31:0]fifo_wr_din;
  wire fifo_wr_en;
  wire fifo_wr_overflow;
  wire fifo_wr_sync;
  wire fifo_wr_xfer_req;
  wire irq;
  wire m_dest_axi_aclk;
  wire m_dest_axi_aresetn;
  wire [29:0]m_dest_axi_awaddr;
  wire [1:0]m_dest_axi_awburst;
  wire [3:0]m_dest_axi_awcache;
  wire [7:0]m_dest_axi_awlen;
  wire [2:0]m_dest_axi_awprot;
  wire m_dest_axi_awready;
  wire [2:0]m_dest_axi_awsize;
  wire m_dest_axi_awvalid;
  wire m_dest_axi_bready;
  wire [1:0]m_dest_axi_bresp;
  wire m_dest_axi_bvalid;
  wire [31:0]m_dest_axi_wdata;
  wire m_dest_axi_wlast;
  wire m_dest_axi_wready;
  wire [3:0]m_dest_axi_wstrb;
  wire m_dest_axi_wvalid;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_inst_fifo_rd_underflow_UNCONNECTED;
  wire NLW_inst_fifo_rd_valid_UNCONNECTED;
  wire NLW_inst_fifo_rd_xfer_req_UNCONNECTED;
  wire NLW_inst_m_axis_last_UNCONNECTED;
  wire NLW_inst_m_axis_valid_UNCONNECTED;
  wire NLW_inst_m_axis_xfer_req_UNCONNECTED;
  wire NLW_inst_m_dest_axi_arvalid_UNCONNECTED;
  wire NLW_inst_m_dest_axi_rready_UNCONNECTED;
  wire NLW_inst_m_src_axi_arvalid_UNCONNECTED;
  wire NLW_inst_m_src_axi_awvalid_UNCONNECTED;
  wire NLW_inst_m_src_axi_bready_UNCONNECTED;
  wire NLW_inst_m_src_axi_rready_UNCONNECTED;
  wire NLW_inst_m_src_axi_wlast_UNCONNECTED;
  wire NLW_inst_m_src_axi_wvalid_UNCONNECTED;
  wire NLW_inst_s_axis_ready_UNCONNECTED;
  wire NLW_inst_s_axis_xfer_req_UNCONNECTED;
  wire [7:0]NLW_inst_dest_diag_level_bursts_UNCONNECTED;
  wire [31:0]NLW_inst_fifo_rd_dout_UNCONNECTED;
  wire [31:0]NLW_inst_m_axis_data_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_dest_UNCONNECTED;
  wire [7:0]NLW_inst_m_axis_id_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_keep_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_strb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_user_UNCONNECTED;
  wire [29:0]NLW_inst_m_dest_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_dest_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_dest_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_dest_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_dest_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_inst_m_dest_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_awid_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_awlock_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_wid_UNCONNECTED;
  wire [29:0]NLW_inst_m_src_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_src_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_src_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_src_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_src_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_src_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_src_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_inst_m_src_axi_arsize_UNCONNECTED;
  wire [29:0]NLW_inst_m_src_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_src_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_src_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_src_axi_awid_UNCONNECTED;
  wire [7:0]NLW_inst_m_src_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_src_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_src_axi_awprot_UNCONNECTED;
  wire [2:0]NLW_inst_m_src_axi_awsize_UNCONNECTED;
  wire [31:0]NLW_inst_m_src_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_inst_m_src_axi_wid_UNCONNECTED;
  wire [3:0]NLW_inst_m_src_axi_wstrb_UNCONNECTED;

  (* ALLOW_ASYM_MEM = "1" *) 
  (* ASYNC_CLK_DEST_REQ = "1'b0" *) 
  (* ASYNC_CLK_REQ_SRC = "1'b1" *) 
  (* ASYNC_CLK_SRC_DEST = "1'b1" *) 
  (* AXI_ID_WIDTH_DEST = "1" *) 
  (* AXI_ID_WIDTH_SRC = "1" *) 
  (* AXI_SLICE_DEST = "1'b0" *) 
  (* AXI_SLICE_SRC = "1'b0" *) 
  (* BEATS_PER_BURST_LIMIT_DEST = "256" *) 
  (* BEATS_PER_BURST_LIMIT_SRC = "1024" *) 
  (* BYTES_PER_BEAT_WIDTH_DEST = "2" *) 
  (* BYTES_PER_BEAT_WIDTH_SRC = "2" *) 
  (* BYTES_PER_BURST_LIMIT = "1024" *) 
  (* BYTES_PER_BURST_LIMIT_DEST = "1024" *) 
  (* BYTES_PER_BURST_LIMIT_SRC = "4096" *) 
  (* BYTES_PER_BURST_WIDTH = "7" *) 
  (* CYCLIC = "1'b0" *) 
  (* DBG_ID_PADDING = "4" *) 
  (* DISABLE_DEBUG_REGISTERS = "1'b0" *) 
  (* DMA_2D_TRANSFER = "1'b0" *) 
  (* DMA_AXIS_DEST_W = "4" *) 
  (* DMA_AXIS_ID_W = "8" *) 
  (* DMA_AXI_ADDR_WIDTH = "30" *) 
  (* DMA_AXI_PROTOCOL_DEST = "0" *) 
  (* DMA_AXI_PROTOCOL_SRC = "0" *) 
  (* DMA_DATA_WIDTH_DEST = "32" *) 
  (* DMA_DATA_WIDTH_SRC = "32" *) 
  (* DMA_LENGTH_ALIGN = "2" *) 
  (* DMA_LENGTH_ALIGN_DEST = "0" *) 
  (* DMA_LENGTH_ALIGN_SRC = "2" *) 
  (* DMA_LENGTH_WIDTH = "24" *) 
  (* DMA_TYPE_AXI_MM = "0" *) 
  (* DMA_TYPE_AXI_STREAM = "1" *) 
  (* DMA_TYPE_DEST = "0" *) 
  (* DMA_TYPE_FIFO = "2" *) 
  (* DMA_TYPE_SRC = "2" *) 
  (* ENABLE_DIAGNOSTICS_IF = "1'b0" *) 
  (* FIFO_SIZE = "8" *) 
  (* HAS_DEST_ADDR = "1'b1" *) 
  (* HAS_SRC_ADDR = "1'b0" *) 
  (* ID = "0" *) 
  (* ID_WIDTH = "4" *) 
  (* MAX_BYTES_PER_BURST = "128" *) 
  (* REAL_MAX_BYTES_PER_BURST = "128" *) 
  (* SYNC_TRANSFER_START = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac inst
       (.dest_diag_level_bursts(NLW_inst_dest_diag_level_bursts_UNCONNECTED[7:0]),
        .fifo_rd_clk(1'b0),
        .fifo_rd_dout(NLW_inst_fifo_rd_dout_UNCONNECTED[31:0]),
        .fifo_rd_en(1'b0),
        .fifo_rd_underflow(NLW_inst_fifo_rd_underflow_UNCONNECTED),
        .fifo_rd_valid(NLW_inst_fifo_rd_valid_UNCONNECTED),
        .fifo_rd_xfer_req(NLW_inst_fifo_rd_xfer_req_UNCONNECTED),
        .fifo_wr_clk(fifo_wr_clk),
        .fifo_wr_din(fifo_wr_din),
        .fifo_wr_en(fifo_wr_en),
        .fifo_wr_overflow(fifo_wr_overflow),
        .fifo_wr_sync(fifo_wr_sync),
        .fifo_wr_xfer_req(fifo_wr_xfer_req),
        .irq(irq),
        .m_axis_aclk(1'b0),
        .m_axis_data(NLW_inst_m_axis_data_UNCONNECTED[31:0]),
        .m_axis_dest(NLW_inst_m_axis_dest_UNCONNECTED[3:0]),
        .m_axis_id(NLW_inst_m_axis_id_UNCONNECTED[7:0]),
        .m_axis_keep(NLW_inst_m_axis_keep_UNCONNECTED[3:0]),
        .m_axis_last(NLW_inst_m_axis_last_UNCONNECTED),
        .m_axis_ready(1'b0),
        .m_axis_strb(NLW_inst_m_axis_strb_UNCONNECTED[3:0]),
        .m_axis_user(NLW_inst_m_axis_user_UNCONNECTED[0]),
        .m_axis_valid(NLW_inst_m_axis_valid_UNCONNECTED),
        .m_axis_xfer_req(NLW_inst_m_axis_xfer_req_UNCONNECTED),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_araddr(NLW_inst_m_dest_axi_araddr_UNCONNECTED[29:0]),
        .m_dest_axi_arburst(NLW_inst_m_dest_axi_arburst_UNCONNECTED[1:0]),
        .m_dest_axi_arcache(NLW_inst_m_dest_axi_arcache_UNCONNECTED[3:0]),
        .m_dest_axi_aresetn(m_dest_axi_aresetn),
        .m_dest_axi_arid(NLW_inst_m_dest_axi_arid_UNCONNECTED[0]),
        .m_dest_axi_arlen(NLW_inst_m_dest_axi_arlen_UNCONNECTED[7:0]),
        .m_dest_axi_arlock(NLW_inst_m_dest_axi_arlock_UNCONNECTED[0]),
        .m_dest_axi_arprot(NLW_inst_m_dest_axi_arprot_UNCONNECTED[2:0]),
        .m_dest_axi_arready(1'b0),
        .m_dest_axi_arsize(NLW_inst_m_dest_axi_arsize_UNCONNECTED[2:0]),
        .m_dest_axi_arvalid(NLW_inst_m_dest_axi_arvalid_UNCONNECTED),
        .m_dest_axi_awaddr(m_dest_axi_awaddr),
        .m_dest_axi_awburst(m_dest_axi_awburst),
        .m_dest_axi_awcache(m_dest_axi_awcache),
        .m_dest_axi_awid(NLW_inst_m_dest_axi_awid_UNCONNECTED[0]),
        .m_dest_axi_awlen(m_dest_axi_awlen),
        .m_dest_axi_awlock(NLW_inst_m_dest_axi_awlock_UNCONNECTED[0]),
        .m_dest_axi_awprot(m_dest_axi_awprot),
        .m_dest_axi_awready(m_dest_axi_awready),
        .m_dest_axi_awsize(m_dest_axi_awsize),
        .m_dest_axi_awvalid(m_dest_axi_awvalid),
        .m_dest_axi_bid(1'b0),
        .m_dest_axi_bready(m_dest_axi_bready),
        .m_dest_axi_bresp(m_dest_axi_bresp),
        .m_dest_axi_bvalid(m_dest_axi_bvalid),
        .m_dest_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_dest_axi_rid(1'b0),
        .m_dest_axi_rlast(1'b0),
        .m_dest_axi_rready(NLW_inst_m_dest_axi_rready_UNCONNECTED),
        .m_dest_axi_rresp({1'b0,1'b0}),
        .m_dest_axi_rvalid(1'b0),
        .m_dest_axi_wdata(m_dest_axi_wdata),
        .m_dest_axi_wid(NLW_inst_m_dest_axi_wid_UNCONNECTED[0]),
        .m_dest_axi_wlast(m_dest_axi_wlast),
        .m_dest_axi_wready(m_dest_axi_wready),
        .m_dest_axi_wstrb(m_dest_axi_wstrb),
        .m_dest_axi_wvalid(m_dest_axi_wvalid),
        .m_src_axi_aclk(1'b0),
        .m_src_axi_araddr(NLW_inst_m_src_axi_araddr_UNCONNECTED[29:0]),
        .m_src_axi_arburst(NLW_inst_m_src_axi_arburst_UNCONNECTED[1:0]),
        .m_src_axi_arcache(NLW_inst_m_src_axi_arcache_UNCONNECTED[3:0]),
        .m_src_axi_aresetn(1'b0),
        .m_src_axi_arid(NLW_inst_m_src_axi_arid_UNCONNECTED[0]),
        .m_src_axi_arlen(NLW_inst_m_src_axi_arlen_UNCONNECTED[7:0]),
        .m_src_axi_arlock(NLW_inst_m_src_axi_arlock_UNCONNECTED[0]),
        .m_src_axi_arprot(NLW_inst_m_src_axi_arprot_UNCONNECTED[2:0]),
        .m_src_axi_arready(1'b0),
        .m_src_axi_arsize(NLW_inst_m_src_axi_arsize_UNCONNECTED[2:0]),
        .m_src_axi_arvalid(NLW_inst_m_src_axi_arvalid_UNCONNECTED),
        .m_src_axi_awaddr(NLW_inst_m_src_axi_awaddr_UNCONNECTED[29:0]),
        .m_src_axi_awburst(NLW_inst_m_src_axi_awburst_UNCONNECTED[1:0]),
        .m_src_axi_awcache(NLW_inst_m_src_axi_awcache_UNCONNECTED[3:0]),
        .m_src_axi_awid(NLW_inst_m_src_axi_awid_UNCONNECTED[0]),
        .m_src_axi_awlen(NLW_inst_m_src_axi_awlen_UNCONNECTED[7:0]),
        .m_src_axi_awlock(NLW_inst_m_src_axi_awlock_UNCONNECTED[0]),
        .m_src_axi_awprot(NLW_inst_m_src_axi_awprot_UNCONNECTED[2:0]),
        .m_src_axi_awready(1'b0),
        .m_src_axi_awsize(NLW_inst_m_src_axi_awsize_UNCONNECTED[2:0]),
        .m_src_axi_awvalid(NLW_inst_m_src_axi_awvalid_UNCONNECTED),
        .m_src_axi_bid(1'b0),
        .m_src_axi_bready(NLW_inst_m_src_axi_bready_UNCONNECTED),
        .m_src_axi_bresp({1'b0,1'b0}),
        .m_src_axi_bvalid(1'b0),
        .m_src_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_src_axi_rid(1'b0),
        .m_src_axi_rlast(1'b0),
        .m_src_axi_rready(NLW_inst_m_src_axi_rready_UNCONNECTED),
        .m_src_axi_rresp({1'b0,1'b0}),
        .m_src_axi_rvalid(1'b0),
        .m_src_axi_wdata(NLW_inst_m_src_axi_wdata_UNCONNECTED[31:0]),
        .m_src_axi_wid(NLW_inst_m_src_axi_wid_UNCONNECTED[0]),
        .m_src_axi_wlast(NLW_inst_m_src_axi_wlast_UNCONNECTED),
        .m_src_axi_wready(1'b0),
        .m_src_axi_wstrb(NLW_inst_m_src_axi_wstrb_UNCONNECTED[3:0]),
        .m_src_axi_wvalid(NLW_inst_m_src_axi_wvalid_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_aclk(1'b0),
        .s_axis_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_dest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_id({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_keep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_last(1'b0),
        .s_axis_ready(NLW_inst_s_axis_ready_UNCONNECTED),
        .s_axis_strb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_user(1'b1),
        .s_axis_valid(1'b0),
        .s_axis_xfer_req(NLW_inst_s_axis_xfer_req_UNCONNECTED));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_address_generator
   (addr_valid_reg_0,
    \id_reg[3]_0 ,
    \id_reg[2]_0 ,
    \id_reg[1]_0 ,
    \id_reg[0]_0 ,
    m_dest_axi_awaddr,
    address_enabled,
    dest_bl_ready,
    req_ready_reg_0,
    \id_reg[2]_1 ,
    \id_reg[0]_1 ,
    \id_reg[1]_1 ,
    \id_reg[3]_1 ,
    dest_burst_valid,
    m_dest_axi_awlen,
    m_dest_axi_aclk,
    enabled_reg_0,
    dest_address_eot,
    data8,
    enabled_reg_1,
    m_dest_axi_awready,
    Q,
    \up_rdata_reg[11] ,
    \up_rdata_reg[11]_0 ,
    \address_reg[27]_0 ,
    \up_rdata_reg[9] ,
    \up_rdata_reg[11]_1 ,
    addr_valid_i_2_0,
    \dest_burst_len_data_reg[2] ,
    bl_ready_reg_0,
    cdc_sync_stage2,
    req_ready_reg_1,
    req_ready_reg_2,
    E,
    \last_burst_len_reg[4]_0 );
  output addr_valid_reg_0;
  output \id_reg[3]_0 ;
  output \id_reg[2]_0 ;
  output \id_reg[1]_0 ;
  output \id_reg[0]_0 ;
  output [27:0]m_dest_axi_awaddr;
  output address_enabled;
  output dest_bl_ready;
  output req_ready_reg_0;
  output \id_reg[2]_1 ;
  output \id_reg[0]_1 ;
  output \id_reg[1]_1 ;
  output \id_reg[3]_1 ;
  output dest_burst_valid;
  output [4:0]m_dest_axi_awlen;
  input m_dest_axi_aclk;
  input [0:0]enabled_reg_0;
  input dest_address_eot;
  input [1:0]data8;
  input enabled_reg_1;
  input m_dest_axi_awready;
  input [0:0]Q;
  input \up_rdata_reg[11] ;
  input \up_rdata_reg[11]_0 ;
  input [27:0]\address_reg[27]_0 ;
  input [0:0]\up_rdata_reg[9] ;
  input [0:0]\up_rdata_reg[11]_1 ;
  input [1:0]addr_valid_i_2_0;
  input [3:0]\dest_burst_len_data_reg[2] ;
  input bl_ready_reg_0;
  input cdc_sync_stage2;
  input req_ready_reg_1;
  input req_ready_reg_2;
  input [0:0]E;
  input [4:0]\last_burst_len_reg[4]_0 ;

  wire [0:0]E;
  wire [0:0]Q;
  wire addr_valid_d1;
  wire addr_valid_i_1_n_0;
  wire [1:0]addr_valid_i_2_0;
  wire addr_valid_i_3_n_0;
  wire addr_valid_i_4_n_0;
  wire addr_valid_reg_0;
  wire \address[0]_i_1_n_0 ;
  wire \address[11]_i_2_n_0 ;
  wire \address[11]_i_3_n_0 ;
  wire \address[11]_i_4_n_0 ;
  wire \address[11]_i_5_n_0 ;
  wire \address[15]_i_2_n_0 ;
  wire \address[15]_i_3_n_0 ;
  wire \address[15]_i_4_n_0 ;
  wire \address[15]_i_5_n_0 ;
  wire \address[19]_i_2_n_0 ;
  wire \address[19]_i_3_n_0 ;
  wire \address[19]_i_4_n_0 ;
  wire \address[19]_i_5_n_0 ;
  wire \address[1]_i_1_n_0 ;
  wire \address[23]_i_2_n_0 ;
  wire \address[23]_i_3_n_0 ;
  wire \address[23]_i_4_n_0 ;
  wire \address[23]_i_5_n_0 ;
  wire \address[27]_i_1_n_0 ;
  wire \address[27]_i_3_n_0 ;
  wire \address[27]_i_4_n_0 ;
  wire \address[27]_i_5_n_0 ;
  wire \address[27]_i_6_n_0 ;
  wire \address[2]_i_1_n_0 ;
  wire \address[3]_i_1_n_0 ;
  wire \address[7]_i_2_n_0 ;
  wire \address[7]_i_3_n_0 ;
  wire \address[7]_i_4_n_0 ;
  wire \address[7]_i_5_n_0 ;
  wire \address[7]_i_6_n_0 ;
  wire address_enabled;
  wire \address_reg[11]_i_1_n_0 ;
  wire \address_reg[11]_i_1_n_1 ;
  wire \address_reg[11]_i_1_n_2 ;
  wire \address_reg[11]_i_1_n_3 ;
  wire \address_reg[11]_i_1_n_4 ;
  wire \address_reg[11]_i_1_n_5 ;
  wire \address_reg[11]_i_1_n_6 ;
  wire \address_reg[11]_i_1_n_7 ;
  wire \address_reg[15]_i_1_n_0 ;
  wire \address_reg[15]_i_1_n_1 ;
  wire \address_reg[15]_i_1_n_2 ;
  wire \address_reg[15]_i_1_n_3 ;
  wire \address_reg[15]_i_1_n_4 ;
  wire \address_reg[15]_i_1_n_5 ;
  wire \address_reg[15]_i_1_n_6 ;
  wire \address_reg[15]_i_1_n_7 ;
  wire \address_reg[19]_i_1_n_0 ;
  wire \address_reg[19]_i_1_n_1 ;
  wire \address_reg[19]_i_1_n_2 ;
  wire \address_reg[19]_i_1_n_3 ;
  wire \address_reg[19]_i_1_n_4 ;
  wire \address_reg[19]_i_1_n_5 ;
  wire \address_reg[19]_i_1_n_6 ;
  wire \address_reg[19]_i_1_n_7 ;
  wire \address_reg[23]_i_1_n_0 ;
  wire \address_reg[23]_i_1_n_1 ;
  wire \address_reg[23]_i_1_n_2 ;
  wire \address_reg[23]_i_1_n_3 ;
  wire \address_reg[23]_i_1_n_4 ;
  wire \address_reg[23]_i_1_n_5 ;
  wire \address_reg[23]_i_1_n_6 ;
  wire \address_reg[23]_i_1_n_7 ;
  wire [27:0]\address_reg[27]_0 ;
  wire \address_reg[27]_i_2_n_1 ;
  wire \address_reg[27]_i_2_n_2 ;
  wire \address_reg[27]_i_2_n_3 ;
  wire \address_reg[27]_i_2_n_4 ;
  wire \address_reg[27]_i_2_n_5 ;
  wire \address_reg[27]_i_2_n_6 ;
  wire \address_reg[27]_i_2_n_7 ;
  wire \address_reg[7]_i_1_n_0 ;
  wire \address_reg[7]_i_1_n_1 ;
  wire \address_reg[7]_i_1_n_2 ;
  wire \address_reg[7]_i_1_n_3 ;
  wire \address_reg[7]_i_1_n_4 ;
  wire \address_reg[7]_i_1_n_5 ;
  wire \address_reg[7]_i_1_n_6 ;
  wire \address_reg[7]_i_1_n_7 ;
  wire bl_ready0__0;
  wire bl_ready_i_1_n_0;
  wire bl_ready_reg_0;
  wire cdc_sync_stage2;
  wire [1:0]data8;
  wire dest_address_eot;
  wire dest_bl_ready;
  wire [3:0]\dest_burst_len_data_reg[2] ;
  wire dest_burst_valid;
  wire \dest_id_next[3]_i_4_n_0 ;
  wire enabled_i_1_n_0;
  wire [0:0]enabled_reg_0;
  wire enabled_reg_1;
  wire id0;
  wire \id[0]_i_1_n_0 ;
  wire \id[3]_i_2_n_0 ;
  wire \id_reg[0]_0 ;
  wire \id_reg[0]_1 ;
  wire \id_reg[1]_0 ;
  wire \id_reg[1]_1 ;
  wire \id_reg[2]_0 ;
  wire \id_reg[2]_1 ;
  wire \id_reg[3]_0 ;
  wire \id_reg[3]_1 ;
  wire [2:1]inc_id_return;
  wire last;
  wire [4:0]last_burst_len;
  wire [4:0]\last_burst_len_reg[4]_0 ;
  wire \length[4]_i_1_n_0 ;
  wire m_dest_axi_aclk;
  wire [27:0]m_dest_axi_awaddr;
  wire [4:0]m_dest_axi_awlen;
  wire m_dest_axi_awready;
  wire p_0_in0;
  wire req_ready_i_1_n_0;
  wire req_ready_reg_0;
  wire req_ready_reg_1;
  wire req_ready_reg_2;
  wire \up_rdata_reg[11] ;
  wire \up_rdata_reg[11]_0 ;
  wire [0:0]\up_rdata_reg[11]_1 ;
  wire [0:0]\up_rdata_reg[9] ;
  wire [3:3]\NLW_address_reg[27]_i_2_CO_UNCONNECTED ;

  FDRE addr_valid_d1_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(addr_valid_reg_0),
        .Q(addr_valid_d1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAABFAA)) 
    addr_valid_i_1
       (.I0(addr_valid_reg_0),
        .I1(dest_bl_ready),
        .I2(dest_address_eot),
        .I3(bl_ready0__0),
        .I4(req_ready_reg_0),
        .I5(addr_valid_i_3_n_0),
        .O(addr_valid_i_1_n_0));
  LUT4 #(
    .INIT(16'hBE00)) 
    addr_valid_i_2
       (.I0(addr_valid_i_4_n_0),
        .I1(data8[1]),
        .I2(\id_reg[3]_0 ),
        .I3(enabled_reg_1),
        .O(bl_ready0__0));
  LUT4 #(
    .INIT(16'hBAAA)) 
    addr_valid_i_3
       (.I0(enabled_reg_0),
        .I1(req_ready_reg_0),
        .I2(addr_valid_reg_0),
        .I3(m_dest_axi_awready),
        .O(addr_valid_i_3_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    addr_valid_i_4
       (.I0(\id_reg[0]_0 ),
        .I1(addr_valid_i_2_0[0]),
        .I2(data8[0]),
        .I3(\id_reg[2]_0 ),
        .I4(addr_valid_i_2_0[1]),
        .I5(\id_reg[1]_0 ),
        .O(addr_valid_i_4_n_0));
  FDRE addr_valid_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(addr_valid_i_1_n_0),
        .Q(addr_valid_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \address[0]_i_1 
       (.I0(\address_reg[27]_0 [0]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[0]),
        .O(\address[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[11]_i_2 
       (.I0(\address_reg[27]_0 [11]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[11]),
        .O(\address[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[11]_i_3 
       (.I0(\address_reg[27]_0 [10]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[10]),
        .O(\address[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[11]_i_4 
       (.I0(\address_reg[27]_0 [9]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[9]),
        .O(\address[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[11]_i_5 
       (.I0(\address_reg[27]_0 [8]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[8]),
        .O(\address[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[15]_i_2 
       (.I0(\address_reg[27]_0 [15]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[15]),
        .O(\address[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[15]_i_3 
       (.I0(\address_reg[27]_0 [14]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[14]),
        .O(\address[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[15]_i_4 
       (.I0(\address_reg[27]_0 [13]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[13]),
        .O(\address[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[15]_i_5 
       (.I0(\address_reg[27]_0 [12]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[12]),
        .O(\address[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[19]_i_2 
       (.I0(\address_reg[27]_0 [19]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[19]),
        .O(\address[19]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[19]_i_3 
       (.I0(\address_reg[27]_0 [18]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[18]),
        .O(\address[19]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[19]_i_4 
       (.I0(\address_reg[27]_0 [17]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[17]),
        .O(\address[19]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[19]_i_5 
       (.I0(\address_reg[27]_0 [16]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[16]),
        .O(\address[19]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \address[1]_i_1 
       (.I0(\address_reg[27]_0 [1]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[1]),
        .O(\address[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[23]_i_2 
       (.I0(\address_reg[27]_0 [23]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[23]),
        .O(\address[23]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[23]_i_3 
       (.I0(\address_reg[27]_0 [22]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[22]),
        .O(\address[23]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[23]_i_4 
       (.I0(\address_reg[27]_0 [21]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[21]),
        .O(\address[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[23]_i_5 
       (.I0(\address_reg[27]_0 [20]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[20]),
        .O(\address[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \address[27]_i_1 
       (.I0(req_ready_reg_0),
        .I1(m_dest_axi_awready),
        .I2(addr_valid_reg_0),
        .O(\address[27]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[27]_i_3 
       (.I0(\address_reg[27]_0 [27]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[27]),
        .O(\address[27]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[27]_i_4 
       (.I0(\address_reg[27]_0 [26]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[26]),
        .O(\address[27]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[27]_i_5 
       (.I0(\address_reg[27]_0 [25]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[25]),
        .O(\address[27]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[27]_i_6 
       (.I0(\address_reg[27]_0 [24]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[24]),
        .O(\address[27]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \address[2]_i_1 
       (.I0(\address_reg[27]_0 [2]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[2]),
        .O(\address[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \address[3]_i_1 
       (.I0(\address_reg[27]_0 [3]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[3]),
        .O(\address[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[7]_i_2 
       (.I0(\address_reg[27]_0 [5]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[5]),
        .O(\address[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[7]_i_3 
       (.I0(\address_reg[27]_0 [7]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[7]),
        .O(\address[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[7]_i_4 
       (.I0(\address_reg[27]_0 [6]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[6]),
        .O(\address[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \address[7]_i_5 
       (.I0(m_dest_axi_awaddr[5]),
        .I1(\address_reg[27]_0 [5]),
        .I2(req_ready_reg_0),
        .O(\address[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[7]_i_6 
       (.I0(\address_reg[27]_0 [4]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[4]),
        .O(\address[7]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address[0]_i_1_n_0 ),
        .Q(m_dest_axi_awaddr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[10] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[11]_i_1_n_5 ),
        .Q(m_dest_axi_awaddr[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[11] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[11]_i_1_n_4 ),
        .Q(m_dest_axi_awaddr[11]),
        .R(1'b0));
  CARRY4 \address_reg[11]_i_1 
       (.CI(\address_reg[7]_i_1_n_0 ),
        .CO({\address_reg[11]_i_1_n_0 ,\address_reg[11]_i_1_n_1 ,\address_reg[11]_i_1_n_2 ,\address_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[11]_i_1_n_4 ,\address_reg[11]_i_1_n_5 ,\address_reg[11]_i_1_n_6 ,\address_reg[11]_i_1_n_7 }),
        .S({\address[11]_i_2_n_0 ,\address[11]_i_3_n_0 ,\address[11]_i_4_n_0 ,\address[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[12] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[15]_i_1_n_7 ),
        .Q(m_dest_axi_awaddr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[13] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[15]_i_1_n_6 ),
        .Q(m_dest_axi_awaddr[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[14] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[15]_i_1_n_5 ),
        .Q(m_dest_axi_awaddr[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[15] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[15]_i_1_n_4 ),
        .Q(m_dest_axi_awaddr[15]),
        .R(1'b0));
  CARRY4 \address_reg[15]_i_1 
       (.CI(\address_reg[11]_i_1_n_0 ),
        .CO({\address_reg[15]_i_1_n_0 ,\address_reg[15]_i_1_n_1 ,\address_reg[15]_i_1_n_2 ,\address_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[15]_i_1_n_4 ,\address_reg[15]_i_1_n_5 ,\address_reg[15]_i_1_n_6 ,\address_reg[15]_i_1_n_7 }),
        .S({\address[15]_i_2_n_0 ,\address[15]_i_3_n_0 ,\address[15]_i_4_n_0 ,\address[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[16] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[19]_i_1_n_7 ),
        .Q(m_dest_axi_awaddr[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[17] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[19]_i_1_n_6 ),
        .Q(m_dest_axi_awaddr[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[18] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[19]_i_1_n_5 ),
        .Q(m_dest_axi_awaddr[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[19] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[19]_i_1_n_4 ),
        .Q(m_dest_axi_awaddr[19]),
        .R(1'b0));
  CARRY4 \address_reg[19]_i_1 
       (.CI(\address_reg[15]_i_1_n_0 ),
        .CO({\address_reg[19]_i_1_n_0 ,\address_reg[19]_i_1_n_1 ,\address_reg[19]_i_1_n_2 ,\address_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[19]_i_1_n_4 ,\address_reg[19]_i_1_n_5 ,\address_reg[19]_i_1_n_6 ,\address_reg[19]_i_1_n_7 }),
        .S({\address[19]_i_2_n_0 ,\address[19]_i_3_n_0 ,\address[19]_i_4_n_0 ,\address[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address[1]_i_1_n_0 ),
        .Q(m_dest_axi_awaddr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[20] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[23]_i_1_n_7 ),
        .Q(m_dest_axi_awaddr[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[21] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[23]_i_1_n_6 ),
        .Q(m_dest_axi_awaddr[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[22] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[23]_i_1_n_5 ),
        .Q(m_dest_axi_awaddr[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[23] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[23]_i_1_n_4 ),
        .Q(m_dest_axi_awaddr[23]),
        .R(1'b0));
  CARRY4 \address_reg[23]_i_1 
       (.CI(\address_reg[19]_i_1_n_0 ),
        .CO({\address_reg[23]_i_1_n_0 ,\address_reg[23]_i_1_n_1 ,\address_reg[23]_i_1_n_2 ,\address_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[23]_i_1_n_4 ,\address_reg[23]_i_1_n_5 ,\address_reg[23]_i_1_n_6 ,\address_reg[23]_i_1_n_7 }),
        .S({\address[23]_i_2_n_0 ,\address[23]_i_3_n_0 ,\address[23]_i_4_n_0 ,\address[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[24] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[27]_i_2_n_7 ),
        .Q(m_dest_axi_awaddr[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[25] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[27]_i_2_n_6 ),
        .Q(m_dest_axi_awaddr[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[26] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[27]_i_2_n_5 ),
        .Q(m_dest_axi_awaddr[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[27] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[27]_i_2_n_4 ),
        .Q(m_dest_axi_awaddr[27]),
        .R(1'b0));
  CARRY4 \address_reg[27]_i_2 
       (.CI(\address_reg[23]_i_1_n_0 ),
        .CO({\NLW_address_reg[27]_i_2_CO_UNCONNECTED [3],\address_reg[27]_i_2_n_1 ,\address_reg[27]_i_2_n_2 ,\address_reg[27]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[27]_i_2_n_4 ,\address_reg[27]_i_2_n_5 ,\address_reg[27]_i_2_n_6 ,\address_reg[27]_i_2_n_7 }),
        .S({\address[27]_i_3_n_0 ,\address[27]_i_4_n_0 ,\address[27]_i_5_n_0 ,\address[27]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address[2]_i_1_n_0 ),
        .Q(m_dest_axi_awaddr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address[3]_i_1_n_0 ),
        .Q(m_dest_axi_awaddr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[4] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[7]_i_1_n_7 ),
        .Q(m_dest_axi_awaddr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[5] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[7]_i_1_n_6 ),
        .Q(m_dest_axi_awaddr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[6] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[7]_i_1_n_5 ),
        .Q(m_dest_axi_awaddr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[7] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[7]_i_1_n_4 ),
        .Q(m_dest_axi_awaddr[7]),
        .R(1'b0));
  CARRY4 \address_reg[7]_i_1 
       (.CI(1'b0),
        .CO({\address_reg[7]_i_1_n_0 ,\address_reg[7]_i_1_n_1 ,\address_reg[7]_i_1_n_2 ,\address_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\address[7]_i_2_n_0 ,1'b0}),
        .O({\address_reg[7]_i_1_n_4 ,\address_reg[7]_i_1_n_5 ,\address_reg[7]_i_1_n_6 ,\address_reg[7]_i_1_n_7 }),
        .S({\address[7]_i_3_n_0 ,\address[7]_i_4_n_0 ,\address[7]_i_5_n_0 ,\address[7]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[8] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[11]_i_1_n_7 ),
        .Q(m_dest_axi_awaddr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[9] 
       (.C(m_dest_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[11]_i_1_n_6 ),
        .Q(m_dest_axi_awaddr[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h909F909090909090)) 
    bl_ready_i_1
       (.I0(bl_ready_reg_0),
        .I1(cdc_sync_stage2),
        .I2(dest_bl_ready),
        .I3(addr_valid_reg_0),
        .I4(bl_ready0__0),
        .I5(dest_address_eot),
        .O(bl_ready_i_1_n_0));
  FDSE bl_ready_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(bl_ready_i_1_n_0),
        .Q(dest_bl_ready),
        .S(enabled_reg_0));
  LUT3 #(
    .INIT(8'hF6)) 
    \dest_id_next[3]_i_3 
       (.I0(\id_reg[3]_0 ),
        .I1(\dest_burst_len_data_reg[2] [3]),
        .I2(\dest_id_next[3]_i_4_n_0 ),
        .O(dest_burst_valid));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \dest_id_next[3]_i_4 
       (.I0(\id_reg[0]_0 ),
        .I1(\dest_burst_len_data_reg[2] [0]),
        .I2(\dest_burst_len_data_reg[2] [2]),
        .I3(\id_reg[2]_0 ),
        .I4(\dest_burst_len_data_reg[2] [1]),
        .I5(\id_reg[1]_0 ),
        .O(\dest_id_next[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    enabled_i_1
       (.I0(enabled_reg_1),
        .I1(addr_valid_reg_0),
        .I2(address_enabled),
        .O(enabled_i_1_n_0));
  FDRE enabled_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(enabled_i_1_n_0),
        .Q(address_enabled),
        .R(enabled_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \id[0]_i_1 
       (.I0(\id_reg[1]_0 ),
        .I1(\id_reg[3]_0 ),
        .I2(\id_reg[2]_0 ),
        .O(\id[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h99F0)) 
    \id[1]_i_1__0 
       (.I0(\id_reg[2]_0 ),
        .I1(\id_reg[3]_0 ),
        .I2(\id_reg[1]_0 ),
        .I3(\id_reg[0]_0 ),
        .O(inc_id_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hD1F0)) 
    \id[2]_i_1__0 
       (.I0(\id_reg[3]_0 ),
        .I1(\id_reg[0]_0 ),
        .I2(\id_reg[2]_0 ),
        .I3(\id_reg[1]_0 ),
        .O(inc_id_return[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \id[3]_i_1 
       (.I0(addr_valid_reg_0),
        .I1(addr_valid_d1),
        .O(id0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFE04)) 
    \id[3]_i_2 
       (.I0(\id_reg[1]_0 ),
        .I1(\id_reg[2]_0 ),
        .I2(\id_reg[0]_0 ),
        .I3(\id_reg[3]_0 ),
        .O(\id[3]_i_2_n_0 ));
  FDRE \id_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(\id[0]_i_1_n_0 ),
        .Q(\id_reg[0]_0 ),
        .R(enabled_reg_0));
  FDRE \id_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(inc_id_return[1]),
        .Q(\id_reg[1]_0 ),
        .R(enabled_reg_0));
  FDRE \id_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(inc_id_return[2]),
        .Q(\id_reg[2]_0 ),
        .R(enabled_reg_0));
  FDRE \id_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(\id[3]_i_2_n_0 ),
        .Q(\id_reg[3]_0 ),
        .R(enabled_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_len_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(E),
        .D(\last_burst_len_reg[4]_0 [0]),
        .Q(last_burst_len[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_len_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(E),
        .D(\last_burst_len_reg[4]_0 [1]),
        .Q(last_burst_len[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_len_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(E),
        .D(\last_burst_len_reg[4]_0 [2]),
        .Q(last_burst_len[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_len_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(E),
        .D(\last_burst_len_reg[4]_0 [3]),
        .Q(last_burst_len[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_len_reg[4] 
       (.C(m_dest_axi_aclk),
        .CE(E),
        .D(\last_burst_len_reg[4]_0 [4]),
        .Q(last_burst_len[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    last_reg
       (.C(m_dest_axi_aclk),
        .CE(p_0_in0),
        .D(dest_address_eot),
        .Q(last),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \length[4]_i_1 
       (.I0(dest_address_eot),
        .I1(addr_valid_reg_0),
        .O(\length[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \length[4]_i_2 
       (.I0(addr_valid_reg_0),
        .O(p_0_in0));
  FDSE #(
    .INIT(1'b0)) 
    \length_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(p_0_in0),
        .D(last_burst_len[0]),
        .Q(m_dest_axi_awlen[0]),
        .S(\length[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \length_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(p_0_in0),
        .D(last_burst_len[1]),
        .Q(m_dest_axi_awlen[1]),
        .S(\length[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \length_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(p_0_in0),
        .D(last_burst_len[2]),
        .Q(m_dest_axi_awlen[2]),
        .S(\length[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \length_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(p_0_in0),
        .D(last_burst_len[3]),
        .Q(m_dest_axi_awlen[3]),
        .S(\length[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \length_reg[4] 
       (.C(m_dest_axi_aclk),
        .CE(p_0_in0),
        .D(last_burst_len[4]),
        .Q(m_dest_axi_awlen[4]),
        .S(\length[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h99F0990099009900)) 
    req_ready_i_1
       (.I0(req_ready_reg_1),
        .I1(req_ready_reg_2),
        .I2(last),
        .I3(req_ready_reg_0),
        .I4(m_dest_axi_awready),
        .I5(addr_valid_reg_0),
        .O(req_ready_i_1_n_0));
  FDSE req_ready_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(req_ready_i_1_n_0),
        .Q(req_ready_reg_0),
        .S(enabled_reg_0));
  LUT5 #(
    .INIT(32'hAF30A030)) 
    \up_rdata[10]_i_3 
       (.I0(\id_reg[2]_0 ),
        .I1(Q),
        .I2(\up_rdata_reg[11] ),
        .I3(\up_rdata_reg[11]_0 ),
        .I4(m_dest_axi_awaddr[8]),
        .O(\id_reg[2]_1 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \up_rdata[11]_i_3 
       (.I0(\id_reg[3]_0 ),
        .I1(\up_rdata_reg[11]_1 ),
        .I2(\up_rdata_reg[11] ),
        .I3(\up_rdata_reg[11]_0 ),
        .I4(m_dest_axi_awaddr[9]),
        .O(\id_reg[3]_1 ));
  LUT5 #(
    .INIT(32'hAF30A030)) 
    \up_rdata[8]_i_3 
       (.I0(\id_reg[0]_0 ),
        .I1(enabled_reg_0),
        .I2(\up_rdata_reg[11] ),
        .I3(\up_rdata_reg[11]_0 ),
        .I4(m_dest_axi_awaddr[6]),
        .O(\id_reg[0]_1 ));
  LUT5 #(
    .INIT(32'hAF30A030)) 
    \up_rdata[9]_i_3 
       (.I0(\id_reg[1]_0 ),
        .I1(\up_rdata_reg[9] ),
        .I2(\up_rdata_reg[11] ),
        .I3(\up_rdata_reg[11]_0 ),
        .I4(m_dest_axi_awaddr[7]),
        .O(\id_reg[1]_1 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_data_mover
   (SR,
    E,
    \id_reg[3]_0 ,
    last_non_eot_reg_0,
    \id_reg[2]_0 ,
    \id_reg[1]_0 ,
    \id_reg[0]_0 ,
    active_reg_0,
    src_bl_valid,
    \reset_gen[1].reset_sync_reg[0] ,
    active_reg_1,
    \measured_last_burst_length_reg[4]_0 ,
    fifo_wr_clk,
    active_reg_2,
    Q,
    src_eot,
    fifo_wr_sync,
    fifo_wr_en,
    src_enable,
    active_reg_3,
    bl_valid_reg_0,
    bl_valid_reg_1,
    last_eot_reg_0,
    \last_burst_length_reg[4]_0 );
  output [0:0]SR;
  output [0:0]E;
  output \id_reg[3]_0 ;
  output last_non_eot_reg_0;
  output \id_reg[2]_0 ;
  output \id_reg[1]_0 ;
  output \id_reg[0]_0 ;
  output active_reg_0;
  output src_bl_valid;
  output [0:0]\reset_gen[1].reset_sync_reg[0] ;
  output active_reg_1;
  output [4:0]\measured_last_burst_length_reg[4]_0 ;
  input fifo_wr_clk;
  input [0:0]active_reg_2;
  input [3:0]Q;
  input src_eot;
  input fifo_wr_sync;
  input fifo_wr_en;
  input src_enable;
  input [0:0]active_reg_3;
  input bl_valid_reg_0;
  input bl_valid_reg_1;
  input last_eot_reg_0;
  input [4:0]\last_burst_length_reg[4]_0 ;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire active_i_1_n_0;
  wire active_reg_0;
  wire active_reg_1;
  wire [0:0]active_reg_2;
  wire [0:0]active_reg_3;
  wire \beat_counter[2]_i_1_n_0 ;
  wire [4:0]beat_counter_minus_one;
  wire [4:0]beat_counter_reg;
  wire bl_valid_i_1_n_0;
  wire bl_valid_reg_0;
  wire bl_valid_reg_1;
  wire fifo_wr_clk;
  wire fifo_wr_en;
  wire fifo_wr_sync;
  wire \id[0]_i_1__1_n_0 ;
  wire \id[3]_i_1__2_n_0 ;
  wire \id_reg[0]_0 ;
  wire \id_reg[1]_0 ;
  wire \id_reg[2]_0 ;
  wire \id_reg[3]_0 ;
  wire [2:1]inc_id_return;
  wire [4:0]last_burst_length;
  wire [4:0]\last_burst_length_reg[4]_0 ;
  wire last_eot_i_1_n_0;
  wire last_eot_i_3_n_0;
  wire last_eot_i_4_n_0;
  wire last_eot_reg_0;
  wire last_eot_reg_n_0;
  wire last_load;
  wire last_non_eot;
  wire last_non_eot_i_1_n_0;
  wire last_non_eot_reg_0;
  wire [4:0]\measured_last_burst_length_reg[4]_0 ;
  wire needs_sync_i_1_n_0;
  wire needs_sync_reg_n_0;
  wire [4:0]p_0_in__0;
  wire pending_burst;
  wire pending_burst_i_1_n_0;
  wire pending_burst_i_2_n_0;
  wire pending_burst_i_3_n_0;
  wire pending_burst_i_4_n_0;
  wire pending_burst_i_5_n_0;
  wire [0:0]\reset_gen[1].reset_sync_reg[0] ;
  wire src_bl_valid;
  wire src_enable;
  wire src_eot;

  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    active_i_1
       (.I0(active_reg_3),
        .I1(src_eot),
        .I2(last_eot_reg_n_0),
        .I3(E),
        .I4(active_reg_0),
        .O(active_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    active_reg
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(active_i_1_n_0),
        .Q(active_reg_0),
        .R(active_reg_2));
  LUT1 #(
    .INIT(2'h1)) 
    \beat_counter[0]_i_1 
       (.I0(beat_counter_reg[0]),
        .O(p_0_in__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \beat_counter[1]_i_1 
       (.I0(beat_counter_reg[0]),
        .I1(beat_counter_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \beat_counter[2]_i_1 
       (.I0(beat_counter_reg[1]),
        .I1(beat_counter_reg[0]),
        .I2(beat_counter_reg[2]),
        .O(\beat_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \beat_counter[3]_i_1 
       (.I0(beat_counter_reg[0]),
        .I1(beat_counter_reg[1]),
        .I2(beat_counter_reg[2]),
        .I3(beat_counter_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \beat_counter[4]_i_1 
       (.I0(beat_counter_reg[2]),
        .I1(beat_counter_reg[1]),
        .I2(beat_counter_reg[0]),
        .I3(beat_counter_reg[3]),
        .I4(beat_counter_reg[4]),
        .O(p_0_in__0[4]));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \beat_counter_minus_one[4]_i_1 
       (.I0(src_eot),
        .I1(last_eot_reg_n_0),
        .I2(E),
        .I3(active_reg_0),
        .I4(pending_burst),
        .O(SR));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_minus_one_reg[0] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(beat_counter_reg[0]),
        .Q(beat_counter_minus_one[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_minus_one_reg[1] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(beat_counter_reg[1]),
        .Q(beat_counter_minus_one[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_minus_one_reg[2] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(beat_counter_reg[2]),
        .Q(beat_counter_minus_one[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_minus_one_reg[3] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(beat_counter_reg[3]),
        .Q(beat_counter_minus_one[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_minus_one_reg[4] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(beat_counter_reg[4]),
        .Q(beat_counter_minus_one[4]),
        .R(SR));
  FDSE #(
    .INIT(1'b0)) 
    \beat_counter_reg[0] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(p_0_in__0[0]),
        .Q(beat_counter_reg[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[1] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(p_0_in__0[1]),
        .Q(beat_counter_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[2] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(\beat_counter[2]_i_1_n_0 ),
        .Q(beat_counter_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[3] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(p_0_in__0[3]),
        .Q(beat_counter_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[4] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(p_0_in__0[4]),
        .Q(beat_counter_reg[4]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFF60606060606060)) 
    bl_valid_i_1
       (.I0(bl_valid_reg_0),
        .I1(bl_valid_reg_1),
        .I2(src_bl_valid),
        .I3(src_eot),
        .I4(last_eot_reg_n_0),
        .I5(E),
        .O(bl_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bl_valid_reg
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(bl_valid_i_1_n_0),
        .Q(src_bl_valid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \id[0]_i_1__1 
       (.I0(\id_reg[1]_0 ),
        .I1(\id_reg[3]_0 ),
        .I2(\id_reg[2]_0 ),
        .O(\id[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h99F0)) 
    \id[1]_i_1__2 
       (.I0(\id_reg[2]_0 ),
        .I1(\id_reg[3]_0 ),
        .I2(\id_reg[1]_0 ),
        .I3(\id_reg[0]_0 ),
        .O(inc_id_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hD1F0)) 
    \id[2]_i_1__2 
       (.I0(\id_reg[3]_0 ),
        .I1(\id_reg[0]_0 ),
        .I2(\id_reg[2]_0 ),
        .I3(\id_reg[1]_0 ),
        .O(inc_id_return[2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hFE04)) 
    \id[3]_i_1__2 
       (.I0(\id_reg[1]_0 ),
        .I1(\id_reg[2]_0 ),
        .I2(\id_reg[0]_0 ),
        .I3(\id_reg[3]_0 ),
        .O(\id[3]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[0] 
       (.C(fifo_wr_clk),
        .CE(last_non_eot_reg_0),
        .D(\id[0]_i_1__1_n_0 ),
        .Q(\id_reg[0]_0 ),
        .R(active_reg_2));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[1] 
       (.C(fifo_wr_clk),
        .CE(last_non_eot_reg_0),
        .D(inc_id_return[1]),
        .Q(\id_reg[1]_0 ),
        .R(active_reg_2));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[2] 
       (.C(fifo_wr_clk),
        .CE(last_non_eot_reg_0),
        .D(inc_id_return[2]),
        .Q(\id_reg[2]_0 ),
        .R(active_reg_2));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[3] 
       (.C(fifo_wr_clk),
        .CE(last_non_eot_reg_0),
        .D(\id[3]_i_1__2_n_0 ),
        .Q(\id_reg[3]_0 ),
        .R(active_reg_2));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_length_reg[0] 
       (.C(fifo_wr_clk),
        .CE(SR),
        .D(\last_burst_length_reg[4]_0 [0]),
        .Q(last_burst_length[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_length_reg[1] 
       (.C(fifo_wr_clk),
        .CE(SR),
        .D(\last_burst_length_reg[4]_0 [1]),
        .Q(last_burst_length[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_length_reg[2] 
       (.C(fifo_wr_clk),
        .CE(SR),
        .D(\last_burst_length_reg[4]_0 [2]),
        .Q(last_burst_length[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_length_reg[3] 
       (.C(fifo_wr_clk),
        .CE(SR),
        .D(\last_burst_length_reg[4]_0 [3]),
        .Q(last_burst_length[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_length_reg[4] 
       (.C(fifo_wr_clk),
        .CE(SR),
        .D(\last_burst_length_reg[4]_0 [4]),
        .Q(last_burst_length[4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hACAFACA0)) 
    last_eot_i_1
       (.I0(last_eot_reg_0),
        .I1(last_eot_i_3_n_0),
        .I2(SR),
        .I3(E),
        .I4(last_eot_reg_n_0),
        .O(last_eot_i_1_n_0));
  LUT5 #(
    .INIT(32'h90000090)) 
    last_eot_i_3
       (.I0(beat_counter_reg[3]),
        .I1(last_burst_length[3]),
        .I2(last_eot_i_4_n_0),
        .I3(last_burst_length[4]),
        .I4(beat_counter_reg[4]),
        .O(last_eot_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_eot_i_4
       (.I0(beat_counter_reg[0]),
        .I1(last_burst_length[0]),
        .I2(last_burst_length[2]),
        .I3(beat_counter_reg[2]),
        .I4(last_burst_length[1]),
        .I5(beat_counter_reg[1]),
        .O(last_eot_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    last_eot_reg
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(last_eot_i_1_n_0),
        .Q(last_eot_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    last_non_eot_i_1
       (.I0(beat_counter_reg[0]),
        .I1(beat_counter_reg[1]),
        .I2(beat_counter_reg[2]),
        .I3(beat_counter_reg[3]),
        .I4(beat_counter_reg[4]),
        .O(last_non_eot_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    last_non_eot_reg
       (.C(fifo_wr_clk),
        .CE(E),
        .D(last_non_eot_i_1_n_0),
        .Q(last_non_eot),
        .R(SR));
  LUT5 #(
    .INIT(32'hD0000000)) 
    m_ram_reg_i_2
       (.I0(needs_sync_reg_n_0),
        .I1(fifo_wr_sync),
        .I2(fifo_wr_en),
        .I3(active_reg_0),
        .I4(pending_burst),
        .O(E));
  LUT3 #(
    .INIT(8'h80)) 
    \measured_last_burst_length[4]_i_1 
       (.I0(E),
        .I1(last_eot_reg_n_0),
        .I2(src_eot),
        .O(last_load));
  FDRE \measured_last_burst_length_reg[0] 
       (.C(fifo_wr_clk),
        .CE(last_load),
        .D(beat_counter_minus_one[0]),
        .Q(\measured_last_burst_length_reg[4]_0 [0]),
        .R(1'b0));
  FDRE \measured_last_burst_length_reg[1] 
       (.C(fifo_wr_clk),
        .CE(last_load),
        .D(beat_counter_minus_one[1]),
        .Q(\measured_last_burst_length_reg[4]_0 [1]),
        .R(1'b0));
  FDRE \measured_last_burst_length_reg[2] 
       (.C(fifo_wr_clk),
        .CE(last_load),
        .D(beat_counter_minus_one[2]),
        .Q(\measured_last_burst_length_reg[4]_0 [2]),
        .R(1'b0));
  FDRE \measured_last_burst_length_reg[3] 
       (.C(fifo_wr_clk),
        .CE(last_load),
        .D(beat_counter_minus_one[3]),
        .Q(\measured_last_burst_length_reg[4]_0 [3]),
        .R(1'b0));
  FDRE \measured_last_burst_length_reg[4] 
       (.C(fifo_wr_clk),
        .CE(last_load),
        .D(beat_counter_minus_one[4]),
        .Q(\measured_last_burst_length_reg[4]_0 [4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF222FFFFF2222222)) 
    needs_sync_i_1
       (.I0(pending_burst),
        .I1(active_reg_0),
        .I2(last_eot_reg_n_0),
        .I3(src_eot),
        .I4(E),
        .I5(needs_sync_reg_n_0),
        .O(needs_sync_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    needs_sync_reg
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(needs_sync_i_1_n_0),
        .Q(needs_sync_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7F00)) 
    overflow_i_1
       (.I0(active_reg_0),
        .I1(pending_burst),
        .I2(src_enable),
        .I3(fifo_wr_en),
        .O(active_reg_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pending_burst_i_1
       (.I0(pending_burst_i_2_n_0),
        .I1(pending_burst_i_3_n_0),
        .I2(pending_burst_i_4_n_0),
        .I3(pending_burst_i_5_n_0),
        .O(pending_burst_i_1_n_0));
  LUT6 #(
    .INIT(64'h5A5A5A5A5A565A9A)) 
    pending_burst_i_2
       (.I0(Q[3]),
        .I1(last_non_eot_reg_0),
        .I2(\id_reg[3]_0 ),
        .I3(\id_reg[0]_0 ),
        .I4(\id_reg[2]_0 ),
        .I5(\id_reg[1]_0 ),
        .O(pending_burst_i_2_n_0));
  LUT6 #(
    .INIT(64'h565A9A5A9A5A565A)) 
    pending_burst_i_3
       (.I0(Q[1]),
        .I1(last_non_eot_reg_0),
        .I2(\id_reg[1]_0 ),
        .I3(\id_reg[0]_0 ),
        .I4(\id_reg[3]_0 ),
        .I5(\id_reg[2]_0 ),
        .O(pending_burst_i_3_n_0));
  LUT6 #(
    .INIT(64'h5A5A9A5A5A5A565A)) 
    pending_burst_i_4
       (.I0(Q[2]),
        .I1(last_non_eot_reg_0),
        .I2(\id_reg[2]_0 ),
        .I3(\id_reg[1]_0 ),
        .I4(\id_reg[0]_0 ),
        .I5(\id_reg[3]_0 ),
        .O(pending_burst_i_4_n_0));
  LUT6 #(
    .INIT(64'h9A56569A569A9A56)) 
    pending_burst_i_5
       (.I0(Q[0]),
        .I1(last_non_eot_reg_0),
        .I2(\id_reg[0]_0 ),
        .I3(\id_reg[2]_0 ),
        .I4(\id_reg[3]_0 ),
        .I5(\id_reg[1]_0 ),
        .O(pending_burst_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pending_burst_reg
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(pending_burst_i_1_n_0),
        .Q(pending_burst),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \src_beat_counter[4]_i_1 
       (.I0(active_reg_2),
        .I1(last_eot_reg_n_0),
        .I2(src_eot),
        .I3(last_non_eot),
        .I4(E),
        .O(\reset_gen[1].reset_sync_reg[0] ));
  LUT4 #(
    .INIT(16'hA808)) 
    \src_id[3]_i_1 
       (.I0(E),
        .I1(last_non_eot),
        .I2(src_eot),
        .I3(last_eot_reg_n_0),
        .O(last_non_eot_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_dest_mm_axi
   (addr_valid_reg,
    dbg_ids0,
    m_dest_axi_awaddr,
    dbg_status,
    dest_bl_ready,
    dest_req_ready,
    m_dest_axi_bready,
    \id_reg[2] ,
    \id_reg[0] ,
    \id_reg[1] ,
    enabled_reg,
    \id_reg[3] ,
    \id_reg[0]_0 ,
    \id_reg[1]_0 ,
    \id_reg[2]_0 ,
    \id_reg[3]_0 ,
    active__6,
    dest_burst_valid,
    response_data_burst_length,
    m_dest_axi_awlen,
    m_dest_axi_aclk,
    enabled_reg_0,
    id0,
    dest_address_eot,
    data8,
    enabled_reg_1,
    m_dest_axi_awready,
    dest_response_ready,
    Q,
    \up_rdata_reg[27] ,
    \up_rdata_reg[27]_0 ,
    \address_reg[27] ,
    \up_rdata_reg[9] ,
    \up_rdata_reg[11] ,
    addr_valid_i_2,
    \dest_burst_len_data_reg[2] ,
    bl_ready_reg,
    cdc_sync_stage2,
    req_ready_reg,
    req_ready_reg_0,
    dest_burst_info_write,
    \cdc_sync_fifo_ram_reg[1] ,
    \cdc_sync_fifo_ram_reg[1]_0 ,
    E,
    \last_burst_len_reg[4] );
  output addr_valid_reg;
  output [7:0]dbg_ids0;
  output [27:0]m_dest_axi_awaddr;
  output [0:0]dbg_status;
  output dest_bl_ready;
  output dest_req_ready;
  output m_dest_axi_bready;
  output \id_reg[2] ;
  output \id_reg[0] ;
  output \id_reg[1] ;
  output enabled_reg;
  output \id_reg[3] ;
  output \id_reg[0]_0 ;
  output \id_reg[1]_0 ;
  output \id_reg[2]_0 ;
  output \id_reg[3]_0 ;
  output active__6;
  output dest_burst_valid;
  output [7:0]response_data_burst_length;
  output [4:0]m_dest_axi_awlen;
  input m_dest_axi_aclk;
  input [0:0]enabled_reg_0;
  input id0;
  input dest_address_eot;
  input [3:0]data8;
  input enabled_reg_1;
  input m_dest_axi_awready;
  input dest_response_ready;
  input [0:0]Q;
  input \up_rdata_reg[27] ;
  input \up_rdata_reg[27]_0 ;
  input [27:0]\address_reg[27] ;
  input [0:0]\up_rdata_reg[9] ;
  input [0:0]\up_rdata_reg[11] ;
  input [1:0]addr_valid_i_2;
  input [3:0]\dest_burst_len_data_reg[2] ;
  input bl_ready_reg;
  input cdc_sync_stage2;
  input req_ready_reg;
  input req_ready_reg_0;
  input dest_burst_info_write;
  input [5:0]\cdc_sync_fifo_ram_reg[1] ;
  input [1:0]\cdc_sync_fifo_ram_reg[1]_0 ;
  input [0:0]E;
  input [4:0]\last_burst_len_reg[4] ;

  wire [0:0]E;
  wire [0:0]Q;
  wire active__6;
  wire [1:0]addr_valid_i_2;
  wire addr_valid_reg;
  wire address_enabled;
  wire [27:0]\address_reg[27] ;
  wire bl_ready_reg;
  wire [5:0]\cdc_sync_fifo_ram_reg[1] ;
  wire [1:0]\cdc_sync_fifo_ram_reg[1]_0 ;
  wire cdc_sync_stage2;
  wire [3:0]data8;
  wire [7:0]dbg_ids0;
  wire [0:0]dbg_status;
  wire dest_address_eot;
  wire dest_bl_ready;
  wire dest_burst_info_write;
  wire [3:0]\dest_burst_len_data_reg[2] ;
  wire dest_burst_valid;
  wire dest_req_ready;
  wire dest_response_ready;
  wire enabled_reg;
  wire [0:0]enabled_reg_0;
  wire enabled_reg_1;
  wire id0;
  wire \id_reg[0] ;
  wire \id_reg[0]_0 ;
  wire \id_reg[1] ;
  wire \id_reg[1]_0 ;
  wire \id_reg[2] ;
  wire \id_reg[2]_0 ;
  wire \id_reg[3] ;
  wire \id_reg[3]_0 ;
  wire [4:0]\last_burst_len_reg[4] ;
  wire m_dest_axi_aclk;
  wire [27:0]m_dest_axi_awaddr;
  wire [4:0]m_dest_axi_awlen;
  wire m_dest_axi_awready;
  wire m_dest_axi_bready;
  wire req_ready_reg;
  wire req_ready_reg_0;
  wire [7:0]response_data_burst_length;
  wire [0:0]\up_rdata_reg[11] ;
  wire \up_rdata_reg[27] ;
  wire \up_rdata_reg[27]_0 ;
  wire [0:0]\up_rdata_reg[9] ;
  wire [1:0]NLW_bl_mem_reg_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_bl_mem_reg_0_15_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_bl_mem_reg_0_15_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_bl_mem_reg_0_15_6_7_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "i_transfer/i_request_arb/i_dest_dma_mm/bl_mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M bl_mem_reg_0_15_0_5
       (.ADDRA({1'b0,dbg_ids0[7:4]}),
        .ADDRB({1'b0,dbg_ids0[7:4]}),
        .ADDRC({1'b0,dbg_ids0[7:4]}),
        .ADDRD({1'b0,data8[3:2],\cdc_sync_fifo_ram_reg[1]_0 }),
        .DIA({1'b1,1'b1}),
        .DIB(\cdc_sync_fifo_ram_reg[1] [1:0]),
        .DIC(\cdc_sync_fifo_ram_reg[1] [3:2]),
        .DID({1'b0,1'b0}),
        .DOA(response_data_burst_length[1:0]),
        .DOB(response_data_burst_length[3:2]),
        .DOC(response_data_burst_length[5:4]),
        .DOD(NLW_bl_mem_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(m_dest_axi_aclk),
        .WE(dest_burst_info_write));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "i_transfer/i_request_arb/i_dest_dma_mm/bl_mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32M bl_mem_reg_0_15_6_7
       (.ADDRA({1'b0,dbg_ids0[7:4]}),
        .ADDRB({1'b0,dbg_ids0[7:4]}),
        .ADDRC({1'b0,dbg_ids0[7:4]}),
        .ADDRD({1'b0,data8[3:2],\cdc_sync_fifo_ram_reg[1]_0 }),
        .DIA(\cdc_sync_fifo_ram_reg[1] [5:4]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(response_data_burst_length[7:6]),
        .DOB(NLW_bl_mem_reg_0_15_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_bl_mem_reg_0_15_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_bl_mem_reg_0_15_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(m_dest_axi_aclk),
        .WE(dest_burst_info_write));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_address_generator i_addr_gen
       (.E(E),
        .Q(Q),
        .addr_valid_i_2_0(addr_valid_i_2),
        .addr_valid_reg_0(addr_valid_reg),
        .address_enabled(address_enabled),
        .\address_reg[27]_0 (\address_reg[27] ),
        .bl_ready_reg_0(bl_ready_reg),
        .cdc_sync_stage2(cdc_sync_stage2),
        .data8(data8[1:0]),
        .dest_address_eot(dest_address_eot),
        .dest_bl_ready(dest_bl_ready),
        .\dest_burst_len_data_reg[2] (\dest_burst_len_data_reg[2] ),
        .dest_burst_valid(dest_burst_valid),
        .enabled_reg_0(enabled_reg_0),
        .enabled_reg_1(enabled_reg_1),
        .\id_reg[0]_0 (dbg_ids0[0]),
        .\id_reg[0]_1 (\id_reg[0] ),
        .\id_reg[1]_0 (dbg_ids0[1]),
        .\id_reg[1]_1 (\id_reg[1] ),
        .\id_reg[2]_0 (dbg_ids0[2]),
        .\id_reg[2]_1 (\id_reg[2] ),
        .\id_reg[3]_0 (dbg_ids0[3]),
        .\id_reg[3]_1 (\id_reg[3] ),
        .\last_burst_len_reg[4]_0 (\last_burst_len_reg[4] ),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_awaddr(m_dest_axi_awaddr),
        .m_dest_axi_awlen(m_dest_axi_awlen),
        .m_dest_axi_awready(m_dest_axi_awready),
        .req_ready_reg_0(dest_req_ready),
        .req_ready_reg_1(req_ready_reg),
        .req_ready_reg_2(req_ready_reg_0),
        .\up_rdata_reg[11] (\up_rdata_reg[27] ),
        .\up_rdata_reg[11]_0 (\up_rdata_reg[27]_0 ),
        .\up_rdata_reg[11]_1 (\up_rdata_reg[11] ),
        .\up_rdata_reg[9] (\up_rdata_reg[9] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_response_handler i_response_handler
       (.active__6(active__6),
        .address_enabled(address_enabled),
        .dbg_ids0(dbg_ids0[2:1]),
        .dbg_status(dbg_status),
        .dest_response_ready(dest_response_ready),
        .enabled_reg_0(enabled_reg),
        .enabled_reg_1(enabled_reg_0),
        .id(dbg_ids0[7:4]),
        .id0(id0),
        .\id_reg[0]_0 (\id_reg[0]_0 ),
        .\id_reg[1]_0 (\id_reg[1]_0 ),
        .\id_reg[2]_0 (\id_reg[2]_0 ),
        .\id_reg[3]_0 (\id_reg[3]_0 ),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_awaddr({m_dest_axi_awaddr[25:22],m_dest_axi_awaddr[2]}),
        .m_dest_axi_bready(m_dest_axi_bready),
        .m_dest_axi_bready_0(dbg_ids0[0]),
        .m_dest_axi_bready_1(dbg_ids0[3]),
        .\up_rdata_reg[27] (\up_rdata_reg[27] ),
        .\up_rdata_reg[27]_0 (\up_rdata_reg[27]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_request_arb
   (m_dest_axi_wdata,
    g,
    addr_valid_reg,
    fifo_wr_overflow,
    s_axis_waddr_reg,
    \cdc_sync_stage2_reg[0] ,
    req_ready_reg,
    req_eot_reg,
    m_dest_axi_awaddr,
    response_valid_reg,
    dbg_status,
    active_reg,
    dest_mem_data_valid_reg,
    m_dest_axi_wlast,
    E,
    up_eot,
    \state_reg[2] ,
    up_bl_partial,
    p_7_in,
    m_dest_axi_bready,
    src_request_id,
    \id_reg[2] ,
    \id_reg[0] ,
    \id_reg[1] ,
    enabled_reg,
    \cdc_sync_stage2_reg[2] ,
    \cdc_sync_stage2_reg[3] ,
    \id_reg[3] ,
    \dest_id_reg[0] ,
    \dest_id_reg[1] ,
    \dest_id_reg[2] ,
    \dest_id_reg[3] ,
    \id_reg[0]_0 ,
    \id_reg[1]_0 ,
    \id_reg[2]_0 ,
    \id_reg[3]_0 ,
    \cdc_sync_stage2_reg[1] ,
    \state_reg[1] ,
    \measured_burst_length_reg[6] ,
    m_dest_axi_awlen,
    m_dest_axi_aclk,
    fifo_wr_clk,
    fifo_wr_din,
    Q,
    s_axi_aclk,
    \src_id_reg[0] ,
    dest_valid_reg,
    m_dest_axi_wready,
    s_axis_waddr_reg_0,
    up_dma_req_valid,
    up_response_ready,
    p_3_in,
    m_dest_axi_awready,
    m_dest_axi_bvalid,
    fifo_wr_sync,
    fifo_wr_en,
    src_enable,
    \up_rdata_reg[3] ,
    \up_rdata_reg[3]_0 ,
    \burst_count_reg[16] ,
    \up_rdata_reg[11] ,
    up_clear_tl,
    D);
  output [31:0]m_dest_axi_wdata;
  output [3:0]g;
  output addr_valid_reg;
  output fifo_wr_overflow;
  output s_axis_waddr_reg;
  output \cdc_sync_stage2_reg[0] ;
  output req_ready_reg;
  output req_eot_reg;
  output [27:0]m_dest_axi_awaddr;
  output response_valid_reg;
  output [0:0]dbg_status;
  output active_reg;
  output dest_mem_data_valid_reg;
  output m_dest_axi_wlast;
  output [0:0]E;
  output up_eot;
  output [2:0]\state_reg[2] ;
  output up_bl_partial;
  output p_7_in;
  output m_dest_axi_bready;
  output [3:0]src_request_id;
  output \id_reg[2] ;
  output \id_reg[0] ;
  output \id_reg[1] ;
  output enabled_reg;
  output \cdc_sync_stage2_reg[2] ;
  output \cdc_sync_stage2_reg[3] ;
  output \id_reg[3] ;
  output \dest_id_reg[0] ;
  output \dest_id_reg[1] ;
  output \dest_id_reg[2] ;
  output \dest_id_reg[3] ;
  output \id_reg[0]_0 ;
  output \id_reg[1]_0 ;
  output \id_reg[2]_0 ;
  output \id_reg[3]_0 ;
  output [1:0]\cdc_sync_stage2_reg[1] ;
  output \state_reg[1] ;
  output [6:0]\measured_burst_length_reg[6] ;
  output [4:0]m_dest_axi_awlen;
  input m_dest_axi_aclk;
  input fifo_wr_clk;
  input [31:0]fifo_wr_din;
  input [0:0]Q;
  input s_axi_aclk;
  input [0:0]\src_id_reg[0] ;
  input [0:0]dest_valid_reg;
  input m_dest_axi_wready;
  input s_axis_waddr_reg_0;
  input up_dma_req_valid;
  input up_response_ready;
  input [0:0]p_3_in;
  input m_dest_axi_awready;
  input m_dest_axi_bvalid;
  input fifo_wr_sync;
  input fifo_wr_en;
  input src_enable;
  input \up_rdata_reg[3] ;
  input \up_rdata_reg[3]_0 ;
  input [16:0]\burst_count_reg[16] ;
  input [1:0]\up_rdata_reg[11] ;
  input up_clear_tl;
  input [32:0]D;

  wire [32:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire active_reg;
  wire addr_valid_reg;
  wire [16:0]\burst_count_reg[16] ;
  wire cdc_sync_stage2;
  wire \cdc_sync_stage2_reg[0] ;
  wire [1:0]\cdc_sync_stage2_reg[1] ;
  wire \cdc_sync_stage2_reg[2] ;
  wire \cdc_sync_stage2_reg[3] ;
  wire [29:2]data;
  wire [19:2]data8;
  wire [27:8]dbg_ids0;
  wire [0:0]dbg_status;
  wire dest_address_eot;
  wire dest_bl_ready;
  wire dest_burst_info_write;
  wire [4:0]dest_burst_len;
  wire dest_burst_valid;
  wire [1:0]dest_id_reduced_next;
  wire \dest_id_reg[0] ;
  wire \dest_id_reg[1] ;
  wire \dest_id_reg[2] ;
  wire \dest_id_reg[3] ;
  wire dest_mem_data_valid_reg;
  wire dest_req_ready;
  wire dest_response_eot;
  wire dest_response_ready;
  wire [0:0]dest_valid_reg;
  wire enabled_reg;
  wire fifo_wr_clk;
  wire [31:0]fifo_wr_din;
  wire fifo_wr_en;
  wire fifo_wr_overflow;
  wire fifo_wr_sync;
  wire [3:0]g;
  wire \i_addr_gen/last_burst_len0 ;
  wire \i_data_mover/active0 ;
  wire i_dest_req_fifo_n_0;
  wire i_dest_req_fifo_n_1;
  wire i_dest_req_fifo_n_3;
  wire i_dest_req_fifo_n_4;
  wire \i_response_handler/active__6 ;
  wire \i_response_handler/id0 ;
  wire i_src_dest_bl_fifo_n_0;
  wire i_src_dest_bl_fifo_n_2;
  wire i_src_dest_bl_fifo_n_3;
  wire i_src_dest_bl_fifo_n_5;
  wire i_src_dest_bl_fifo_n_6;
  wire i_src_dest_bl_fifo_n_7;
  wire i_src_dest_bl_fifo_n_8;
  wire i_src_dest_bl_fifo_n_9;
  wire i_src_req_fifo_n_1;
  wire i_src_req_fifo_n_2;
  wire i_src_req_fifo_n_6;
  wire i_store_and_forward_n_37;
  wire i_store_and_forward_n_43;
  wire i_store_and_forward_n_52;
  wire i_store_and_forward_n_58;
  wire \id_reg[0] ;
  wire \id_reg[0]_0 ;
  wire \id_reg[1] ;
  wire \id_reg[1]_0 ;
  wire \id_reg[2] ;
  wire \id_reg[2]_0 ;
  wire \id_reg[3] ;
  wire \id_reg[3]_0 ;
  wire [2:1]inc_id_return;
  wire m_dest_axi_aclk;
  wire [27:0]m_dest_axi_awaddr;
  wire [4:0]m_dest_axi_awlen;
  wire m_dest_axi_awready;
  wire m_dest_axi_bready;
  wire m_dest_axi_bvalid;
  wire [31:0]m_dest_axi_wdata;
  wire m_dest_axi_wlast;
  wire m_dest_axi_wready;
  wire [6:0]\measured_burst_length_reg[6] ;
  wire [4:0]measured_last_burst_length;
  wire p_0_in12_in;
  wire p_0_in1_in;
  wire p_1_in;
  wire [0:0]p_3_in;
  wire p_7_in;
  wire req_eot_reg;
  wire req_gen_valid__0;
  wire [4:0]req_last_burst_length;
  wire req_ready_reg;
  wire request_eot;
  wire [3:0]request_id;
  wire [7:0]response_data_burst_length;
  wire response_valid_reg;
  wire s_axi_aclk;
  wire [28:1]s_axis_data__0;
  wire s_axis_waddr_reg;
  wire s_axis_waddr_reg_0;
  wire src_beat_counter0;
  wire src_bl_valid;
  wire src_dest_valid_hs;
  wire src_enable;
  wire src_eot;
  wire [0:0]\src_id_reg[0] ;
  wire src_last_beat__0;
  wire [27:0]src_req_dest_address;
  wire src_req_ready;
  wire [3:0]src_request_id;
  wire src_throttled_request_id0;
  wire \src_throttled_request_id[0]_i_1_n_0 ;
  wire \src_throttled_request_id[3]_i_2_n_0 ;
  wire \src_throttled_request_id_reg_n_0_[0] ;
  wire \src_throttled_request_id_reg_n_0_[1] ;
  wire src_valid;
  wire \state_reg[1] ;
  wire [2:0]\state_reg[2] ;
  wire up_bl_partial;
  wire up_clear_tl;
  wire up_dma_req_valid;
  wire up_eot;
  wire [1:0]\up_rdata_reg[11] ;
  wire \up_rdata_reg[3] ;
  wire \up_rdata_reg[3]_0 ;
  wire up_response_ready;
  wire NLW_eot_mem_dest_reg_r1_0_15_0_0_SPO_UNCONNECTED;
  wire NLW_eot_mem_dest_reg_r2_0_15_0_0_SPO_UNCONNECTED;
  wire NLW_eot_mem_src_reg_0_15_0_0_SPO_UNCONNECTED;

  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    eot_mem_dest_reg_r1_0_15_0_0
       (.A0(g[0]),
        .A1(g[1]),
        .A2(g[2]),
        .A3(g[3]),
        .A4(1'b0),
        .D(src_eot),
        .DPO(dest_response_eot),
        .DPRA0(dbg_ids0[24]),
        .DPRA1(dbg_ids0[25]),
        .DPRA2(dbg_ids0[26]),
        .DPRA3(dbg_ids0[27]),
        .DPRA4(1'b0),
        .SPO(NLW_eot_mem_dest_reg_r1_0_15_0_0_SPO_UNCONNECTED),
        .WCLK(fifo_wr_clk),
        .WE(1'b1));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    eot_mem_dest_reg_r2_0_15_0_0
       (.A0(g[0]),
        .A1(g[1]),
        .A2(g[2]),
        .A3(g[3]),
        .A4(1'b0),
        .D(src_eot),
        .DPO(dest_address_eot),
        .DPRA0(dbg_ids0[8]),
        .DPRA1(dbg_ids0[9]),
        .DPRA2(dbg_ids0[10]),
        .DPRA3(dbg_ids0[11]),
        .DPRA4(1'b0),
        .SPO(NLW_eot_mem_dest_reg_r2_0_15_0_0_SPO_UNCONNECTED),
        .WCLK(fifo_wr_clk),
        .WE(1'b1));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    eot_mem_src_reg_0_15_0_0
       (.A0(request_id[0]),
        .A1(request_id[1]),
        .A2(request_id[2]),
        .A3(request_id[3]),
        .A4(1'b0),
        .D(request_eot),
        .DPO(src_eot),
        .DPRA0(g[0]),
        .DPRA1(g[1]),
        .DPRA2(g[2]),
        .DPRA3(g[3]),
        .DPRA4(1'b0),
        .SPO(NLW_eot_mem_src_reg_0_15_0_0_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(1'b1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_dest_mm_axi i_dest_dma_mm
       (.E(\i_addr_gen/last_burst_len0 ),
        .Q(Q),
        .active__6(\i_response_handler/active__6 ),
        .addr_valid_i_2(\cdc_sync_stage2_reg[1] ),
        .addr_valid_reg(addr_valid_reg),
        .\address_reg[27] (data),
        .bl_ready_reg(i_src_dest_bl_fifo_n_2),
        .\cdc_sync_fifo_ram_reg[1] ({i_store_and_forward_n_52,dest_burst_len}),
        .\cdc_sync_fifo_ram_reg[1]_0 (dbg_ids0[17:16]),
        .cdc_sync_stage2(cdc_sync_stage2),
        .data8({data8[19:18],data8[3:2]}),
        .dbg_ids0({dbg_ids0[27:24],dbg_ids0[11:8]}),
        .dbg_status(dbg_status),
        .dest_address_eot(dest_address_eot),
        .dest_bl_ready(dest_bl_ready),
        .dest_burst_info_write(dest_burst_info_write),
        .\dest_burst_len_data_reg[2] ({i_store_and_forward_n_37,p_0_in12_in,dest_id_reduced_next}),
        .dest_burst_valid(dest_burst_valid),
        .dest_req_ready(dest_req_ready),
        .dest_response_ready(dest_response_ready),
        .enabled_reg(enabled_reg),
        .enabled_reg_0(dest_valid_reg),
        .enabled_reg_1(s_axis_waddr_reg_0),
        .id0(\i_response_handler/id0 ),
        .\id_reg[0] (\id_reg[0] ),
        .\id_reg[0]_0 (\id_reg[0]_0 ),
        .\id_reg[1] (\id_reg[1] ),
        .\id_reg[1]_0 (\id_reg[1]_0 ),
        .\id_reg[2] (\id_reg[2] ),
        .\id_reg[2]_0 (\id_reg[2]_0 ),
        .\id_reg[3] (\id_reg[3] ),
        .\id_reg[3]_0 (\id_reg[3]_0 ),
        .\last_burst_len_reg[4] ({i_src_dest_bl_fifo_n_5,i_src_dest_bl_fifo_n_6,i_src_dest_bl_fifo_n_7,i_src_dest_bl_fifo_n_8,i_src_dest_bl_fifo_n_9}),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_awaddr(m_dest_axi_awaddr),
        .m_dest_axi_awlen(m_dest_axi_awlen),
        .m_dest_axi_awready(m_dest_axi_awready),
        .m_dest_axi_bready(m_dest_axi_bready),
        .req_ready_reg(i_dest_req_fifo_n_1),
        .req_ready_reg_0(i_dest_req_fifo_n_0),
        .response_data_burst_length(response_data_burst_length),
        .\up_rdata_reg[11] (\up_rdata_reg[11] [1]),
        .\up_rdata_reg[27] (\up_rdata_reg[3] ),
        .\up_rdata_reg[27]_0 (\up_rdata_reg[3]_0 ),
        .\up_rdata_reg[9] (\src_id_reg[0] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized1 i_dest_req_fifo
       (.E(\i_data_mover/active0 ),
        .Q(data),
        .\cdc_sync_fifo_ram_reg[28]_0 (s_axis_data__0),
        .\cdc_sync_stage1_reg[0] (dest_valid_reg),
        .\cdc_sync_stage1_reg[0]_0 (\src_id_reg[0] ),
        .\cdc_sync_stage2_reg[0] (i_dest_req_fifo_n_0),
        .\cdc_sync_stage2_reg[0]_0 (i_dest_req_fifo_n_3),
        .\cdc_sync_stage2_reg[0]_1 (i_dest_req_fifo_n_4),
        .dest_req_ready(dest_req_ready),
        .fifo_wr_clk(fifo_wr_clk),
        .m_axis_raddr_reg_0(i_dest_req_fifo_n_1),
        .m_axis_raddr_reg_1(i_src_req_fifo_n_1),
        .m_axis_raddr_reg_2(i_src_req_fifo_n_2),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .src_dest_valid_hs(src_dest_valid_hs),
        .src_req_ready(src_req_ready));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_request_generator i_req_gen
       (.Q(Q),
        .\burst_count_reg[0]_0 (s_axis_waddr_reg_0),
        .\burst_count_reg[16]_0 (\burst_count_reg[16] ),
        .dbg_ids0(dbg_ids0[27:24]),
        .\id_reg[3]_0 (request_id),
        .req_gen_valid__0(req_gen_valid__0),
        .req_ready_reg_0(req_ready_reg),
        .request_eot(request_eot),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_response_manager i_response_manager
       (.D({response_data_burst_length[6:0],response_data_burst_length[7],dest_response_eot}),
        .Q(Q),
        .active__6(\i_response_handler/active__6 ),
        .dest_response_ready(dest_response_ready),
        .id0(\i_response_handler/id0 ),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_bvalid(m_dest_axi_bvalid),
        .\measured_burst_length_reg[6]_0 (\measured_burst_length_reg[6] ),
        .p_3_in(p_3_in),
        .p_7_in(p_7_in),
        .req_eot_reg_0(req_eot_reg),
        .response_valid_reg_0(response_valid_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axis_waddr_reg(dest_valid_reg),
        .\state_reg[1]_0 (\state_reg[1] ),
        .\state_reg[2]_0 (\state_reg[2] ),
        .up_bl_partial(up_bl_partial),
        .up_clear_tl(up_clear_tl),
        .up_eot(up_eot),
        .up_response_ready(up_response_ready));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized0 i_src_dest_bl_fifo
       (.E(\i_addr_gen/last_burst_len0 ),
        .Q({i_src_dest_bl_fifo_n_5,i_src_dest_bl_fifo_n_6,i_src_dest_bl_fifo_n_7,i_src_dest_bl_fifo_n_8,i_src_dest_bl_fifo_n_9}),
        .\cdc_sync_fifo_ram_reg[4]_0 (measured_last_burst_length),
        .\cdc_sync_stage1_reg[0] (dest_valid_reg),
        .\cdc_sync_stage1_reg[0]_0 (\src_id_reg[0] ),
        .cdc_sync_stage2(cdc_sync_stage2),
        .\cdc_sync_stage2_reg[0] (i_src_dest_bl_fifo_n_3),
        .dest_bl_ready(dest_bl_ready),
        .fifo_wr_clk(fifo_wr_clk),
        .m_axis_raddr_reg_0(i_src_dest_bl_fifo_n_2),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .s_axis_waddr_reg_0(i_src_dest_bl_fifo_n_0),
        .src_bl_valid(src_bl_valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_src_fifo_inf i_src_dma_fifo
       (.E(\i_data_mover/active0 ),
        .Q({p_1_in,p_0_in1_in,\src_throttled_request_id_reg_n_0_[1] ,\src_throttled_request_id_reg_n_0_[0] }),
        .SR(src_beat_counter0),
        .SS(src_req_ready),
        .active_reg(active_reg),
        .active_reg_0(\src_id_reg[0] ),
        .bl_valid_reg(i_src_dest_bl_fifo_n_0),
        .bl_valid_reg_0(i_src_dest_bl_fifo_n_3),
        .fifo_wr_clk(fifo_wr_clk),
        .fifo_wr_en(fifo_wr_en),
        .fifo_wr_overflow(fifo_wr_overflow),
        .fifo_wr_sync(fifo_wr_sync),
        .\id_reg[0] (g[0]),
        .\id_reg[1] (g[1]),
        .\id_reg[2] (g[2]),
        .\id_reg[3] (g[3]),
        .\last_burst_length_reg[4] (req_last_burst_length),
        .last_eot_reg(i_src_req_fifo_n_6),
        .\measured_last_burst_length_reg[4] (measured_last_burst_length),
        .src_bl_valid(src_bl_valid),
        .src_enable(src_enable),
        .src_eot(src_eot),
        .src_last_beat__0(src_last_beat__0),
        .src_valid(src_valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized2 i_src_req_fifo
       (.D(D),
        .E(E),
        .Q(Q),
        .\cdc_sync_fifo_ram_reg[64]_0 ({src_req_dest_address,req_last_burst_length}),
        .\cdc_sync_fifo_ram_reg[7]_0 (i_src_req_fifo_n_6),
        .\cdc_sync_stage1_reg[0] (\src_id_reg[0] ),
        .\cdc_sync_stage2_reg[0] (i_src_req_fifo_n_1),
        .\cdc_sync_stage2_reg[0]_0 (\cdc_sync_stage2_reg[0] ),
        .fifo_wr_clk(fifo_wr_clk),
        .m_axis_raddr_reg_0(i_src_req_fifo_n_2),
        .m_axis_raddr_reg_1(i_dest_req_fifo_n_4),
        .req_gen_valid__0(req_gen_valid__0),
        .s_axi_aclk(s_axi_aclk),
        .s_axis_waddr_reg_0(s_axis_waddr_reg),
        .s_axis_waddr_reg_1(req_ready_reg),
        .s_axis_waddr_reg_2(s_axis_waddr_reg_0),
        .up_dma_req_valid(up_dma_req_valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dmac_burst_memory i_store_and_forward
       (.E(src_valid),
        .Q({data8[19:18],dbg_ids0[17:16]}),
        .SR(src_beat_counter0),
        .\cdc_sync_stage2_reg[1] (\cdc_sync_stage2_reg[1] ),
        .\cdc_sync_stage2_reg[2] (\cdc_sync_stage2_reg[2] ),
        .\cdc_sync_stage2_reg[3] (\cdc_sync_stage2_reg[3] ),
        .data8(data8[3:2]),
        .dest_burst_info_write(dest_burst_info_write),
        .\dest_burst_len_data_reg[7]_0 ({i_store_and_forward_n_52,dest_burst_len}),
        .dest_burst_valid(dest_burst_valid),
        .\dest_id_next_reg[3]_0 ({i_store_and_forward_n_37,p_0_in12_in,dest_id_reduced_next}),
        .\dest_id_reg[0]_0 (\dest_id_reg[0] ),
        .\dest_id_reg[1]_0 (\dest_id_reg[1] ),
        .\dest_id_reg[2]_0 (\dest_id_reg[2] ),
        .\dest_id_reg[3]_0 (\dest_id_reg[3] ),
        .dest_mem_data_valid_reg_0(dest_mem_data_valid_reg),
        .dest_valid_reg_0(dest_valid_reg),
        .fifo_wr_clk(fifo_wr_clk),
        .fifo_wr_din(fifo_wr_din),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_awaddr({m_dest_axi_awaddr[17:14],m_dest_axi_awaddr[1:0]}),
        .m_dest_axi_wdata(m_dest_axi_wdata),
        .m_dest_axi_wlast(m_dest_axi_wlast),
        .m_dest_axi_wready(m_dest_axi_wready),
        .\src_id_reg[0]_0 (\src_id_reg[0] ),
        .src_last_beat__0(src_last_beat__0),
        .\src_throttled_request_id_reg[0] (i_store_and_forward_n_58),
        .\src_throttled_request_id_reg[0]_0 ({p_1_in,p_0_in1_in,\src_throttled_request_id_reg_n_0_[1] ,\src_throttled_request_id_reg_n_0_[0] }),
        .\src_throttled_request_id_reg[2] (i_store_and_forward_n_43),
        .\up_rdata_reg[2] (\up_rdata_reg[11] [0]),
        .\up_rdata_reg[3] (\up_rdata_reg[3] ),
        .\up_rdata_reg[3]_0 (\up_rdata_reg[3]_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized1 i_sync_src_request_id
       (.E(src_throttled_request_id0),
        .Q({p_1_in,p_0_in1_in,\src_throttled_request_id_reg_n_0_[1] ,\src_throttled_request_id_reg_n_0_[0] }),
        .\cdc_sync_stage1_reg[3]_0 (request_id),
        .fifo_wr_clk(fifo_wr_clk),
        .src_request_id(src_request_id),
        .\src_throttled_request_id_reg[0] (i_store_and_forward_n_43),
        .\src_throttled_request_id_reg[0]_0 (i_store_and_forward_n_58));
  FDRE #(
    .INIT(1'b0)) 
    src_dest_valid_hs_reg
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(i_dest_req_fifo_n_3),
        .Q(src_dest_valid_hs),
        .R(\src_id_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[0] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[0]),
        .Q(s_axis_data__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[10] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[10]),
        .Q(s_axis_data__0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[11] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[11]),
        .Q(s_axis_data__0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[12] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[12]),
        .Q(s_axis_data__0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[13] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[13]),
        .Q(s_axis_data__0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[14] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[14]),
        .Q(s_axis_data__0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[15] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[15]),
        .Q(s_axis_data__0[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[16] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[16]),
        .Q(s_axis_data__0[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[17] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[17]),
        .Q(s_axis_data__0[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[18] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[18]),
        .Q(s_axis_data__0[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[19] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[19]),
        .Q(s_axis_data__0[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[1] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[1]),
        .Q(s_axis_data__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[20] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[20]),
        .Q(s_axis_data__0[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[21] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[21]),
        .Q(s_axis_data__0[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[22] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[22]),
        .Q(s_axis_data__0[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[23] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[23]),
        .Q(s_axis_data__0[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[24] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[24]),
        .Q(s_axis_data__0[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[25] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[25]),
        .Q(s_axis_data__0[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[26] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[26]),
        .Q(s_axis_data__0[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[27] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[27]),
        .Q(s_axis_data__0[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[2] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[2]),
        .Q(s_axis_data__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[3] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[3]),
        .Q(s_axis_data__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[4] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[4]),
        .Q(s_axis_data__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[5] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[5]),
        .Q(s_axis_data__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[6] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[6]),
        .Q(s_axis_data__0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[7] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[7]),
        .Q(s_axis_data__0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[8] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[8]),
        .Q(s_axis_data__0[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[9] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[9]),
        .Q(s_axis_data__0[10]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \src_throttled_request_id[0]_i_1 
       (.I0(\src_throttled_request_id_reg_n_0_[1] ),
        .I1(p_1_in),
        .I2(p_0_in1_in),
        .O(\src_throttled_request_id[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h99F0)) 
    \src_throttled_request_id[1]_i_1 
       (.I0(p_0_in1_in),
        .I1(p_1_in),
        .I2(\src_throttled_request_id_reg_n_0_[1] ),
        .I3(\src_throttled_request_id_reg_n_0_[0] ),
        .O(inc_id_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hD1F0)) 
    \src_throttled_request_id[2]_i_1 
       (.I0(p_1_in),
        .I1(\src_throttled_request_id_reg_n_0_[0] ),
        .I2(p_0_in1_in),
        .I3(\src_throttled_request_id_reg_n_0_[1] ),
        .O(inc_id_return[2]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hFE04)) 
    \src_throttled_request_id[3]_i_2 
       (.I0(\src_throttled_request_id_reg_n_0_[1] ),
        .I1(p_0_in1_in),
        .I2(\src_throttled_request_id_reg_n_0_[0] ),
        .I3(p_1_in),
        .O(\src_throttled_request_id[3]_i_2_n_0 ));
  FDRE \src_throttled_request_id_reg[0] 
       (.C(fifo_wr_clk),
        .CE(src_throttled_request_id0),
        .D(\src_throttled_request_id[0]_i_1_n_0 ),
        .Q(\src_throttled_request_id_reg_n_0_[0] ),
        .R(\src_id_reg[0] ));
  FDRE \src_throttled_request_id_reg[1] 
       (.C(fifo_wr_clk),
        .CE(src_throttled_request_id0),
        .D(inc_id_return[1]),
        .Q(\src_throttled_request_id_reg_n_0_[1] ),
        .R(\src_id_reg[0] ));
  FDRE \src_throttled_request_id_reg[2] 
       (.C(fifo_wr_clk),
        .CE(src_throttled_request_id0),
        .D(inc_id_return[2]),
        .Q(p_0_in1_in),
        .R(\src_id_reg[0] ));
  FDRE \src_throttled_request_id_reg[3] 
       (.C(fifo_wr_clk),
        .CE(src_throttled_request_id0),
        .D(\src_throttled_request_id[3]_i_2_n_0 ),
        .Q(p_1_in),
        .R(\src_id_reg[0] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_request_generator
   (req_ready_reg_0,
    request_eot,
    \id_reg[3]_0 ,
    Q,
    s_axi_aclk,
    req_gen_valid__0,
    dbg_ids0,
    \burst_count_reg[0]_0 ,
    \burst_count_reg[16]_0 );
  output req_ready_reg_0;
  output request_eot;
  output [3:0]\id_reg[3]_0 ;
  input [0:0]Q;
  input s_axi_aclk;
  input req_gen_valid__0;
  input [3:0]dbg_ids0;
  input \burst_count_reg[0]_0 ;
  input [16:0]\burst_count_reg[16]_0 ;

  wire [0:0]Q;
  wire b2g2_return01_out;
  wire b2g2_return03_out;
  wire [16:0]burst_count;
  wire [16:1]burst_count0;
  wire burst_count0_carry__0_i_1_n_0;
  wire burst_count0_carry__0_i_2_n_0;
  wire burst_count0_carry__0_i_3_n_0;
  wire burst_count0_carry__0_i_4_n_0;
  wire burst_count0_carry__0_n_0;
  wire burst_count0_carry__0_n_1;
  wire burst_count0_carry__0_n_2;
  wire burst_count0_carry__0_n_3;
  wire burst_count0_carry__1_i_1_n_0;
  wire burst_count0_carry__1_i_2_n_0;
  wire burst_count0_carry__1_i_3_n_0;
  wire burst_count0_carry__1_i_4_n_0;
  wire burst_count0_carry__1_n_0;
  wire burst_count0_carry__1_n_1;
  wire burst_count0_carry__1_n_2;
  wire burst_count0_carry__1_n_3;
  wire burst_count0_carry__2_i_1_n_0;
  wire burst_count0_carry__2_i_2_n_0;
  wire burst_count0_carry__2_i_3_n_0;
  wire burst_count0_carry__2_i_4_n_0;
  wire burst_count0_carry__2_n_1;
  wire burst_count0_carry__2_n_2;
  wire burst_count0_carry__2_n_3;
  wire burst_count0_carry_i_1_n_0;
  wire burst_count0_carry_i_2_n_0;
  wire burst_count0_carry_i_3_n_0;
  wire burst_count0_carry_i_4_n_0;
  wire burst_count0_carry_n_0;
  wire burst_count0_carry_n_1;
  wire burst_count0_carry_n_2;
  wire burst_count0_carry_n_3;
  wire \burst_count[0]_i_1_n_0 ;
  wire \burst_count[10]_i_1_n_0 ;
  wire \burst_count[11]_i_1_n_0 ;
  wire \burst_count[12]_i_1_n_0 ;
  wire \burst_count[13]_i_1_n_0 ;
  wire \burst_count[14]_i_1_n_0 ;
  wire \burst_count[15]_i_1_n_0 ;
  wire \burst_count[16]_i_1_n_0 ;
  wire \burst_count[16]_i_2_n_0 ;
  wire \burst_count[1]_i_1_n_0 ;
  wire \burst_count[2]_i_1_n_0 ;
  wire \burst_count[3]_i_1_n_0 ;
  wire \burst_count[4]_i_1_n_0 ;
  wire \burst_count[5]_i_1_n_0 ;
  wire \burst_count[6]_i_1_n_0 ;
  wire \burst_count[7]_i_1_n_0 ;
  wire \burst_count[8]_i_1_n_0 ;
  wire \burst_count[9]_i_1_n_0 ;
  wire \burst_count_reg[0]_0 ;
  wire [16:0]\burst_count_reg[16]_0 ;
  wire [3:0]dbg_ids0;
  wire eot_mem_src_reg_0_15_0_0_i_2_n_0;
  wire eot_mem_src_reg_0_15_0_0_i_3_n_0;
  wire eot_mem_src_reg_0_15_0_0_i_4_n_0;
  wire id;
  wire \id[0]_i_1__2_n_0 ;
  wire [3:0]\id_reg[3]_0 ;
  wire incr_id0;
  wire [0:0]nx_state__0;
  wire p_1_in2_in;
  wire p_4_in;
  wire req_gen_valid__0;
  wire req_ready_i_1__0_n_0;
  wire req_ready_reg_0;
  wire request_eot;
  wire s_axi_aclk;
  wire \state[0]_i_4_n_0 ;
  wire [3:3]NLW_burst_count0_carry__2_CO_UNCONNECTED;

  CARRY4 burst_count0_carry
       (.CI(1'b0),
        .CO({burst_count0_carry_n_0,burst_count0_carry_n_1,burst_count0_carry_n_2,burst_count0_carry_n_3}),
        .CYINIT(burst_count[0]),
        .DI(burst_count[4:1]),
        .O(burst_count0[4:1]),
        .S({burst_count0_carry_i_1_n_0,burst_count0_carry_i_2_n_0,burst_count0_carry_i_3_n_0,burst_count0_carry_i_4_n_0}));
  CARRY4 burst_count0_carry__0
       (.CI(burst_count0_carry_n_0),
        .CO({burst_count0_carry__0_n_0,burst_count0_carry__0_n_1,burst_count0_carry__0_n_2,burst_count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(burst_count[8:5]),
        .O(burst_count0[8:5]),
        .S({burst_count0_carry__0_i_1_n_0,burst_count0_carry__0_i_2_n_0,burst_count0_carry__0_i_3_n_0,burst_count0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__0_i_1
       (.I0(burst_count[8]),
        .O(burst_count0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__0_i_2
       (.I0(burst_count[7]),
        .O(burst_count0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__0_i_3
       (.I0(burst_count[6]),
        .O(burst_count0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__0_i_4
       (.I0(burst_count[5]),
        .O(burst_count0_carry__0_i_4_n_0));
  CARRY4 burst_count0_carry__1
       (.CI(burst_count0_carry__0_n_0),
        .CO({burst_count0_carry__1_n_0,burst_count0_carry__1_n_1,burst_count0_carry__1_n_2,burst_count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(burst_count[12:9]),
        .O(burst_count0[12:9]),
        .S({burst_count0_carry__1_i_1_n_0,burst_count0_carry__1_i_2_n_0,burst_count0_carry__1_i_3_n_0,burst_count0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__1_i_1
       (.I0(burst_count[12]),
        .O(burst_count0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__1_i_2
       (.I0(burst_count[11]),
        .O(burst_count0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__1_i_3
       (.I0(burst_count[10]),
        .O(burst_count0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__1_i_4
       (.I0(burst_count[9]),
        .O(burst_count0_carry__1_i_4_n_0));
  CARRY4 burst_count0_carry__2
       (.CI(burst_count0_carry__1_n_0),
        .CO({NLW_burst_count0_carry__2_CO_UNCONNECTED[3],burst_count0_carry__2_n_1,burst_count0_carry__2_n_2,burst_count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,burst_count[15:13]}),
        .O(burst_count0[16:13]),
        .S({burst_count0_carry__2_i_1_n_0,burst_count0_carry__2_i_2_n_0,burst_count0_carry__2_i_3_n_0,burst_count0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__2_i_1
       (.I0(burst_count[16]),
        .O(burst_count0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__2_i_2
       (.I0(burst_count[15]),
        .O(burst_count0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__2_i_3
       (.I0(burst_count[14]),
        .O(burst_count0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__2_i_4
       (.I0(burst_count[13]),
        .O(burst_count0_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry_i_1
       (.I0(burst_count[4]),
        .O(burst_count0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry_i_2
       (.I0(burst_count[3]),
        .O(burst_count0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry_i_3
       (.I0(burst_count[2]),
        .O(burst_count0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry_i_4
       (.I0(burst_count[1]),
        .O(burst_count0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h2E)) 
    \burst_count[0]_i_1 
       (.I0(\burst_count_reg[16]_0 [0]),
        .I1(incr_id0),
        .I2(burst_count[0]),
        .O(\burst_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[10]_i_1 
       (.I0(\burst_count_reg[16]_0 [10]),
        .I1(incr_id0),
        .I2(burst_count0[10]),
        .O(\burst_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[11]_i_1 
       (.I0(\burst_count_reg[16]_0 [11]),
        .I1(incr_id0),
        .I2(burst_count0[11]),
        .O(\burst_count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[12]_i_1 
       (.I0(\burst_count_reg[16]_0 [12]),
        .I1(incr_id0),
        .I2(burst_count0[12]),
        .O(\burst_count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[13]_i_1 
       (.I0(\burst_count_reg[16]_0 [13]),
        .I1(incr_id0),
        .I2(burst_count0[13]),
        .O(\burst_count[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[14]_i_1 
       (.I0(\burst_count_reg[16]_0 [14]),
        .I1(incr_id0),
        .I2(burst_count0[14]),
        .O(\burst_count[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[15]_i_1 
       (.I0(\burst_count_reg[16]_0 [15]),
        .I1(incr_id0),
        .I2(burst_count0[15]),
        .O(\burst_count[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hD)) 
    \burst_count[16]_i_1 
       (.I0(incr_id0),
        .I1(p_4_in),
        .O(\burst_count[16]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[16]_i_2 
       (.I0(\burst_count_reg[16]_0 [16]),
        .I1(incr_id0),
        .I2(burst_count0[16]),
        .O(\burst_count[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[1]_i_1 
       (.I0(\burst_count_reg[16]_0 [1]),
        .I1(incr_id0),
        .I2(burst_count0[1]),
        .O(\burst_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[2]_i_1 
       (.I0(\burst_count_reg[16]_0 [2]),
        .I1(incr_id0),
        .I2(burst_count0[2]),
        .O(\burst_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[3]_i_1 
       (.I0(\burst_count_reg[16]_0 [3]),
        .I1(incr_id0),
        .I2(burst_count0[3]),
        .O(\burst_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[4]_i_1 
       (.I0(\burst_count_reg[16]_0 [4]),
        .I1(incr_id0),
        .I2(burst_count0[4]),
        .O(\burst_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[5]_i_1 
       (.I0(\burst_count_reg[16]_0 [5]),
        .I1(incr_id0),
        .I2(burst_count0[5]),
        .O(\burst_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[6]_i_1 
       (.I0(\burst_count_reg[16]_0 [6]),
        .I1(incr_id0),
        .I2(burst_count0[6]),
        .O(\burst_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[7]_i_1 
       (.I0(\burst_count_reg[16]_0 [7]),
        .I1(incr_id0),
        .I2(burst_count0[7]),
        .O(\burst_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[8]_i_1 
       (.I0(\burst_count_reg[16]_0 [8]),
        .I1(incr_id0),
        .I2(burst_count0[8]),
        .O(\burst_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[9]_i_1 
       (.I0(\burst_count_reg[16]_0 [9]),
        .I1(incr_id0),
        .I2(burst_count0[9]),
        .O(\burst_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[0]_i_1_n_0 ),
        .Q(burst_count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[10] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[10]_i_1_n_0 ),
        .Q(burst_count[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[11] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[11]_i_1_n_0 ),
        .Q(burst_count[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[12] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[12]_i_1_n_0 ),
        .Q(burst_count[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[13] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[13]_i_1_n_0 ),
        .Q(burst_count[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[14] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[14]_i_1_n_0 ),
        .Q(burst_count[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[15] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[15]_i_1_n_0 ),
        .Q(burst_count[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[16] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[16]_i_2_n_0 ),
        .Q(burst_count[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[1]_i_1_n_0 ),
        .Q(burst_count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[2]_i_1_n_0 ),
        .Q(burst_count[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[3]_i_1_n_0 ),
        .Q(burst_count[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[4] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[4]_i_1_n_0 ),
        .Q(burst_count[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[5] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[5]_i_1_n_0 ),
        .Q(burst_count[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[6] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[6]_i_1_n_0 ),
        .Q(burst_count[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[7] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[7]_i_1_n_0 ),
        .Q(burst_count[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[8] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[8]_i_1_n_0 ),
        .Q(burst_count[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[9] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[9]_i_1_n_0 ),
        .Q(burst_count[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    eot_mem_src_reg_0_15_0_0_i_1
       (.I0(eot_mem_src_reg_0_15_0_0_i_2_n_0),
        .I1(burst_count[15]),
        .I2(burst_count[16]),
        .I3(burst_count[14]),
        .I4(burst_count[13]),
        .I5(eot_mem_src_reg_0_15_0_0_i_3_n_0),
        .O(request_eot));
  LUT4 #(
    .INIT(16'hFFFE)) 
    eot_mem_src_reg_0_15_0_0_i_2
       (.I0(burst_count[10]),
        .I1(burst_count[9]),
        .I2(burst_count[12]),
        .I3(burst_count[11]),
        .O(eot_mem_src_reg_0_15_0_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    eot_mem_src_reg_0_15_0_0_i_3
       (.I0(eot_mem_src_reg_0_15_0_0_i_4_n_0),
        .I1(burst_count[5]),
        .I2(burst_count[6]),
        .I3(burst_count[7]),
        .I4(burst_count[8]),
        .O(eot_mem_src_reg_0_15_0_0_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    eot_mem_src_reg_0_15_0_0_i_4
       (.I0(burst_count[4]),
        .I1(burst_count[3]),
        .I2(burst_count[0]),
        .I3(burst_count[1]),
        .I4(burst_count[2]),
        .O(eot_mem_src_reg_0_15_0_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \id[0]_i_1__2 
       (.I0(\id_reg[3]_0 [1]),
        .I1(\id_reg[3]_0 [3]),
        .I2(\id_reg[3]_0 [2]),
        .O(\id[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h99F0)) 
    \id[1]_i_1 
       (.I0(\id_reg[3]_0 [2]),
        .I1(\id_reg[3]_0 [3]),
        .I2(\id_reg[3]_0 [1]),
        .I3(\id_reg[3]_0 [0]),
        .O(b2g2_return01_out));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hD1F0)) 
    \id[2]_i_1 
       (.I0(\id_reg[3]_0 [3]),
        .I1(\id_reg[3]_0 [0]),
        .I2(\id_reg[3]_0 [2]),
        .I3(\id_reg[3]_0 [1]),
        .O(b2g2_return03_out));
  LUT2 #(
    .INIT(4'h8)) 
    \id[3]_i_1__1 
       (.I0(incr_id0),
        .I1(p_4_in),
        .O(id));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hFE04)) 
    \id[3]_i_2__1 
       (.I0(\id_reg[3]_0 [1]),
        .I1(\id_reg[3]_0 [2]),
        .I2(\id_reg[3]_0 [0]),
        .I3(\id_reg[3]_0 [3]),
        .O(p_1_in2_in));
  FDRE \id_reg[0] 
       (.C(s_axi_aclk),
        .CE(id),
        .D(\id[0]_i_1__2_n_0 ),
        .Q(\id_reg[3]_0 [0]),
        .R(Q));
  FDRE \id_reg[1] 
       (.C(s_axi_aclk),
        .CE(id),
        .D(b2g2_return01_out),
        .Q(\id_reg[3]_0 [1]),
        .R(Q));
  FDRE \id_reg[2] 
       (.C(s_axi_aclk),
        .CE(id),
        .D(b2g2_return03_out),
        .Q(\id_reg[3]_0 [2]),
        .R(Q));
  FDRE \id_reg[3] 
       (.C(s_axi_aclk),
        .CE(id),
        .D(p_1_in2_in),
        .Q(\id_reg[3]_0 [3]),
        .R(Q));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hD111)) 
    req_ready_i_1__0
       (.I0(req_gen_valid__0),
        .I1(incr_id0),
        .I2(request_eot),
        .I3(p_4_in),
        .O(req_ready_i_1__0_n_0));
  FDRE req_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(req_ready_i_1__0_n_0),
        .Q(req_ready_reg_0),
        .R(Q));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h7F70)) 
    \state[0]_i_1 
       (.I0(p_4_in),
        .I1(request_eot),
        .I2(incr_id0),
        .I3(req_gen_valid__0),
        .O(nx_state__0));
  LUT6 #(
    .INIT(64'hF6FFFFF600000000)) 
    \state[0]_i_2 
       (.I0(dbg_ids0[0]),
        .I1(\id[0]_i_1__2_n_0 ),
        .I2(\state[0]_i_4_n_0 ),
        .I3(p_1_in2_in),
        .I4(dbg_ids0[3]),
        .I5(\burst_count_reg[0]_0 ),
        .O(p_4_in));
  LUT6 #(
    .INIT(64'h7BD7EDD77BBBEDEE)) 
    \state[0]_i_4 
       (.I0(dbg_ids0[1]),
        .I1(dbg_ids0[2]),
        .I2(\id_reg[3]_0 [3]),
        .I3(\id_reg[3]_0 [0]),
        .I4(\id_reg[3]_0 [2]),
        .I5(\id_reg[3]_0 [1]),
        .O(\state[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(nx_state__0),
        .Q(incr_id0),
        .R(Q));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_response_handler
   (id,
    dbg_status,
    m_dest_axi_bready,
    enabled_reg_0,
    \id_reg[0]_0 ,
    \id_reg[1]_0 ,
    \id_reg[2]_0 ,
    \id_reg[3]_0 ,
    active__6,
    enabled_reg_1,
    id0,
    m_dest_axi_aclk,
    m_dest_axi_bready_0,
    m_dest_axi_bready_1,
    dest_response_ready,
    \up_rdata_reg[27] ,
    \up_rdata_reg[27]_0 ,
    m_dest_axi_awaddr,
    dbg_ids0,
    address_enabled);
  output [3:0]id;
  output [0:0]dbg_status;
  output m_dest_axi_bready;
  output enabled_reg_0;
  output \id_reg[0]_0 ;
  output \id_reg[1]_0 ;
  output \id_reg[2]_0 ;
  output \id_reg[3]_0 ;
  output active__6;
  input [0:0]enabled_reg_1;
  input id0;
  input m_dest_axi_aclk;
  input m_dest_axi_bready_0;
  input m_dest_axi_bready_1;
  input dest_response_ready;
  input \up_rdata_reg[27] ;
  input \up_rdata_reg[27]_0 ;
  input [4:0]m_dest_axi_awaddr;
  input [1:0]dbg_ids0;
  input address_enabled;

  wire active__6;
  wire address_enabled;
  wire [1:0]dbg_ids0;
  wire [0:0]dbg_status;
  wire dest_response_ready;
  wire enabled_i_1__0_n_0;
  wire enabled_i_2_n_0;
  wire enabled_reg_0;
  wire [0:0]enabled_reg_1;
  wire [3:0]id;
  wire id0;
  wire \id[0]_i_1__0_n_0 ;
  wire \id[3]_i_2__0_n_0 ;
  wire \id_reg[0]_0 ;
  wire \id_reg[1]_0 ;
  wire \id_reg[2]_0 ;
  wire \id_reg[3]_0 ;
  wire [2:1]inc_id_return;
  wire m_dest_axi_aclk;
  wire [4:0]m_dest_axi_awaddr;
  wire m_dest_axi_bready;
  wire m_dest_axi_bready_0;
  wire m_dest_axi_bready_1;
  wire m_dest_axi_bready_INST_0_i_1_n_0;
  wire \up_rdata_reg[27] ;
  wire \up_rdata_reg[27]_0 ;

  LUT5 #(
    .INIT(32'hF6FFFFF6)) 
    \cdc_sync_fifo_ram[8]_i_2 
       (.I0(id[3]),
        .I1(m_dest_axi_bready_1),
        .I2(m_dest_axi_bready_INST_0_i_1_n_0),
        .I3(m_dest_axi_bready_0),
        .I4(id[0]),
        .O(active__6));
  LUT5 #(
    .INIT(32'hBEFFAAAA)) 
    enabled_i_1__0
       (.I0(address_enabled),
        .I1(m_dest_axi_bready_1),
        .I2(id[3]),
        .I3(enabled_i_2_n_0),
        .I4(dbg_status),
        .O(enabled_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    enabled_i_2
       (.I0(id[1]),
        .I1(dbg_ids0[0]),
        .I2(id[2]),
        .I3(dbg_ids0[1]),
        .I4(id[0]),
        .I5(m_dest_axi_bready_0),
        .O(enabled_i_2_n_0));
  FDRE enabled_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(enabled_i_1__0_n_0),
        .Q(dbg_status),
        .R(enabled_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \id[0]_i_1__0 
       (.I0(id[1]),
        .I1(id[3]),
        .I2(id[2]),
        .O(\id[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h99F0)) 
    \id[1]_i_1__1 
       (.I0(id[2]),
        .I1(id[3]),
        .I2(id[1]),
        .I3(id[0]),
        .O(inc_id_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hD1F0)) 
    \id[2]_i_1__1 
       (.I0(id[3]),
        .I1(id[0]),
        .I2(id[2]),
        .I3(id[1]),
        .O(inc_id_return[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hFE04)) 
    \id[3]_i_2__0 
       (.I0(id[1]),
        .I1(id[2]),
        .I2(id[0]),
        .I3(id[3]),
        .O(\id[3]_i_2__0_n_0 ));
  FDRE \id_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(\id[0]_i_1__0_n_0 ),
        .Q(id[0]),
        .R(enabled_reg_1));
  FDRE \id_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(inc_id_return[1]),
        .Q(id[1]),
        .R(enabled_reg_1));
  FDRE \id_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(inc_id_return[2]),
        .Q(id[2]),
        .R(enabled_reg_1));
  FDRE \id_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(\id[3]_i_2__0_n_0 ),
        .Q(id[3]),
        .R(enabled_reg_1));
  LUT6 #(
    .INIT(64'hF6FFFFF600000000)) 
    m_dest_axi_bready_INST_0
       (.I0(id[0]),
        .I1(m_dest_axi_bready_0),
        .I2(m_dest_axi_bready_INST_0_i_1_n_0),
        .I3(m_dest_axi_bready_1),
        .I4(id[3]),
        .I5(dest_response_ready),
        .O(m_dest_axi_bready));
  LUT4 #(
    .INIT(16'h6FF6)) 
    m_dest_axi_bready_INST_0_i_1
       (.I0(id[1]),
        .I1(dbg_ids0[0]),
        .I2(id[2]),
        .I3(dbg_ids0[1]),
        .O(m_dest_axi_bready_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hB080)) 
    \up_rdata[24]_i_3 
       (.I0(id[0]),
        .I1(\up_rdata_reg[27] ),
        .I2(\up_rdata_reg[27]_0 ),
        .I3(m_dest_axi_awaddr[1]),
        .O(\id_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \up_rdata[25]_i_3 
       (.I0(id[1]),
        .I1(\up_rdata_reg[27] ),
        .I2(\up_rdata_reg[27]_0 ),
        .I3(m_dest_axi_awaddr[2]),
        .O(\id_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \up_rdata[26]_i_3 
       (.I0(id[2]),
        .I1(\up_rdata_reg[27] ),
        .I2(\up_rdata_reg[27]_0 ),
        .I3(m_dest_axi_awaddr[3]),
        .O(\id_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \up_rdata[27]_i_3 
       (.I0(id[3]),
        .I1(\up_rdata_reg[27] ),
        .I2(\up_rdata_reg[27]_0 ),
        .I3(m_dest_axi_awaddr[4]),
        .O(\id_reg[3]_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \up_rdata[4]_i_3 
       (.I0(dbg_status),
        .I1(\up_rdata_reg[27] ),
        .I2(\up_rdata_reg[27]_0 ),
        .I3(m_dest_axi_awaddr[0]),
        .O(enabled_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_src_fifo_inf
   (SS,
    src_valid,
    fifo_wr_overflow,
    \id_reg[3] ,
    src_last_beat__0,
    \id_reg[2] ,
    \id_reg[1] ,
    \id_reg[0] ,
    active_reg,
    src_bl_valid,
    SR,
    \measured_last_burst_length_reg[4] ,
    fifo_wr_clk,
    active_reg_0,
    Q,
    src_eot,
    fifo_wr_sync,
    fifo_wr_en,
    src_enable,
    E,
    bl_valid_reg,
    bl_valid_reg_0,
    last_eot_reg,
    \last_burst_length_reg[4] );
  output [0:0]SS;
  output src_valid;
  output fifo_wr_overflow;
  output \id_reg[3] ;
  output src_last_beat__0;
  output \id_reg[2] ;
  output \id_reg[1] ;
  output \id_reg[0] ;
  output active_reg;
  output src_bl_valid;
  output [0:0]SR;
  output [4:0]\measured_last_burst_length_reg[4] ;
  input fifo_wr_clk;
  input [0:0]active_reg_0;
  input [3:0]Q;
  input src_eot;
  input fifo_wr_sync;
  input fifo_wr_en;
  input src_enable;
  input [0:0]E;
  input bl_valid_reg;
  input bl_valid_reg_0;
  input last_eot_reg;
  input [4:0]\last_burst_length_reg[4] ;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [0:0]SS;
  wire active_reg;
  wire [0:0]active_reg_0;
  wire bl_valid_reg;
  wire bl_valid_reg_0;
  wire fifo_wr_clk;
  wire fifo_wr_en;
  wire fifo_wr_overflow;
  wire fifo_wr_sync;
  wire i_data_mover_n_10;
  wire \id_reg[0] ;
  wire \id_reg[1] ;
  wire \id_reg[2] ;
  wire \id_reg[3] ;
  wire [4:0]\last_burst_length_reg[4] ;
  wire last_eot_reg;
  wire [4:0]\measured_last_burst_length_reg[4] ;
  wire src_bl_valid;
  wire src_enable;
  wire src_eot;
  wire src_last_beat__0;
  wire src_valid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmac_data_mover i_data_mover
       (.E(src_valid),
        .Q(Q),
        .SR(SS),
        .active_reg_0(active_reg),
        .active_reg_1(i_data_mover_n_10),
        .active_reg_2(active_reg_0),
        .active_reg_3(E),
        .bl_valid_reg_0(bl_valid_reg),
        .bl_valid_reg_1(bl_valid_reg_0),
        .fifo_wr_clk(fifo_wr_clk),
        .fifo_wr_en(fifo_wr_en),
        .fifo_wr_sync(fifo_wr_sync),
        .\id_reg[0]_0 (\id_reg[0] ),
        .\id_reg[1]_0 (\id_reg[1] ),
        .\id_reg[2]_0 (\id_reg[2] ),
        .\id_reg[3]_0 (\id_reg[3] ),
        .\last_burst_length_reg[4]_0 (\last_burst_length_reg[4] ),
        .last_eot_reg_0(last_eot_reg),
        .last_non_eot_reg_0(src_last_beat__0),
        .\measured_last_burst_length_reg[4]_0 (\measured_last_burst_length_reg[4] ),
        .\reset_gen[1].reset_sync_reg[0] (SR),
        .src_bl_valid(src_bl_valid),
        .src_enable(src_enable),
        .src_eot(src_eot));
  FDRE overflow_reg
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(i_data_mover_n_10),
        .Q(fifo_wr_overflow),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_address_sync
   (ctrl_enable_reg,
    up_tlf_s_valid_reg,
    m_mem_read,
    s_mem_write,
    m_axis_valid_reg_0,
    response_valid_reg,
    ADDRD,
    ADDRA,
    s_axi_aclk,
    \level_reg[2]_0 ,
    up_bl_partial,
    up_response_valid,
    response_ready_reg,
    up_tlf_valid,
    p_8_in,
    \m_axis_raddr_reg[0]_0 );
  output ctrl_enable_reg;
  output up_tlf_s_valid_reg;
  output m_mem_read;
  output s_mem_write;
  output m_axis_valid_reg_0;
  output response_valid_reg;
  output [1:0]ADDRD;
  output [1:0]ADDRA;
  input s_axi_aclk;
  input \level_reg[2]_0 ;
  input up_bl_partial;
  input up_response_valid;
  input response_ready_reg;
  input up_tlf_valid;
  input p_8_in;
  input \m_axis_raddr_reg[0]_0 ;

  wire [1:0]ADDRA;
  wire [1:0]ADDRD;
  wire _m_axis_valid;
  wire ctrl_enable_reg;
  wire [2:0]level;
  wire \level[0]_i_1_n_0 ;
  wire \level[1]_i_1_n_0 ;
  wire \level[2]_i_2_n_0 ;
  wire \level_reg[2]_0 ;
  wire \m_axis_raddr[0]_i_1_n_0 ;
  wire \m_axis_raddr[1]_i_1_n_0 ;
  wire \m_axis_raddr_reg[0]_0 ;
  wire m_axis_valid_i_1_n_0;
  wire m_axis_valid_reg_0;
  wire m_mem_read;
  wire p_1_in;
  wire p_8_in;
  wire response_ready_reg;
  wire response_valid_reg;
  wire s_axi_aclk;
  wire \s_axis_waddr[0]_i_1_n_0 ;
  wire \s_axis_waddr[1]_i_1_n_0 ;
  wire s_mem_write;
  wire up_bl_partial;
  wire up_response_valid;
  wire up_tlf_s_ready;
  wire up_tlf_s_valid_reg;
  wire up_tlf_valid;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \data[25]_i_1 
       (.I0(up_tlf_valid),
        .I1(p_8_in),
        .I2(_m_axis_valid),
        .O(m_mem_read));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h956A)) 
    \level[0]_i_1 
       (.I0(m_mem_read),
        .I1(\level_reg[2]_0 ),
        .I2(up_tlf_s_ready),
        .I3(level[0]),
        .O(\level[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBFD5402A)) 
    \level[1]_i_1 
       (.I0(m_mem_read),
        .I1(\level_reg[2]_0 ),
        .I2(up_tlf_s_ready),
        .I3(level[0]),
        .I4(level[1]),
        .O(\level[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \level[2]_i_1 
       (.I0(\m_axis_raddr_reg[0]_0 ),
        .O(ctrl_enable_reg));
  LUT6 #(
    .INIT(64'hBFFFFFD54000002A)) 
    \level[2]_i_2 
       (.I0(m_mem_read),
        .I1(\level_reg[2]_0 ),
        .I2(up_tlf_s_ready),
        .I3(level[0]),
        .I4(level[1]),
        .I5(level[2]),
        .O(\level[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \level_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\level[0]_i_1_n_0 ),
        .Q(level[0]),
        .R(ctrl_enable_reg));
  FDRE #(
    .INIT(1'b0)) 
    \level_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\level[1]_i_1_n_0 ),
        .Q(level[1]),
        .R(ctrl_enable_reg));
  FDRE #(
    .INIT(1'b0)) 
    \level_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\level[2]_i_2_n_0 ),
        .Q(level[2]),
        .R(ctrl_enable_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_raddr[0]_i_1 
       (.I0(m_mem_read),
        .I1(ADDRA[0]),
        .O(\m_axis_raddr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \m_axis_raddr[1]_i_1 
       (.I0(ADDRA[0]),
        .I1(m_mem_read),
        .I2(ADDRA[1]),
        .O(\m_axis_raddr[1]_i_1_n_0 ));
  FDRE \m_axis_raddr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\m_axis_raddr[0]_i_1_n_0 ),
        .Q(ADDRA[0]),
        .R(ctrl_enable_reg));
  FDRE \m_axis_raddr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\m_axis_raddr[1]_i_1_n_0 ),
        .Q(ADDRA[1]),
        .R(ctrl_enable_reg));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFD56A)) 
    m_axis_valid_i_1
       (.I0(m_mem_read),
        .I1(\level_reg[2]_0 ),
        .I2(up_tlf_s_ready),
        .I3(level[0]),
        .I4(level[1]),
        .I5(level[2]),
        .O(m_axis_valid_i_1_n_0));
  FDRE m_axis_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(m_axis_valid_i_1_n_0),
        .Q(_m_axis_valid),
        .R(ctrl_enable_reg));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_0_3_0_5_i_1
       (.I0(up_tlf_s_ready),
        .I1(\level_reg[2]_0 ),
        .O(s_mem_write));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h74)) 
    response_ready_i_1
       (.I0(up_response_valid),
        .I1(response_ready_reg),
        .I2(up_tlf_s_ready),
        .O(response_valid_reg));
  LUT6 #(
    .INIT(64'hFFFFD56ABFFFFFFF)) 
    s_axis_ready_i_1
       (.I0(m_mem_read),
        .I1(\level_reg[2]_0 ),
        .I2(up_tlf_s_ready),
        .I3(level[0]),
        .I4(level[1]),
        .I5(level[2]),
        .O(p_1_in));
  FDRE s_axis_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(up_tlf_s_ready),
        .R(ctrl_enable_reg));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \s_axis_waddr[0]_i_1 
       (.I0(\level_reg[2]_0 ),
        .I1(up_tlf_s_ready),
        .I2(ADDRD[0]),
        .O(\s_axis_waddr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \s_axis_waddr[1]_i_1 
       (.I0(ADDRD[0]),
        .I1(up_tlf_s_ready),
        .I2(\level_reg[2]_0 ),
        .I3(ADDRD[1]),
        .O(\s_axis_waddr[1]_i_1_n_0 ));
  FDRE \s_axis_waddr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axis_waddr[0]_i_1_n_0 ),
        .Q(ADDRD[0]),
        .R(ctrl_enable_reg));
  FDRE \s_axis_waddr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axis_waddr[1]_i_1_n_0 ),
        .Q(ADDRD[1]),
        .R(ctrl_enable_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hC000CAAA)) 
    up_tlf_s_valid_i_1
       (.I0(\level_reg[2]_0 ),
        .I1(up_bl_partial),
        .I2(up_response_valid),
        .I3(response_ready_reg),
        .I4(up_tlf_s_ready),
        .O(up_tlf_s_valid_reg));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    valid_i_1
       (.I0(_m_axis_valid),
        .I1(up_tlf_valid),
        .I2(p_8_in),
        .O(m_axis_valid_reg_0));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0
   (E,
    \cdc_sync_stage2_reg[0]_0 ,
    src_enable,
    s_axi_aclk,
    Q,
    ctrl_pause,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    \FSM_onehot_state[5]_i_2_0 ,
    \FSM_onehot_state[5]_i_2_1 ,
    \up_rdata_reg[5] ,
    \up_rdata_reg[5]_0 ,
    m_dest_axi_awaddr);
  output [0:0]E;
  output \cdc_sync_stage2_reg[0]_0 ;
  input src_enable;
  input s_axi_aclk;
  input [4:0]Q;
  input ctrl_pause;
  input \state_reg[0] ;
  input \state_reg[0]_0 ;
  input [0:0]\FSM_onehot_state[5]_i_2_0 ;
  input \FSM_onehot_state[5]_i_2_1 ;
  input \up_rdata_reg[5] ;
  input \up_rdata_reg[5]_0 ;
  input [0:0]m_dest_axi_awaddr;

  wire [0:0]E;
  wire [0:0]\FSM_onehot_state[5]_i_2_0 ;
  wire \FSM_onehot_state[5]_i_2_1 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state[5]_i_3_n_0 ;
  wire \FSM_onehot_state[5]_i_4_n_0 ;
  wire [4:0]Q;
  wire \cdc_sync_stage1_reg_n_0_[0] ;
  wire \cdc_sync_stage2_reg[0]_0 ;
  wire ctrl_pause;
  wire [5:5]dbg_status;
  wire [0:0]m_dest_axi_awaddr;
  wire s_axi_aclk;
  wire src_enable;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \up_rdata_reg[5] ;
  wire \up_rdata_reg[5]_0 ;

  LUT5 #(
    .INIT(32'hFFFFFFA8)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(Q[3]),
        .I1(ctrl_pause),
        .I2(\state_reg[0] ),
        .I3(Q[0]),
        .I4(\FSM_onehot_state[5]_i_2_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFA2)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(Q[1]),
        .I1(ctrl_pause),
        .I2(\state_reg[0] ),
        .I3(\FSM_onehot_state[5]_i_3_n_0 ),
        .I4(\FSM_onehot_state[5]_i_4_n_0 ),
        .I5(\state_reg[0]_0 ),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_state[5]_i_3 
       (.I0(Q[2]),
        .I1(\FSM_onehot_state[5]_i_2_0 ),
        .I2(dbg_status),
        .I3(\FSM_onehot_state[5]_i_2_1 ),
        .O(\FSM_onehot_state[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_state[5]_i_4 
       (.I0(Q[4]),
        .I1(\FSM_onehot_state[5]_i_2_0 ),
        .I2(dbg_status),
        .I3(\FSM_onehot_state[5]_i_2_1 ),
        .O(\FSM_onehot_state[5]_i_4_n_0 ));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(src_enable),
        .Q(\cdc_sync_stage1_reg_n_0_[0] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[0] ),
        .Q(dbg_status),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h3808)) 
    \up_rdata[5]_i_3 
       (.I0(dbg_status),
        .I1(\up_rdata_reg[5] ),
        .I2(\up_rdata_reg[5]_0 ),
        .I3(m_dest_axi_awaddr),
        .O(\cdc_sync_stage2_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__1
   (E,
    \cdc_sync_stage2_reg[0]_0 ,
    \cdc_sync_stage2_reg[0]_1 ,
    \cdc_sync_stage2_reg[0]_2 ,
    src_dest_valid_hs_reg,
    \cdc_sync_stage1_reg[0]_0 ,
    \cdc_sync_stage1_reg[0]_1 ,
    fifo_wr_clk,
    src_dest_valid_hs_reg_0,
    m_axis_raddr_reg,
    m_axis_raddr_reg_0,
    src_req_ready,
    src_dest_valid_hs);
  output [0:0]E;
  output [0:0]\cdc_sync_stage2_reg[0]_0 ;
  output \cdc_sync_stage2_reg[0]_1 ;
  output \cdc_sync_stage2_reg[0]_2 ;
  output src_dest_valid_hs_reg;
  input [0:0]\cdc_sync_stage1_reg[0]_0 ;
  input \cdc_sync_stage1_reg[0]_1 ;
  input fifo_wr_clk;
  input src_dest_valid_hs_reg_0;
  input m_axis_raddr_reg;
  input m_axis_raddr_reg_0;
  input src_req_ready;
  input src_dest_valid_hs;

  wire [0:0]E;
  wire [0:0]\cdc_sync_stage1_reg[0]_0 ;
  wire \cdc_sync_stage1_reg[0]_1 ;
  wire \cdc_sync_stage1_reg_n_0_[0] ;
  wire [0:0]\cdc_sync_stage2_reg[0]_0 ;
  wire \cdc_sync_stage2_reg[0]_1 ;
  wire \cdc_sync_stage2_reg[0]_2 ;
  wire \cdc_sync_stage2_reg_n_0_[0] ;
  wire fifo_wr_clk;
  wire m_axis_raddr_reg;
  wire m_axis_raddr_reg_0;
  wire src_dest_valid_hs;
  wire src_dest_valid_hs_reg;
  wire src_dest_valid_hs_reg_0;
  wire src_req_ready;

  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \cdc_sync_fifo_ram[28]_i_1 
       (.I0(\cdc_sync_stage2_reg_n_0_[0] ),
        .I1(src_dest_valid_hs_reg_0),
        .I2(src_dest_valid_hs),
        .O(\cdc_sync_stage2_reg[0]_0 ));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[0]_1 ),
        .Q(\cdc_sync_stage1_reg_n_0_[0] ),
        .R(\cdc_sync_stage1_reg[0]_0 ));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[0] ),
        .Q(\cdc_sync_stage2_reg_n_0_[0] ),
        .R(\cdc_sync_stage1_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFF7D8200)) 
    m_axis_raddr_i_1__0
       (.I0(src_req_ready),
        .I1(\cdc_sync_stage2_reg_n_0_[0] ),
        .I2(src_dest_valid_hs_reg_0),
        .I3(m_axis_raddr_reg),
        .I4(m_axis_raddr_reg_0),
        .O(\cdc_sync_stage2_reg[0]_2 ));
  LUT3 #(
    .INIT(8'h72)) 
    s_axis_waddr_i_1
       (.I0(src_dest_valid_hs),
        .I1(\cdc_sync_stage2_reg_n_0_[0] ),
        .I2(src_dest_valid_hs_reg_0),
        .O(src_dest_valid_hs_reg));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hBEAA)) 
    src_dest_valid_hs_i_1
       (.I0(E),
        .I1(\cdc_sync_stage2_reg_n_0_[0] ),
        .I2(src_dest_valid_hs_reg_0),
        .I3(src_dest_valid_hs),
        .O(\cdc_sync_stage2_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h09900000)) 
    \src_req_dest_address_cur[27]_i_1 
       (.I0(\cdc_sync_stage2_reg_n_0_[0] ),
        .I1(src_dest_valid_hs_reg_0),
        .I2(m_axis_raddr_reg),
        .I3(m_axis_raddr_reg_0),
        .I4(src_req_ready),
        .O(E));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__2
   (\cdc_sync_stage2_reg[0]_0 ,
    req_ready_reg,
    \cdc_sync_stage1_reg[0]_0 ,
    \cdc_sync_stage1_reg[0]_1 ,
    m_dest_axi_aclk,
    dest_req_ready,
    m_axis_raddr_reg);
  output \cdc_sync_stage2_reg[0]_0 ;
  output req_ready_reg;
  input [0:0]\cdc_sync_stage1_reg[0]_0 ;
  input \cdc_sync_stage1_reg[0]_1 ;
  input m_dest_axi_aclk;
  input dest_req_ready;
  input m_axis_raddr_reg;

  wire [0:0]\cdc_sync_stage1_reg[0]_0 ;
  wire \cdc_sync_stage1_reg[0]_1 ;
  wire \cdc_sync_stage1_reg_n_0_[0] ;
  wire \cdc_sync_stage2_reg[0]_0 ;
  wire dest_req_ready;
  wire m_axis_raddr_reg;
  wire m_dest_axi_aclk;
  wire req_ready_reg;

  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[0]_1 ),
        .Q(\cdc_sync_stage1_reg_n_0_[0] ),
        .R(\cdc_sync_stage1_reg[0]_0 ));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[0] ),
        .Q(\cdc_sync_stage2_reg[0]_0 ),
        .R(\cdc_sync_stage1_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hD8)) 
    m_axis_raddr_i_1__1
       (.I0(dest_req_ready),
        .I1(\cdc_sync_stage2_reg[0]_0 ),
        .I2(m_axis_raddr_reg),
        .O(req_ready_reg));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__3
   (\cdc_sync_stage2_reg[0]_0 ,
    E,
    bl_valid_reg,
    \cdc_sync_stage1_reg[0]_0 ,
    \cdc_sync_stage1_reg[0]_1 ,
    fifo_wr_clk,
    \cdc_sync_fifo_ram_reg[0] ,
    src_bl_valid);
  output \cdc_sync_stage2_reg[0]_0 ;
  output [0:0]E;
  output bl_valid_reg;
  input [0:0]\cdc_sync_stage1_reg[0]_0 ;
  input \cdc_sync_stage1_reg[0]_1 ;
  input fifo_wr_clk;
  input \cdc_sync_fifo_ram_reg[0] ;
  input src_bl_valid;

  wire [0:0]E;
  wire bl_valid_reg;
  wire \cdc_sync_fifo_ram_reg[0] ;
  wire [0:0]\cdc_sync_stage1_reg[0]_0 ;
  wire \cdc_sync_stage1_reg[0]_1 ;
  wire \cdc_sync_stage1_reg_n_0_[0] ;
  wire \cdc_sync_stage2_reg[0]_0 ;
  wire fifo_wr_clk;
  wire src_bl_valid;

  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \cdc_sync_fifo_ram[4]_i_1 
       (.I0(\cdc_sync_stage2_reg[0]_0 ),
        .I1(\cdc_sync_fifo_ram_reg[0] ),
        .I2(src_bl_valid),
        .O(E));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[0]_1 ),
        .Q(\cdc_sync_stage1_reg_n_0_[0] ),
        .R(\cdc_sync_stage1_reg[0]_0 ));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[0] ),
        .Q(\cdc_sync_stage2_reg[0]_0 ),
        .R(\cdc_sync_stage1_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h72)) 
    s_axis_waddr_i_1__1
       (.I0(src_bl_valid),
        .I1(\cdc_sync_stage2_reg[0]_0 ),
        .I2(\cdc_sync_fifo_ram_reg[0] ),
        .O(bl_valid_reg));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__4
   (cdc_sync_stage2,
    E,
    bl_ready_reg,
    \cdc_sync_stage1_reg[0]_0 ,
    \cdc_sync_stage1_reg[0]_1 ,
    m_dest_axi_aclk,
    \last_burst_len_reg[0] ,
    dest_bl_ready);
  output cdc_sync_stage2;
  output [0:0]E;
  output bl_ready_reg;
  input [0:0]\cdc_sync_stage1_reg[0]_0 ;
  input \cdc_sync_stage1_reg[0]_1 ;
  input m_dest_axi_aclk;
  input \last_burst_len_reg[0] ;
  input dest_bl_ready;

  wire [0:0]E;
  wire bl_ready_reg;
  wire [0:0]\cdc_sync_stage1_reg[0]_0 ;
  wire \cdc_sync_stage1_reg[0]_1 ;
  wire \cdc_sync_stage1_reg_n_0_[0] ;
  wire cdc_sync_stage2;
  wire dest_bl_ready;
  wire \last_burst_len_reg[0] ;
  wire m_dest_axi_aclk;

  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[0]_1 ),
        .Q(\cdc_sync_stage1_reg_n_0_[0] ),
        .R(\cdc_sync_stage1_reg[0]_0 ));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[0] ),
        .Q(cdc_sync_stage2),
        .R(\cdc_sync_stage1_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \last_burst_len[4]_i_1 
       (.I0(\last_burst_len_reg[0] ),
        .I1(cdc_sync_stage2),
        .I2(dest_bl_ready),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    m_axis_raddr_i_1
       (.I0(dest_bl_ready),
        .I1(cdc_sync_stage2),
        .I2(\last_burst_len_reg[0] ),
        .O(bl_ready_reg));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__5
   (\cdc_sync_stage2_reg[0]_0 ,
    E,
    req_gen_valid__0,
    up_dma_req_valid_reg,
    Q,
    \cdc_sync_stage1_reg[0]_0 ,
    s_axi_aclk,
    s_axis_waddr_reg,
    s_axis_waddr_reg_0,
    s_axis_waddr_reg_1,
    up_dma_req_valid);
  output \cdc_sync_stage2_reg[0]_0 ;
  output [0:0]E;
  output req_gen_valid__0;
  output up_dma_req_valid_reg;
  input [0:0]Q;
  input \cdc_sync_stage1_reg[0]_0 ;
  input s_axi_aclk;
  input s_axis_waddr_reg;
  input s_axis_waddr_reg_0;
  input s_axis_waddr_reg_1;
  input up_dma_req_valid;

  wire [0:0]E;
  wire [0:0]Q;
  wire \cdc_sync_stage1_reg[0]_0 ;
  wire \cdc_sync_stage1_reg_n_0_[0] ;
  wire \cdc_sync_stage2_reg[0]_0 ;
  wire req_gen_valid__0;
  wire s_axi_aclk;
  wire s_axis_waddr_reg;
  wire s_axis_waddr_reg_0;
  wire s_axis_waddr_reg_1;
  wire up_dma_req_valid;
  wire up_dma_req_valid_reg;

  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h82000000)) 
    \cdc_sync_fifo_ram[64]_i_1 
       (.I0(s_axis_waddr_reg),
        .I1(\cdc_sync_stage2_reg[0]_0 ),
        .I2(s_axis_waddr_reg_0),
        .I3(s_axis_waddr_reg_1),
        .I4(up_dma_req_valid),
        .O(E));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[0]_0 ),
        .Q(\cdc_sync_stage1_reg_n_0_[0] ),
        .R(Q));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[0] ),
        .Q(\cdc_sync_stage2_reg[0]_0 ),
        .R(Q));
  LUT5 #(
    .INIT(32'h7FFF0800)) 
    s_axis_waddr_i_1__0
       (.I0(up_dma_req_valid),
        .I1(s_axis_waddr_reg_1),
        .I2(\cdc_sync_stage2_reg[0]_0 ),
        .I3(s_axis_waddr_reg),
        .I4(s_axis_waddr_reg_0),
        .O(up_dma_req_valid_reg));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h80080000)) 
    \state[0]_i_3 
       (.I0(up_dma_req_valid),
        .I1(s_axis_waddr_reg_1),
        .I2(s_axis_waddr_reg_0),
        .I3(\cdc_sync_stage2_reg[0]_0 ),
        .I4(s_axis_waddr_reg),
        .O(req_gen_valid__0));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__6
   (\cdc_sync_stage2_reg[0]_0 ,
    \cdc_sync_stage1_reg[0]_0 ,
    \cdc_sync_stage1_reg[0]_1 ,
    fifo_wr_clk);
  output \cdc_sync_stage2_reg[0]_0 ;
  input [0:0]\cdc_sync_stage1_reg[0]_0 ;
  input \cdc_sync_stage1_reg[0]_1 ;
  input fifo_wr_clk;

  wire [0:0]\cdc_sync_stage1_reg[0]_0 ;
  wire \cdc_sync_stage1_reg[0]_1 ;
  wire \cdc_sync_stage1_reg_n_0_[0] ;
  wire \cdc_sync_stage2_reg[0]_0 ;
  wire fifo_wr_clk;

  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[0]_1 ),
        .Q(\cdc_sync_stage1_reg_n_0_[0] ),
        .R(\cdc_sync_stage1_reg[0]_0 ));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[0] ),
        .Q(\cdc_sync_stage2_reg[0]_0 ),
        .R(\cdc_sync_stage1_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__7
   (src_enable,
    \cdc_sync_stage1_reg[0]_0 ,
    fifo_wr_clk);
  output src_enable;
  input \cdc_sync_stage1_reg[0]_0 ;
  input fifo_wr_clk;

  wire cdc_sync_stage1;
  wire \cdc_sync_stage1_reg[0]_0 ;
  wire fifo_wr_clk;
  wire src_enable;

  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[0]_0 ),
        .Q(cdc_sync_stage1),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(cdc_sync_stage1),
        .Q(src_enable),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized1
   (E,
    src_request_id,
    Q,
    \src_throttled_request_id_reg[0] ,
    \src_throttled_request_id_reg[0]_0 ,
    \cdc_sync_stage1_reg[3]_0 ,
    fifo_wr_clk);
  output [0:0]E;
  output [3:0]src_request_id;
  input [3:0]Q;
  input \src_throttled_request_id_reg[0] ;
  input \src_throttled_request_id_reg[0]_0 ;
  input [3:0]\cdc_sync_stage1_reg[3]_0 ;
  input fifo_wr_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]\cdc_sync_stage1_reg[3]_0 ;
  wire \cdc_sync_stage1_reg_n_0_[0] ;
  wire \cdc_sync_stage1_reg_n_0_[1] ;
  wire \cdc_sync_stage1_reg_n_0_[2] ;
  wire \cdc_sync_stage1_reg_n_0_[3] ;
  wire fifo_wr_clk;
  wire [3:0]src_request_id;
  wire \src_throttled_request_id[3]_i_3_n_0 ;
  wire \src_throttled_request_id_reg[0] ;
  wire \src_throttled_request_id_reg[0]_0 ;

  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[3]_0 [0]),
        .Q(\cdc_sync_stage1_reg_n_0_[0] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[1] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[3]_0 [1]),
        .Q(\cdc_sync_stage1_reg_n_0_[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[2] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[3]_0 [2]),
        .Q(\cdc_sync_stage1_reg_n_0_[2] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[3] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[3]_0 [3]),
        .Q(\cdc_sync_stage1_reg_n_0_[3] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[0] ),
        .Q(src_request_id[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[1] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[1] ),
        .Q(src_request_id[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[2] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[2] ),
        .Q(src_request_id[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[3] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[3] ),
        .Q(src_request_id[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBEBEBE00)) 
    \src_throttled_request_id[3]_i_1 
       (.I0(\src_throttled_request_id[3]_i_3_n_0 ),
        .I1(src_request_id[3]),
        .I2(Q[3]),
        .I3(\src_throttled_request_id_reg[0] ),
        .I4(\src_throttled_request_id_reg[0]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \src_throttled_request_id[3]_i_3 
       (.I0(Q[0]),
        .I1(src_request_id[0]),
        .I2(src_request_id[2]),
        .I3(Q[2]),
        .I4(src_request_id[1]),
        .I5(Q[1]),
        .O(\src_throttled_request_id[3]_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized1__xdcDup__1
   (\cdc_sync_stage2_reg[2]_0 ,
    data8,
    \cdc_sync_stage2_reg[3]_0 ,
    \cdc_sync_stage2_reg[1]_0 ,
    \up_rdata_reg[2] ,
    \up_rdata_reg[3] ,
    \up_rdata_reg[3]_0 ,
    m_dest_axi_awaddr,
    p_1_in,
    m_dest_axi_aclk,
    \cdc_sync_stage1_reg[2]_0 ,
    src_id_reduced);
  output \cdc_sync_stage2_reg[2]_0 ;
  output [1:0]data8;
  output \cdc_sync_stage2_reg[3]_0 ;
  output [1:0]\cdc_sync_stage2_reg[1]_0 ;
  input [0:0]\up_rdata_reg[2] ;
  input \up_rdata_reg[3] ;
  input \up_rdata_reg[3]_0 ;
  input [1:0]m_dest_axi_awaddr;
  input p_1_in;
  input m_dest_axi_aclk;
  input \cdc_sync_stage1_reg[2]_0 ;
  input [1:0]src_id_reduced;

  wire \cdc_sync_stage1_reg[2]_0 ;
  wire \cdc_sync_stage1_reg_n_0_[0] ;
  wire \cdc_sync_stage1_reg_n_0_[1] ;
  wire \cdc_sync_stage1_reg_n_0_[2] ;
  wire \cdc_sync_stage1_reg_n_0_[3] ;
  wire [1:0]\cdc_sync_stage2_reg[1]_0 ;
  wire \cdc_sync_stage2_reg[2]_0 ;
  wire \cdc_sync_stage2_reg[3]_0 ;
  wire [1:0]data8;
  wire m_dest_axi_aclk;
  wire [1:0]m_dest_axi_awaddr;
  wire p_1_in;
  wire [1:0]src_id_reduced;
  wire [0:0]\up_rdata_reg[2] ;
  wire \up_rdata_reg[3] ;
  wire \up_rdata_reg[3]_0 ;

  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(src_id_reduced[0]),
        .Q(\cdc_sync_stage1_reg_n_0_[0] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(src_id_reduced[1]),
        .Q(\cdc_sync_stage1_reg_n_0_[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[2]_0 ),
        .Q(\cdc_sync_stage1_reg_n_0_[2] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(\cdc_sync_stage1_reg_n_0_[3] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[0] ),
        .Q(\cdc_sync_stage2_reg[1]_0 [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[1] ),
        .Q(\cdc_sync_stage2_reg[1]_0 [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[2] ),
        .Q(data8[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[3] ),
        .Q(data8[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \up_rdata[2]_i_3 
       (.I0(data8[0]),
        .I1(\up_rdata_reg[2] ),
        .I2(\up_rdata_reg[3] ),
        .I3(\up_rdata_reg[3]_0 ),
        .I4(m_dest_axi_awaddr[0]),
        .O(\cdc_sync_stage2_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \up_rdata[3]_i_3 
       (.I0(data8[1]),
        .I1(\up_rdata_reg[3] ),
        .I2(\up_rdata_reg[3]_0 ),
        .I3(m_dest_axi_awaddr[1]),
        .O(\cdc_sync_stage2_reg[3]_0 ));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized1__xdcDup__2
   (\src_throttled_request_id_reg[2] ,
    \src_throttled_request_id_reg[0] ,
    \src_throttled_request_id_reg[0]_0 ,
    Q,
    fifo_wr_clk);
  output \src_throttled_request_id_reg[2] ;
  output \src_throttled_request_id_reg[0] ;
  input [3:0]\src_throttled_request_id_reg[0]_0 ;
  input [3:0]Q;
  input fifo_wr_clk;

  wire [3:0]Q;
  wire \cdc_sync_stage1_reg_n_0_[0] ;
  wire \cdc_sync_stage1_reg_n_0_[1] ;
  wire \cdc_sync_stage1_reg_n_0_[2] ;
  wire \cdc_sync_stage1_reg_n_0_[3] ;
  wire \cdc_sync_stage2_reg_n_0_[0] ;
  wire \cdc_sync_stage2_reg_n_0_[1] ;
  wire \cdc_sync_stage2_reg_n_0_[3] ;
  wire fifo_wr_clk;
  wire p_0_in0_in;
  wire \src_throttled_request_id_reg[0] ;
  wire [3:0]\src_throttled_request_id_reg[0]_0 ;
  wire \src_throttled_request_id_reg[2] ;

  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\cdc_sync_stage1_reg_n_0_[0] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[1] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\cdc_sync_stage1_reg_n_0_[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[2] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(\cdc_sync_stage1_reg_n_0_[2] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[3] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(\cdc_sync_stage1_reg_n_0_[3] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[0] ),
        .Q(\cdc_sync_stage2_reg_n_0_[0] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[1] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[1] ),
        .Q(\cdc_sync_stage2_reg_n_0_[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[2] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[2] ),
        .Q(p_0_in0_in),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[3] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[3] ),
        .Q(\cdc_sync_stage2_reg_n_0_[3] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF99F)) 
    \src_throttled_request_id[3]_i_4 
       (.I0(\src_throttled_request_id_reg[0]_0 [2]),
        .I1(p_0_in0_in),
        .I2(\src_throttled_request_id_reg[0]_0 [3]),
        .I3(\cdc_sync_stage2_reg_n_0_[3] ),
        .O(\src_throttled_request_id_reg[2] ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \src_throttled_request_id[3]_i_5 
       (.I0(\src_throttled_request_id_reg[0]_0 [0]),
        .I1(\cdc_sync_stage2_reg_n_0_[0] ),
        .I2(\src_throttled_request_id_reg[0]_0 [1]),
        .I3(\cdc_sync_stage2_reg_n_0_[1] ),
        .O(\src_throttled_request_id_reg[0] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_axi
   (SR,
    up_wreq,
    s_axi_bvalid,
    s_axi_awready,
    s_axi_wready,
    up_rreq,
    s_axi_arready,
    up_axi_rvalid_int_reg_0,
    up_dma_req_valid_reg,
    Q,
    D,
    up_wreq_int_reg_0,
    up_wreq_int_reg_1,
    up_wreq_int_reg_2,
    \up_scratch_reg[31] ,
    \up_raddr_int_reg[4]_0 ,
    p_8_in,
    \up_raddr_int_reg[7]_0 ,
    \up_raddr_int_reg[6]_0 ,
    \up_waddr_int_reg[0]_0 ,
    \up_wdata_int_reg[1]_0 ,
    \up_wdata_int_reg[2]_0 ,
    \up_wdata_int_reg[1]_1 ,
    \up_wdata_int_reg[0]_0 ,
    s_axi_rdata,
    s_axi_aclk,
    up_dma_req_valid,
    s_axi_aresetn,
    E,
    ctrl_enable_reg,
    \up_irq_source_reg[1] ,
    up_eot,
    up_wack,
    s_axi_bready,
    s_axi_wvalid,
    s_axi_awvalid,
    up_rack,
    \up_rdata_reg[10] ,
    \up_rdata_reg[8] ,
    \up_rdata_reg[9] ,
    s_axi_arvalid,
    \up_rdata_d_reg[31]_0 ,
    src_request_id,
    \up_rdata[1]_i_4_0 ,
    \up_rdata[31]_i_6_0 ,
    \up_rdata[23]_i_4_0 ,
    \up_rdata_reg[0] ,
    \up_rdata_reg[2] ,
    \up_rdata_reg[2]_0 ,
    \up_rdata_reg[3] ,
    \up_rdata_reg[3]_0 ,
    \up_rdata_reg[4] ,
    \up_rdata_reg[5] ,
    \up_rdata_reg[6] ,
    \up_rdata_reg[11] ,
    \up_rdata_reg[16] ,
    \up_rdata_reg[17] ,
    \up_rdata_reg[18] ,
    \up_rdata_reg[19] ,
    \up_rdata_reg[24] ,
    dbg_ids1,
    \up_rdata_reg[29] ,
    \up_rdata_reg[25] ,
    \up_rdata_reg[26] ,
    \up_rdata_reg[27] ,
    \up_rdata_reg[31] ,
    \up_rdata_reg[0]_0 ,
    \up_rdata_reg[1] ,
    p_3_in,
    \up_rdata[4]_i_4_0 ,
    \up_rdata[5]_i_4_0 ,
    \up_rdata[6]_i_4_0 ,
    \up_rdata[7]_i_4_0 ,
    \up_rdata[8]_i_4_0 ,
    \up_rdata[9]_i_4_0 ,
    \up_rdata[10]_i_4_0 ,
    \up_rdata[11]_i_4_0 ,
    \up_rdata[12]_i_4_0 ,
    \up_rdata[13]_i_4_0 ,
    \up_rdata[14]_i_4_0 ,
    \up_rdata[15]_i_4_0 ,
    \up_rdata[16]_i_4_0 ,
    \up_rdata[17]_i_4_0 ,
    \up_rdata[18]_i_4_0 ,
    \up_rdata[19]_i_4_0 ,
    \up_rdata[20]_i_4_0 ,
    \up_rdata[21]_i_4_0 ,
    \up_rdata[22]_i_4_0 ,
    \up_rdata[23]_i_4_1 ,
    data8,
    dbg_status,
    ctrl_pause,
    s_axi_rready,
    up_dma_last,
    \up_rdata[1]_i_4_1 ,
    \up_rdata[1]_i_4_2 ,
    \up_rdata_reg[7] ,
    m_dest_axi_awaddr,
    s_axi_wdata,
    s_axi_awaddr,
    s_axi_araddr);
  output [0:0]SR;
  output up_wreq;
  output s_axi_bvalid;
  output s_axi_awready;
  output s_axi_wready;
  output up_rreq;
  output s_axi_arready;
  output up_axi_rvalid_int_reg_0;
  output up_dma_req_valid_reg;
  output [31:0]Q;
  output [1:0]D;
  output [0:0]up_wreq_int_reg_0;
  output up_wreq_int_reg_1;
  output [0:0]up_wreq_int_reg_2;
  output [31:0]\up_scratch_reg[31] ;
  output [3:0]\up_raddr_int_reg[4]_0 ;
  output p_8_in;
  output \up_raddr_int_reg[7]_0 ;
  output \up_raddr_int_reg[6]_0 ;
  output [0:0]\up_waddr_int_reg[0]_0 ;
  output \up_wdata_int_reg[1]_0 ;
  output \up_wdata_int_reg[2]_0 ;
  output \up_wdata_int_reg[1]_1 ;
  output \up_wdata_int_reg[0]_0 ;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input up_dma_req_valid;
  input s_axi_aresetn;
  input [0:0]E;
  input ctrl_enable_reg;
  input [1:0]\up_irq_source_reg[1] ;
  input up_eot;
  input up_wack;
  input s_axi_bready;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input up_rack;
  input \up_rdata_reg[10] ;
  input \up_rdata_reg[8] ;
  input \up_rdata_reg[9] ;
  input s_axi_arvalid;
  input [31:0]\up_rdata_d_reg[31]_0 ;
  input [3:0]src_request_id;
  input [23:0]\up_rdata[1]_i_4_0 ;
  input [2:0]\up_rdata[31]_i_6_0 ;
  input [21:0]\up_rdata[23]_i_4_0 ;
  input \up_rdata_reg[0] ;
  input \up_rdata_reg[2] ;
  input \up_rdata_reg[2]_0 ;
  input \up_rdata_reg[3] ;
  input \up_rdata_reg[3]_0 ;
  input \up_rdata_reg[4] ;
  input \up_rdata_reg[5] ;
  input \up_rdata_reg[6] ;
  input \up_rdata_reg[11] ;
  input \up_rdata_reg[16] ;
  input \up_rdata_reg[17] ;
  input \up_rdata_reg[18] ;
  input \up_rdata_reg[19] ;
  input \up_rdata_reg[24] ;
  input [3:0]dbg_ids1;
  input [7:0]\up_rdata_reg[29] ;
  input \up_rdata_reg[25] ;
  input \up_rdata_reg[26] ;
  input \up_rdata_reg[27] ;
  input [31:0]\up_rdata_reg[31] ;
  input \up_rdata_reg[0]_0 ;
  input \up_rdata_reg[1] ;
  input [0:0]p_3_in;
  input \up_rdata[4]_i_4_0 ;
  input \up_rdata[5]_i_4_0 ;
  input \up_rdata[6]_i_4_0 ;
  input \up_rdata[7]_i_4_0 ;
  input \up_rdata[8]_i_4_0 ;
  input \up_rdata[9]_i_4_0 ;
  input \up_rdata[10]_i_4_0 ;
  input \up_rdata[11]_i_4_0 ;
  input \up_rdata[12]_i_4_0 ;
  input \up_rdata[13]_i_4_0 ;
  input \up_rdata[14]_i_4_0 ;
  input \up_rdata[15]_i_4_0 ;
  input \up_rdata[16]_i_4_0 ;
  input \up_rdata[17]_i_4_0 ;
  input \up_rdata[18]_i_4_0 ;
  input \up_rdata[19]_i_4_0 ;
  input \up_rdata[20]_i_4_0 ;
  input \up_rdata[21]_i_4_0 ;
  input \up_rdata[22]_i_4_0 ;
  input \up_rdata[23]_i_4_1 ;
  input [1:0]data8;
  input [1:0]dbg_status;
  input ctrl_pause;
  input s_axi_rready;
  input up_dma_last;
  input [0:0]\up_rdata[1]_i_4_1 ;
  input \up_rdata[1]_i_4_2 ;
  input \up_rdata_reg[7] ;
  input [9:0]m_dest_axi_awaddr;
  input [31:0]s_axi_wdata;
  input [8:0]s_axi_awaddr;
  input [8:0]s_axi_araddr;

  wire [1:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire ctrl_enable_i_2_n_0;
  wire ctrl_enable_i_3_n_0;
  wire ctrl_enable_reg;
  wire ctrl_pause;
  wire [31:0]data10;
  wire [1:0]data8;
  wire \data[25]_i_3_n_0 ;
  wire \data[25]_i_4_n_0 ;
  wire [3:0]dbg_ids1;
  wire [1:0]dbg_status;
  wire \i_regmap_request/up_dma_last ;
  wire \i_regmap_request/up_dma_req_valid0 ;
  wire [9:0]m_dest_axi_awaddr;
  wire p_0_in6_in;
  wire p_0_in7_in;
  wire p_1_in;
  wire [0:0]p_3_in;
  wire p_5_in;
  wire p_8_in;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [3:0]src_request_id;
  wire up_axi_arready_int_i_1_n_0;
  wire up_axi_awready_int_i_2_n_0;
  wire up_axi_bvalid_int_i_1_n_0;
  wire \up_axi_rdata_int[31]_i_1_n_0 ;
  wire up_axi_rvalid_int_i_1_n_0;
  wire up_axi_rvalid_int_reg_0;
  wire up_axi_wready_int_i_1_n_0;
  wire \up_dma_dest_address[29]_i_2_n_0 ;
  wire up_dma_last;
  wire up_dma_req_valid;
  wire up_dma_req_valid_reg;
  wire \up_dma_x_length[23]_i_2_n_0 ;
  wire \up_dma_x_length[23]_i_3_n_0 ;
  wire up_eot;
  wire \up_irq_mask[1]_i_3_n_0 ;
  wire \up_irq_mask[1]_i_4_n_0 ;
  wire \up_irq_source[1]_i_3_n_0 ;
  wire up_irq_source_clear1__6;
  wire [1:0]\up_irq_source_reg[1] ;
  wire up_rack;
  wire up_rack_d;
  wire up_rack_s;
  wire [8:0]up_raddr;
  wire [3:0]\up_raddr_int_reg[4]_0 ;
  wire \up_raddr_int_reg[6]_0 ;
  wire \up_raddr_int_reg[7]_0 ;
  wire \up_rcount[0]_i_1_n_0 ;
  wire \up_rcount[1]_i_1_n_0 ;
  wire \up_rcount[2]_i_1_n_0 ;
  wire \up_rcount[3]_i_1_n_0 ;
  wire \up_rcount[4]_i_1_n_0 ;
  wire \up_rcount[4]_i_2_n_0 ;
  wire \up_rcount_reg_n_0_[0] ;
  wire \up_rcount_reg_n_0_[1] ;
  wire \up_rcount_reg_n_0_[2] ;
  wire \up_rcount_reg_n_0_[3] ;
  wire \up_rdata[0]_i_2_n_0 ;
  wire \up_rdata[0]_i_3_n_0 ;
  wire \up_rdata[0]_i_5_n_0 ;
  wire \up_rdata[0]_i_7_n_0 ;
  wire \up_rdata[10]_i_2_n_0 ;
  wire \up_rdata[10]_i_4_0 ;
  wire \up_rdata[10]_i_4_n_0 ;
  wire \up_rdata[10]_i_5_n_0 ;
  wire \up_rdata[11]_i_2_n_0 ;
  wire \up_rdata[11]_i_4_0 ;
  wire \up_rdata[11]_i_4_n_0 ;
  wire \up_rdata[11]_i_5_n_0 ;
  wire \up_rdata[12]_i_2_n_0 ;
  wire \up_rdata[12]_i_3_n_0 ;
  wire \up_rdata[12]_i_4_0 ;
  wire \up_rdata[12]_i_4_n_0 ;
  wire \up_rdata[12]_i_5_n_0 ;
  wire \up_rdata[13]_i_2_n_0 ;
  wire \up_rdata[13]_i_3_n_0 ;
  wire \up_rdata[13]_i_4_0 ;
  wire \up_rdata[13]_i_4_n_0 ;
  wire \up_rdata[13]_i_5_n_0 ;
  wire \up_rdata[14]_i_2_n_0 ;
  wire \up_rdata[14]_i_3_n_0 ;
  wire \up_rdata[14]_i_4_0 ;
  wire \up_rdata[14]_i_4_n_0 ;
  wire \up_rdata[14]_i_5_n_0 ;
  wire \up_rdata[15]_i_2_n_0 ;
  wire \up_rdata[15]_i_3_n_0 ;
  wire \up_rdata[15]_i_4_0 ;
  wire \up_rdata[15]_i_4_n_0 ;
  wire \up_rdata[15]_i_5_n_0 ;
  wire \up_rdata[16]_i_2_n_0 ;
  wire \up_rdata[16]_i_4_0 ;
  wire \up_rdata[16]_i_4_n_0 ;
  wire \up_rdata[16]_i_5_n_0 ;
  wire \up_rdata[17]_i_2_n_0 ;
  wire \up_rdata[17]_i_4_0 ;
  wire \up_rdata[17]_i_4_n_0 ;
  wire \up_rdata[17]_i_5_n_0 ;
  wire \up_rdata[18]_i_2_n_0 ;
  wire \up_rdata[18]_i_4_0 ;
  wire \up_rdata[18]_i_4_n_0 ;
  wire \up_rdata[18]_i_5_n_0 ;
  wire \up_rdata[19]_i_2_n_0 ;
  wire \up_rdata[19]_i_4_0 ;
  wire \up_rdata[19]_i_4_n_0 ;
  wire \up_rdata[19]_i_5_n_0 ;
  wire \up_rdata[1]_i_2_n_0 ;
  wire \up_rdata[1]_i_3_n_0 ;
  wire [23:0]\up_rdata[1]_i_4_0 ;
  wire [0:0]\up_rdata[1]_i_4_1 ;
  wire \up_rdata[1]_i_4_2 ;
  wire \up_rdata[1]_i_5_n_0 ;
  wire \up_rdata[1]_i_6_n_0 ;
  wire \up_rdata[1]_i_7_n_0 ;
  wire \up_rdata[20]_i_2_n_0 ;
  wire \up_rdata[20]_i_3_n_0 ;
  wire \up_rdata[20]_i_4_0 ;
  wire \up_rdata[20]_i_4_n_0 ;
  wire \up_rdata[20]_i_5_n_0 ;
  wire \up_rdata[21]_i_2_n_0 ;
  wire \up_rdata[21]_i_3_n_0 ;
  wire \up_rdata[21]_i_4_0 ;
  wire \up_rdata[21]_i_4_n_0 ;
  wire \up_rdata[21]_i_5_n_0 ;
  wire \up_rdata[22]_i_2_n_0 ;
  wire \up_rdata[22]_i_3_n_0 ;
  wire \up_rdata[22]_i_4_0 ;
  wire \up_rdata[22]_i_4_n_0 ;
  wire \up_rdata[22]_i_5_n_0 ;
  wire \up_rdata[23]_i_2_n_0 ;
  wire \up_rdata[23]_i_3_n_0 ;
  wire [21:0]\up_rdata[23]_i_4_0 ;
  wire \up_rdata[23]_i_4_1 ;
  wire \up_rdata[23]_i_4_n_0 ;
  wire \up_rdata[23]_i_5_n_0 ;
  wire \up_rdata[23]_i_6_n_0 ;
  wire \up_rdata[24]_i_2_n_0 ;
  wire \up_rdata[25]_i_2_n_0 ;
  wire \up_rdata[26]_i_2_n_0 ;
  wire \up_rdata[27]_i_2_n_0 ;
  wire \up_rdata[27]_i_5_n_0 ;
  wire \up_rdata[28]_i_2_n_0 ;
  wire \up_rdata[28]_i_3_n_0 ;
  wire \up_rdata[28]_i_4_n_0 ;
  wire \up_rdata[29]_i_2_n_0 ;
  wire \up_rdata[29]_i_3_n_0 ;
  wire \up_rdata[29]_i_4_n_0 ;
  wire \up_rdata[29]_i_5_n_0 ;
  wire \up_rdata[2]_i_2_n_0 ;
  wire \up_rdata[2]_i_5_n_0 ;
  wire \up_rdata[2]_i_7_n_0 ;
  wire \up_rdata[30]_i_2_n_0 ;
  wire \up_rdata[31]_i_10_n_0 ;
  wire \up_rdata[31]_i_11_n_0 ;
  wire \up_rdata[31]_i_12_n_0 ;
  wire \up_rdata[31]_i_13_n_0 ;
  wire \up_rdata[31]_i_14_n_0 ;
  wire \up_rdata[31]_i_15_n_0 ;
  wire \up_rdata[31]_i_16_n_0 ;
  wire \up_rdata[31]_i_17_n_0 ;
  wire \up_rdata[31]_i_18_n_0 ;
  wire \up_rdata[31]_i_19_n_0 ;
  wire \up_rdata[31]_i_20_n_0 ;
  wire \up_rdata[31]_i_2_n_0 ;
  wire \up_rdata[31]_i_3_n_0 ;
  wire \up_rdata[31]_i_4_n_0 ;
  wire \up_rdata[31]_i_5_n_0 ;
  wire [2:0]\up_rdata[31]_i_6_0 ;
  wire \up_rdata[31]_i_7_n_0 ;
  wire \up_rdata[3]_i_2_n_0 ;
  wire \up_rdata[3]_i_5_n_0 ;
  wire \up_rdata[3]_i_7_n_0 ;
  wire \up_rdata[4]_i_2_n_0 ;
  wire \up_rdata[4]_i_4_0 ;
  wire \up_rdata[4]_i_4_n_0 ;
  wire \up_rdata[4]_i_5_n_0 ;
  wire \up_rdata[5]_i_2_n_0 ;
  wire \up_rdata[5]_i_4_0 ;
  wire \up_rdata[5]_i_4_n_0 ;
  wire \up_rdata[5]_i_5_n_0 ;
  wire \up_rdata[6]_i_2_n_0 ;
  wire \up_rdata[6]_i_4_0 ;
  wire \up_rdata[6]_i_4_n_0 ;
  wire \up_rdata[6]_i_5_n_0 ;
  wire \up_rdata[7]_i_2_n_0 ;
  wire \up_rdata[7]_i_3_n_0 ;
  wire \up_rdata[7]_i_4_0 ;
  wire \up_rdata[7]_i_4_n_0 ;
  wire \up_rdata[7]_i_5_n_0 ;
  wire \up_rdata[8]_i_2_n_0 ;
  wire \up_rdata[8]_i_4_0 ;
  wire \up_rdata[8]_i_4_n_0 ;
  wire \up_rdata[8]_i_5_n_0 ;
  wire \up_rdata[9]_i_2_n_0 ;
  wire \up_rdata[9]_i_4_0 ;
  wire \up_rdata[9]_i_4_n_0 ;
  wire \up_rdata[9]_i_5_n_0 ;
  wire [31:0]up_rdata_d;
  wire \up_rdata_d[13]_i_1_n_0 ;
  wire \up_rdata_d[17]_i_1_n_0 ;
  wire \up_rdata_d[1]_i_1_n_0 ;
  wire \up_rdata_d[20]_i_1_n_0 ;
  wire \up_rdata_d[22]_i_1_n_0 ;
  wire \up_rdata_d[24]_i_1_n_0 ;
  wire \up_rdata_d[29]_i_1_n_0 ;
  wire \up_rdata_d[4]_i_1_n_0 ;
  wire \up_rdata_d[6]_i_1_n_0 ;
  wire \up_rdata_d[8]_i_1_n_0 ;
  wire [31:0]\up_rdata_d_reg[31]_0 ;
  wire \up_rdata_reg[0] ;
  wire \up_rdata_reg[0]_0 ;
  wire \up_rdata_reg[10] ;
  wire \up_rdata_reg[11] ;
  wire \up_rdata_reg[16] ;
  wire \up_rdata_reg[17] ;
  wire \up_rdata_reg[18] ;
  wire \up_rdata_reg[19] ;
  wire \up_rdata_reg[1] ;
  wire \up_rdata_reg[24] ;
  wire \up_rdata_reg[25] ;
  wire \up_rdata_reg[26] ;
  wire \up_rdata_reg[27] ;
  wire [7:0]\up_rdata_reg[29] ;
  wire \up_rdata_reg[2] ;
  wire \up_rdata_reg[2]_0 ;
  wire [31:0]\up_rdata_reg[31] ;
  wire \up_rdata_reg[3] ;
  wire \up_rdata_reg[3]_0 ;
  wire \up_rdata_reg[4] ;
  wire \up_rdata_reg[5] ;
  wire \up_rdata_reg[6] ;
  wire \up_rdata_reg[7] ;
  wire \up_rdata_reg[8] ;
  wire \up_rdata_reg[9] ;
  wire [31:0]up_rdata_s;
  wire up_rreq;
  wire up_rreq_int_i_1_n_0;
  wire up_rsel_i_1_n_0;
  wire up_rsel_reg_n_0;
  wire \up_scratch[31]_i_2_n_0 ;
  wire \up_scratch[31]_i_3_n_0 ;
  wire [31:0]\up_scratch_reg[31] ;
  wire up_wack;
  wire up_wack_d;
  wire up_wack_s;
  wire up_wack_s_0;
  wire [8:0]up_waddr;
  wire [0:0]\up_waddr_int_reg[0]_0 ;
  wire \up_wcount[0]_i_1_n_0 ;
  wire \up_wcount[1]_i_1_n_0 ;
  wire \up_wcount[2]_i_1_n_0 ;
  wire \up_wcount[3]_i_1_n_0 ;
  wire \up_wcount[4]_i_1_n_0 ;
  wire \up_wcount[4]_i_2_n_0 ;
  wire \up_wcount_reg_n_0_[0] ;
  wire \up_wcount_reg_n_0_[1] ;
  wire \up_wcount_reg_n_0_[2] ;
  wire \up_wcount_reg_n_0_[3] ;
  wire \up_wdata_int_reg[0]_0 ;
  wire \up_wdata_int_reg[1]_0 ;
  wire \up_wdata_int_reg[1]_1 ;
  wire \up_wdata_int_reg[2]_0 ;
  wire up_wreq;
  wire up_wreq_int_i_1_n_0;
  wire [0:0]up_wreq_int_reg_0;
  wire up_wreq_int_reg_1;
  wire [0:0]up_wreq_int_reg_2;
  wire up_wsel_i_1_n_0;
  wire up_wsel_reg_n_0;

  LUT3 #(
    .INIT(8'hB8)) 
    ctrl_enable_i_1
       (.I0(Q[0]),
        .I1(ctrl_enable_i_2_n_0),
        .I2(ctrl_enable_reg),
        .O(\up_wdata_int_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    ctrl_enable_i_2
       (.I0(up_wreq),
        .I1(ctrl_enable_i_3_n_0),
        .I2(up_waddr[2]),
        .I3(up_waddr[1]),
        .I4(\up_scratch[31]_i_3_n_0 ),
        .I5(up_waddr[8]),
        .O(ctrl_enable_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ctrl_enable_i_3
       (.I0(up_waddr[0]),
        .I1(up_waddr[7]),
        .I2(up_waddr[5]),
        .I3(up_waddr[6]),
        .O(ctrl_enable_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ctrl_pause_i_1
       (.I0(Q[1]),
        .I1(ctrl_enable_i_2_n_0),
        .I2(ctrl_pause),
        .O(\up_wdata_int_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \data[25]_i_2 
       (.I0(\data[25]_i_3_n_0 ),
        .I1(up_raddr[7]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\data[25]_i_4_n_0 ),
        .I4(\up_raddr_int_reg[4]_0 [3]),
        .I5(up_rreq),
        .O(p_8_in));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data[25]_i_3 
       (.I0(up_raddr[6]),
        .I1(up_raddr[5]),
        .O(\data[25]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \data[25]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(up_raddr[0]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(up_raddr[8]),
        .O(\data[25]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    up_axi_arready_int_i_1
       (.I0(s_axi_arready),
        .I1(up_rack_s),
        .O(up_axi_arready_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_arready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_arready_int_i_1_n_0),
        .Q(s_axi_arready),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    up_axi_awready_int_i_1
       (.I0(s_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h4)) 
    up_axi_awready_int_i_2
       (.I0(s_axi_awready),
        .I1(up_wack_s_0),
        .O(up_axi_awready_int_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_awready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_awready_int_i_2_n_0),
        .Q(s_axi_awready),
        .R(SR));
  LUT4 #(
    .INIT(16'h0C88)) 
    up_axi_bvalid_int_i_1
       (.I0(up_wack_d),
        .I1(s_axi_aresetn),
        .I2(s_axi_bready),
        .I3(s_axi_bvalid),
        .O(up_axi_bvalid_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_bvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_bvalid_int_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8F)) 
    \up_axi_rdata_int[31]_i_1 
       (.I0(up_axi_rvalid_int_reg_0),
        .I1(s_axi_rready),
        .I2(s_axi_aresetn),
        .O(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[0]),
        .Q(s_axi_rdata[0]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[10]),
        .Q(s_axi_rdata[10]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[11]),
        .Q(s_axi_rdata[11]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[12]),
        .Q(s_axi_rdata[12]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[13]),
        .Q(s_axi_rdata[13]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[14]),
        .Q(s_axi_rdata[14]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[15]),
        .Q(s_axi_rdata[15]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[16]),
        .Q(s_axi_rdata[16]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[17]),
        .Q(s_axi_rdata[17]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[18]),
        .Q(s_axi_rdata[18]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[19]),
        .Q(s_axi_rdata[19]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[1]),
        .Q(s_axi_rdata[1]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[20]),
        .Q(s_axi_rdata[20]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[21]),
        .Q(s_axi_rdata[21]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[22]),
        .Q(s_axi_rdata[22]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[23]),
        .Q(s_axi_rdata[23]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[24]),
        .Q(s_axi_rdata[24]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[25]),
        .Q(s_axi_rdata[25]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[26]),
        .Q(s_axi_rdata[26]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[27]),
        .Q(s_axi_rdata[27]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[28]),
        .Q(s_axi_rdata[28]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[29]),
        .Q(s_axi_rdata[29]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[2]),
        .Q(s_axi_rdata[2]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[30]),
        .Q(s_axi_rdata[30]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[31]),
        .Q(s_axi_rdata[31]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[3]),
        .Q(s_axi_rdata[3]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[4]),
        .Q(s_axi_rdata[4]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[5]),
        .Q(s_axi_rdata[5]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[6]),
        .Q(s_axi_rdata[6]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[7]),
        .Q(s_axi_rdata[7]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[8]),
        .Q(s_axi_rdata[8]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[9]),
        .Q(s_axi_rdata[9]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0C88)) 
    up_axi_rvalid_int_i_1
       (.I0(up_rack_d),
        .I1(s_axi_aresetn),
        .I2(s_axi_rready),
        .I3(up_axi_rvalid_int_reg_0),
        .O(up_axi_rvalid_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_rvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_rvalid_int_i_1_n_0),
        .Q(up_axi_rvalid_int_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h4)) 
    up_axi_wready_int_i_1
       (.I0(s_axi_wready),
        .I1(up_wack_s_0),
        .O(up_axi_wready_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_wready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_wready_int_i_1_n_0),
        .Q(s_axi_wready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \up_dma_dest_address[29]_i_1 
       (.I0(up_wreq),
        .I1(\up_dma_dest_address[29]_i_2_n_0 ),
        .I2(up_waddr[2]),
        .I3(up_waddr[0]),
        .I4(up_waddr[1]),
        .O(up_wreq_int_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \up_dma_dest_address[29]_i_2 
       (.I0(up_waddr[8]),
        .I1(up_waddr[7]),
        .I2(up_waddr[4]),
        .I3(up_waddr[3]),
        .I4(up_waddr[6]),
        .I5(up_waddr[5]),
        .O(\up_dma_dest_address[29]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    up_dma_enable_tlen_reporting_i_1
       (.I0(Q[2]),
        .I1(\i_regmap_request/up_dma_last ),
        .I2(p_3_in),
        .O(\up_wdata_int_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    up_dma_enable_tlen_reporting_i_2
       (.I0(\up_dma_dest_address[29]_i_2_n_0 ),
        .I1(up_waddr[2]),
        .I2(up_waddr[0]),
        .I3(up_waddr[1]),
        .I4(up_wreq),
        .O(\i_regmap_request/up_dma_last ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    up_dma_last_i_1
       (.I0(Q[1]),
        .I1(\i_regmap_request/up_dma_last ),
        .I2(up_dma_last),
        .O(\up_wdata_int_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hE000E0A000000000)) 
    up_dma_req_valid_i_1
       (.I0(up_dma_req_valid),
        .I1(Q[0]),
        .I2(s_axi_aresetn),
        .I3(\i_regmap_request/up_dma_req_valid0 ),
        .I4(E),
        .I5(ctrl_enable_reg),
        .O(up_dma_req_valid_reg));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    up_dma_req_valid_i_2
       (.I0(ctrl_enable_i_3_n_0),
        .I1(up_waddr[2]),
        .I2(up_waddr[8]),
        .I3(\up_scratch[31]_i_3_n_0 ),
        .I4(up_waddr[1]),
        .I5(up_wreq),
        .O(\i_regmap_request/up_dma_req_valid0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \up_dma_x_length[23]_i_1 
       (.I0(up_waddr[0]),
        .I1(up_waddr[3]),
        .I2(\up_dma_x_length[23]_i_2_n_0 ),
        .I3(\up_dma_x_length[23]_i_3_n_0 ),
        .O(\up_waddr_int_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \up_dma_x_length[23]_i_2 
       (.I0(up_waddr[2]),
        .I1(up_waddr[8]),
        .I2(up_wreq),
        .I3(up_waddr[1]),
        .O(\up_dma_x_length[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \up_dma_x_length[23]_i_3 
       (.I0(up_waddr[6]),
        .I1(up_waddr[7]),
        .I2(up_waddr[4]),
        .I3(up_waddr[5]),
        .O(\up_dma_x_length[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \up_irq_mask[1]_i_2 
       (.I0(up_wreq),
        .I1(up_waddr[6]),
        .I2(up_waddr[0]),
        .I3(\up_irq_mask[1]_i_3_n_0 ),
        .I4(\up_irq_mask[1]_i_4_n_0 ),
        .I5(up_waddr[5]),
        .O(up_wreq_int_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \up_irq_mask[1]_i_3 
       (.I0(up_waddr[7]),
        .I1(up_waddr[8]),
        .O(\up_irq_mask[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \up_irq_mask[1]_i_4 
       (.I0(up_waddr[3]),
        .I1(up_waddr[4]),
        .I2(up_waddr[1]),
        .I3(up_waddr[2]),
        .O(\up_irq_mask[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBFAA)) 
    \up_irq_source[0]_i_1 
       (.I0(E),
        .I1(up_irq_source_clear1__6),
        .I2(Q[0]),
        .I3(\up_irq_source_reg[1] [0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hBFAA)) 
    \up_irq_source[1]_i_1 
       (.I0(up_eot),
        .I1(up_irq_source_clear1__6),
        .I2(Q[1]),
        .I3(\up_irq_source_reg[1] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \up_irq_source[1]_i_2 
       (.I0(up_wreq),
        .I1(\up_irq_source[1]_i_3_n_0 ),
        .I2(up_waddr[2]),
        .I3(up_waddr[5]),
        .I4(\up_scratch[31]_i_3_n_0 ),
        .I5(up_waddr[0]),
        .O(up_irq_source_clear1__6));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \up_irq_source[1]_i_3 
       (.I0(up_waddr[8]),
        .I1(up_waddr[7]),
        .I2(up_waddr[1]),
        .I3(up_waddr[6]),
        .O(\up_irq_source[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAAA0000AAAA0000)) 
    up_rack_d_i_1
       (.I0(up_rack),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(\up_rcount_reg_n_0_[1] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(p_0_in6_in),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rack_s));
  FDRE #(
    .INIT(1'b0)) 
    up_rack_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rack_s),
        .Q(up_rack_d),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \up_raddr_int[8]_i_1 
       (.I0(up_rsel_reg_n_0),
        .O(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[0]),
        .Q(up_raddr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[1]),
        .Q(\up_raddr_int_reg[4]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[2]),
        .Q(\up_raddr_int_reg[4]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[3]),
        .Q(\up_raddr_int_reg[4]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[4]),
        .Q(\up_raddr_int_reg[4]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[5]),
        .Q(up_raddr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[6]),
        .Q(up_raddr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[7]),
        .Q(up_raddr[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[8]),
        .Q(up_raddr[8]),
        .R(SR));
  LUT3 #(
    .INIT(8'h04)) 
    \up_rcount[0]_i_1 
       (.I0(\up_rcount_reg_n_0_[0] ),
        .I1(p_0_in6_in),
        .I2(up_rack),
        .O(\up_rcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \up_rcount[1]_i_1 
       (.I0(\up_rcount_reg_n_0_[1] ),
        .I1(\up_rcount_reg_n_0_[0] ),
        .I2(p_0_in6_in),
        .I3(up_rack),
        .O(\up_rcount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00007080)) 
    \up_rcount[2]_i_1 
       (.I0(\up_rcount_reg_n_0_[1] ),
        .I1(\up_rcount_reg_n_0_[0] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(up_rack),
        .O(\up_rcount[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006A00AA00)) 
    \up_rcount[3]_i_1 
       (.I0(\up_rcount_reg_n_0_[3] ),
        .I1(\up_rcount_reg_n_0_[1] ),
        .I2(\up_rcount_reg_n_0_[0] ),
        .I3(p_0_in6_in),
        .I4(\up_rcount_reg_n_0_[2] ),
        .I5(up_rack),
        .O(\up_rcount[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \up_rcount[4]_i_1 
       (.I0(p_0_in6_in),
        .I1(up_rreq),
        .O(\up_rcount[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF7FFFFFFF)) 
    \up_rcount[4]_i_2 
       (.I0(\up_rcount_reg_n_0_[3] ),
        .I1(\up_rcount_reg_n_0_[1] ),
        .I2(\up_rcount_reg_n_0_[0] ),
        .I3(p_0_in6_in),
        .I4(\up_rcount_reg_n_0_[2] ),
        .I5(up_rack),
        .O(\up_rcount[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[0]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[1]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[2]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[3]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[4]_i_2_n_0 ),
        .Q(p_0_in6_in),
        .R(SR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[0]_i_1 
       (.I0(\up_rdata[0]_i_2_n_0 ),
        .I1(\up_rdata[0]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[0]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(src_request_id[0]),
        .O(\up_scratch_reg[31] [0]));
  LUT6 #(
    .INIT(64'hCFA040F0C0A040F0)) 
    \up_rdata[0]_i_2 
       (.I0(\up_rdata_reg[0]_0 ),
        .I1(\up_irq_source_reg[1] [0]),
        .I2(\up_rdata[31]_i_7_n_0 ),
        .I3(\up_raddr_int_reg[7]_0 ),
        .I4(\up_raddr_int_reg[6]_0 ),
        .I5(\up_rdata_reg[31] [0]),
        .O(\up_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[0]_i_3 
       (.I0(data8[0]),
        .I1(dbg_status[0]),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(ctrl_enable_reg),
        .I4(\up_raddr_int_reg[6]_0 ),
        .O(\up_rdata[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \up_rdata[0]_i_4 
       (.I0(\up_rdata[0]_i_5_n_0 ),
        .I1(up_raddr[0]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_rdata_reg[0] ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .O(data10[0]));
  LUT6 #(
    .INIT(64'h88B8888888888888)) 
    \up_rdata[0]_i_5 
       (.I0(\up_rdata[0]_i_7_n_0 ),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [3]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_raddr_int_reg[4]_0 [1]),
        .I5(\up_rdata[1]_i_4_0 [22]),
        .O(\up_rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h05004F4F05004A4A)) 
    \up_rdata[0]_i_7 
       (.I0(\up_raddr_int_reg[4]_0 [1]),
        .I1(\up_rdata[31]_i_6_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_rdata[23]_i_4_0 [0]),
        .I4(\up_raddr_int_reg[4]_0 [3]),
        .I5(up_dma_req_valid),
        .O(\up_rdata[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[10]_i_1 
       (.I0(\up_rdata[10]_i_2_n_0 ),
        .I1(\up_rdata_reg[10] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[10]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [10]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[10]_i_2 
       (.I0(\up_rdata_reg[31] [10]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[31]_i_7_n_0 ),
        .O(\up_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \up_rdata[10]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[1]_i_4_0 [8]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_rdata[23]_i_5_n_0 ),
        .I4(up_raddr[0]),
        .I5(\up_rdata[10]_i_5_n_0 ),
        .O(\up_rdata[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00380000)) 
    \up_rdata[10]_i_5 
       (.I0(\up_rdata[23]_i_4_0 [8]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[10]_i_4_0 ),
        .O(\up_rdata[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[11]_i_1 
       (.I0(\up_rdata[11]_i_2_n_0 ),
        .I1(\up_rdata_reg[11] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[11]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [11]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[11]_i_2 
       (.I0(\up_rdata_reg[31] [11]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[31]_i_7_n_0 ),
        .O(\up_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \up_rdata[11]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[1]_i_4_0 [9]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_rdata[23]_i_5_n_0 ),
        .I4(up_raddr[0]),
        .I5(\up_rdata[11]_i_5_n_0 ),
        .O(\up_rdata[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00380000)) 
    \up_rdata[11]_i_5 
       (.I0(\up_rdata[23]_i_4_0 [9]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[11]_i_4_0 ),
        .O(\up_rdata[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[12]_i_1 
       (.I0(\up_rdata[12]_i_2_n_0 ),
        .I1(\up_rdata[12]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[12]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [12]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[12]_i_2 
       (.I0(\up_rdata_reg[31] [12]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[31]_i_7_n_0 ),
        .O(\up_rdata[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[12]_i_3 
       (.I0(m_dest_axi_awaddr[0]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \up_rdata[12]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[1]_i_4_0 [10]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_rdata[23]_i_5_n_0 ),
        .I4(up_raddr[0]),
        .I5(\up_rdata[12]_i_5_n_0 ),
        .O(\up_rdata[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00380000)) 
    \up_rdata[12]_i_5 
       (.I0(\up_rdata[23]_i_4_0 [10]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[12]_i_4_0 ),
        .O(\up_rdata[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[13]_i_1 
       (.I0(\up_rdata[13]_i_2_n_0 ),
        .I1(\up_rdata[13]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[13]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [13]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[13]_i_2 
       (.I0(\up_rdata_reg[31] [13]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[31]_i_7_n_0 ),
        .O(\up_rdata[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[13]_i_3 
       (.I0(m_dest_axi_awaddr[1]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \up_rdata[13]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[1]_i_4_0 [11]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_rdata[23]_i_5_n_0 ),
        .I4(up_raddr[0]),
        .I5(\up_rdata[13]_i_5_n_0 ),
        .O(\up_rdata[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00380000)) 
    \up_rdata[13]_i_5 
       (.I0(\up_rdata[23]_i_4_0 [11]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[13]_i_4_0 ),
        .O(\up_rdata[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[14]_i_1 
       (.I0(\up_rdata[14]_i_2_n_0 ),
        .I1(\up_rdata[14]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[14]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h4202)) 
    \up_rdata[14]_i_2 
       (.I0(\up_rdata[31]_i_7_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[6]_0 ),
        .I3(\up_rdata_reg[31] [14]),
        .O(\up_rdata[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[14]_i_3 
       (.I0(m_dest_axi_awaddr[2]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \up_rdata[14]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[1]_i_4_0 [12]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_rdata[23]_i_5_n_0 ),
        .I4(up_raddr[0]),
        .I5(\up_rdata[14]_i_5_n_0 ),
        .O(\up_rdata[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00380000)) 
    \up_rdata[14]_i_5 
       (.I0(\up_rdata[23]_i_4_0 [12]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[14]_i_4_0 ),
        .O(\up_rdata[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[15]_i_1 
       (.I0(\up_rdata[15]_i_2_n_0 ),
        .I1(\up_rdata[15]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[15]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [15]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[15]_i_2 
       (.I0(\up_rdata_reg[31] [15]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[31]_i_7_n_0 ),
        .O(\up_rdata[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[15]_i_3 
       (.I0(m_dest_axi_awaddr[3]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \up_rdata[15]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[1]_i_4_0 [13]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_rdata[23]_i_5_n_0 ),
        .I4(up_raddr[0]),
        .I5(\up_rdata[15]_i_5_n_0 ),
        .O(\up_rdata[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00380000)) 
    \up_rdata[15]_i_5 
       (.I0(\up_rdata[23]_i_4_0 [13]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[15]_i_4_0 ),
        .O(\up_rdata[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[16]_i_1 
       (.I0(\up_rdata[16]_i_2_n_0 ),
        .I1(\up_rdata_reg[16] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[16]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [16]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4202)) 
    \up_rdata[16]_i_2 
       (.I0(\up_rdata[31]_i_7_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[6]_0 ),
        .I3(\up_rdata_reg[31] [16]),
        .O(\up_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \up_rdata[16]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[1]_i_4_0 [14]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_rdata[23]_i_5_n_0 ),
        .I4(up_raddr[0]),
        .I5(\up_rdata[16]_i_5_n_0 ),
        .O(\up_rdata[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00380000)) 
    \up_rdata[16]_i_5 
       (.I0(\up_rdata[23]_i_4_0 [14]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[16]_i_4_0 ),
        .O(\up_rdata[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[17]_i_1 
       (.I0(\up_rdata[17]_i_2_n_0 ),
        .I1(\up_rdata_reg[17] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[17]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [17]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[17]_i_2 
       (.I0(\up_rdata_reg[31] [17]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[31]_i_7_n_0 ),
        .O(\up_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \up_rdata[17]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[1]_i_4_0 [15]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_rdata[23]_i_5_n_0 ),
        .I4(up_raddr[0]),
        .I5(\up_rdata[17]_i_5_n_0 ),
        .O(\up_rdata[17]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00380000)) 
    \up_rdata[17]_i_5 
       (.I0(\up_rdata[23]_i_4_0 [15]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[17]_i_4_0 ),
        .O(\up_rdata[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[18]_i_1 
       (.I0(\up_rdata[18]_i_2_n_0 ),
        .I1(\up_rdata_reg[18] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[18]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [18]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h5313)) 
    \up_rdata[18]_i_2 
       (.I0(\up_rdata[31]_i_7_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[6]_0 ),
        .I3(\up_rdata_reg[31] [18]),
        .O(\up_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \up_rdata[18]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[1]_i_4_0 [16]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_rdata[23]_i_5_n_0 ),
        .I4(up_raddr[0]),
        .I5(\up_rdata[18]_i_5_n_0 ),
        .O(\up_rdata[18]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00380000)) 
    \up_rdata[18]_i_5 
       (.I0(\up_rdata[23]_i_4_0 [16]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[18]_i_4_0 ),
        .O(\up_rdata[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[19]_i_1 
       (.I0(\up_rdata[19]_i_2_n_0 ),
        .I1(\up_rdata_reg[19] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[19]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [19]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h4202)) 
    \up_rdata[19]_i_2 
       (.I0(\up_rdata[31]_i_7_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[6]_0 ),
        .I3(\up_rdata_reg[31] [19]),
        .O(\up_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \up_rdata[19]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[1]_i_4_0 [17]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_rdata[23]_i_5_n_0 ),
        .I4(up_raddr[0]),
        .I5(\up_rdata[19]_i_5_n_0 ),
        .O(\up_rdata[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00380000)) 
    \up_rdata[19]_i_5 
       (.I0(\up_rdata[23]_i_4_0 [17]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[19]_i_4_0 ),
        .O(\up_rdata[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[1]_i_1 
       (.I0(\up_rdata[1]_i_2_n_0 ),
        .I1(\up_rdata[1]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[1]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(src_request_id[1]),
        .O(\up_scratch_reg[31] [1]));
  LUT6 #(
    .INIT(64'hCFAF40FFC0AF40FF)) 
    \up_rdata[1]_i_2 
       (.I0(\up_rdata_reg[1] ),
        .I1(\up_irq_source_reg[1] [1]),
        .I2(\up_rdata[31]_i_7_n_0 ),
        .I3(\up_raddr_int_reg[7]_0 ),
        .I4(\up_raddr_int_reg[6]_0 ),
        .I5(\up_rdata_reg[31] [1]),
        .O(\up_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[1]_i_3 
       (.I0(data8[1]),
        .I1(dbg_status[1]),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(ctrl_pause),
        .I4(\up_raddr_int_reg[6]_0 ),
        .O(\up_rdata[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \up_rdata[1]_i_4 
       (.I0(\up_rdata[1]_i_5_n_0 ),
        .I1(up_raddr[0]),
        .I2(\up_rdata[1]_i_6_n_0 ),
        .I3(\up_rdata[29]_i_4_n_0 ),
        .O(data10[1]));
  LUT6 #(
    .INIT(64'h88B8888888888888)) 
    \up_rdata[1]_i_5 
       (.I0(\up_rdata[1]_i_7_n_0 ),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [3]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_raddr_int_reg[4]_0 [1]),
        .I5(\up_rdata[1]_i_4_0 [23]),
        .O(\up_rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF100010)) 
    \up_rdata[1]_i_6 
       (.I0(\up_raddr_int_reg[4]_0 [3]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(\up_rdata[1]_i_4_1 ),
        .I3(\up_raddr_int_reg[4]_0 [0]),
        .I4(\up_rdata[1]_i_4_2 ),
        .I5(\up_raddr_int_reg[4]_0 [1]),
        .O(\up_rdata[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h054A004A)) 
    \up_rdata[1]_i_7 
       (.I0(\up_raddr_int_reg[4]_0 [1]),
        .I1(\up_rdata[31]_i_6_0 [1]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [3]),
        .I4(\up_rdata[23]_i_4_0 [1]),
        .O(\up_rdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[20]_i_1 
       (.I0(\up_rdata[20]_i_2_n_0 ),
        .I1(\up_rdata[20]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[20]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [20]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[20]_i_2 
       (.I0(\up_rdata_reg[31] [20]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[31]_i_7_n_0 ),
        .O(\up_rdata[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[20]_i_3 
       (.I0(m_dest_axi_awaddr[4]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \up_rdata[20]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[1]_i_4_0 [18]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_rdata[23]_i_5_n_0 ),
        .I4(up_raddr[0]),
        .I5(\up_rdata[20]_i_5_n_0 ),
        .O(\up_rdata[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00380000)) 
    \up_rdata[20]_i_5 
       (.I0(\up_rdata[23]_i_4_0 [18]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[20]_i_4_0 ),
        .O(\up_rdata[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[21]_i_1 
       (.I0(\up_rdata[21]_i_2_n_0 ),
        .I1(\up_rdata[21]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[21]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [21]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[21]_i_2 
       (.I0(\up_rdata_reg[31] [21]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[31]_i_7_n_0 ),
        .O(\up_rdata[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[21]_i_3 
       (.I0(m_dest_axi_awaddr[5]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \up_rdata[21]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[1]_i_4_0 [19]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_rdata[23]_i_5_n_0 ),
        .I4(up_raddr[0]),
        .I5(\up_rdata[21]_i_5_n_0 ),
        .O(\up_rdata[21]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00380000)) 
    \up_rdata[21]_i_5 
       (.I0(\up_rdata[23]_i_4_0 [19]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[21]_i_4_0 ),
        .O(\up_rdata[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[22]_i_1 
       (.I0(\up_rdata[22]_i_2_n_0 ),
        .I1(\up_rdata[22]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[22]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [22]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4202)) 
    \up_rdata[22]_i_2 
       (.I0(\up_rdata[31]_i_7_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[6]_0 ),
        .I3(\up_rdata_reg[31] [22]),
        .O(\up_rdata[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[22]_i_3 
       (.I0(m_dest_axi_awaddr[6]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \up_rdata[22]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[1]_i_4_0 [20]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_rdata[23]_i_5_n_0 ),
        .I4(up_raddr[0]),
        .I5(\up_rdata[22]_i_5_n_0 ),
        .O(\up_rdata[22]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00380000)) 
    \up_rdata[22]_i_5 
       (.I0(\up_rdata[23]_i_4_0 [20]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[22]_i_4_0 ),
        .O(\up_rdata[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[23]_i_1 
       (.I0(\up_rdata[23]_i_2_n_0 ),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[23]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [23]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[23]_i_2 
       (.I0(\up_rdata_reg[31] [23]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[31]_i_7_n_0 ),
        .O(\up_rdata[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[23]_i_3 
       (.I0(m_dest_axi_awaddr[7]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \up_rdata[23]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[1]_i_4_0 [21]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_rdata[23]_i_5_n_0 ),
        .I4(up_raddr[0]),
        .I5(\up_rdata[23]_i_6_n_0 ),
        .O(\up_rdata[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \up_rdata[23]_i_5 
       (.I0(\up_raddr_int_reg[4]_0 [1]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .O(\up_rdata[23]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00380000)) 
    \up_rdata[23]_i_6 
       (.I0(\up_rdata[23]_i_4_0 [21]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[23]_i_4_1 ),
        .O(\up_rdata[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[24]_i_1 
       (.I0(\up_rdata[24]_i_2_n_0 ),
        .I1(\up_rdata_reg[24] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[24]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(dbg_ids1[0]),
        .O(\up_scratch_reg[31] [24]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[24]_i_2 
       (.I0(\up_rdata_reg[31] [24]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[31]_i_7_n_0 ),
        .O(\up_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \up_rdata[24]_i_4 
       (.I0(up_raddr[0]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_rdata_reg[29] [2]),
        .I4(\up_rdata[27]_i_5_n_0 ),
        .I5(\up_rdata[29]_i_4_n_0 ),
        .O(data10[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[25]_i_1 
       (.I0(\up_rdata[25]_i_2_n_0 ),
        .I1(\up_rdata_reg[25] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[25]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(dbg_ids1[1]),
        .O(\up_scratch_reg[31] [25]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[25]_i_2 
       (.I0(\up_rdata_reg[31] [25]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[31]_i_7_n_0 ),
        .O(\up_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \up_rdata[25]_i_4 
       (.I0(up_raddr[0]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_rdata_reg[29] [3]),
        .I4(\up_rdata[27]_i_5_n_0 ),
        .I5(\up_rdata[29]_i_4_n_0 ),
        .O(data10[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[26]_i_1 
       (.I0(\up_rdata[26]_i_2_n_0 ),
        .I1(\up_rdata_reg[26] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[26]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(dbg_ids1[2]),
        .O(\up_scratch_reg[31] [26]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h4202)) 
    \up_rdata[26]_i_2 
       (.I0(\up_rdata[31]_i_7_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[6]_0 ),
        .I3(\up_rdata_reg[31] [26]),
        .O(\up_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \up_rdata[26]_i_4 
       (.I0(up_raddr[0]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_rdata_reg[29] [4]),
        .I4(\up_rdata[27]_i_5_n_0 ),
        .I5(\up_rdata[29]_i_4_n_0 ),
        .O(data10[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[27]_i_1 
       (.I0(\up_rdata[27]_i_2_n_0 ),
        .I1(\up_rdata_reg[27] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[27]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(dbg_ids1[3]),
        .O(\up_scratch_reg[31] [27]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[27]_i_2 
       (.I0(\up_rdata_reg[31] [27]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[31]_i_7_n_0 ),
        .O(\up_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \up_rdata[27]_i_4 
       (.I0(up_raddr[0]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_rdata_reg[29] [5]),
        .I4(\up_rdata[27]_i_5_n_0 ),
        .I5(\up_rdata[29]_i_4_n_0 ),
        .O(data10[27]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \up_rdata[27]_i_5 
       (.I0(\up_raddr_int_reg[4]_0 [0]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .O(\up_rdata[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[28]_i_1 
       (.I0(\up_rdata[28]_i_2_n_0 ),
        .I1(\up_rdata[28]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[28]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [28]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[28]_i_2 
       (.I0(\up_rdata_reg[31] [28]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[31]_i_7_n_0 ),
        .O(\up_rdata[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[28]_i_3 
       (.I0(m_dest_axi_awaddr[8]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \up_rdata[28]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [3]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata_reg[29] [6]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_raddr_int_reg[4]_0 [2]),
        .I5(up_raddr[0]),
        .O(\up_rdata[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[29]_i_1 
       (.I0(\up_rdata[29]_i_2_n_0 ),
        .I1(\up_rdata[29]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[29]_i_5_n_0 ),
        .O(\up_scratch_reg[31] [29]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[29]_i_2 
       (.I0(\up_rdata_reg[31] [29]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[31]_i_7_n_0 ),
        .O(\up_rdata[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[29]_i_3 
       (.I0(m_dest_axi_awaddr[9]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[29]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \up_rdata[29]_i_4 
       (.I0(up_raddr[8]),
        .I1(up_raddr[7]),
        .I2(up_raddr[5]),
        .I3(up_raddr[6]),
        .O(\up_rdata[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \up_rdata[29]_i_5 
       (.I0(\up_raddr_int_reg[4]_0 [3]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata_reg[29] [7]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_raddr_int_reg[4]_0 [2]),
        .I5(up_raddr[0]),
        .O(\up_rdata[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[2]_i_1 
       (.I0(\up_rdata[2]_i_2_n_0 ),
        .I1(\up_rdata_reg[2] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[2]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(src_request_id[2]),
        .O(\up_scratch_reg[31] [2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[2]_i_2 
       (.I0(\up_rdata_reg[31] [2]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[31]_i_7_n_0 ),
        .O(\up_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \up_rdata[2]_i_4 
       (.I0(\up_rdata[2]_i_5_n_0 ),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata_reg[2]_0 ),
        .I3(up_raddr[0]),
        .I4(\up_rdata[2]_i_7_n_0 ),
        .I5(\up_rdata[29]_i_4_n_0 ),
        .O(data10[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \up_rdata[2]_i_5 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_rdata_reg[29] [0]),
        .O(\up_rdata[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1010100000001000)) 
    \up_rdata[2]_i_7 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_raddr_int_reg[4]_0 [1]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(p_3_in),
        .I4(\up_raddr_int_reg[4]_0 [3]),
        .I5(\up_rdata[1]_i_4_0 [0]),
        .O(\up_rdata[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8A80808000000000)) 
    \up_rdata[30]_i_1 
       (.I0(\up_rdata[31]_i_4_n_0 ),
        .I1(\up_rdata[30]_i_2_n_0 ),
        .I2(\up_rdata[31]_i_2_n_0 ),
        .I3(\up_rdata[31]_i_3_n_0 ),
        .I4(\up_rdata_reg[31] [30]),
        .I5(\up_rdata[31]_i_5_n_0 ),
        .O(\up_scratch_reg[31] [30]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \up_rdata[30]_i_2 
       (.I0(\up_rdata[31]_i_7_n_0 ),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h40FF000040000000)) 
    \up_rdata[31]_i_1 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata[31]_i_3_n_0 ),
        .I2(\up_rdata_reg[31] [31]),
        .I3(\up_rdata[31]_i_4_n_0 ),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(data10[31]),
        .O(\up_scratch_reg[31] [31]));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFE0000)) 
    \up_rdata[31]_i_10 
       (.I0(\up_rdata[31]_i_18_n_0 ),
        .I1(up_raddr[8]),
        .I2(up_raddr[6]),
        .I3(up_raddr[7]),
        .I4(\up_rdata[31]_i_19_n_0 ),
        .I5(\up_rdata[31]_i_20_n_0 ),
        .O(\up_rdata[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \up_rdata[31]_i_11 
       (.I0(\up_raddr_int_reg[4]_0 [1]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(up_raddr[0]),
        .I5(\up_rdata[31]_i_6_0 [2]),
        .O(\up_rdata[31]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB5)) 
    \up_rdata[31]_i_12 
       (.I0(\up_raddr_int_reg[4]_0 [1]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(up_raddr[8]),
        .O(\up_rdata[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF6F66666666)) 
    \up_rdata[31]_i_13 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_raddr_int_reg[4]_0 [1]),
        .I2(up_raddr[8]),
        .I3(up_raddr[0]),
        .I4(\up_raddr_int_reg[4]_0 [0]),
        .I5(\up_raddr_int_reg[4]_0 [3]),
        .O(\up_rdata[31]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFC37)) 
    \up_rdata[31]_i_14 
       (.I0(up_raddr[8]),
        .I1(up_raddr[0]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .O(\up_rdata[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00010000A000B414)) 
    \up_rdata[31]_i_15 
       (.I0(\up_raddr_int_reg[4]_0 [1]),
        .I1(up_raddr[0]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(up_raddr[8]),
        .I5(\up_raddr_int_reg[4]_0 [3]),
        .O(\up_rdata[31]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hAAFFEF8A)) 
    \up_rdata[31]_i_16 
       (.I0(up_raddr[5]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(up_raddr[0]),
        .I3(\up_raddr_int_reg[4]_0 [0]),
        .I4(\up_raddr_int_reg[4]_0 [1]),
        .O(\up_rdata[31]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hDFDFBAEF)) 
    \up_rdata[31]_i_17 
       (.I0(\up_raddr_int_reg[4]_0 [1]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(up_raddr[8]),
        .I3(up_raddr[0]),
        .I4(\up_raddr_int_reg[4]_0 [2]),
        .O(\up_rdata[31]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \up_rdata[31]_i_18 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(up_raddr[5]),
        .I4(\up_raddr_int_reg[4]_0 [1]),
        .O(\up_rdata[31]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFFFFC)) 
    \up_rdata[31]_i_19 
       (.I0(up_raddr[5]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(up_raddr[8]),
        .O(\up_rdata[31]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \up_rdata[31]_i_2 
       (.I0(\up_rdata[31]_i_7_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \up_rdata[31]_i_20 
       (.I0(\up_raddr_int_reg[4]_0 [0]),
        .I1(up_raddr[0]),
        .I2(up_raddr[7]),
        .I3(up_raddr[6]),
        .O(\up_rdata[31]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \up_rdata[31]_i_3 
       (.I0(\up_rdata[31]_i_7_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[6]_0 ),
        .O(\up_rdata[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \up_rdata[31]_i_4 
       (.I0(\up_rdata[31]_i_7_n_0 ),
        .I1(\up_rdata[31]_i_10_n_0 ),
        .O(\up_rdata[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD5)) 
    \up_rdata[31]_i_5 
       (.I0(\up_rdata[31]_i_10_n_0 ),
        .I1(\up_rdata[31]_i_7_n_0 ),
        .I2(\up_raddr_int_reg[6]_0 ),
        .O(\up_rdata[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \up_rdata[31]_i_6 
       (.I0(\up_rdata[31]_i_11_n_0 ),
        .I1(up_raddr[6]),
        .I2(up_raddr[5]),
        .I3(up_raddr[7]),
        .I4(up_raddr[8]),
        .O(data10[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \up_rdata[31]_i_7 
       (.I0(\up_rdata[31]_i_12_n_0 ),
        .I1(up_raddr[7]),
        .I2(\up_rdata[31]_i_13_n_0 ),
        .I3(up_raddr[6]),
        .I4(up_raddr[5]),
        .I5(\up_rdata[31]_i_14_n_0 ),
        .O(\up_rdata[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000015100000000)) 
    \up_rdata[31]_i_8 
       (.I0(up_raddr[7]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(up_raddr[8]),
        .I3(up_raddr[5]),
        .I4(up_raddr[6]),
        .I5(\up_rdata[31]_i_15_n_0 ),
        .O(\up_raddr_int_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    \up_rdata[31]_i_9 
       (.I0(up_raddr[6]),
        .I1(up_raddr[7]),
        .I2(\up_raddr_int_reg[4]_0 [3]),
        .I3(up_raddr[8]),
        .I4(\up_rdata[31]_i_16_n_0 ),
        .I5(\up_rdata[31]_i_17_n_0 ),
        .O(\up_raddr_int_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[3]_i_1 
       (.I0(\up_rdata[3]_i_2_n_0 ),
        .I1(\up_rdata_reg[3] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[3]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(src_request_id[3]),
        .O(\up_scratch_reg[31] [3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[3]_i_2 
       (.I0(\up_rdata_reg[31] [3]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[31]_i_7_n_0 ),
        .O(\up_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \up_rdata[3]_i_4 
       (.I0(\up_rdata[3]_i_5_n_0 ),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata_reg[3]_0 ),
        .I3(up_raddr[0]),
        .I4(\up_rdata[3]_i_7_n_0 ),
        .I5(\up_rdata[29]_i_4_n_0 ),
        .O(data10[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \up_rdata[3]_i_5 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_rdata_reg[29] [1]),
        .O(\up_rdata[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \up_rdata[3]_i_7 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[1]_i_4_0 [1]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_raddr_int_reg[4]_0 [3]),
        .O(\up_rdata[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[4]_i_1 
       (.I0(\up_rdata[4]_i_2_n_0 ),
        .I1(\up_rdata_reg[4] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[4]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[4]_i_2 
       (.I0(\up_rdata_reg[31] [4]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[31]_i_7_n_0 ),
        .O(\up_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \up_rdata[4]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[1]_i_4_0 [2]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_rdata[23]_i_5_n_0 ),
        .I4(up_raddr[0]),
        .I5(\up_rdata[4]_i_5_n_0 ),
        .O(\up_rdata[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00380000)) 
    \up_rdata[4]_i_5 
       (.I0(\up_rdata[23]_i_4_0 [2]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[4]_i_4_0 ),
        .O(\up_rdata[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[5]_i_1 
       (.I0(\up_rdata[5]_i_2_n_0 ),
        .I1(\up_rdata_reg[5] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[5]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h5111)) 
    \up_rdata[5]_i_2 
       (.I0(\up_rdata[31]_i_7_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[6]_0 ),
        .I3(\up_rdata_reg[31] [5]),
        .O(\up_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \up_rdata[5]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[1]_i_4_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_rdata[23]_i_5_n_0 ),
        .I4(up_raddr[0]),
        .I5(\up_rdata[5]_i_5_n_0 ),
        .O(\up_rdata[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00380000)) 
    \up_rdata[5]_i_5 
       (.I0(\up_rdata[23]_i_4_0 [3]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[5]_i_4_0 ),
        .O(\up_rdata[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[6]_i_1 
       (.I0(\up_rdata[6]_i_2_n_0 ),
        .I1(\up_rdata_reg[6] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[6]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h5313)) 
    \up_rdata[6]_i_2 
       (.I0(\up_rdata[31]_i_7_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[6]_0 ),
        .I3(\up_rdata_reg[31] [6]),
        .O(\up_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \up_rdata[6]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[1]_i_4_0 [4]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_rdata[23]_i_5_n_0 ),
        .I4(up_raddr[0]),
        .I5(\up_rdata[6]_i_5_n_0 ),
        .O(\up_rdata[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00380000)) 
    \up_rdata[6]_i_5 
       (.I0(\up_rdata[23]_i_4_0 [4]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[6]_i_4_0 ),
        .O(\up_rdata[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[7]_i_1 
       (.I0(\up_rdata[7]_i_2_n_0 ),
        .I1(\up_rdata[7]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[7]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [7]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[7]_i_2 
       (.I0(\up_rdata_reg[31] [7]),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[31]_i_7_n_0 ),
        .O(\up_rdata[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[7]_i_3 
       (.I0(\up_rdata_reg[7] ),
        .I1(\up_raddr_int_reg[6]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \up_rdata[7]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[1]_i_4_0 [5]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_rdata[23]_i_5_n_0 ),
        .I4(up_raddr[0]),
        .I5(\up_rdata[7]_i_5_n_0 ),
        .O(\up_rdata[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00380000)) 
    \up_rdata[7]_i_5 
       (.I0(\up_rdata[23]_i_4_0 [5]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[7]_i_4_0 ),
        .O(\up_rdata[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[8]_i_1 
       (.I0(\up_rdata[8]_i_2_n_0 ),
        .I1(\up_rdata_reg[8] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[8]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h4202)) 
    \up_rdata[8]_i_2 
       (.I0(\up_rdata[31]_i_7_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[6]_0 ),
        .I3(\up_rdata_reg[31] [8]),
        .O(\up_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \up_rdata[8]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[1]_i_4_0 [6]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_rdata[23]_i_5_n_0 ),
        .I4(up_raddr[0]),
        .I5(\up_rdata[8]_i_5_n_0 ),
        .O(\up_rdata[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00380000)) 
    \up_rdata[8]_i_5 
       (.I0(\up_rdata[23]_i_4_0 [6]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[8]_i_4_0 ),
        .O(\up_rdata[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[9]_i_1 
       (.I0(\up_rdata[9]_i_2_n_0 ),
        .I1(\up_rdata_reg[9] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[29]_i_4_n_0 ),
        .I5(\up_rdata[9]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [9]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h5111)) 
    \up_rdata[9]_i_2 
       (.I0(\up_rdata[31]_i_7_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[6]_0 ),
        .I3(\up_rdata_reg[31] [9]),
        .O(\up_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \up_rdata[9]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[1]_i_4_0 [7]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(\up_rdata[23]_i_5_n_0 ),
        .I4(up_raddr[0]),
        .I5(\up_rdata[9]_i_5_n_0 ),
        .O(\up_rdata[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00380000)) 
    \up_rdata[9]_i_5 
       (.I0(\up_rdata[23]_i_4_0 [7]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[9]_i_4_0 ),
        .O(\up_rdata[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[0]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [0]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[0]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[10]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [10]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[10]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[11]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [11]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[11]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[12]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [12]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[12]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[13]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [13]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[14]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [14]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[14]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[15]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [15]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[15]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[16]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [16]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[16]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[17]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [17]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[18]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [18]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[18]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[19]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [19]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[19]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[1]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [1]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[20]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [20]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[21]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [21]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[21]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[22]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [22]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[23]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [23]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[23]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[24]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [24]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[25]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [25]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[25]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[26]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [26]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[26]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[27]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [27]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[27]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[28]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [28]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[28]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[29]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [29]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[2]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [2]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[2]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[30]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [30]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[30]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[31]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [31]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[31]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[3]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [3]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[4]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [4]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[5]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [5]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[5]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[6]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [6]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[7]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [7]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[7]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[8]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [8]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[9]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [9]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[9]));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[0]),
        .Q(up_rdata_d[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[10]),
        .Q(up_rdata_d[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[11]),
        .Q(up_rdata_d[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[12]),
        .Q(up_rdata_d[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[13]_i_1_n_0 ),
        .Q(up_rdata_d[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[14]),
        .Q(up_rdata_d[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[15]),
        .Q(up_rdata_d[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[16]),
        .Q(up_rdata_d[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[17]_i_1_n_0 ),
        .Q(up_rdata_d[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[18]),
        .Q(up_rdata_d[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[19]),
        .Q(up_rdata_d[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[1]_i_1_n_0 ),
        .Q(up_rdata_d[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[20]_i_1_n_0 ),
        .Q(up_rdata_d[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[21]),
        .Q(up_rdata_d[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[22]_i_1_n_0 ),
        .Q(up_rdata_d[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[23]),
        .Q(up_rdata_d[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[24]_i_1_n_0 ),
        .Q(up_rdata_d[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[25]),
        .Q(up_rdata_d[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[26]),
        .Q(up_rdata_d[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[27]),
        .Q(up_rdata_d[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[28]),
        .Q(up_rdata_d[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[29]_i_1_n_0 ),
        .Q(up_rdata_d[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[2]),
        .Q(up_rdata_d[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[30]),
        .Q(up_rdata_d[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[31]),
        .Q(up_rdata_d[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[3]),
        .Q(up_rdata_d[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[4]_i_1_n_0 ),
        .Q(up_rdata_d[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[5]),
        .Q(up_rdata_d[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[6]_i_1_n_0 ),
        .Q(up_rdata_d[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[7]),
        .Q(up_rdata_d[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[8]_i_1_n_0 ),
        .Q(up_rdata_d[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[9]),
        .Q(up_rdata_d[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    up_rreq_int_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_aresetn),
        .I2(up_rsel_reg_n_0),
        .O(up_rreq_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_rreq_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rreq_int_i_1_n_0),
        .Q(up_rreq),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h3FAA)) 
    up_rsel_i_1
       (.I0(s_axi_arvalid),
        .I1(up_axi_rvalid_int_reg_0),
        .I2(s_axi_rready),
        .I3(up_rsel_reg_n_0),
        .O(up_rsel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_rsel_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rsel_i_1_n_0),
        .Q(up_rsel_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \up_scratch[31]_i_1 
       (.I0(up_wreq),
        .I1(\up_scratch[31]_i_2_n_0 ),
        .I2(up_waddr[2]),
        .I3(up_waddr[0]),
        .I4(\up_scratch[31]_i_3_n_0 ),
        .I5(up_waddr[1]),
        .O(up_wreq_int_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \up_scratch[31]_i_2 
       (.I0(up_waddr[8]),
        .I1(up_waddr[7]),
        .I2(up_waddr[5]),
        .I3(up_waddr[6]),
        .O(\up_scratch[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \up_scratch[31]_i_3 
       (.I0(up_waddr[4]),
        .I1(up_waddr[3]),
        .O(\up_scratch[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAAA0000AAAA0000)) 
    up_wack_d_i_1
       (.I0(up_wack),
        .I1(\up_wcount_reg_n_0_[2] ),
        .I2(\up_wcount_reg_n_0_[1] ),
        .I3(\up_wcount_reg_n_0_[0] ),
        .I4(p_0_in7_in),
        .I5(\up_wcount_reg_n_0_[3] ),
        .O(up_wack_s_0));
  FDRE #(
    .INIT(1'b0)) 
    up_wack_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wack_s_0),
        .Q(up_wack_d),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[0]),
        .Q(up_waddr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[1]),
        .Q(up_waddr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[2]),
        .Q(up_waddr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[3]),
        .Q(up_waddr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[4]),
        .Q(up_waddr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[5]),
        .Q(up_waddr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[6]),
        .Q(up_waddr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[7]),
        .Q(up_waddr[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[8]),
        .Q(up_waddr[8]),
        .R(SR));
  LUT3 #(
    .INIT(8'h04)) 
    \up_wcount[0]_i_1 
       (.I0(\up_wcount_reg_n_0_[0] ),
        .I1(p_0_in7_in),
        .I2(up_wack),
        .O(\up_wcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \up_wcount[1]_i_1 
       (.I0(\up_wcount_reg_n_0_[1] ),
        .I1(\up_wcount_reg_n_0_[0] ),
        .I2(p_0_in7_in),
        .I3(up_wack),
        .O(\up_wcount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00007080)) 
    \up_wcount[2]_i_1 
       (.I0(\up_wcount_reg_n_0_[1] ),
        .I1(\up_wcount_reg_n_0_[0] ),
        .I2(p_0_in7_in),
        .I3(\up_wcount_reg_n_0_[2] ),
        .I4(up_wack),
        .O(\up_wcount[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006A00AA00)) 
    \up_wcount[3]_i_1 
       (.I0(\up_wcount_reg_n_0_[3] ),
        .I1(\up_wcount_reg_n_0_[1] ),
        .I2(\up_wcount_reg_n_0_[0] ),
        .I3(p_0_in7_in),
        .I4(\up_wcount_reg_n_0_[2] ),
        .I5(up_wack),
        .O(\up_wcount[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \up_wcount[4]_i_1 
       (.I0(up_wack_s),
        .I1(up_wreq),
        .I2(p_0_in7_in),
        .O(\up_wcount[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF7FFFFFFF)) 
    \up_wcount[4]_i_2 
       (.I0(\up_wcount_reg_n_0_[3] ),
        .I1(\up_wcount_reg_n_0_[1] ),
        .I2(\up_wcount_reg_n_0_[0] ),
        .I3(p_0_in7_in),
        .I4(\up_wcount_reg_n_0_[2] ),
        .I5(up_wack),
        .O(\up_wcount[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE0A0A0A0A0A0A0A0)) 
    \up_wcount[4]_i_3 
       (.I0(up_wack),
        .I1(\up_wcount_reg_n_0_[2] ),
        .I2(p_0_in7_in),
        .I3(\up_wcount_reg_n_0_[0] ),
        .I4(\up_wcount_reg_n_0_[1] ),
        .I5(\up_wcount_reg_n_0_[3] ),
        .O(up_wack_s));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(\up_wcount[0]_i_1_n_0 ),
        .Q(\up_wcount_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(\up_wcount[1]_i_1_n_0 ),
        .Q(\up_wcount_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(\up_wcount[2]_i_1_n_0 ),
        .Q(\up_wcount_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(\up_wcount[3]_i_1_n_0 ),
        .Q(\up_wcount_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(\up_wcount[4]_i_2_n_0 ),
        .Q(p_0_in7_in),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \up_wdata_int[31]_i_1 
       (.I0(up_wsel_reg_n_0),
        .O(p_5_in));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[9]),
        .Q(Q[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0080)) 
    up_wreq_int_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_aresetn),
        .I3(up_wsel_reg_n_0),
        .O(up_wreq_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_wreq_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wreq_int_i_1_n_0),
        .Q(up_wreq),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0FFF8888)) 
    up_wsel_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_bvalid),
        .I3(s_axi_bready),
        .I4(up_wsel_reg_n_0),
        .O(up_wsel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_wsel_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wsel_i_1_n_0),
        .Q(up_wsel_reg_n_0),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo
   (ctrl_enable_reg,
    up_tlf_s_valid_reg,
    \up_transfer_id_eot_reg[0] ,
    \up_transfer_id_eot_reg[1] ,
    response_valid_reg,
    valid_reg_0,
    \data_reg[25]_0 ,
    s_axi_aclk,
    \level_reg[2] ,
    up_bl_partial,
    up_response_valid,
    response_ready_reg,
    p_8_in,
    \m_axis_raddr_reg[0] ,
    up_transfer_id_eot,
    Q,
    up_transfer_id,
    up_dma_last,
    up_partial_length_valid_reg,
    s_axis_data);
  output ctrl_enable_reg;
  output up_tlf_s_valid_reg;
  output \up_transfer_id_eot_reg[0] ;
  output \up_transfer_id_eot_reg[1] ;
  output response_valid_reg;
  output valid_reg_0;
  output [23:0]\data_reg[25]_0 ;
  input s_axi_aclk;
  input \level_reg[2] ;
  input up_bl_partial;
  input up_response_valid;
  input response_ready_reg;
  input p_8_in;
  input \m_axis_raddr_reg[0] ;
  input [1:0]up_transfer_id_eot;
  input [2:0]Q;
  input [0:0]up_transfer_id;
  input up_dma_last;
  input [0:0]up_partial_length_valid_reg;
  input [25:0]s_axis_data;

  wire [2:0]Q;
  wire ctrl_enable_reg;
  wire [25:0]data0;
  wire [23:0]\data_reg[25]_0 ;
  wire \data_reg_n_0_[0] ;
  wire \data_reg_n_0_[1] ;
  wire i_address_sync_n_4;
  wire \level_reg[2] ;
  wire [1:0]m_axis_raddr;
  wire \m_axis_raddr_reg[0] ;
  wire m_mem_read;
  wire p_8_in;
  wire response_ready_reg;
  wire response_valid_reg;
  wire s_axi_aclk;
  wire [25:0]s_axis_data;
  wire [1:0]s_axis_waddr;
  wire s_mem_write;
  wire up_bl_partial;
  wire up_dma_last;
  wire [0:0]up_partial_length_valid_reg;
  wire up_response_valid;
  wire up_tlf_s_valid_reg;
  wire up_tlf_valid;
  wire [0:0]up_transfer_id;
  wire [1:0]up_transfer_id_eot;
  wire \up_transfer_id_eot_reg[0] ;
  wire \up_transfer_id_eot_reg[1] ;
  wire valid_reg_0;
  wire [1:0]NLW_ram_reg_0_3_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_3_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_3_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_3_24_25_DOB_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_3_24_25_DOC_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_3_24_25_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_3_6_11_DOD_UNCONNECTED;

  FDRE \data_reg[0] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[0]),
        .Q(\data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_reg[10] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[10]),
        .Q(\data_reg[25]_0 [8]),
        .R(1'b0));
  FDRE \data_reg[11] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[11]),
        .Q(\data_reg[25]_0 [9]),
        .R(1'b0));
  FDRE \data_reg[12] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[12]),
        .Q(\data_reg[25]_0 [10]),
        .R(1'b0));
  FDRE \data_reg[13] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[13]),
        .Q(\data_reg[25]_0 [11]),
        .R(1'b0));
  FDRE \data_reg[14] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[14]),
        .Q(\data_reg[25]_0 [12]),
        .R(1'b0));
  FDRE \data_reg[15] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[15]),
        .Q(\data_reg[25]_0 [13]),
        .R(1'b0));
  FDRE \data_reg[16] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[16]),
        .Q(\data_reg[25]_0 [14]),
        .R(1'b0));
  FDRE \data_reg[17] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[17]),
        .Q(\data_reg[25]_0 [15]),
        .R(1'b0));
  FDRE \data_reg[18] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[18]),
        .Q(\data_reg[25]_0 [16]),
        .R(1'b0));
  FDRE \data_reg[19] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[19]),
        .Q(\data_reg[25]_0 [17]),
        .R(1'b0));
  FDRE \data_reg[1] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[1]),
        .Q(\data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_reg[20] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[20]),
        .Q(\data_reg[25]_0 [18]),
        .R(1'b0));
  FDRE \data_reg[21] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[21]),
        .Q(\data_reg[25]_0 [19]),
        .R(1'b0));
  FDRE \data_reg[22] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[22]),
        .Q(\data_reg[25]_0 [20]),
        .R(1'b0));
  FDRE \data_reg[23] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[23]),
        .Q(\data_reg[25]_0 [21]),
        .R(1'b0));
  FDRE \data_reg[24] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[24]),
        .Q(\data_reg[25]_0 [22]),
        .R(1'b0));
  FDRE \data_reg[25] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[25]),
        .Q(\data_reg[25]_0 [23]),
        .R(1'b0));
  FDRE \data_reg[2] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[2]),
        .Q(\data_reg[25]_0 [0]),
        .R(1'b0));
  FDRE \data_reg[3] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[3]),
        .Q(\data_reg[25]_0 [1]),
        .R(1'b0));
  FDRE \data_reg[4] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[4]),
        .Q(\data_reg[25]_0 [2]),
        .R(1'b0));
  FDRE \data_reg[5] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[5]),
        .Q(\data_reg[25]_0 [3]),
        .R(1'b0));
  FDRE \data_reg[6] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[6]),
        .Q(\data_reg[25]_0 [4]),
        .R(1'b0));
  FDRE \data_reg[7] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[7]),
        .Q(\data_reg[25]_0 [5]),
        .R(1'b0));
  FDRE \data_reg[8] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[8]),
        .Q(\data_reg[25]_0 [6]),
        .R(1'b0));
  FDRE \data_reg[9] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[9]),
        .Q(\data_reg[25]_0 [7]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_address_sync i_address_sync
       (.ADDRA(m_axis_raddr),
        .ADDRD(s_axis_waddr),
        .ctrl_enable_reg(ctrl_enable_reg),
        .\level_reg[2]_0 (\level_reg[2] ),
        .\m_axis_raddr_reg[0]_0 (\m_axis_raddr_reg[0] ),
        .m_axis_valid_reg_0(i_address_sync_n_4),
        .m_mem_read(m_mem_read),
        .p_8_in(p_8_in),
        .response_ready_reg(response_ready_reg),
        .response_valid_reg(response_valid_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_mem_write(s_mem_write),
        .up_bl_partial(up_bl_partial),
        .up_response_valid(up_response_valid),
        .up_tlf_s_valid_reg(up_tlf_s_valid_reg),
        .up_tlf_valid(up_tlf_valid));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "104" *) 
  (* RTL_RAM_NAME = "i_regmap/i_regmap_request/i_transfer_lenghts_fifo/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M ram_reg_0_3_0_5
       (.ADDRA({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRB({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRC({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRD({1'b0,1'b0,1'b0,s_axis_waddr}),
        .DIA(s_axis_data[1:0]),
        .DIB(s_axis_data[3:2]),
        .DIC(s_axis_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(data0[1:0]),
        .DOB(data0[3:2]),
        .DOC(data0[5:4]),
        .DOD(NLW_ram_reg_0_3_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(s_mem_write));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "104" *) 
  (* RTL_RAM_NAME = "i_regmap/i_regmap_request/i_transfer_lenghts_fifo/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M ram_reg_0_3_12_17
       (.ADDRA({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRB({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRC({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRD({1'b0,1'b0,1'b0,s_axis_waddr}),
        .DIA(s_axis_data[13:12]),
        .DIB(s_axis_data[15:14]),
        .DIC(s_axis_data[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(data0[13:12]),
        .DOB(data0[15:14]),
        .DOC(data0[17:16]),
        .DOD(NLW_ram_reg_0_3_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(s_mem_write));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "104" *) 
  (* RTL_RAM_NAME = "i_regmap/i_regmap_request/i_transfer_lenghts_fifo/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M ram_reg_0_3_18_23
       (.ADDRA({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRB({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRC({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRD({1'b0,1'b0,1'b0,s_axis_waddr}),
        .DIA(s_axis_data[19:18]),
        .DIB(s_axis_data[21:20]),
        .DIC(s_axis_data[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(data0[19:18]),
        .DOB(data0[21:20]),
        .DOC(data0[23:22]),
        .DOD(NLW_ram_reg_0_3_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(s_mem_write));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "104" *) 
  (* RTL_RAM_NAME = "i_regmap/i_regmap_request/i_transfer_lenghts_fifo/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "25" *) 
  RAM32M ram_reg_0_3_24_25
       (.ADDRA({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRB({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRC({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRD({1'b0,1'b0,1'b0,s_axis_waddr}),
        .DIA(s_axis_data[25:24]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(data0[25:24]),
        .DOB(NLW_ram_reg_0_3_24_25_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_ram_reg_0_3_24_25_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_ram_reg_0_3_24_25_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(s_mem_write));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "104" *) 
  (* RTL_RAM_NAME = "i_regmap/i_regmap_request/i_transfer_lenghts_fifo/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M ram_reg_0_3_6_11
       (.ADDRA({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRB({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRC({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRD({1'b0,1'b0,1'b0,s_axis_waddr}),
        .DIA(s_axis_data[7:6]),
        .DIB(s_axis_data[9:8]),
        .DIC(s_axis_data[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(data0[7:6]),
        .DOB(data0[9:8]),
        .DOC(data0[11:10]),
        .DOD(NLW_ram_reg_0_3_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(s_mem_write));
  LUT4 #(
    .INIT(16'hAFAE)) 
    up_partial_length_valid_i_1
       (.I0(up_bl_partial),
        .I1(up_tlf_valid),
        .I2(p_8_in),
        .I3(up_partial_length_valid_reg),
        .O(valid_reg_0));
  LUT6 #(
    .INIT(64'h0000C0C0A0A00F00)) 
    \up_rdata[0]_i_6 
       (.I0(up_transfer_id_eot[0]),
        .I1(\data_reg_n_0_[0] ),
        .I2(Q[0]),
        .I3(up_transfer_id),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\up_transfer_id_eot_reg[0] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \up_rdata[1]_i_8 
       (.I0(up_transfer_id_eot[1]),
        .I1(Q[1]),
        .I2(\data_reg_n_0_[1] ),
        .I3(Q[2]),
        .I4(up_dma_last),
        .O(\up_transfer_id_eot_reg[1] ));
  FDRE valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_address_sync_n_4),
        .Q(up_tlf_valid),
        .R(ctrl_enable_reg));
endmodule

(* ORIG_REF_NAME = "util_axis_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized0
   (s_axis_waddr_reg_0,
    cdc_sync_stage2,
    m_axis_raddr_reg_0,
    \cdc_sync_stage2_reg[0] ,
    E,
    Q,
    \cdc_sync_stage1_reg[0] ,
    m_dest_axi_aclk,
    \cdc_sync_stage1_reg[0]_0 ,
    fifo_wr_clk,
    dest_bl_ready,
    src_bl_valid,
    \cdc_sync_fifo_ram_reg[4]_0 );
  output s_axis_waddr_reg_0;
  output cdc_sync_stage2;
  output m_axis_raddr_reg_0;
  output \cdc_sync_stage2_reg[0] ;
  output [0:0]E;
  output [4:0]Q;
  input [0:0]\cdc_sync_stage1_reg[0] ;
  input m_dest_axi_aclk;
  input [0:0]\cdc_sync_stage1_reg[0]_0 ;
  input fifo_wr_clk;
  input dest_bl_ready;
  input src_bl_valid;
  input [4:0]\cdc_sync_fifo_ram_reg[4]_0 ;

  wire [0:0]E;
  wire [4:0]Q;
  wire cdc_sync_fifo_ram0;
  wire [4:0]\cdc_sync_fifo_ram_reg[4]_0 ;
  wire [0:0]\cdc_sync_stage1_reg[0] ;
  wire [0:0]\cdc_sync_stage1_reg[0]_0 ;
  wire cdc_sync_stage2;
  wire \cdc_sync_stage2_reg[0] ;
  wire dest_bl_ready;
  wire fifo_wr_clk;
  wire i_raddr_sync_n_2;
  wire i_waddr_sync_n_2;
  wire m_axis_raddr_reg_0;
  wire m_dest_axi_aclk;
  wire s_axis_waddr_reg_0;
  wire src_bl_valid;

  FDRE \cdc_sync_fifo_ram_reg[0] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[4]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[1] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[4]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[2] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[4]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[3] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[4]_0 [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[4] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[4]_0 [4]),
        .Q(Q[4]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__3 i_raddr_sync
       (.E(cdc_sync_fifo_ram0),
        .bl_valid_reg(i_raddr_sync_n_2),
        .\cdc_sync_fifo_ram_reg[0] (s_axis_waddr_reg_0),
        .\cdc_sync_stage1_reg[0]_0 (\cdc_sync_stage1_reg[0]_0 ),
        .\cdc_sync_stage1_reg[0]_1 (m_axis_raddr_reg_0),
        .\cdc_sync_stage2_reg[0]_0 (\cdc_sync_stage2_reg[0] ),
        .fifo_wr_clk(fifo_wr_clk),
        .src_bl_valid(src_bl_valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__4 i_waddr_sync
       (.E(E),
        .bl_ready_reg(i_waddr_sync_n_2),
        .\cdc_sync_stage1_reg[0]_0 (\cdc_sync_stage1_reg[0] ),
        .\cdc_sync_stage1_reg[0]_1 (s_axis_waddr_reg_0),
        .cdc_sync_stage2(cdc_sync_stage2),
        .dest_bl_ready(dest_bl_ready),
        .\last_burst_len_reg[0] (m_axis_raddr_reg_0),
        .m_dest_axi_aclk(m_dest_axi_aclk));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_raddr_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(i_waddr_sync_n_2),
        .Q(m_axis_raddr_reg_0),
        .R(\cdc_sync_stage1_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    s_axis_waddr_reg
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(i_raddr_sync_n_2),
        .Q(s_axis_waddr_reg_0),
        .R(\cdc_sync_stage1_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "util_axis_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized1
   (\cdc_sync_stage2_reg[0] ,
    m_axis_raddr_reg_0,
    E,
    \cdc_sync_stage2_reg[0]_0 ,
    \cdc_sync_stage2_reg[0]_1 ,
    Q,
    \cdc_sync_stage1_reg[0] ,
    m_dest_axi_aclk,
    \cdc_sync_stage1_reg[0]_0 ,
    fifo_wr_clk,
    m_axis_raddr_reg_1,
    m_axis_raddr_reg_2,
    src_req_ready,
    src_dest_valid_hs,
    dest_req_ready,
    \cdc_sync_fifo_ram_reg[28]_0 );
  output \cdc_sync_stage2_reg[0] ;
  output m_axis_raddr_reg_0;
  output [0:0]E;
  output \cdc_sync_stage2_reg[0]_0 ;
  output \cdc_sync_stage2_reg[0]_1 ;
  output [27:0]Q;
  input [0:0]\cdc_sync_stage1_reg[0] ;
  input m_dest_axi_aclk;
  input [0:0]\cdc_sync_stage1_reg[0]_0 ;
  input fifo_wr_clk;
  input m_axis_raddr_reg_1;
  input m_axis_raddr_reg_2;
  input src_req_ready;
  input src_dest_valid_hs;
  input dest_req_ready;
  input [27:0]\cdc_sync_fifo_ram_reg[28]_0 ;

  wire [0:0]E;
  wire [27:0]Q;
  wire cdc_sync_fifo_ram0;
  wire [27:0]\cdc_sync_fifo_ram_reg[28]_0 ;
  wire [0:0]\cdc_sync_stage1_reg[0] ;
  wire [0:0]\cdc_sync_stage1_reg[0]_0 ;
  wire \cdc_sync_stage2_reg[0] ;
  wire \cdc_sync_stage2_reg[0]_0 ;
  wire \cdc_sync_stage2_reg[0]_1 ;
  wire dest_req_ready;
  wire fifo_wr_clk;
  wire i_raddr_sync_n_4;
  wire i_waddr_sync_n_1;
  wire m_axis_raddr_reg_0;
  wire m_axis_raddr_reg_1;
  wire m_axis_raddr_reg_2;
  wire m_dest_axi_aclk;
  wire s_axis_waddr_reg_n_0;
  wire src_dest_valid_hs;
  wire src_req_ready;

  FDRE \cdc_sync_fifo_ram_reg[10] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[11] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[12] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[13] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[14] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[15] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[16] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[17] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[18] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[19] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[1] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[20] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[21] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[22] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[23] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[24] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[25] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[26] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[27] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[28] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[2] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[3] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[4] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[5] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[6] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[7] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[8] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[9] 
       (.C(fifo_wr_clk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[28]_0 [8]),
        .Q(Q[8]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__1 i_raddr_sync
       (.E(E),
        .\cdc_sync_stage1_reg[0]_0 (\cdc_sync_stage1_reg[0]_0 ),
        .\cdc_sync_stage1_reg[0]_1 (m_axis_raddr_reg_0),
        .\cdc_sync_stage2_reg[0]_0 (cdc_sync_fifo_ram0),
        .\cdc_sync_stage2_reg[0]_1 (\cdc_sync_stage2_reg[0]_0 ),
        .\cdc_sync_stage2_reg[0]_2 (\cdc_sync_stage2_reg[0]_1 ),
        .fifo_wr_clk(fifo_wr_clk),
        .m_axis_raddr_reg(m_axis_raddr_reg_1),
        .m_axis_raddr_reg_0(m_axis_raddr_reg_2),
        .src_dest_valid_hs(src_dest_valid_hs),
        .src_dest_valid_hs_reg(i_raddr_sync_n_4),
        .src_dest_valid_hs_reg_0(s_axis_waddr_reg_n_0),
        .src_req_ready(src_req_ready));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__2 i_waddr_sync
       (.\cdc_sync_stage1_reg[0]_0 (\cdc_sync_stage1_reg[0] ),
        .\cdc_sync_stage1_reg[0]_1 (s_axis_waddr_reg_n_0),
        .\cdc_sync_stage2_reg[0]_0 (\cdc_sync_stage2_reg[0] ),
        .dest_req_ready(dest_req_ready),
        .m_axis_raddr_reg(m_axis_raddr_reg_0),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .req_ready_reg(i_waddr_sync_n_1));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_raddr_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(i_waddr_sync_n_1),
        .Q(m_axis_raddr_reg_0),
        .R(\cdc_sync_stage1_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    s_axis_waddr_reg
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(i_raddr_sync_n_4),
        .Q(s_axis_waddr_reg_n_0),
        .R(\cdc_sync_stage1_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "util_axis_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized2
   (s_axis_waddr_reg_0,
    \cdc_sync_stage2_reg[0] ,
    m_axis_raddr_reg_0,
    \cdc_sync_stage2_reg[0]_0 ,
    E,
    req_gen_valid__0,
    \cdc_sync_fifo_ram_reg[7]_0 ,
    \cdc_sync_fifo_ram_reg[64]_0 ,
    \cdc_sync_stage1_reg[0] ,
    fifo_wr_clk,
    Q,
    s_axi_aclk,
    m_axis_raddr_reg_1,
    s_axis_waddr_reg_1,
    s_axis_waddr_reg_2,
    up_dma_req_valid,
    D);
  output s_axis_waddr_reg_0;
  output \cdc_sync_stage2_reg[0] ;
  output m_axis_raddr_reg_0;
  output \cdc_sync_stage2_reg[0]_0 ;
  output [0:0]E;
  output req_gen_valid__0;
  output \cdc_sync_fifo_ram_reg[7]_0 ;
  output [32:0]\cdc_sync_fifo_ram_reg[64]_0 ;
  input [0:0]\cdc_sync_stage1_reg[0] ;
  input fifo_wr_clk;
  input [0:0]Q;
  input s_axi_aclk;
  input m_axis_raddr_reg_1;
  input s_axis_waddr_reg_1;
  input s_axis_waddr_reg_2;
  input up_dma_req_valid;
  input [32:0]D;

  wire [32:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [32:0]\cdc_sync_fifo_ram_reg[64]_0 ;
  wire \cdc_sync_fifo_ram_reg[7]_0 ;
  wire [0:0]\cdc_sync_stage1_reg[0] ;
  wire \cdc_sync_stage2_reg[0] ;
  wire \cdc_sync_stage2_reg[0]_0 ;
  wire fifo_wr_clk;
  wire i_raddr_sync_n_3;
  wire m_axis_raddr_reg_0;
  wire m_axis_raddr_reg_1;
  wire req_gen_valid__0;
  wire s_axi_aclk;
  wire s_axis_waddr_reg_0;
  wire s_axis_waddr_reg_1;
  wire s_axis_waddr_reg_2;
  wire up_dma_req_valid;

  FDRE \cdc_sync_fifo_ram_reg[37] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[5]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [5]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[38] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[6]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [6]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[39] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[7]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [7]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[40] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[8]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [8]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[41] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[9]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [9]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[42] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[10]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [10]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[43] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[11]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [11]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[44] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[12]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [12]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[45] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[13]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [13]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[46] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[14]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [14]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[47] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[15]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [15]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[48] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[16]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [16]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[49] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[17]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [17]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [0]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[50] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[18]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [18]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[51] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[19]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [19]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[52] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[20]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [20]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[53] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[21]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [21]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[54] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[22]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [22]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[55] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[23]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [23]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[56] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[24]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [24]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[57] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[25]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [25]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[58] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[26]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [26]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[59] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[27]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [27]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [1]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[60] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[28]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [28]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[61] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[29]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [29]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[62] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[30]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [30]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[63] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[31]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [31]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[64] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[32]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [32]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[2]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [2]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[3]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [3]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[4]),
        .Q(\cdc_sync_fifo_ram_reg[64]_0 [4]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__5 i_raddr_sync
       (.E(E),
        .Q(Q),
        .\cdc_sync_stage1_reg[0]_0 (m_axis_raddr_reg_0),
        .\cdc_sync_stage2_reg[0]_0 (\cdc_sync_stage2_reg[0]_0 ),
        .req_gen_valid__0(req_gen_valid__0),
        .s_axi_aclk(s_axi_aclk),
        .s_axis_waddr_reg(s_axis_waddr_reg_1),
        .s_axis_waddr_reg_0(s_axis_waddr_reg_0),
        .s_axis_waddr_reg_1(s_axis_waddr_reg_2),
        .up_dma_req_valid(up_dma_req_valid),
        .up_dma_req_valid_reg(i_raddr_sync_n_3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits__parameterized0__xdcDup__6 i_waddr_sync
       (.\cdc_sync_stage1_reg[0]_0 (\cdc_sync_stage1_reg[0] ),
        .\cdc_sync_stage1_reg[0]_1 (s_axis_waddr_reg_0),
        .\cdc_sync_stage2_reg[0]_0 (\cdc_sync_stage2_reg[0] ),
        .fifo_wr_clk(fifo_wr_clk));
  LUT5 #(
    .INIT(32'h00000001)) 
    last_eot_i_2
       (.I0(\cdc_sync_fifo_ram_reg[64]_0 [3]),
        .I1(\cdc_sync_fifo_ram_reg[64]_0 [4]),
        .I2(\cdc_sync_fifo_ram_reg[64]_0 [0]),
        .I3(\cdc_sync_fifo_ram_reg[64]_0 [1]),
        .I4(\cdc_sync_fifo_ram_reg[64]_0 [2]),
        .O(\cdc_sync_fifo_ram_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_raddr_reg
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(m_axis_raddr_reg_1),
        .Q(m_axis_raddr_reg_0),
        .R(\cdc_sync_stage1_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    s_axis_waddr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_raddr_sync_n_3),
        .Q(s_axis_waddr_reg_0),
        .R(Q));
endmodule

(* ORIG_REF_NAME = "util_axis_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_axis_fifo__parameterized3
   (id0,
    \state_reg[1] ,
    D,
    dest_response_ready,
    response_ready_reg,
    E,
    \cdc_sync_fifo_ram_reg[8]_0 ,
    s_axis_waddr_reg_0,
    m_dest_axi_aclk,
    Q,
    s_axi_aclk,
    active__6,
    m_dest_axi_bvalid,
    \state_reg[2] ,
    up_response_ready,
    \state_reg[0] ,
    nx_state15_in,
    response_valid_reg,
    transfer_id,
    response_dest_ready,
    \cdc_sync_fifo_ram_reg[8]_1 );
  output id0;
  output \state_reg[1] ;
  output [2:0]D;
  output dest_response_ready;
  output response_ready_reg;
  output [0:0]E;
  output [8:0]\cdc_sync_fifo_ram_reg[8]_0 ;
  input [0:0]s_axis_waddr_reg_0;
  input m_dest_axi_aclk;
  input [0:0]Q;
  input s_axi_aclk;
  input active__6;
  input m_dest_axi_bvalid;
  input [2:0]\state_reg[2] ;
  input up_response_ready;
  input \state_reg[0] ;
  input nx_state15_in;
  input response_valid_reg;
  input [1:0]transfer_id;
  input response_dest_ready;
  input [8:0]\cdc_sync_fifo_ram_reg[8]_1 ;

  wire [2:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire active__6;
  wire cdc_sync_fifo_ram0;
  wire [8:0]\cdc_sync_fifo_ram_reg[8]_0 ;
  wire [8:0]\cdc_sync_fifo_ram_reg[8]_1 ;
  wire dest_response_ready;
  wire id0;
  wire m_axis_raddr_i_1__2_n_0;
  wire m_axis_raddr_reg_n_0;
  wire m_dest_axi_aclk;
  wire m_dest_axi_bvalid;
  wire nx_state15_in;
  wire response_dest_ready;
  wire response_ready_reg;
  wire response_valid_reg;
  wire s_axi_aclk;
  wire s_axis_waddr_i_1__2_n_0;
  wire [0:0]s_axis_waddr_reg_0;
  wire s_axis_waddr_reg_n_0;
  wire \state[0]_i_2__0_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state_reg[0] ;
  wire \state_reg[1] ;
  wire [2:0]\state_reg[2] ;
  wire [1:0]transfer_id;
  wire up_response_ready;

  LUT4 #(
    .INIT(16'h9000)) 
    \cdc_sync_fifo_ram[8]_i_1 
       (.I0(m_axis_raddr_reg_n_0),
        .I1(s_axis_waddr_reg_n_0),
        .I2(m_dest_axi_bvalid),
        .I3(active__6),
        .O(cdc_sync_fifo_ram0));
  FDRE \cdc_sync_fifo_ram_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[8]_1 [0]),
        .Q(\cdc_sync_fifo_ram_reg[8]_0 [0]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[8]_1 [1]),
        .Q(\cdc_sync_fifo_ram_reg[8]_0 [1]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[8]_1 [2]),
        .Q(\cdc_sync_fifo_ram_reg[8]_0 [2]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[8]_1 [3]),
        .Q(\cdc_sync_fifo_ram_reg[8]_0 [3]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[4] 
       (.C(m_dest_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[8]_1 [4]),
        .Q(\cdc_sync_fifo_ram_reg[8]_0 [4]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[5] 
       (.C(m_dest_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[8]_1 [5]),
        .Q(\cdc_sync_fifo_ram_reg[8]_0 [5]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[6] 
       (.C(m_dest_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[8]_1 [6]),
        .Q(\cdc_sync_fifo_ram_reg[8]_0 [6]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[7] 
       (.C(m_dest_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[8]_1 [7]),
        .Q(\cdc_sync_fifo_ram_reg[8]_0 [7]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[8] 
       (.C(m_dest_axi_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(\cdc_sync_fifo_ram_reg[8]_1 [8]),
        .Q(\cdc_sync_fifo_ram_reg[8]_0 [8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h9000)) 
    \id[3]_i_1__0 
       (.I0(s_axis_waddr_reg_n_0),
        .I1(m_axis_raddr_reg_n_0),
        .I2(active__6),
        .I3(m_dest_axi_bvalid),
        .O(id0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axis_raddr_i_1__2
       (.I0(s_axis_waddr_reg_n_0),
        .I1(response_dest_ready),
        .I2(m_axis_raddr_reg_n_0),
        .O(m_axis_raddr_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_raddr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(m_axis_raddr_i_1__2_n_0),
        .Q(m_axis_raddr_reg_n_0),
        .R(Q));
  LUT2 #(
    .INIT(4'h9)) 
    m_dest_axi_bready_INST_0_i_2
       (.I0(s_axis_waddr_reg_n_0),
        .I1(m_axis_raddr_reg_n_0),
        .O(dest_response_ready));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \req_response_dest_data_burst_length[6]_i_1 
       (.I0(response_dest_ready),
        .I1(m_axis_raddr_reg_n_0),
        .I2(s_axis_waddr_reg_n_0),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h01)) 
    response_dest_ready_i_1
       (.I0(D[2]),
        .I1(D[0]),
        .I2(D[1]),
        .O(\state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h12FF1212)) 
    response_valid_i_1
       (.I0(D[2]),
        .I1(D[0]),
        .I2(D[1]),
        .I3(up_response_ready),
        .I4(response_valid_reg),
        .O(response_ready_reg));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h5CCC)) 
    s_axis_waddr_i_1__2
       (.I0(m_axis_raddr_reg_n_0),
        .I1(s_axis_waddr_reg_n_0),
        .I2(m_dest_axi_bvalid),
        .I3(active__6),
        .O(s_axis_waddr_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axis_waddr_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(s_axis_waddr_i_1__2_n_0),
        .Q(s_axis_waddr_reg_n_0),
        .R(s_axis_waddr_reg_0));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \state[0]_i_1__0 
       (.I0(\state[0]_i_2__0_n_0 ),
        .I1(\state_reg[2] [1]),
        .I2(\state_reg[2] [2]),
        .I3(up_response_ready),
        .I4(\state_reg[2] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000CCCCBB030303)) 
    \state[0]_i_2__0 
       (.I0(up_response_ready),
        .I1(\state_reg[2] [1]),
        .I2(dest_response_ready),
        .I3(\state_reg[0] ),
        .I4(nx_state15_in),
        .I5(\state_reg[2] [0]),
        .O(\state[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(\state_reg[2] [1]),
        .I2(\state_reg[2] [2]),
        .I3(up_response_ready),
        .I4(\state_reg[2] [0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h3F34F4F43C34F4F4)) 
    \state[1]_i_2 
       (.I0(up_response_ready),
        .I1(\state_reg[2] [1]),
        .I2(\state_reg[2] [0]),
        .I3(\state_reg[0] ),
        .I4(nx_state15_in),
        .I5(dest_response_ready),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00C000C0000A0F0A)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(nx_state15_in),
        .I2(\state_reg[2] [1]),
        .I3(\state_reg[2] [2]),
        .I4(up_response_ready),
        .I5(\state_reg[2] [0]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h9090909090900090)) 
    \state[2]_i_2 
       (.I0(m_axis_raddr_reg_n_0),
        .I1(s_axis_waddr_reg_n_0),
        .I2(\state_reg[2] [2]),
        .I3(nx_state15_in),
        .I4(transfer_id[0]),
        .I5(transfer_id[1]),
        .O(\state[2]_i_2_n_0 ));
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
