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


// IP VLNV: xilinx.com:module_ref:packet_resampler_4bto8b:1.0
// IP Revision: 1

(* X_CORE_INFO = "packet_resampler_4bto8b,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "design_1_packet_resampler_4bt_0_0,packet_resampler_4bto8b,{}" *)
(* CORE_GENERATION_INFO = "design_1_packet_resampler_4bt_0_0,packet_resampler_4bto8b,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=packet_resampler_4bto8b,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,DATA_WIDTH=4,WATCHDOG_MAX_COUNT=25}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_packet_resampler_4bt_0_0 (
  clk_in,
  clk_out,
  rst_n,
  enable_in,
  data_in,
  enable_out,
  data_out,
  wcount_in,
  wphase_rx
);

input wire clk_in;
input wire clk_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
input wire enable_in;
input wire [3 : 0] data_in;
output wire enable_out;
output wire [7 : 0] data_out;
output wire [10 : 0] wcount_in;
output wire [2 : 0] wphase_rx;

  packet_resampler_4bto8b #(
    .DATA_WIDTH(4),
    .WATCHDOG_MAX_COUNT(25)
  ) inst (
    .clk_in(clk_in),
    .clk_out(clk_out),
    .rst_n(rst_n),
    .enable_in(enable_in),
    .data_in(data_in),
    .enable_out(enable_out),
    .data_out(data_out),
    .wcount_in(wcount_in),
    .wphase_rx(wphase_rx)
  );
endmodule
