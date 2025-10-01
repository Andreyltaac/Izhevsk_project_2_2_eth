
`timescale 1 ns / 1 ps

	module Current_turning_off_v1_0 #
	(
		// Users to add parameters here
        parameter integer   CLKS_PER_HALF_BIT = 32,     // Fsclk (spi clk frequncy) = s00_axi_aclk / (CLKS_PER_HALF_BIT * 2)
        parameter integer   C_DELAY_MS = 2,             // Delay of enable signal for surge current passing
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 6
	)
	(
		// Users to add ports here
        input   som_en_28v_l1,
        input   som_en_28v_l2,
        input   som_en_28v_s1,
        input   som_en_28v_s2,
        input   som_en_28v_s3,
        input   som_en_28v_s4,
        input   som_en_5v_s,

        output  fpga_en_28v_l1,
        output  fpga_en_28v_l2,
        output  fpga_en_28v_s1,
        output  fpga_en_28v_s2,
        output  fpga_en_28v_s3,
        output  fpga_en_28v_s4,
        output  fpga_en_5v_s,

        // SPI #0 Interface
        output  spi_cs_n_0,
        output  spi_sclk_0,
        output  spi_mosi_0,
        input   spi_miso_0,
        
        output  spi_cs_n_1,
        output  spi_sclk_1,
        output  spi_mosi_1,
        input   spi_miso_1,
        
        // Signals for debug
//        output [3:0]    State_0,
//        output [7:0]    TX_Byte_0,
//        output          TX_DV_0,
//        output          TX_Ready_0,
//        output [7:0]    RX_Byte_0,
//        output          RX_DV_0,
//        output [7:0]    RX_Byte_tmp_0,
        
//        output  som_en_28v_s1_sync,
//        output  som_en_28v_s1_delayed,
        
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
	
	// Wiring
    wire        som_en_28v_l1_sync;
    wire        som_en_28v_l2_sync;
    wire        som_en_28v_s1_sync;
    wire        som_en_28v_s2_sync;
    wire        som_en_28v_s3_sync;
    wire        som_en_28v_s4_sync;
    wire        som_en_5v_s_sync;
    
    wire        spi_miso_0_sync;
    wire        spi_miso_1_sync;
    
    wire        som_en_28v_l1_delayed;  //  delayed enable signal for surge current passing	
    wire        som_en_28v_l2_delayed;
    wire        som_en_28v_s1_delayed;
    wire        som_en_28v_s2_delayed;
    wire        som_en_28v_s3_delayed;
    wire        som_en_28v_s4_delayed;
    wire        som_en_5v_s_delayed;
    
//    wire        en_cm_28v_l1;       // enable current measurement
//    wire        en_cm_28v_l2;
//    wire        en_cm_28v_s1;
//    wire        en_cm_28v_s2;
//    wire        en_cm_28v_s3;
//    wire        en_cm_28v_s4;
//    wire        en_cm_5v_s;

    wire [11:0] curr_thld_28v_l1;   // current threshold
    wire [11:0] curr_thld_28v_l2;
    wire [11:0] curr_thld_28v_s1;
    wire [11:0] curr_thld_28v_s2;
    wire [11:0] curr_thld_28v_s3;
    wire [11:0] curr_thld_28v_s4;
    wire [11:0] curr_thld_5v_s;
	
    wire [11:0] adc_data_28v_l1;    // adc data
    wire [11:0] adc_data_28v_l2;
    wire [11:0] adc_data_28v_s1;
    wire [11:0] adc_data_28v_s2;
    wire [11:0] adc_data_28v_s3;
    wire [11:0] adc_data_28v_s4;
    wire [11:0] adc_data_5v_s;
    
    wire        adc_valid_28v_l1;   // adc valid
    wire        adc_valid_28v_l2;
    wire        adc_valid_28v_s1;
    wire        adc_valid_28v_s2;
    wire        adc_valid_28v_s3;
    wire        adc_valid_28v_s4;
    wire        adc_valid_5v_s;
    
    wire [11:0] meas_curr_28v_l1;   // measured averaging current
    wire [11:0] meas_curr_28v_l2;
    wire [11:0] meas_curr_28v_s1;
    wire [11:0] meas_curr_28v_s2;
    wire [11:0] meas_curr_28v_s3;
    wire [11:0] meas_curr_28v_s4;
    wire [11:0] meas_curr_5v_s;
    
    wire        oc_st_28v_l1;       // overcurrent status
    wire        oc_st_28v_l2;
    wire        oc_st_28v_s1;
    wire        oc_st_28v_s2;
    wire        oc_st_28v_s3;
    wire        oc_st_28v_s4;
    wire        oc_st_5v_s;

    
    // Instantiation of Axi Bus Interface S00_AXI
	Current_turning_off_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) Current_turning_off_v1_0_S00_AXI_inst (
//        .en_cm_28v_l1       (en_cm_28v_l1),     // output
//        .en_cm_28v_l2       (en_cm_28v_l2),     // output
//        .en_cm_28v_s1       (en_cm_28v_s1),     // output
//        .en_cm_28v_s2       (en_cm_28v_s2),     // output
//        .en_cm_28v_s3       (en_cm_28v_s3),     // output
//        .en_cm_28v_s4       (en_cm_28v_s4),     // output
//        .en_cm_5v_s         (en_cm_5v_s),       // output
        
        .curr_thld_28v_l1   (curr_thld_28v_l1), // output [11:0]
        .curr_thld_28v_l2   (curr_thld_28v_l2), // output [11:0]
        .curr_thld_28v_s1   (curr_thld_28v_s1), // output [11:0]
        .curr_thld_28v_s2   (curr_thld_28v_s2), // output [11:0]
        .curr_thld_28v_s3   (curr_thld_28v_s3), // output [11:0]
        .curr_thld_28v_s4   (curr_thld_28v_s4), // output [11:0]
        .curr_thld_5v_s     (curr_thld_5v_s),   // output [11:0]
        
        .oc_st_28v_l1       (oc_st_28v_l1),     // input
        .oc_st_28v_l2       (oc_st_28v_l2),     // input
        .oc_st_28v_s1       (oc_st_28v_s1),     // input
        .oc_st_28v_s2       (oc_st_28v_s2),     // input
        .oc_st_28v_s3       (oc_st_28v_s3),     // input
        .oc_st_28v_s4       (oc_st_28v_s4),     // input
        .oc_st_5v_s         (oc_st_5v_s),       // input
        
        .meas_curr_28v_l1   (meas_curr_28v_l1), // input [11:0]
        .meas_curr_28v_l2   (meas_curr_28v_l2), // input [11:0]
        .meas_curr_28v_s1   (meas_curr_28v_s1), // input [11:0]
        .meas_curr_28v_s2   (meas_curr_28v_s2), // input [11:0]
        .meas_curr_28v_s3   (meas_curr_28v_s3), // input [11:0]
        .meas_curr_28v_s4   (meas_curr_28v_s4), // input [11:0]
        .meas_curr_5v_s     (meas_curr_5v_s),   // input [11:0]
        
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
	
	
	// Instantiation of external signal synchronization #0 (som_en_28v_l1)
    sync sync_inst_0 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .in         (som_en_28v_l1),        // input
        .out        (som_en_28v_l1_sync)    // output
    );
    
	// Instantiation of external signal synchronization #1 (som_en_28v_l2)
    sync sync_inst_1 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .in         (som_en_28v_l2),        // input
        .out        (som_en_28v_l2_sync)    // output
    );
    
	// Instantiation of external signal synchronization #2 (som_en_28v_s1)
    sync sync_inst_2 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .in         (som_en_28v_s1),        // input
        .out        (som_en_28v_s1_sync)    // output
    );
    
	// Instantiation of external signal synchronization #3 (som_en_28v_s2)
    sync sync_inst_3 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .in         (som_en_28v_s2),        // input
        .out        (som_en_28v_s2_sync)    // output
    );
    
	// Instantiation of external signal synchronization #4 (som_en_28v_s3)
    sync sync_inst_4 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .in         (som_en_28v_s3),        // input
        .out        (som_en_28v_s3_sync)    // output
    );
    
	// Instantiation of external signal synchronization #5 (som_en_28v_s4)
    sync sync_inst_5 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .in         (som_en_28v_s4),        // input
        .out        (som_en_28v_s4_sync)    // output
    );
    
	// Instantiation of external signal synchronization #6 (som_en_5v_s)
    sync sync_inst_6 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .in         (som_en_5v_s),          // input
        .out        (som_en_5v_s_sync)      // output
    );
    
	// Instantiation of external signal synchronization (spi_miso_0)
    sync sync_inst_7 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .in         (spi_miso_0),           // input
        .out        (spi_miso_0_sync)       // output
    );
    
	// Instantiation of external signal synchronization (spi_miso_1)
    sync sync_inst_8 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .in         (spi_miso_1),           // input
        .out        (spi_miso_1_sync)       // output
    );
    
	
    // Instantiation of adc_reading_fsm module #0
    adc_reading_fsm #(
        .SPI_MODE(),
        .CLKS_PER_HALF_BIT(CLKS_PER_HALF_BIT)
    ) adc_reading_fsm_inst_0 (
        // Control/Data Signals,
        .i_Rst_L        (s00_axi_aresetn),  // input
        .i_Clk          (s00_axi_aclk),     // input
        // SPI Interface
        .o_SPI_Clk      (spi_sclk_0),       // output
        .i_SPI_MISO     (spi_miso_0_sync),  // input
        .o_SPI_MOSI     (spi_mosi_0),       // output
        .o_SPI_CS_n     (spi_cs_n_0),       // output
        // ADC output value
        .adc_data_ch0   (adc_data_28v_l2),  // output [11:0]
        .adc_data_ch1   (adc_data_28v_l1),  // output [11:0]
        .adc_data_ch2   (adc_data_28v_s2),  // output [11:0]
        .adc_data_ch3   (),                 // output [11:0]
        .adc_valid_ch0  (adc_valid_28v_l2), // output
        .adc_valid_ch1  (adc_valid_28v_l1), // output
        .adc_valid_ch2  (adc_valid_28v_s2), // output
        .adc_valid_ch3  ()                  // output
    );
    
    // Instantiation of adc_reading_fsm module #1
    adc_reading_fsm #(
        .SPI_MODE(),
        .CLKS_PER_HALF_BIT(CLKS_PER_HALF_BIT)
    ) adc_reading_fsm_inst_1 (
        // Control/Data Signals,
        .i_Rst_L        (s00_axi_aresetn),  // input
        .i_Clk          (s00_axi_aclk),     // input
        // SPI Interface
        .o_SPI_Clk      (spi_sclk_1),       // output
        .i_SPI_MISO     (spi_miso_1_sync),  // input
        .o_SPI_MOSI     (spi_mosi_1),       // output
        .o_SPI_CS_n     (spi_cs_n_1),       // output
        // ADC output value
        .adc_data_ch0   (adc_data_28v_s1),  // output [11:0]
        .adc_data_ch1   (adc_data_28v_s4),  // output [11:0]
        .adc_data_ch2   (adc_data_28v_s3),  // output [11:0]
        .adc_data_ch3   (adc_data_5v_s),    // output [11:0]
        .adc_valid_ch0  (adc_valid_28v_s1), // output
        .adc_valid_ch1  (adc_valid_28v_s4), // output
        .adc_valid_ch2  (adc_valid_28v_s3), // output
        .adc_valid_ch3  (adc_valid_5v_s)    // output
    );
    
    
    // Instantiation of enable signal delay #0 (som_en_28v_l1_sync)
    delay_ms #(
        .C_CLK_MHZ(),
        .C_DELAY_MS(C_DELAY_MS)
    ) delay_ms_inst_0 (
        .clk        (s00_axi_aclk),             // input
        .reset_n    (s00_axi_aresetn),          // input
        .in_signal  (som_en_28v_l1_sync),       // input
        .delayed    (som_en_28v_l1_delayed)     // output
    );
    
    // Instantiation of enable signal delay #1 (som_en_28v_l2_sync)
    delay_ms #(
        .C_CLK_MHZ(),
        .C_DELAY_MS(C_DELAY_MS)
    ) delay_ms_inst_1 (
        .clk        (s00_axi_aclk),             // input
        .reset_n    (s00_axi_aresetn),          // input
        .in_signal  (som_en_28v_l2_sync),       // input
        .delayed    (som_en_28v_l2_delayed)     // output
    );
    
    // Instantiation of enable signal delay #2 (som_en_28v_s1_sync)
    delay_ms #(
        .C_CLK_MHZ(),
        .C_DELAY_MS(C_DELAY_MS)
    ) delay_ms_inst_2 (
        .clk        (s00_axi_aclk),             // input
        .reset_n    (s00_axi_aresetn),          // input
        .in_signal  (som_en_28v_s1_sync),       // input
        .delayed    (som_en_28v_s1_delayed)     // output
    );
    
    // Instantiation of enable signal delay #3 (som_en_28v_s2_sync)
    delay_ms #(
        .C_CLK_MHZ(),
        .C_DELAY_MS(C_DELAY_MS)
    ) delay_ms_inst_3 (
        .clk        (s00_axi_aclk),             // input
        .reset_n    (s00_axi_aresetn),          // input
        .in_signal  (som_en_28v_s2_sync),       // input
        .delayed    (som_en_28v_s2_delayed)     // output
    );
    
    // Instantiation of enable signal delay #4 (som_en_28v_s3_sync)
    delay_ms #(
        .C_CLK_MHZ(),
        .C_DELAY_MS(C_DELAY_MS)
    ) delay_ms_inst_4 (
        .clk        (s00_axi_aclk),             // input
        .reset_n    (s00_axi_aresetn),          // input
        .in_signal  (som_en_28v_s3_sync),       // input
        .delayed    (som_en_28v_s3_delayed)     // output
    );
    
    // Instantiation of enable signal delay #5 (som_en_28v_s4_sync)
    delay_ms #(
        .C_CLK_MHZ(),
        .C_DELAY_MS(C_DELAY_MS)
    ) delay_ms_inst_5 (
        .clk        (s00_axi_aclk),             // input
        .reset_n    (s00_axi_aresetn),          // input
        .in_signal  (som_en_28v_s4_sync),       // input
        .delayed    (som_en_28v_s4_delayed)     // output
    );
    
    // Instantiation of enable signal delay #6 (som_en_5v_s_sync)
    delay_ms #(
        .C_CLK_MHZ(),
        .C_DELAY_MS(C_DELAY_MS)
    ) delay_ms_inst_6 (
        .clk        (s00_axi_aclk),             // input
        .reset_n    (s00_axi_aresetn),          // input
        .in_signal  (som_en_5v_s_sync),         // input
        .delayed    (som_en_5v_s_delayed)       // output
    );
    
    
    // Instantiation of averaging module #0 (28v_link1 channel)
    averaging averaging_inst_0 (
        .clk        (s00_axi_aclk),             // input
        .reset_n    (s00_axi_aresetn),          // input
        .enable     (som_en_28v_l1_delayed),    // input
        .over_thld  (oc_st_28v_l1),             // input
        .adc_value  (adc_data_28v_l1),          // input [11:0]
        .valid      (adc_valid_28v_l1),         // input
        .avg_value  (meas_curr_28v_l1)          // output [11:0]
    );
    
    // Instantiation of averaging module #1 (28v_link2 channel)
    averaging averaging_inst_1 (
        .clk        (s00_axi_aclk),             // input
        .reset_n    (s00_axi_aresetn),          // input
        .enable     (som_en_28v_l2_delayed),    // input
        .over_thld  (oc_st_28v_l2),             // input
        .adc_value  (adc_data_28v_l2),          // input [11:0]
        .valid      (adc_valid_28v_l2),         // input
        .avg_value  (meas_curr_28v_l2)          // output [11:0]
    );

    // Instantiation of averaging module #2 (28v_service1 channel)
    averaging averaging_inst_2 (
        .clk        (s00_axi_aclk),             // input
        .reset_n    (s00_axi_aresetn),          // input
        .enable     (som_en_28v_s1_delayed),    // input
        .over_thld  (oc_st_28v_s1),             // input
        .adc_value  (adc_data_28v_s1),          // input [11:0]
        .valid      (adc_valid_28v_s1),         // input
        .avg_value  (meas_curr_28v_s1)          // output [11:0]
    );

    // Instantiation of averaging module #3 (28v_service2 channel)
    averaging averaging_inst_3 (
        .clk        (s00_axi_aclk),             // input
        .reset_n    (s00_axi_aresetn),          // input
        .enable     (som_en_28v_s2_delayed),    // input
        .over_thld  (oc_st_28v_s2),             // input
        .adc_value  (adc_data_28v_s2),          // input [11:0]
        .valid      (adc_valid_28v_s2),         // input
        .avg_value  (meas_curr_28v_s2)          // output [11:0]
    );

    // Instantiation of averaging module #4 (28v_service3 channel)
    averaging averaging_inst_4 (
        .clk        (s00_axi_aclk),             // input
        .reset_n    (s00_axi_aresetn),          // input
        .enable     (som_en_28v_s3_delayed),    // input
        .over_thld  (oc_st_28v_s3),             // input
        .adc_value  (adc_data_28v_s3),          // input [11:0]
        .valid      (adc_valid_28v_s3),         // input
        .avg_value  (meas_curr_28v_s3)          // output [11:0]
    );

    // Instantiation of averaging module #5 (28v_service4 channel)
    averaging averaging_inst_5 (
        .clk        (s00_axi_aclk),             // input
        .reset_n    (s00_axi_aresetn),          // input
        .enable     (som_en_28v_s4_delayed),    // input
        .over_thld  (oc_st_28v_s4),             // input
        .adc_value  (adc_data_28v_s4),          // input [11:0]
        .valid      (adc_valid_28v_s4),         // input
        .avg_value  (meas_curr_28v_s4)          // output [11:0]
    );

    // Instantiation of averaging module #6 (5v_service channel)
    averaging averaging_inst_6 (
        .clk        (s00_axi_aclk),             // input
        .reset_n    (s00_axi_aresetn),          // input
        .enable     (som_en_5v_s_delayed),      // input
        .over_thld  (oc_st_5v_s),               // input
        .adc_value  (adc_data_5v_s),            // input [11:0]
        .valid      (adc_valid_5v_s),           // input
        .avg_value  (meas_curr_5v_s)            // output [11:0]
    );
    
    
    // Instantiation of comparator module #0 (28v_link1 channel)
    comparator comparator_inst_0 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .avg_value  (meas_curr_28v_l1),     // input [11:0]
        .thld_value (curr_thld_28v_l1),     // input [11:0]
        .over_thld  (oc_st_28v_l1)          // output
    );
    
    // Instantiation of comparator module #1 (28v_link2 channel)
    comparator comparator_inst_1 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .avg_value  (meas_curr_28v_l2),     // input [11:0]
        .thld_value (curr_thld_28v_l2),     // input [11:0]
        .over_thld  (oc_st_28v_l2)          // output
    );
    
    // Instantiation of comparator module #2 (28v_service1 channel)
    comparator comparator_inst_2 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .avg_value  (meas_curr_28v_s1),     // input [11:0]
        .thld_value (curr_thld_28v_s1),     // input [11:0]
        .over_thld  (oc_st_28v_s1)          // output
    );
    
    // Instantiation of comparator module #3 (28v_service2 channel)
    comparator comparator_inst_3 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .avg_value  (meas_curr_28v_s2),     // input [11:0]
        .thld_value (curr_thld_28v_s2),     // input [11:0]
        .over_thld  (oc_st_28v_s2)          // output
    );
    
    // Instantiation of comparator module #4 (28v_service3 channel)
    comparator comparator_inst_4 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .avg_value  (meas_curr_28v_s3),     // input [11:0]
        .thld_value (curr_thld_28v_s3),     // input [11:0]
        .over_thld  (oc_st_28v_s3)          // output
    );
    
    // Instantiation of comparator module #5 (28v_service4 channel)
    comparator comparator_inst_5 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .avg_value  (meas_curr_28v_s4),     // input [11:0]
        .thld_value (curr_thld_28v_s4),     // input [11:0]
        .over_thld  (oc_st_28v_s4)          // output
    );
    
    // Instantiation of comparator module #6 (5v_service channel)
    comparator comparator_inst_6 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .avg_value  (meas_curr_5v_s),       // input [11:0]
        .thld_value (curr_thld_5v_s),       // input [11:0]
        .over_thld  (oc_st_5v_s)            // output
    );
    
    
    // Instatiation of fpga_out_dis #0 (28v_link1 channel)
    fpga_out_dis fpga_out_dis_inst_0 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .som_input  (som_en_28v_l1_sync),   // input
        .dis_input  (oc_st_28v_l1),         // input
        .fpga_output(fpga_en_28v_l1)        // output
    );

    // Instatiation of fpga_out_dis #1 (28v_link2 channel)
    fpga_out_dis fpga_out_dis_inst_1 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .som_input  (som_en_28v_l2_sync),   // input
        .dis_input  (oc_st_28v_l2),         // input
        .fpga_output(fpga_en_28v_l2)        // output
    );

    // Instatiation of fpga_out_dis #2 (28v_service1 channel)
    fpga_out_dis fpga_out_dis_inst_2 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .som_input  (som_en_28v_s1_sync),   // input
        .dis_input  (oc_st_28v_s1),         // input
        .fpga_output(fpga_en_28v_s1)        // output
    );

    // Instatiation of fpga_out_dis #3 (28v_service2 channel)
    fpga_out_dis fpga_out_dis_inst_3 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .som_input  (som_en_28v_s2_sync),   // input
        .dis_input  (oc_st_28v_s2),         // input
        .fpga_output(fpga_en_28v_s2)        // output
    );

    // Instatiation of fpga_out_dis #4 (28v_service3 channel)
    fpga_out_dis fpga_out_dis_inst_4 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .som_input  (som_en_28v_s3_sync),   // input
        .dis_input  (oc_st_28v_s3),         // input
        .fpga_output(fpga_en_28v_s3)        // output
    );

    // Instatiation of fpga_out_dis #5 (28v_service4 channel)
    fpga_out_dis fpga_out_dis_inst_5 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .som_input  (som_en_28v_s4_sync),   // input
        .dis_input  (oc_st_28v_s4),         // input
        .fpga_output(fpga_en_28v_s4)        // output
    );

    // Instatiation of fpga_out_dis #6 (5v_service channel)
    fpga_out_dis fpga_out_dis_inst_6 (
        .clk        (s00_axi_aclk),         // input
        .reset_n    (s00_axi_aresetn),      // input
        .som_input  (som_en_5v_s_sync),     // input
        .dis_input  (oc_st_5v_s),           // input
        .fpga_output(fpga_en_5v_s)          // output
    );

    
	// Add user logic here
	      
	// User logic ends

	endmodule
