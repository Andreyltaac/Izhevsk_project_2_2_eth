// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:axi_chip2chip:5.0
// IP Revision: 5

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_AXI_C2C_0 (
  s_aclk,
  s_aresetn,
  s_axi_awid,
  s_axi_awaddr,
  s_axi_awlen,
  s_axi_awsize,
  s_axi_awburst,
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
  s_axi_arvalid,
  s_axi_arready,
  s_axi_rid,
  s_axi_rdata,
  s_axi_rresp,
  s_axi_rlast,
  s_axi_rvalid,
  s_axi_rready,
  axi_c2c_m2s_intr_in,
  axi_c2c_s2m_intr_out,
  idelay_ref_clk,
  axi_c2c_phy_clk,
  axi_c2c_selio_tx_clk_out,
  axi_c2c_selio_tx_data_out,
  axi_c2c_selio_rx_clk_in,
  axi_c2c_selio_rx_data_in,
  axi_c2c_link_status_out,
  axi_c2c_multi_bit_error_out,
  axi_c2c_link_error_out,
  m_axi_lite_aclk,
  m_axi_lite_awaddr,
  m_axi_lite_awprot,
  m_axi_lite_awvalid,
  m_axi_lite_awready,
  m_axi_lite_wdata,
  m_axi_lite_wstrb,
  m_axi_lite_wvalid,
  m_axi_lite_wready,
  m_axi_lite_bresp,
  m_axi_lite_bvalid,
  m_axi_lite_bready,
  m_axi_lite_araddr,
  m_axi_lite_arprot,
  m_axi_lite_arvalid,
  m_axi_lite_arready,
  m_axi_lite_rdata,
  m_axi_lite_rresp,
  m_axi_lite_rvalid,
  m_axi_lite_rready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_CLK_COMMON_0_axi_periph_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_aclk CLK" *)
input wire s_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_aresetn RST" *)
input wire s_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWID" *)
input wire [11 : 0] s_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *)
input wire [31 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWLEN" *)
input wire [7 : 0] s_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWSIZE" *)
input wire [2 : 0] s_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWBURST" *)
input wire [1 : 0] s_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *)
input wire [3 : 0] s_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WLAST" *)
input wire s_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BID" *)
output wire [11 : 0] s_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *)
input wire s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARID" *)
input wire [11 : 0] s_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *)
input wire [31 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARLEN" *)
input wire [7 : 0] s_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARSIZE" *)
input wire [2 : 0] s_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARBURST" *)
input wire [1 : 0] s_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RID" *)
output wire [11 : 0] s_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RLAST" *)
output wire s_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 12, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_CLK_COMMON_0_axi_periph_clk, NUM_READ_THREADS 1, N\
UM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *)
input wire s_axi_rready;
input wire [3 : 0] axi_c2c_m2s_intr_in;
output wire [3 : 0] axi_c2c_s2m_intr_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME idelay_ref_clk, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN design_1_CLK_COMMON_0_delay_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 idelay_ref_clk CLK" *)
input wire idelay_ref_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_c2c_phy_clk, ASSOCIATED_BUSIF AXIS_TX:AXIS_RX, ASSOCIATED_RESET aurora_reset_pb, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_CLK_COMMON_0_axi_periph_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_c2c_phy_clk CLK" *)
input wire axi_c2c_phy_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_c2c_selio_tx_clk_out, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_AXI_C2C_0_axi_c2c_selio_tx_clk_out, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_c2c_selio_tx_clk_out CLK" *)
output wire axi_c2c_selio_tx_clk_out;
output wire [16 : 0] axi_c2c_selio_tx_data_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_c2c_selio_rx_clk_in, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_c2c_selio_rx_clk_in CLK" *)
input wire axi_c2c_selio_rx_clk_in;
input wire [16 : 0] axi_c2c_selio_rx_data_in;
output wire axi_c2c_link_status_out;
output wire axi_c2c_multi_bit_error_out;
output wire axi_c2c_link_error_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_lite_aclk, ASSOCIATED_BUSIF m_axi_lite, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_CLK_COMMON_0_axi_periph_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axi_lite_aclk CLK" *)
input wire m_axi_lite_aclk;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_lite AWADDR" *)
output wire [31 : 0] m_axi_lite_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_lite AWPROT" *)
output wire [1 : 0] m_axi_lite_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_lite AWVALID" *)
output wire m_axi_lite_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_lite AWREADY" *)
input wire m_axi_lite_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_lite WDATA" *)
output wire [31 : 0] m_axi_lite_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_lite WSTRB" *)
output wire [3 : 0] m_axi_lite_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_lite WVALID" *)
output wire m_axi_lite_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_lite WREADY" *)
input wire m_axi_lite_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_lite BRESP" *)
input wire [1 : 0] m_axi_lite_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_lite BVALID" *)
input wire m_axi_lite_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_lite BREADY" *)
output wire m_axi_lite_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_lite ARADDR" *)
output wire [31 : 0] m_axi_lite_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_lite ARPROT" *)
output wire [1 : 0] m_axi_lite_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_lite ARVALID" *)
output wire m_axi_lite_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_lite ARREADY" *)
input wire m_axi_lite_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_lite RDATA" *)
input wire [31 : 0] m_axi_lite_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_lite RRESP" *)
input wire [1 : 0] m_axi_lite_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_lite RVALID" *)
input wire m_axi_lite_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_CLK_COMMON_0_axi_periph_clk, NUM_READ_THREADS \
1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_lite RREADY" *)
output wire m_axi_lite_rready;

  axi_chip2chip_v5_0_5 #(
    .C_FAMILY("kintex7"),
    .C_INSTANCE("axi_c2c"),
    .C_SIMULATION(0),
    .C_MASTER_FPGA(1),
    .C_AXI_BUS_TYPE(0),
    .C_EN_AXI_LINK_HNDLR(0),
    .C_COMMON_CLK(0),
    .C_INTERFACE_TYPE(1),
    .C_INTERFACE_MODE(1),
    .C_NUM_OF_IO(36),
    .C_SELECTIO_PHY_CLK(100),
    .C_INCLUDE_AXILITE(2),
    .C_AXI_DATA_WIDTH(32),
    .C_AXI_ID_WIDTH(12),
    .C_AXI_WUSER_WIDTH(1),
    .C_DISABLE_DESKEW(0),
    .C_DISABLE_CLK_SHIFT(0),
    .C_USE_DIFF_CLK(0),
    .C_USE_DIFF_IO(0),
    .C_AURORA_WIDTH(4096),
    .C_ECC_ENABLE(1),
    .C_AXI_STB_WIDTH(4),
    .C_AXI_ADDR_WIDTH(32),
    .C_AXI_LEN_WIDTH(8),
    .C_AXI_SIZE_WIDTH(3),
    .C_AXI_BRST_WIDTH(2),
    .C_AXI_RESP_WIDTH(2),
    .C_INTERRUPT_WIDTH(4),
    .C_EN_LEGACY_MODE(0),
    .C_AXI_LITE_ADDR_WIDTH(32),
    .C_AXI_LITE_PROT_WIDTH(2),
    .C_AXI_LITE_DATA_WIDTH(32),
    .C_AXI_LITE_STB_WIDTH(4),
    .C_AXI_LITE_RESP_WIDTH(2)
  ) inst (
    .s_aclk(s_aclk),
    .s_aresetn(s_aresetn),
    .s_axi_awid(s_axi_awid),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awlen(s_axi_awlen),
    .s_axi_awsize(s_axi_awsize),
    .s_axi_awburst(s_axi_awburst),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awready(s_axi_awready),
    .s_axi_wuser(1'B0),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wlast(s_axi_wlast),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wready(s_axi_wready),
    .s_axi_bid(s_axi_bid),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_arid(s_axi_arid),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arlen(s_axi_arlen),
    .s_axi_arsize(s_axi_arsize),
    .s_axi_arburst(s_axi_arburst),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_arready(s_axi_arready),
    .s_axi_rid(s_axi_rid),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rlast(s_axi_rlast),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_rready(s_axi_rready),
    .axi_c2c_lnk_hndlr_in_progress(),
    .axi_c2c_m2s_intr_in(axi_c2c_m2s_intr_in),
    .axi_c2c_s2m_intr_out(axi_c2c_s2m_intr_out),
    .m_aclk(1'B0),
    .m_aresetn(1'B1),
    .m_axi_awid(),
    .m_axi_awaddr(),
    .m_axi_awlen(),
    .m_axi_awsize(),
    .m_axi_awburst(),
    .m_axi_awvalid(),
    .m_axi_awready(1'B0),
    .m_axi_wuser(),
    .m_axi_wdata(),
    .m_axi_wstrb(),
    .m_axi_wlast(),
    .m_axi_wvalid(),
    .m_axi_wready(1'B0),
    .m_axi_bid(12'B0),
    .m_axi_bresp(2'B0),
    .m_axi_bvalid(1'B0),
    .m_axi_bready(),
    .m_axi_arid(),
    .m_axi_araddr(),
    .m_axi_arlen(),
    .m_axi_arsize(),
    .m_axi_arburst(),
    .m_axi_arvalid(),
    .m_axi_arready(1'B0),
    .m_axi_rid(12'B0),
    .m_axi_rdata(32'B0),
    .m_axi_rresp(2'B0),
    .m_axi_rlast(1'B0),
    .m_axi_rvalid(1'B0),
    .m_axi_rready(),
    .axi_c2c_s2m_intr_in(4'B0),
    .axi_c2c_m2s_intr_out(),
    .idelay_ref_clk(idelay_ref_clk),
    .axi_c2c_phy_clk(axi_c2c_phy_clk),
    .axi_c2c_selio_tx_clk_out(axi_c2c_selio_tx_clk_out),
    .axi_c2c_selio_tx_data_out(axi_c2c_selio_tx_data_out),
    .axi_c2c_selio_rx_clk_in(axi_c2c_selio_rx_clk_in),
    .axi_c2c_selio_rx_data_in(axi_c2c_selio_rx_data_in),
    .axi_c2c_selio_tx_diff_clk_out_p(),
    .axi_c2c_selio_tx_diff_clk_out_n(),
    .axi_c2c_selio_tx_diff_data_out_p(),
    .axi_c2c_selio_tx_diff_data_out_n(),
    .axi_c2c_selio_rx_diff_clk_in_p(1'B0),
    .axi_c2c_selio_rx_diff_clk_in_n(1'B0),
    .axi_c2c_selio_rx_diff_data_in_p(17'B0),
    .axi_c2c_selio_rx_diff_data_in_n(17'B0),
    .axi_c2c_aurora_channel_up(1'B0),
    .axi_c2c_aurora_tx_tready(1'B0),
    .axi_c2c_aurora_tx_tdata(),
    .axi_c2c_aurora_tx_tvalid(),
    .axi_c2c_aurora_rx_tdata(4096'B0),
    .axi_c2c_aurora_rx_tvalid(1'B0),
    .aurora_do_cc(),
    .aurora_pma_init_in(1'B0),
    .aurora_init_clk(1'B0),
    .aurora_pma_init_out(),
    .aurora_mmcm_not_locked(1'B0),
    .aurora_reset_pb(),
    .axi_c2c_config_error_out(),
    .axi_c2c_link_status_out(axi_c2c_link_status_out),
    .axi_c2c_multi_bit_error_out(axi_c2c_multi_bit_error_out),
    .axi_c2c_link_error_out(axi_c2c_link_error_out),
    .m_aclk_out(),
    .s_axi_lite_aclk(1'B0),
    .s_axi_lite_awaddr(32'B0),
    .s_axi_lite_awprot(2'B0),
    .s_axi_lite_awvalid(1'B0),
    .s_axi_lite_awready(),
    .s_axi_lite_wdata(32'B0),
    .s_axi_lite_wstrb(4'B0),
    .s_axi_lite_wvalid(1'B0),
    .s_axi_lite_wready(),
    .s_axi_lite_bresp(),
    .s_axi_lite_bvalid(),
    .s_axi_lite_bready(1'B0),
    .s_axi_lite_araddr(32'B0),
    .s_axi_lite_arprot(2'B0),
    .s_axi_lite_arvalid(1'B0),
    .s_axi_lite_arready(),
    .s_axi_lite_rdata(),
    .s_axi_lite_rresp(),
    .s_axi_lite_rvalid(),
    .s_axi_lite_rready(1'B0),
    .m_axi_lite_aclk(m_axi_lite_aclk),
    .m_axi_lite_awaddr(m_axi_lite_awaddr),
    .m_axi_lite_awprot(m_axi_lite_awprot),
    .m_axi_lite_awvalid(m_axi_lite_awvalid),
    .m_axi_lite_awready(m_axi_lite_awready),
    .m_axi_lite_wdata(m_axi_lite_wdata),
    .m_axi_lite_wstrb(m_axi_lite_wstrb),
    .m_axi_lite_wvalid(m_axi_lite_wvalid),
    .m_axi_lite_wready(m_axi_lite_wready),
    .m_axi_lite_bresp(m_axi_lite_bresp),
    .m_axi_lite_bvalid(m_axi_lite_bvalid),
    .m_axi_lite_bready(m_axi_lite_bready),
    .m_axi_lite_araddr(m_axi_lite_araddr),
    .m_axi_lite_arprot(m_axi_lite_arprot),
    .m_axi_lite_arvalid(m_axi_lite_arvalid),
    .m_axi_lite_arready(m_axi_lite_arready),
    .m_axi_lite_rdata(m_axi_lite_rdata),
    .m_axi_lite_rresp(m_axi_lite_rresp),
    .m_axi_lite_rvalid(m_axi_lite_rvalid),
    .m_axi_lite_rready(m_axi_lite_rready)
  );
endmodule
