
`timescale 1 ns / 1 ps

	module IP_sync_v1_0 #
	(
		// Users to add parameters here
        parameter integer  pDAT_W = 12,
        parameter integer  pDAT_W_SDR = 16,
        parameter integer  pDAT_Num_corr = 256,
        
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here
     input  wire                     sync_iclk,
     input  wire                     sync_ireset,
     //
     input  wire   [pDAT_W_SDR-1 : 0] sync_idat_re,
     input  wire   [pDAT_W_SDR-1 : 0] sync_idat_im,
     //
     input  wire                    ready_buff,
     output wire                    sync_rdy_wr_buff,
     output wire   [pDAT_W-1 : 0]   sync_corr,
     output wire   [pDAT_W-1 : 0]   sync_mlvl,
     output wire                    sync_osop,
     output wire                    sync_trh_hold,
     output wire                    sync_vrf_oval,
     output wire                    sync_val_osop,
     output wire                    sync_osop_buff,
     output wire   [pDAT_W-1 : 0]   sync_odat_re,
     output wire   [pDAT_W-1 : 0]   sync_odat_im,
     output wire                    LED_str,
     output wire                    LED_en,
     output wire                    sync_str_frame,
     
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
	 wire [1:0] out_leds;
// Instantiation of Axi Bus Interface S00_AXI
	IP_sync_v1_0_S00_AXI # ( 
	    .pDAT_W        ( pDAT_W ),
	    .pDAT_W_SDR    ( pDAT_W_SDR ),
	    .pDAT_Num_corr (pDAT_Num_corr),
       	.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) IP_sync_v1_0_S00_AXI_inst (
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
		//
		.sync_iclk   (sync_iclk),
		.sync_ireset (sync_ireset),
		//
		.sync_idat_re (sync_idat_re),
		.sync_idat_im (sync_idat_im),
		//
		.ready_buff   (ready_buff),
		.sync_rdy_wr_buff (sync_rdy_wr_buff),
		.sync_corr    (sync_corr),
		.sync_mlvl    (sync_mlvl),
		.sync_osop    (sync_osop),
		.trh_hold     (sync_trh_hold),
		.vrf_oval      (sync_vrf_oval),
        .val_osop      (sync_val_osop), 
		.sync_osop_buff (sync_osop_buff),
		.sync_odat_re   (sync_odat_re),
		.sync_odat_im   (sync_odat_im),
		.out_led        (out_leds),
		.sync_str_frame (sync_str_frame)
	);

	 // Add user logic here
	 assign LED_str =  out_leds[1];
     assign LED_en  =  out_leds[0];
	// User logic ends

	endmodule
