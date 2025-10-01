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


// IP VLNV: xilinx.com:module_ref:mqc_t:1.0
// IP Revision: 1

(* X_CORE_INFO = "mqc_t,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "design_1_mqc_t_0_0,mqc_t,{}" *)
(* CORE_GENERATION_INFO = "design_1_mqc_t_0_0,mqc_t,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mqc_t,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,pDAT_W=32,pDAT_Num=200000,pDAT_FFT_Num=17424}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_mqc_t_0_0 (
  iclk_lte,
  iclk_dsp,
  ireset,
  isig_tcorr,
  idata_re,
  idata_im,
  isync_cpack,
  iready_corr_wr,
  Service_1_RX_0,
  Service_2_RX_1,
  Service_3_RX_2,
  Service_4_RX_3,
  Service_1_TX_4,
  Service_2_TX_5,
  Service_3_TX_6,
  Service_4_TX_7,
  DL_RX_LNK_8,
  DL_TX_LNK_9,
  UL_RX_LNK_10,
  UL_TX_LNK_11,
  AD9364_Samples,
  Power_meter_1,
  Power_meter_2,
  Power_meter_3,
  Power_meter_4,
  odata_buff_0,
  odata_buff_1,
  oready_buff
);

input wire iclk_lte;
input wire iclk_dsp;
input wire ireset;
input wire isig_tcorr;
input wire [11 : 0] idata_re;
input wire [11 : 0] idata_im;
input wire isync_cpack;
input wire iready_corr_wr;
input wire [31 : 0] Service_1_RX_0;
input wire [31 : 0] Service_2_RX_1;
input wire [31 : 0] Service_3_RX_2;
input wire [31 : 0] Service_4_RX_3;
input wire [31 : 0] Service_1_TX_4;
input wire [31 : 0] Service_2_TX_5;
input wire [31 : 0] Service_3_TX_6;
input wire [31 : 0] Service_4_TX_7;
input wire [31 : 0] DL_RX_LNK_8;
input wire [31 : 0] DL_TX_LNK_9;
input wire [31 : 0] UL_RX_LNK_10;
input wire [31 : 0] UL_TX_LNK_11;
input wire [31 : 0] AD9364_Samples;
input wire [31 : 0] Power_meter_1;
input wire [31 : 0] Power_meter_2;
input wire [31 : 0] Power_meter_3;
input wire [31 : 0] Power_meter_4;
output wire [15 : 0] odata_buff_0;
output wire [15 : 0] odata_buff_1;
output wire oready_buff;

  mqc_t #(
    .pDAT_W(32),
    .pDAT_Num(200000),
    .pDAT_FFT_Num(17424)
  ) inst (
    .iclk_lte(iclk_lte),
    .iclk_dsp(iclk_dsp),
    .ireset(ireset),
    .isig_tcorr(isig_tcorr),
    .idata_re(idata_re),
    .idata_im(idata_im),
    .isync_cpack(isync_cpack),
    .iready_corr_wr(iready_corr_wr),
    .Service_1_RX_0(Service_1_RX_0),
    .Service_2_RX_1(Service_2_RX_1),
    .Service_3_RX_2(Service_3_RX_2),
    .Service_4_RX_3(Service_4_RX_3),
    .Service_1_TX_4(Service_1_TX_4),
    .Service_2_TX_5(Service_2_TX_5),
    .Service_3_TX_6(Service_3_TX_6),
    .Service_4_TX_7(Service_4_TX_7),
    .DL_RX_LNK_8(DL_RX_LNK_8),
    .DL_TX_LNK_9(DL_TX_LNK_9),
    .UL_RX_LNK_10(UL_RX_LNK_10),
    .UL_TX_LNK_11(UL_TX_LNK_11),
    .AD9364_Samples(AD9364_Samples),
    .Power_meter_1(Power_meter_1),
    .Power_meter_2(Power_meter_2),
    .Power_meter_3(Power_meter_3),
    .Power_meter_4(Power_meter_4),
    .odata_buff_0(odata_buff_0),
    .odata_buff_1(odata_buff_1),
    .oready_buff(oready_buff)
  );
endmodule
