// (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:module_ref:eth_pump:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_eth_pump_0_0 (
  iclk_eth,
  irst_eth,
  iclk_h,
  iclk_hh,
  eth_tx_en,
  eth_tx_er,
  eth_txd,
  eth_rx_en,
  eth_rx_er,
  eth_rxd,
  m_axis_tdata_modem,
  m_axis_tlast_modem,
  m_axis_tready_modem,
  m_axis_tuser_modem,
  m_axis_tvalid_modem,
  s_axis_tdata_modem,
  s_axis_tlast_modem,
  s_axis_tready_modem,
  s_axis_tuser_modem,
  s_axis_tvalid_modem,
  axis_cobs_decode_0_m_axis_TUSER,
  prog_full,
  m_status_overflow
);

input wire iclk_eth;
input wire irst_eth;
input wire iclk_h;
input wire iclk_hh;
(* X_INTERFACE_INFO = "analog.com:interface:fifo_rd:1.0 eth_tx EN" *)
input wire eth_tx_en;
input wire eth_tx_er;
input wire [7 : 0] eth_txd;
(* X_INTERFACE_INFO = "analog.com:interface:fifo_rd:1.0 eth_rx EN" *)
output wire eth_rx_en;
output wire eth_rx_er;
output wire [7 : 0] eth_rxd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_modem TDATA" *)
output wire [7 : 0] m_axis_tdata_modem;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_modem TLAST" *)
output wire m_axis_tlast_modem;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_modem TREADY" *)
input wire m_axis_tready_modem;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_modem TUSER" *)
output wire m_axis_tuser_modem;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_modem, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_modem TVALID" *)
output wire m_axis_tvalid_modem;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_modem TDATA" *)
input wire [7 : 0] s_axis_tdata_modem;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_modem TLAST" *)
input wire s_axis_tlast_modem;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_modem TREADY" *)
output wire s_axis_tready_modem;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_modem TUSER" *)
input wire s_axis_tuser_modem;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_modem, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_modem TVALID" *)
input wire s_axis_tvalid_modem;
output wire axis_cobs_decode_0_m_axis_TUSER;
output wire prog_full;
(* X_INTERFACE_INFO = "analog.com:interface:fifo_wr:1.0 m_status OVERFLOW" *)
output wire m_status_overflow;

  eth_pump #(
    .MII_EN(1)
  ) inst (
    .iclk_eth(iclk_eth),
    .irst_eth(irst_eth),
    .iclk_h(iclk_h),
    .iclk_hh(iclk_hh),
    .eth_tx_en(eth_tx_en),
    .eth_tx_er(eth_tx_er),
    .eth_txd(eth_txd),
    .eth_rx_en(eth_rx_en),
    .eth_rx_er(eth_rx_er),
    .eth_rxd(eth_rxd),
    .m_axis_tdata_modem(m_axis_tdata_modem),
    .m_axis_tlast_modem(m_axis_tlast_modem),
    .m_axis_tready_modem(m_axis_tready_modem),
    .m_axis_tuser_modem(m_axis_tuser_modem),
    .m_axis_tvalid_modem(m_axis_tvalid_modem),
    .s_axis_tdata_modem(s_axis_tdata_modem),
    .s_axis_tlast_modem(s_axis_tlast_modem),
    .s_axis_tready_modem(s_axis_tready_modem),
    .s_axis_tuser_modem(s_axis_tuser_modem),
    .s_axis_tvalid_modem(s_axis_tvalid_modem),
    .axis_cobs_decode_0_m_axis_TUSER(axis_cobs_decode_0_m_axis_TUSER),
    .prog_full(prog_full),
    .m_status_overflow(m_status_overflow)
  );
endmodule
