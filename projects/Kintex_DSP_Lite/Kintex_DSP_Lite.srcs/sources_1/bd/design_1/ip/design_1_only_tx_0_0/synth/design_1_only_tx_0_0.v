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


// IP VLNV: xilinx.com:module_ref:only_tx:1.0
// IP Revision: 1

(* X_CORE_INFO = "only_tx,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "design_1_only_tx_0_0,only_tx,{}" *)
(* CORE_GENERATION_INFO = "design_1_only_tx_0_0,only_tx,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=only_tx,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_only_tx_0_0 (
  clk_l,
  clk_h,
  rst,
  ss_in,
  m_in,
  bw_in,
  data_off_tx,
  s_axis_tdata,
  s_axis_tvalid,
  s_axis_tlast,
  s_axis_tuser,
  s_axis_tready,
  s_axis_aclk,
  tx_i_axis_aclk,
  tx_q_axis_aclk,
  validate_en,
  tx_i_axis_tdata,
  tx_i_axis_tvalid,
  tx_i_axis_tready,
  tx_q_axis_tdata,
  tx_q_axis_tvalid,
  tx_q_axis_tready
);

input wire clk_l;
input wire clk_h;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire [3 : 0] ss_in;
input wire [2 : 0] m_in;
input wire [2 : 0] bw_in;
input wire data_off_tx;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *)
input wire [7 : 0] s_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *)
input wire s_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *)
input wire s_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TUSER" *)
input wire [0 : 0] s_axis_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN design_1_clk_DSP_0_sample_rate_30_72, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *)
output wire s_axis_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_aclk, ASSOCIATED_BUSIF s_axis, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN design_1_clk_DSP_0_sample_rate_30_72, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axis_aclk CLK" *)
input wire s_axis_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_i_axis_aclk, ASSOCIATED_BUSIF tx_i_axis, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN design_1_clk_DSP_0_sample_rate_30_72, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_i_axis_aclk CLK" *)
input wire tx_i_axis_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_q_axis_aclk, ASSOCIATED_BUSIF tx_q_axis, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN design_1_clk_DSP_0_sample_rate_30_72, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_q_axis_aclk CLK" *)
input wire tx_q_axis_aclk;
(* X_INTERFACE_INFO = "analog.com:interface:fifo_rd:1.0 validate EN" *)
input wire validate_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_i_axis TDATA" *)
output wire [15 : 0] tx_i_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_i_axis TVALID" *)
output wire tx_i_axis_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_i_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN design_1_clk_DSP_0_sample_rate_30_72, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_i_axis TREADY" *)
input wire tx_i_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_q_axis TDATA" *)
output wire [15 : 0] tx_q_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_q_axis TVALID" *)
output wire tx_q_axis_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_q_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN design_1_clk_DSP_0_sample_rate_30_72, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_q_axis TREADY" *)
input wire tx_q_axis_tready;

  only_tx inst (
    .clk_l(clk_l),
    .clk_h(clk_h),
    .rst(rst),
    .ss_in(ss_in),
    .m_in(m_in),
    .bw_in(bw_in),
    .data_off_tx(data_off_tx),
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tlast(s_axis_tlast),
    .s_axis_tuser(s_axis_tuser),
    .s_axis_tready(s_axis_tready),
    .s_axis_aclk(s_axis_aclk),
    .tx_i_axis_aclk(tx_i_axis_aclk),
    .tx_q_axis_aclk(tx_q_axis_aclk),
    .validate_en(validate_en),
    .tx_i_axis_tdata(tx_i_axis_tdata),
    .tx_i_axis_tvalid(tx_i_axis_tvalid),
    .tx_i_axis_tready(tx_i_axis_tready),
    .tx_q_axis_tdata(tx_q_axis_tdata),
    .tx_q_axis_tvalid(tx_q_axis_tvalid),
    .tx_q_axis_tready(tx_q_axis_tready)
  );
endmodule
