
`timescale 1 ns / 1 ps

	module Samples_to_SOM_v1_0 #
	(
		// Users to add parameters here
        parameter integer C_DSP_SAMPLE_NUMBER   =   2048,
        parameter integer C_DDS_SAMPLE_NUMBER   =   2048,
//        parameter integer C_PWR_SAMPLE_NUMBER   =   18,
		
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 7
	)
	(
		// Users to add ports here
        input           acq_smpls,              // control signal for sample acquisition
		
        input           dsp_clk,                // clock for DSP data (samples) FIFOs
        input [31:0]    dsp_data_1,             // dsp sample #1
        input           dsp_vld_1,              // dsp sample valid #1
        input [31:0]    dsp_data_2,             // dsp sample #2
        input           dsp_vld_2,              // dsp sample valid #2
        input [31:0]    dsp_data_3,             // dsp sample #3
        input           dsp_vld_3,              // dsp sample valid #3
        input [31:0]    dsp_data_4,             // dsp sample #4
        input           dsp_vld_4,              // dsp sample valid #4
        input [31:0]    dsp_data_5,             // dsp sample #5
        input           dsp_vld_5,              // dsp sample valid #5
        input [31:0]    dsp_data_6,             // dsp sample #6
        input           dsp_vld_6,              // dsp sample valid #6
        input [31:0]    dsp_data_7,             // dsp sample #7
        input           dsp_vld_7,              // dsp sample valid #7
        input [31:0]    dsp_data_8,             // dsp sample #8
        input           dsp_vld_8,              // dsp sample valid #8
        input [31:0]    dsp_data_9,             // dsp sample #9
        input           dsp_vld_9,              // dsp sample valid #9
        input [31:0]    dsp_data_10,            // dsp sample #10
        input           dsp_vld_10,             // dsp sample valid #10
        input [31:0]    dsp_data_11,            // dsp sample #11
        input           dsp_vld_11,             // dsp sample valid #11
        input [31:0]    dsp_data_12,            // dsp sample #12
        input           dsp_vld_12,             // dsp sample valid #12
        
        input           dds_clk,                // clock for DDS data (samples) FIFO
        input [31:0]    dds_data,               // dds sample
        input           dds_vld,                // dds sample valid
        
//        input           pwr_clk,                // clock for PWR data (samples) FIFO
//        input [31:0]    pwr_data,               // pwr sample
//        input           pwr_vld,                // pwr sample valid


        // Signals for debug
        output          all_fifo_reset,
        output          fifo_reset,
        
        output          dsp_fifo_wr_en_1,
        output          dsp_fifo_rd_en_1,
        output [31:0]   dsp_fifo_dout_1,
        output          dsp_fifo_ok_1,
        output          dsp_fifo_full_1,
        output          dsp_fifo_empty_1,
        output [11:0]   dsp_fifo_data_count_1,
        
        output          dds_fifo_wr_en,
        output          dds_fifo_rd_en,
        output [31:0]   dds_fifo_dout,
        output          dds_fifo_ok,
        output          dds_fifo_full,
        output          dds_fifo_empty,
        output [11:0]   dds_fifo_data_count,
		
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
	
    // ----------------------------------------------------------------------------
    // Parameter
    // ----------------------------------------------------------------------------
    // N/A
	
    // ----------------------------------------------------------------------------
    // Wires
    // ----------------------------------------------------------------------------
//    wire        all_fifo_reset;
//    wire        fifo_reset;
    
//    wire        dsp_fifo_wr_en_1;
//    wire        dsp_fifo_rd_en_1;
//    wire [31:0] dsp_fifo_dout_1;
//    wire        dsp_fifo_ok_1;
//    wire        dsp_fifo_full_1;
//    wire        dsp_fifo_empty_1;
//    wire [11:0] dsp_fifo_data_count_1;
    
    wire        dsp_fifo_wr_en_2;
    wire        dsp_fifo_rd_en_2;
    wire [31:0] dsp_fifo_dout_2;
    wire        dsp_fifo_ok_2;
    wire        dsp_fifo_full_2;
    wire        dsp_fifo_empty_2;
    wire [11:0] dsp_fifo_data_count_2;

    wire        dsp_fifo_wr_en_3;
    wire        dsp_fifo_rd_en_3;
    wire [31:0] dsp_fifo_dout_3;
    wire        dsp_fifo_ok_3;
    wire        dsp_fifo_full_3;
    wire        dsp_fifo_empty_3;
    wire [11:0] dsp_fifo_data_count_3;

    wire        dsp_fifo_wr_en_4;
    wire        dsp_fifo_rd_en_4;
    wire [31:0] dsp_fifo_dout_4;
    wire        dsp_fifo_ok_4;
    wire        dsp_fifo_full_4;
    wire        dsp_fifo_empty_4;
    wire [11:0] dsp_fifo_data_count_4;

    wire        dsp_fifo_wr_en_5;
    wire        dsp_fifo_rd_en_5;
    wire [31:0] dsp_fifo_dout_5;
    wire        dsp_fifo_ok_5;
    wire        dsp_fifo_full_5;
    wire        dsp_fifo_empty_5;
    wire [11:0] dsp_fifo_data_count_5;

    wire        dsp_fifo_wr_en_6;
    wire        dsp_fifo_rd_en_6;
    wire [31:0] dsp_fifo_dout_6;
    wire        dsp_fifo_ok_6;
    wire        dsp_fifo_full_6;
    wire        dsp_fifo_empty_6;
    wire [11:0] dsp_fifo_data_count_6;

    wire        dsp_fifo_wr_en_7;
    wire        dsp_fifo_rd_en_7;
    wire [31:0] dsp_fifo_dout_7;
    wire        dsp_fifo_ok_7;
    wire        dsp_fifo_full_7;
    wire        dsp_fifo_empty_7;
    wire [11:0] dsp_fifo_data_count_7;

    wire        dsp_fifo_wr_en_8;
    wire        dsp_fifo_rd_en_8;
    wire [31:0] dsp_fifo_dout_8;
    wire        dsp_fifo_ok_8;
    wire        dsp_fifo_full_8;
    wire        dsp_fifo_empty_8;
    wire [11:0] dsp_fifo_data_count_8;

    wire        dsp_fifo_wr_en_9;
    wire        dsp_fifo_rd_en_9;
    wire [31:0] dsp_fifo_dout_9;
    wire        dsp_fifo_ok_9;
    wire        dsp_fifo_full_9;
    wire        dsp_fifo_empty_9;
    wire [11:0] dsp_fifo_data_count_9;

    wire        dsp_fifo_wr_en_10;
    wire        dsp_fifo_rd_en_10;
    wire [31:0] dsp_fifo_dout_10;
    wire        dsp_fifo_ok_10;
    wire        dsp_fifo_full_10;
    wire        dsp_fifo_empty_10;
    wire [11:0] dsp_fifo_data_count_10;

    wire        dsp_fifo_wr_en_11;
    wire        dsp_fifo_rd_en_11;
    wire [31:0] dsp_fifo_dout_11;
    wire        dsp_fifo_ok_11;
    wire        dsp_fifo_full_11;
    wire        dsp_fifo_empty_11;
    wire [11:0] dsp_fifo_data_count_11;

    wire        dsp_fifo_wr_en_12;
    wire        dsp_fifo_rd_en_12;
    wire [31:0] dsp_fifo_dout_12;
    wire        dsp_fifo_ok_12;
    wire        dsp_fifo_full_12;
    wire        dsp_fifo_empty_12;
    wire [11:0] dsp_fifo_data_count_12;

//    wire        dds_fifo_wr_en;
//    wire        dds_fifo_rd_en;
//    wire [31:0] dds_fifo_dout;
//    wire        dds_fifo_ok;
//    wire        dds_fifo_full;
//    wire        dds_fifo_empty;
//    wire [11:0] dds_fifo_data_count;
	
	// Generation of all fifo reset signal
	assign all_fifo_reset = ~s00_axi_aresetn | fifo_reset;
	
	
    // ----------------------------------------------------------------------------
    // Instantiations
    // ----------------------------------------------------------------------------
	
    // Instantiation of Axi Bus Interface S00_AXI
	Samples_to_SOM_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) Samples_to_SOM_v1_0_S00_AXI_inst (
        .fifo_reset             (fifo_reset),               // output
        
        .dsp_fifo_dout_1        (dsp_fifo_dout_1),          // input [31:0]
        .dsp_fifo_data_count_1  (dsp_fifo_data_count_1),    // input [11:0]
        .dsp_fifo_empty_1       (dsp_fifo_empty_1),         // input
        .dsp_fifo_full_1        (dsp_fifo_full_1),          // input
        .dsp_fifo_ok_1          (dsp_fifo_ok_1),            // input
        .dsp_fifo_rd_en_1       (dsp_fifo_rd_en_1),         // output
        
        .dsp_fifo_dout_2        (dsp_fifo_dout_2),          // input [31:0]
        .dsp_fifo_data_count_2  (dsp_fifo_data_count_2),    // input [11:0]
        .dsp_fifo_empty_2       (dsp_fifo_empty_2),         // input
        .dsp_fifo_full_2        (dsp_fifo_full_2),          // input
        .dsp_fifo_ok_2          (dsp_fifo_ok_2),            // input
        .dsp_fifo_rd_en_2       (dsp_fifo_rd_en_2),         // output

        .dsp_fifo_dout_3        (dsp_fifo_dout_3),          // input [31:0]
        .dsp_fifo_data_count_3  (dsp_fifo_data_count_3),    // input [11:0]
        .dsp_fifo_empty_3       (dsp_fifo_empty_3),         // input
        .dsp_fifo_full_3        (dsp_fifo_full_3),          // input
        .dsp_fifo_ok_3          (dsp_fifo_ok_3),            // input
        .dsp_fifo_rd_en_3       (dsp_fifo_rd_en_3),         // output

        .dsp_fifo_dout_4        (dsp_fifo_dout_4),          // input [31:0]
        .dsp_fifo_data_count_4  (dsp_fifo_data_count_4),    // input [11:0]
        .dsp_fifo_empty_4       (dsp_fifo_empty_4),         // input
        .dsp_fifo_full_4        (dsp_fifo_full_4),          // input
        .dsp_fifo_ok_4          (dsp_fifo_ok_4),            // input
        .dsp_fifo_rd_en_4       (dsp_fifo_rd_en_4),         // output

        .dsp_fifo_dout_5        (dsp_fifo_dout_5),          // input [31:0]
        .dsp_fifo_data_count_5  (dsp_fifo_data_count_5),    // input [11:0]
        .dsp_fifo_empty_5       (dsp_fifo_empty_5),         // input
        .dsp_fifo_full_5        (dsp_fifo_full_5),          // input
        .dsp_fifo_ok_5          (dsp_fifo_ok_5),            // input
        .dsp_fifo_rd_en_5       (dsp_fifo_rd_en_5),         // output

        .dsp_fifo_dout_6        (dsp_fifo_dout_6),          // input [31:0]
        .dsp_fifo_data_count_6  (dsp_fifo_data_count_6),    // input [11:0]
        .dsp_fifo_empty_6       (dsp_fifo_empty_6),         // input
        .dsp_fifo_full_6        (dsp_fifo_full_6),          // input
        .dsp_fifo_ok_6          (dsp_fifo_ok_6),            // input
        .dsp_fifo_rd_en_6       (dsp_fifo_rd_en_6),         // output

        .dsp_fifo_dout_7        (dsp_fifo_dout_7),          // input [31:0]
        .dsp_fifo_data_count_7  (dsp_fifo_data_count_7),    // input [11:0]
        .dsp_fifo_empty_7       (dsp_fifo_empty_7),         // input
        .dsp_fifo_full_7        (dsp_fifo_full_7),          // input
        .dsp_fifo_ok_7          (dsp_fifo_ok_7),            // input
        .dsp_fifo_rd_en_7       (dsp_fifo_rd_en_7),         // output

        .dsp_fifo_dout_8        (dsp_fifo_dout_8),          // input [31:0]
        .dsp_fifo_data_count_8  (dsp_fifo_data_count_8),    // input [11:0]
        .dsp_fifo_empty_8       (dsp_fifo_empty_8),         // input
        .dsp_fifo_full_8        (dsp_fifo_full_8),          // input
        .dsp_fifo_ok_8          (dsp_fifo_ok_8),            // input
        .dsp_fifo_rd_en_8       (dsp_fifo_rd_en_8),         // output

        .dsp_fifo_dout_9        (dsp_fifo_dout_9),          // input [31:0]
        .dsp_fifo_data_count_9  (dsp_fifo_data_count_9),    // input [11:0]
        .dsp_fifo_empty_9       (dsp_fifo_empty_9),         // input
        .dsp_fifo_full_9        (dsp_fifo_full_9),          // input
        .dsp_fifo_ok_9          (dsp_fifo_ok_9),            // input
        .dsp_fifo_rd_en_9       (dsp_fifo_rd_en_9),         // output

        .dsp_fifo_dout_10       (dsp_fifo_dout_10),         // input [31:0]
        .dsp_fifo_data_count_10 (dsp_fifo_data_count_10),   // input [11:0]
        .dsp_fifo_empty_10      (dsp_fifo_empty_10),        // input
        .dsp_fifo_full_10       (dsp_fifo_full_10),         // input
        .dsp_fifo_ok_10         (dsp_fifo_ok_10),           // input
        .dsp_fifo_rd_en_10      (dsp_fifo_rd_en_10),        // output

        .dsp_fifo_dout_11       (dsp_fifo_dout_11),         // input [31:0]
        .dsp_fifo_data_count_11 (dsp_fifo_data_count_11),   // input [11:0]
        .dsp_fifo_empty_11      (dsp_fifo_empty_11),        // input
        .dsp_fifo_full_11       (dsp_fifo_full_11),         // input
        .dsp_fifo_ok_11         (dsp_fifo_ok_11),           // input
        .dsp_fifo_rd_en_11      (dsp_fifo_rd_en_11),        // output

        .dsp_fifo_dout_12       (dsp_fifo_dout_12),         // input [31:0]
        .dsp_fifo_data_count_12 (dsp_fifo_data_count_12),   // input [11:0]
        .dsp_fifo_empty_12      (dsp_fifo_empty_12),        // input
        .dsp_fifo_full_12       (dsp_fifo_full_12),         // input
        .dsp_fifo_ok_12         (dsp_fifo_ok_12),           // input
        .dsp_fifo_rd_en_12      (dsp_fifo_rd_en_12),        // output
        
        .dds_fifo_dout          (dds_fifo_dout),            // input [31:0]
        .dds_fifo_data_count    (dds_fifo_data_count),      // input [11:0]
        .dds_fifo_empty         (dds_fifo_empty),           // input
        .dds_fifo_full          (dds_fifo_full),            // input
        .dds_fifo_ok            (dds_fifo_ok),              // input
        .dds_fifo_rd_en         (dds_fifo_rd_en),           // output

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
	
	// Instantiation of DSP #1 Samples_to_FIFO module -----------------------------------------------------------------
    Samples_to_FIFO #(
        .C_SAMPLE_NUMBER(C_DSP_SAMPLE_NUMBER)
    ) Samples_to_FIFO_DSP_1_inst
    (
        .clk            (dsp_clk),                  // input
        .reset_n        (s00_axi_aresetn),          // input
        .acq_smpls      (acq_smpls),                // input
        .data_valid     (dsp_vld_1),                // input
        .fifo_wr_en     (dsp_fifo_wr_en_1)          // output
    );
    
    // Instantiation of DSP #1 FIFO
    fifo_gen_dds fifo_gen_dsp_1_inst (
        .rst            (all_fifo_reset),           // input wire rst
        .wr_clk         (dsp_clk),                  // input wire wr_clk
        .rd_clk         (s00_axi_aclk),             // input wire rd_clk
        .din            (dsp_data_1),               // input wire [31 : 0] din
        .wr_en          (dsp_fifo_wr_en_1),         // input wire wr_en
        .rd_en          (dsp_fifo_rd_en_1),         // input wire rd_en
        .dout           (dsp_fifo_dout_1),          // output wire [31 : 0] dout
        .full           (dsp_fifo_full_1),          // output wire full
        .almost_full    (dsp_fifo_ok_1),            // output wire almost_full
        .empty          (dsp_fifo_empty_1),         // output wire empty
        .rd_data_count  (dsp_fifo_data_count_1)     // output wire [11 : 0] rd_data_count
    );
	// ----------------------------------------------------------------------------------------------------------------

	// Instantiation of DSP #2 Samples_to_FIFO module -----------------------------------------------------------------
    Samples_to_FIFO #(
        .C_SAMPLE_NUMBER(C_DSP_SAMPLE_NUMBER)
    ) Samples_to_FIFO_DSP_2_inst
    (
        .clk            (dsp_clk),                  // input
        .reset_n        (s00_axi_aresetn),          // input
        .acq_smpls      (acq_smpls),                // input
        .data_valid     (dsp_vld_2),                // input
        .fifo_wr_en     (dsp_fifo_wr_en_2)          // output
    );
    
    // Instantiation of DSP #2 FIFO
    fifo_gen_dds fifo_gen_dsp_2_inst (
        .rst            (all_fifo_reset),           // input wire rst
        .wr_clk         (dsp_clk),                  // input wire wr_clk
        .rd_clk         (s00_axi_aclk),             // input wire rd_clk
        .din            (dsp_data_2),               // input wire [31 : 0] din
        .wr_en          (dsp_fifo_wr_en_2),         // input wire wr_en
        .rd_en          (dsp_fifo_rd_en_2),         // input wire rd_en
        .dout           (dsp_fifo_dout_2),          // output wire [31 : 0] dout
        .full           (dsp_fifo_full_2),          // output wire full
        .almost_full    (dsp_fifo_ok_2),            // output wire almost_full
        .empty          (dsp_fifo_empty_2),         // output wire empty
        .rd_data_count  (dsp_fifo_data_count_2)     // output wire [11 : 0] rd_data_count
    );
	// ----------------------------------------------------------------------------------------------------------------

	// Instantiation of DSP #3 Samples_to_FIFO module -----------------------------------------------------------------
    Samples_to_FIFO #(
        .C_SAMPLE_NUMBER(C_DSP_SAMPLE_NUMBER)
    ) Samples_to_FIFO_DSP_3_inst
    (
        .clk            (dsp_clk),                  // input
        .reset_n        (s00_axi_aresetn),          // input
        .acq_smpls      (acq_smpls),                // input
        .data_valid     (dsp_vld_3),                // input
        .fifo_wr_en     (dsp_fifo_wr_en_3)          // output
    );
    
    // Instantiation of DSP #3 FIFO
    fifo_gen_dds fifo_gen_dsp_3_inst (
        .rst            (all_fifo_reset),           // input wire rst
        .wr_clk         (dsp_clk),                  // input wire wr_clk
        .rd_clk         (s00_axi_aclk),             // input wire rd_clk
        .din            (dsp_data_3),               // input wire [31 : 0] din
        .wr_en          (dsp_fifo_wr_en_3),         // input wire wr_en
        .rd_en          (dsp_fifo_rd_en_3),         // input wire rd_en
        .dout           (dsp_fifo_dout_3),          // output wire [31 : 0] dout
        .full           (dsp_fifo_full_3),          // output wire full
        .almost_full    (dsp_fifo_ok_3),            // output wire almost_full
        .empty          (dsp_fifo_empty_3),         // output wire empty
        .rd_data_count  (dsp_fifo_data_count_3)     // output wire [11 : 0] rd_data_count
    );
	// ----------------------------------------------------------------------------------------------------------------

	// Instantiation of DSP #4 Samples_to_FIFO module -----------------------------------------------------------------
    Samples_to_FIFO #(
        .C_SAMPLE_NUMBER(C_DSP_SAMPLE_NUMBER)
    ) Samples_to_FIFO_DSP_4_inst
    (
        .clk            (dsp_clk),                  // input
        .reset_n        (s00_axi_aresetn),          // input
        .acq_smpls      (acq_smpls),                // input
        .data_valid     (dsp_vld_4),                // input
        .fifo_wr_en     (dsp_fifo_wr_en_4)          // output
    );
    
    // Instantiation of DSP #4 FIFO
    fifo_gen_dds fifo_gen_dsp_4_inst (
        .rst            (all_fifo_reset),           // input wire rst
        .wr_clk         (dsp_clk),                  // input wire wr_clk
        .rd_clk         (s00_axi_aclk),             // input wire rd_clk
        .din            (dsp_data_4),               // input wire [31 : 0] din
        .wr_en          (dsp_fifo_wr_en_4),         // input wire wr_en
        .rd_en          (dsp_fifo_rd_en_4),         // input wire rd_en
        .dout           (dsp_fifo_dout_4),          // output wire [31 : 0] dout
        .full           (dsp_fifo_full_4),          // output wire full
        .almost_full    (dsp_fifo_ok_4),            // output wire almost_full
        .empty          (dsp_fifo_empty_4),         // output wire empty
        .rd_data_count  (dsp_fifo_data_count_4)     // output wire [11 : 0] rd_data_count
    );
	// ----------------------------------------------------------------------------------------------------------------

	// Instantiation of DSP #5 Samples_to_FIFO module -----------------------------------------------------------------
    Samples_to_FIFO #(
        .C_SAMPLE_NUMBER(C_DSP_SAMPLE_NUMBER)
    ) Samples_to_FIFO_DSP_5_inst
    (
        .clk            (dsp_clk),                  // input
        .reset_n        (s00_axi_aresetn),          // input
        .acq_smpls      (acq_smpls),                // input
        .data_valid     (dsp_vld_5),                // input
        .fifo_wr_en     (dsp_fifo_wr_en_5)          // output
    );
    
    // Instantiation of DSP #5 FIFO
    fifo_gen_dds fifo_gen_dsp_5_inst (
        .rst            (all_fifo_reset),           // input wire rst
        .wr_clk         (dsp_clk),                  // input wire wr_clk
        .rd_clk         (s00_axi_aclk),             // input wire rd_clk
        .din            (dsp_data_5),               // input wire [31 : 0] din
        .wr_en          (dsp_fifo_wr_en_5),         // input wire wr_en
        .rd_en          (dsp_fifo_rd_en_5),         // input wire rd_en
        .dout           (dsp_fifo_dout_5),          // output wire [31 : 0] dout
        .full           (dsp_fifo_full_5),          // output wire full
        .almost_full    (dsp_fifo_ok_5),            // output wire almost_full
        .empty          (dsp_fifo_empty_5),         // output wire empty
        .rd_data_count  (dsp_fifo_data_count_5)     // output wire [11 : 0] rd_data_count
    );
	// ----------------------------------------------------------------------------------------------------------------

	// Instantiation of DSP #6 Samples_to_FIFO module -----------------------------------------------------------------
    Samples_to_FIFO #(
        .C_SAMPLE_NUMBER(C_DSP_SAMPLE_NUMBER)
    ) Samples_to_FIFO_DSP_6_inst
    (
        .clk            (dsp_clk),                  // input
        .reset_n        (s00_axi_aresetn),          // input
        .acq_smpls      (acq_smpls),                // input
        .data_valid     (dsp_vld_6),                // input
        .fifo_wr_en     (dsp_fifo_wr_en_6)          // output
    );
    
    // Instantiation of DSP #6 FIFO
    fifo_gen_dds fifo_gen_dsp_6_inst (
        .rst            (all_fifo_reset),           // input wire rst
        .wr_clk         (dsp_clk),                  // input wire wr_clk
        .rd_clk         (s00_axi_aclk),             // input wire rd_clk
        .din            (dsp_data_6),               // input wire [31 : 0] din
        .wr_en          (dsp_fifo_wr_en_6),         // input wire wr_en
        .rd_en          (dsp_fifo_rd_en_6),         // input wire rd_en
        .dout           (dsp_fifo_dout_6),          // output wire [31 : 0] dout
        .full           (dsp_fifo_full_6),          // output wire full
        .almost_full    (dsp_fifo_ok_6),            // output wire almost_full
        .empty          (dsp_fifo_empty_6),         // output wire empty
        .rd_data_count  (dsp_fifo_data_count_6)     // output wire [11 : 0] rd_data_count
    );
	// ----------------------------------------------------------------------------------------------------------------

	// Instantiation of DSP #7 Samples_to_FIFO module -----------------------------------------------------------------
    Samples_to_FIFO #(
        .C_SAMPLE_NUMBER(C_DSP_SAMPLE_NUMBER)
    ) Samples_to_FIFO_DSP_7_inst
    (
        .clk            (dsp_clk),                  // input
        .reset_n        (s00_axi_aresetn),          // input
        .acq_smpls      (acq_smpls),                // input
        .data_valid     (dsp_vld_7),                // input
        .fifo_wr_en     (dsp_fifo_wr_en_7)          // output
    );
    
    // Instantiation of DSP #7 FIFO
    fifo_gen_dds fifo_gen_dsp_7_inst (
        .rst            (all_fifo_reset),           // input wire rst
        .wr_clk         (dsp_clk),                  // input wire wr_clk
        .rd_clk         (s00_axi_aclk),             // input wire rd_clk
        .din            (dsp_data_7),               // input wire [31 : 0] din
        .wr_en          (dsp_fifo_wr_en_7),         // input wire wr_en
        .rd_en          (dsp_fifo_rd_en_7),         // input wire rd_en
        .dout           (dsp_fifo_dout_7),          // output wire [31 : 0] dout
        .full           (dsp_fifo_full_7),          // output wire full
        .almost_full    (dsp_fifo_ok_7),            // output wire almost_full
        .empty          (dsp_fifo_empty_7),         // output wire empty
        .rd_data_count  (dsp_fifo_data_count_7)     // output wire [11 : 0] rd_data_count
    );
	// ----------------------------------------------------------------------------------------------------------------

	// Instantiation of DSP #8 Samples_to_FIFO module -----------------------------------------------------------------
    Samples_to_FIFO #(
        .C_SAMPLE_NUMBER(C_DSP_SAMPLE_NUMBER)
    ) Samples_to_FIFO_DSP_8_inst
    (
        .clk            (dsp_clk),                  // input
        .reset_n        (s00_axi_aresetn),          // input
        .acq_smpls      (acq_smpls),                // input
        .data_valid     (dsp_vld_8),                // input
        .fifo_wr_en     (dsp_fifo_wr_en_8)          // output
    );
    
    // Instantiation of DSP #8 FIFO
    fifo_gen_dds fifo_gen_dsp_8_inst (
        .rst            (all_fifo_reset),           // input wire rst
        .wr_clk         (dsp_clk),                  // input wire wr_clk
        .rd_clk         (s00_axi_aclk),             // input wire rd_clk
        .din            (dsp_data_8),               // input wire [31 : 0] din
        .wr_en          (dsp_fifo_wr_en_8),         // input wire wr_en
        .rd_en          (dsp_fifo_rd_en_8),         // input wire rd_en
        .dout           (dsp_fifo_dout_8),          // output wire [31 : 0] dout
        .full           (dsp_fifo_full_8),          // output wire full
        .almost_full    (dsp_fifo_ok_8),            // output wire almost_full
        .empty          (dsp_fifo_empty_8),         // output wire empty
        .rd_data_count  (dsp_fifo_data_count_8)     // output wire [11 : 0] rd_data_count
    );
	// ----------------------------------------------------------------------------------------------------------------

	// Instantiation of DSP #9 Samples_to_FIFO module -----------------------------------------------------------------
    Samples_to_FIFO #(
        .C_SAMPLE_NUMBER(C_DSP_SAMPLE_NUMBER)
    ) Samples_to_FIFO_DSP_9_inst
    (
        .clk            (dsp_clk),                  // input
        .reset_n        (s00_axi_aresetn),          // input
        .acq_smpls      (acq_smpls),                // input
        .data_valid     (dsp_vld_9),                // input
        .fifo_wr_en     (dsp_fifo_wr_en_9)          // output
    );
    
    // Instantiation of DSP #9 FIFO
    fifo_gen_dds fifo_gen_dsp_9_inst (
        .rst            (all_fifo_reset),           // input wire rst
        .wr_clk         (dsp_clk),                  // input wire wr_clk
        .rd_clk         (s00_axi_aclk),             // input wire rd_clk
        .din            (dsp_data_9),               // input wire [31 : 0] din
        .wr_en          (dsp_fifo_wr_en_9),         // input wire wr_en
        .rd_en          (dsp_fifo_rd_en_9),         // input wire rd_en
        .dout           (dsp_fifo_dout_9),          // output wire [31 : 0] dout
        .full           (dsp_fifo_full_9),          // output wire full
        .almost_full    (dsp_fifo_ok_9),            // output wire almost_full
        .empty          (dsp_fifo_empty_9),         // output wire empty
        .rd_data_count  (dsp_fifo_data_count_9)     // output wire [11 : 0] rd_data_count
    );
	// ----------------------------------------------------------------------------------------------------------------

	// Instantiation of DSP #10 Samples_to_FIFO module ----------------------------------------------------------------
    Samples_to_FIFO #(
        .C_SAMPLE_NUMBER(C_DSP_SAMPLE_NUMBER)
    ) Samples_to_FIFO_DSP_10_inst
    (
        .clk            (dsp_clk),                  // input
        .reset_n        (s00_axi_aresetn),          // input
        .acq_smpls      (acq_smpls),                // input
        .data_valid     (dsp_vld_10),               // input
        .fifo_wr_en     (dsp_fifo_wr_en_10)         // output
    );
    
    // Instantiation of DSP #10 FIFO
    fifo_gen_dds fifo_gen_dsp_10_inst (
        .rst            (all_fifo_reset),           // input wire rst
        .wr_clk         (dsp_clk),                  // input wire wr_clk
        .rd_clk         (s00_axi_aclk),             // input wire rd_clk
        .din            (dsp_data_10),              // input wire [31 : 0] din
        .wr_en          (dsp_fifo_wr_en_10),        // input wire wr_en
        .rd_en          (dsp_fifo_rd_en_10),        // input wire rd_en
        .dout           (dsp_fifo_dout_10),         // output wire [31 : 0] dout
        .full           (dsp_fifo_full_10),         // output wire full
        .almost_full    (dsp_fifo_ok_10),           // output wire almost_full
        .empty          (dsp_fifo_empty_10),        // output wire empty
        .rd_data_count  (dsp_fifo_data_count_10)    // output wire [11 : 0] rd_data_count
    );
	// ----------------------------------------------------------------------------------------------------------------

	// Instantiation of DSP #11 Samples_to_FIFO module ----------------------------------------------------------------
    Samples_to_FIFO #(
        .C_SAMPLE_NUMBER(C_DSP_SAMPLE_NUMBER)
    ) Samples_to_FIFO_DSP_11_inst
    (
        .clk            (dsp_clk),                  // input
        .reset_n        (s00_axi_aresetn),          // input
        .acq_smpls      (acq_smpls),                // input
        .data_valid     (dsp_vld_11),               // input
        .fifo_wr_en     (dsp_fifo_wr_en_11)         // output
    );
    
    // Instantiation of DSP #11 FIFO
    fifo_gen_dds fifo_gen_dsp_11_inst (
        .rst            (all_fifo_reset),           // input wire rst
        .wr_clk         (dsp_clk),                  // input wire wr_clk
        .rd_clk         (s00_axi_aclk),             // input wire rd_clk
        .din            (dsp_data_11),              // input wire [31 : 0] din
        .wr_en          (dsp_fifo_wr_en_11),        // input wire wr_en
        .rd_en          (dsp_fifo_rd_en_11),        // input wire rd_en
        .dout           (dsp_fifo_dout_11),         // output wire [31 : 0] dout
        .full           (dsp_fifo_full_11),         // output wire full
        .almost_full    (dsp_fifo_ok_11),           // output wire almost_full
        .empty          (dsp_fifo_empty_11),        // output wire empty
        .rd_data_count  (dsp_fifo_data_count_11)    // output wire [11 : 0] rd_data_count
    );
	// ----------------------------------------------------------------------------------------------------------------

	// Instantiation of DSP #12 Samples_to_FIFO module ----------------------------------------------------------------
    Samples_to_FIFO #(
        .C_SAMPLE_NUMBER(C_DSP_SAMPLE_NUMBER)
    ) Samples_to_FIFO_DSP_12_inst
    (
        .clk            (dsp_clk),                  // input
        .reset_n        (s00_axi_aresetn),          // input
        .acq_smpls      (acq_smpls),                // input
        .data_valid     (dsp_vld_12),               // input
        .fifo_wr_en     (dsp_fifo_wr_en_12)         // output
    );
    
    // Instantiation of DSP #12 FIFO
    fifo_gen_dds fifo_gen_dsp_12_inst (
        .rst            (all_fifo_reset),           // input wire rst
        .wr_clk         (dsp_clk),                  // input wire wr_clk
        .rd_clk         (s00_axi_aclk),             // input wire rd_clk
        .din            (dsp_data_12),              // input wire [31 : 0] din
        .wr_en          (dsp_fifo_wr_en_12),        // input wire wr_en
        .rd_en          (dsp_fifo_rd_en_12),        // input wire rd_en
        .dout           (dsp_fifo_dout_12),         // output wire [31 : 0] dout
        .full           (dsp_fifo_full_12),         // output wire full
        .almost_full    (dsp_fifo_ok_12),           // output wire almost_full
        .empty          (dsp_fifo_empty_12),        // output wire empty
        .rd_data_count  (dsp_fifo_data_count_12)    // output wire [11 : 0] rd_data_count
    );
	// ----------------------------------------------------------------------------------------------------------------

	// Instantiation of DDS Samples_to_FIFO module --------------------------------------------------------------------
    Samples_to_FIFO #(
        .C_SAMPLE_NUMBER(C_DDS_SAMPLE_NUMBER)
    ) Samples_to_FIFO_DDS_inst
    (
        .clk            (dds_clk),                  // input
        .reset_n        (s00_axi_aresetn),          // input
        .acq_smpls      (acq_smpls),                // input
        .data_valid     (dds_vld),                  // input
        .fifo_wr_en     (dds_fifo_wr_en)            // output
        // Signals for debug
//        .acq_smpls_frnt_ext(),                      // output 
//        .count_smpls_ext(),                         // output [15:0] 
//        .last_smpl_ext  ()                          // output
    );
    
    // Instantiation of DDS FIFO
    fifo_gen_dds fifo_gen_dds_inst (
        .rst            (all_fifo_reset),           // input wire rst
        .wr_clk         (dds_clk),                  // input wire wr_clk
        .rd_clk         (s00_axi_aclk),             // input wire rd_clk
        .din            (dds_data),                 // input wire [31 : 0] din
        .wr_en          (dds_fifo_wr_en),           // input wire wr_en
        .rd_en          (dds_fifo_rd_en),           // input wire rd_en
        .dout           (dds_fifo_dout),            // output wire [31 : 0] dout
        .full           (dds_fifo_full),            // output wire full
        .almost_full    (dds_fifo_ok),              // output wire almost_full
        .empty          (dds_fifo_empty),           // output wire empty
        .rd_data_count  (dds_fifo_data_count)       // output wire [11 : 0] rd_data_count
    );
	// ----------------------------------------------------------------------------------------------------------------

	// Add user logic here

	// User logic ends

	endmodule
