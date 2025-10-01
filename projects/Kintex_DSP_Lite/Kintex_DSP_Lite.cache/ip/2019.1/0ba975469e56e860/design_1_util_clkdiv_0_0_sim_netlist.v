// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Sep  8 07:51:24 2025
// Host        : 475RM32 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_util_clkdiv_0_0_sim_netlist.v
// Design      : design_1_util_clkdiv_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_util_clkdiv_0_0,util_clkdiv,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "util_clkdiv,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    clk_sel,
    clk_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_CLK_COMMON_0_axi_periph_clk, INSERT_VIP 0" *) input clk;
  input clk_sel;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_out CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_out, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_util_clkdiv_0_0_clk_out, INSERT_VIP 0" *) output clk_out;

  wire clk;
  wire clk_out;
  wire clk_sel;

  (* SEL_0_DIV = "4" *) 
  (* SEL_1_DIV = "2" *) 
  (* SIM_DEVICE = "7SERIES" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_clkdiv inst
       (.clk(clk),
        .clk_out(clk_out),
        .clk_sel(clk_sel));
endmodule

(* SEL_0_DIV = "4" *) (* SEL_1_DIV = "2" *) (* SIM_DEVICE = "7SERIES" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_clkdiv
   (clk,
    clk_sel,
    clk_out);
  input clk;
  input clk_sel;
  output clk_out;

  wire clk;
  wire clk_div_sel_0_s;
  wire clk_div_sel_1_s;
  wire clk_out;
  wire clk_sel;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFR #(
    .BUFR_DIVIDE("4"),
    .SIM_DEVICE("7SERIES")) 
    clk_divide_sel_0
       (.CE(1'b1),
        .CLR(1'b0),
        .I(clk),
        .O(clk_div_sel_0_s));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFR #(
    .BUFR_DIVIDE("2"),
    .SIM_DEVICE("7SERIES")) 
    clk_divide_sel_1
       (.CE(1'b1),
        .CLR(1'b0),
        .I(clk),
        .O(clk_div_sel_1_s));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFGMUX_CTRL" *) 
  (* XILINX_TRANSFORM_PINMAP = "S:S1,S0" *) 
  BUFGCTRL #(
    .INIT_OUT(0),
    .IS_S0_INVERTED(1'b1),
    .PRESELECT_I0("TRUE"),
    .PRESELECT_I1("FALSE"),
    .SIM_DEVICE("7SERIES")) 
    i_div_clk_gbuf
       (.CE0(1'b1),
        .CE1(1'b1),
        .I0(clk_div_sel_0_s),
        .I1(clk_div_sel_1_s),
        .IGNORE0(1'b0),
        .IGNORE1(1'b0),
        .O(clk_out),
        .S0(clk_sel),
        .S1(clk_sel));
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
