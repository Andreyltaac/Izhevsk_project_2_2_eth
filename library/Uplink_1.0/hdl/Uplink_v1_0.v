
`timescale 1 ns / 1 ps

	module Uplink_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 5
	)
	(
		// Users to add ports here
        input wire  clk_sample_rate,
        input wire [31:0] UL_LNK_RX_1,
        input wire [31:0] UL_LNK_RX_2,
        input wire [31:0] UL_LNK_RX_3,
        input wire [31:0] UL_LNK_RX_4,
                                           
        input wire [31:0] UL_SV_RX_1,
        input wire [31:0] UL_SV_RX_2,
        input wire [31:0] UL_SV_RX_3,
        input wire [31:0] UL_SV_RX_4,
        
        input wire [11:0] pilot_i,
        input wire [11:0] pilot_q,
       
        output wire [31:0] UL_TX_Link_1,
      
        output wire [31:0] DL_TX_Service_1,
        output wire [31:0] DL_TX_Service_2,
        output wire [31:0] DL_TX_Service_3,
        output wire [31:0] DL_TX_Service_4,

		// User ports ends
		// Do not modify the ports beyond this line
		
		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
	
wire [31:0] reg_0;
wire [31:0] reg_1;
wire [31:0] reg_2;
wire [31:0] reg_3;
wire [31:0] reg_4;
	
// Instantiation of Axi Bus Interface S00_AXI
	Uplink_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) Uplink_v1_0_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),
		.reg_0(reg_0),
		.reg_1(reg_1),
        .reg_2(reg_2),
        .reg_3(reg_3),
        .reg_4(reg_4)
	);

	// Add user logic here
Uplink Uplink_i (
      .reg_0(reg_0),
      .reg_1(reg_1),
      .reg_2(reg_2),
      .reg_3(reg_3),
      .reg_4(reg_4),
      
      .UL_LNK_RX_1(UL_LNK_RX_1),
      .UL_LNK_RX_2(UL_LNK_RX_2),
      .UL_LNK_RX_3(UL_LNK_RX_3),
      .UL_LNK_RX_4(UL_LNK_RX_4),
                           
      .UL_SV_RX_1(UL_SV_RX_1),
      .UL_SV_RX_2(UL_SV_RX_2),
      .UL_SV_RX_3(UL_SV_RX_3),
      .UL_SV_RX_4(UL_SV_RX_4),

      .pilot_i(pilot_i),
      .pilot_q(pilot_q),
      
      .DL_TX_Service_1(DL_TX_Service_1),
      .DL_TX_Service_2(DL_TX_Service_2),
      .DL_TX_Service_3(DL_TX_Service_3),
      .DL_TX_Service_4(DL_TX_Service_4),
      
      .UL_TX_Link_1(UL_TX_Link_1),

      .clk_sample_rate(clk_sample_rate)
                );
	// User logic ends

	endmodule
