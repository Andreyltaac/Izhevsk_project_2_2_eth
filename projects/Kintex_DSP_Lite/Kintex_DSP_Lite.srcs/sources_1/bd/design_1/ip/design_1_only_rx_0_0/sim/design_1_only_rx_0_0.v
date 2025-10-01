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


// IP VLNV: xilinx.com:module_ref:only_rx:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_only_rx_0_0 (
  clk_l,
  clk_h,
  clk_hh,
  rst,
  ss_in,
  m_in,
  bw_in,
  thr_lvl,
  frsync_ctrl,
  rx_i_axis_tdata,
  rx_i_axis_tvalid,
  rx_i_axis_tready,
  rx_q_axis_tdata,
  rx_q_axis_tvalid,
  rx_q_axis_tready,
  addr_shft,
  corr_pr_detect,
  DeFec_err_dtct,
  decrc_oerr,
  decrc_verr,
  p1_verr,
  p2_oerr,
  time_er,
  rx_ocorr_dtct,
  delta_ph,
  kb_ps,
  thr_lvl_auto,
  N_sop_detect,
  N_err,
  m_axis_tdata,
  m_axis_tvalid,
  m_axis_tlast,
  m_axis_tuser,
  m_axis_tready,
  m_axis_aclk,
  rx_i_axis_aclk,
  rx_q_axis_aclk
);

input wire clk_l;
input wire clk_h;
input wire clk_hh;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire [3 : 0] ss_in;
input wire [2 : 0] m_in;
input wire [2 : 0] bw_in;
input wire [23 : 0] thr_lvl;
input wire [1 : 0] frsync_ctrl;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_i_axis TDATA" *)
input wire [15 : 0] rx_i_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_i_axis TVALID" *)
input wire rx_i_axis_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_i_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN design_1_clk_DSP_0_sample_rate_30_72, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_i_axis TREADY" *)
output wire rx_i_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_q_axis TDATA" *)
input wire [15 : 0] rx_q_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_q_axis TVALID" *)
input wire rx_q_axis_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_q_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN design_1_clk_DSP_0_sample_rate_30_72, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_q_axis TREADY" *)
output wire rx_q_axis_tready;
input wire [13 : 0] addr_shft;
output wire corr_pr_detect;
output wire DeFec_err_dtct;
output wire decrc_oerr;
output wire decrc_verr;
output wire p1_verr;
output wire p2_oerr;
output wire time_er;
output wire rx_ocorr_dtct;
output wire [23 : 0] delta_ph;
output wire [17 : 0] kb_ps;
output wire [23 : 0] thr_lvl_auto;
output wire [14 : 0] N_sop_detect;
output wire [23 : 0] N_err;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *)
output wire [7 : 0] m_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *)
output wire m_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *)
output wire m_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TUSER" *)
output wire [0 : 0] m_axis_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 276480000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *)
input wire m_axis_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_aclk, ASSOCIATED_BUSIF m_axis, FREQ_HZ 276480000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_aclk CLK" *)
input wire m_axis_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_i_axis_aclk, ASSOCIATED_BUSIF rx_i_axis, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN design_1_clk_DSP_0_sample_rate_30_72, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rx_i_axis_aclk CLK" *)
input wire rx_i_axis_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_q_axis_aclk, ASSOCIATED_BUSIF rx_q_axis, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN design_1_clk_DSP_0_sample_rate_30_72, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rx_q_axis_aclk CLK" *)
input wire rx_q_axis_aclk;

  only_rx #(
    .Validate_en(1)
  ) inst (
    .clk_l(clk_l),
    .clk_h(clk_h),
    .clk_hh(clk_hh),
    .rst(rst),
    .ss_in(ss_in),
    .m_in(m_in),
    .bw_in(bw_in),
    .thr_lvl(thr_lvl),
    .frsync_ctrl(frsync_ctrl),
    .rx_i_axis_tdata(rx_i_axis_tdata),
    .rx_i_axis_tvalid(rx_i_axis_tvalid),
    .rx_i_axis_tready(rx_i_axis_tready),
    .rx_q_axis_tdata(rx_q_axis_tdata),
    .rx_q_axis_tvalid(rx_q_axis_tvalid),
    .rx_q_axis_tready(rx_q_axis_tready),
    .addr_shft(addr_shft),
    .corr_pr_detect(corr_pr_detect),
    .DeFec_err_dtct(DeFec_err_dtct),
    .decrc_oerr(decrc_oerr),
    .decrc_verr(decrc_verr),
    .p1_verr(p1_verr),
    .p2_oerr(p2_oerr),
    .time_er(time_er),
    .rx_ocorr_dtct(rx_ocorr_dtct),
    .delta_ph(delta_ph),
    .kb_ps(kb_ps),
    .thr_lvl_auto(thr_lvl_auto),
    .N_sop_detect(N_sop_detect),
    .N_err(N_err),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tuser(m_axis_tuser),
    .m_axis_tready(m_axis_tready),
    .m_axis_aclk(m_axis_aclk),
    .rx_i_axis_aclk(rx_i_axis_aclk),
    .rx_q_axis_aclk(rx_q_axis_aclk)
  );
endmodule
