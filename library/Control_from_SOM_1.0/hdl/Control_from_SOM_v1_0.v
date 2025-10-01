
`timescale 1 ns / 1 ps

	module Control_from_SOM_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here
		output    op_mode_fsc_fsr,
		output    dl_lnk_sv_swap_iq,
		output    dl_lnk_lnk_swap_iq,
		output    ul_sv_lnk_swap_iq,
		output    ul_lnk_lnk_swap_iq,
		output    link_1_enable,
		output    link_2_enable,
		
		output    ad9361_1_reset,         // default value is 1
		output    ad9361_2_reset,         // default value is 1
		output    ad9361_3_reset,         // default value is 1
		output    ad9364_reset,           // default value is 1
		output    ad9361_1_en_agc,
		output    ad9361_2_en_agc,
		output    ad9361_3_en_agc,
		output    ad9364_en_agc,
        
		output    link_1_mode_rf_optic,           
		output    link_2_mode_rf_optic,
		output    lte_downlink_simulation,
		output    lte_uplink_simulation,
		     
		output    reset_FIR_core_26b,     // DIN signal for software SPI
		
		// Signals for debug
		output    live_status,
        
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
	
	// Wires
//	wire   live_status;
	
    // Instantiation of Axi Bus Interface S00_AXI
	Control_from_SOM_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) Control_from_SOM_v1_0_S00_AXI_inst (
		.live_status(live_status),                    // input
        
		.op_mode_fsc_fsr(op_mode_fsc_fsr),            // output
		.dl_lnk_sv_swap_iq(dl_lnk_sv_swap_iq),        // output
		.dl_lnk_lnk_swap_iq(dl_lnk_lnk_swap_iq),      // output
		.ul_sv_lnk_swap_iq(ul_sv_lnk_swap_iq),        // output
		.ul_lnk_lnk_swap_iq(ul_lnk_lnk_swap_iq),      // output
		.link_1_enable(link_1_enable),                // output
		.link_2_enable(link_2_enable),                // output
		
		.ad9361_1_reset(ad9361_1_reset),              // output
		.ad9361_2_reset(ad9361_2_reset),              // output
		.ad9361_3_reset(ad9361_3_reset),              // output
		.ad9364_reset(ad9364_reset),                  // output
		.ad9361_1_en_agc(ad9361_1_en_agc),            // output
		.ad9361_2_en_agc(ad9361_2_en_agc),            // output
		.ad9361_3_en_agc(ad9361_3_en_agc),            // output
		.ad9364_en_agc(ad9364_en_agc),                // output
        
		.link_1_mode_rf_optic(link_1_mode_rf_optic),  // output
		.link_2_mode_rf_optic(link_2_mode_rf_optic),  // output
		.lte_downlink_simulation(lte_downlink_simulation),  // output
		.lte_uplink_simulation(lte_uplink_simulation),  // output
		
		.reset_FIR_core(reset_FIR_core_26b),          // output

		
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
		.S_AXI_RREADY(s00_axi_rready)
	);
	
	// Instantiation of Live_status module
    Live_status Live_status_inst (
        .clk(s00_axi_aclk),                 // input
        .reset_n(s00_axi_aresetn),          // input
        .live_status(live_status)           // output
    );

	// Add user logic here

	// User logic ends

	endmodule
