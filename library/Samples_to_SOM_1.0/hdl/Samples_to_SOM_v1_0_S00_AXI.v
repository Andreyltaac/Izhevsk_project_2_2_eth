
`timescale 1 ns / 1 ps

	module Samples_to_SOM_v1_0_S00_AXI #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 7
	)
	(
		// Users to add ports here
        output          fifo_reset, 
        
        input [31:0]    dsp_fifo_dout_1, 
        input [11:0]    dsp_fifo_data_count_1, 
        input           dsp_fifo_empty_1,
        input           dsp_fifo_full_1,
        input           dsp_fifo_ok_1,
        output          dsp_fifo_rd_en_1,

        input [31:0]    dsp_fifo_dout_2, 
        input [11:0]    dsp_fifo_data_count_2, 
        input           dsp_fifo_empty_2,
        input           dsp_fifo_full_2,
        input           dsp_fifo_ok_2,
        output          dsp_fifo_rd_en_2,

        input [31:0]    dsp_fifo_dout_3, 
        input [11:0]    dsp_fifo_data_count_3, 
        input           dsp_fifo_empty_3,
        input           dsp_fifo_full_3,
        input           dsp_fifo_ok_3,
        output          dsp_fifo_rd_en_3,

        input [31:0]    dsp_fifo_dout_4, 
        input [11:0]    dsp_fifo_data_count_4, 
        input           dsp_fifo_empty_4,
        input           dsp_fifo_full_4,
        input           dsp_fifo_ok_4,
        output          dsp_fifo_rd_en_4,

        input [31:0]    dsp_fifo_dout_5, 
        input [11:0]    dsp_fifo_data_count_5, 
        input           dsp_fifo_empty_5,
        input           dsp_fifo_full_5,
        input           dsp_fifo_ok_5,
        output          dsp_fifo_rd_en_5,

        input [31:0]    dsp_fifo_dout_6, 
        input [11:0]    dsp_fifo_data_count_6, 
        input           dsp_fifo_empty_6,
        input           dsp_fifo_full_6,
        input           dsp_fifo_ok_6,
        output          dsp_fifo_rd_en_6,

        input [31:0]    dsp_fifo_dout_7, 
        input [11:0]    dsp_fifo_data_count_7, 
        input           dsp_fifo_empty_7,
        input           dsp_fifo_full_7,
        input           dsp_fifo_ok_7,
        output          dsp_fifo_rd_en_7,

        input [31:0]    dsp_fifo_dout_8, 
        input [11:0]    dsp_fifo_data_count_8, 
        input           dsp_fifo_empty_8,
        input           dsp_fifo_full_8,
        input           dsp_fifo_ok_8,
        output          dsp_fifo_rd_en_8,

        input [31:0]    dsp_fifo_dout_9, 
        input [11:0]    dsp_fifo_data_count_9, 
        input           dsp_fifo_empty_9,
        input           dsp_fifo_full_9,
        input           dsp_fifo_ok_9,
        output          dsp_fifo_rd_en_9,

        input [31:0]    dsp_fifo_dout_10, 
        input [11:0]    dsp_fifo_data_count_10, 
        input           dsp_fifo_empty_10,
        input           dsp_fifo_full_10,
        input           dsp_fifo_ok_10,
        output          dsp_fifo_rd_en_10,

        input [31:0]    dsp_fifo_dout_11, 
        input [11:0]    dsp_fifo_data_count_11, 
        input           dsp_fifo_empty_11,
        input           dsp_fifo_full_11,
        input           dsp_fifo_ok_11,
        output          dsp_fifo_rd_en_11,

        input [31:0]    dsp_fifo_dout_12, 
        input [11:0]    dsp_fifo_data_count_12, 
        input           dsp_fifo_empty_12,
        input           dsp_fifo_full_12,
        input           dsp_fifo_ok_12,
        output          dsp_fifo_rd_en_12,
		
        input [31:0]    dds_fifo_dout,
        input [11:0]    dds_fifo_data_count,
        input           dds_fifo_empty,
        input           dds_fifo_full,
        input           dds_fifo_ok,
        output          dds_fifo_rd_en,
        
		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY
	);

	// AXI4LITE signals
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;

	// Example-specific design signals
	// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 4;
	//----------------------------------------------
	//-- Signals for user logic register space example
    reg     dsp_fifo_rd_en_1_reg    = 1'b0;
    reg     dsp_fifo_rd_en_2_reg    = 1'b0;
    reg     dsp_fifo_rd_en_3_reg    = 1'b0;
    reg     dsp_fifo_rd_en_4_reg    = 1'b0;
    reg     dsp_fifo_rd_en_5_reg    = 1'b0;
    reg     dsp_fifo_rd_en_6_reg    = 1'b0;
    reg     dsp_fifo_rd_en_7_reg    = 1'b0;
    reg     dsp_fifo_rd_en_8_reg    = 1'b0;
    reg     dsp_fifo_rd_en_9_reg    = 1'b0;
    reg     dsp_fifo_rd_en_10_reg   = 1'b0;
    reg     dsp_fifo_rd_en_11_reg   = 1'b0;
    reg     dsp_fifo_rd_en_12_reg   = 1'b0;
    reg     dds_fifo_rd_en_reg      = 1'b0;
//    reg     pwr_fifo_rd_en_reg = 1'b0;
	
	//------------------------------------------------
	//-- Number of Slave Registers 32
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg0;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg1;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg2;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg3;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg4;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg5;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg6;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg7;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg8;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg9;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg10;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg11;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg12;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg13;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg14;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg15;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg16;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg17;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg18;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg19;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg20;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg21;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg22;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg23;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg24;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg25;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg26;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg27;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg28;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg29;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg30;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg31;
	wire	 slv_reg_rden;
	wire	 slv_reg_wren;
	reg [C_S_AXI_DATA_WIDTH-1:0]	 reg_data_out;
	integer	 byte_index;
	reg	 aw_en;

	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RDATA	= axi_rdata;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;
	// Implement axi_awready generation
	// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	// de-asserted when reset is low.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awready <= 1'b0;
	      aw_en <= 1'b1;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // slave is ready to accept write address when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_awready <= 1'b1;
	          aw_en <= 1'b0;
	        end
	        else if (S_AXI_BREADY && axi_bvalid)
	            begin
	              aw_en <= 1'b1;
	              axi_awready <= 1'b0;
	            end
	      else           
	        begin
	          axi_awready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_awaddr latching
	// This process is used to latch the address when both 
	// S_AXI_AWVALID and S_AXI_WVALID are valid. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awaddr <= 0;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // Write Address latching 
	          axi_awaddr <= S_AXI_AWADDR;
	        end
	    end 
	end       

	// Implement axi_wready generation
	// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	// de-asserted when reset is low. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_wready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
	        begin
	          // slave is ready to accept write data when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_wready <= 1'b0;
	        end
	    end 
	end       

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      slv_reg0 <= 0;
	      slv_reg1 <= 0;
	      slv_reg2 <= 0;
	      slv_reg3 <= 0;
	      slv_reg4 <= 0;
	      slv_reg5 <= 0;
	      slv_reg6 <= 0;
	      slv_reg7 <= 0;
	      slv_reg8 <= 0;
	      slv_reg9 <= 0;
	      slv_reg10 <= 0;
	      slv_reg11 <= 0;
	      slv_reg12 <= 0;
	      slv_reg13 <= 0;
	      slv_reg14 <= 0;
	      slv_reg15 <= 0;
	      slv_reg16 <= 0;
	      slv_reg17 <= 0;
	      slv_reg18 <= 0;
	      slv_reg19 <= 0;
	      slv_reg20 <= 0;
	      slv_reg21 <= 0;
	      slv_reg22 <= 0;
	      slv_reg23 <= 0;
	      slv_reg24 <= 0;
	      slv_reg25 <= 0;
	      slv_reg26 <= 0;
	      slv_reg27 <= 0;
	      slv_reg28 <= 0;
	      slv_reg29 <= 0;
	      slv_reg30 <= 0;
	      slv_reg31 <= 0;
	    end 
	  else begin
	    if (slv_reg_wren)
	      begin
	        case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	          5'h00:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 0
	                slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h01:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 1
	                slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h02:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 2
	                slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h03:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 3
	                slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h04:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 4
	                slv_reg4[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h05:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 5
	                slv_reg5[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h06:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 6
	                slv_reg6[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h07:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 7
	                slv_reg7[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h08:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 8
	                slv_reg8[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h09:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 9
	                slv_reg9[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h0A:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 10
	                slv_reg10[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h0B:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 11
	                slv_reg11[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h0C:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 12
	                slv_reg12[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h0D:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 13
	                slv_reg13[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h0E:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 14
	                slv_reg14[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h0F:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 15
	                slv_reg15[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h10:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 16
	                slv_reg16[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h11:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 17
	                slv_reg17[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h12:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 18
	                slv_reg18[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h13:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 19
	                slv_reg19[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h14:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 20
	                slv_reg20[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h15:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 21
	                slv_reg21[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h16:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 22
	                slv_reg22[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h17:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 23
	                slv_reg23[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h18:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 24
	                slv_reg24[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h19:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 25
	                slv_reg25[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h1A:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 26
	                slv_reg26[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h1B:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 27
	                slv_reg27[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h1C:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 28
	                slv_reg28[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h1D:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 29
	                slv_reg29[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h1E:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 30
	                slv_reg30[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h1F:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 31
	                slv_reg31[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          default : begin
	                      slv_reg0 <= slv_reg0;
	                      slv_reg1 <= slv_reg1;
	                      slv_reg2 <= slv_reg2;
	                      slv_reg3 <= slv_reg3;
	                      slv_reg4 <= slv_reg4;
	                      slv_reg5 <= slv_reg5;
	                      slv_reg6 <= slv_reg6;
	                      slv_reg7 <= slv_reg7;
	                      slv_reg8 <= slv_reg8;
	                      slv_reg9 <= slv_reg9;
	                      slv_reg10 <= slv_reg10;
	                      slv_reg11 <= slv_reg11;
	                      slv_reg12 <= slv_reg12;
	                      slv_reg13 <= slv_reg13;
	                      slv_reg14 <= slv_reg14;
	                      slv_reg15 <= slv_reg15;
	                      slv_reg16 <= slv_reg16;
	                      slv_reg17 <= slv_reg17;
	                      slv_reg18 <= slv_reg18;
	                      slv_reg19 <= slv_reg19;
	                      slv_reg20 <= slv_reg20;
	                      slv_reg21 <= slv_reg21;
	                      slv_reg22 <= slv_reg22;
	                      slv_reg23 <= slv_reg23;
	                      slv_reg24 <= slv_reg24;
	                      slv_reg25 <= slv_reg25;
	                      slv_reg26 <= slv_reg26;
	                      slv_reg27 <= slv_reg27;
	                      slv_reg28 <= slv_reg28;
	                      slv_reg29 <= slv_reg29;
	                      slv_reg30 <= slv_reg30;
	                      slv_reg31 <= slv_reg31;
	                    end
	        endcase
	      end
	  end
	end    

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_bvalid  <= 0;
	      axi_bresp   <= 2'b0;
	    end 
	  else
	    begin    
	      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
	        begin
	          // indicates a valid write response is available
	          axi_bvalid <= 1'b1;
	          axi_bresp  <= 2'b0; // 'OKAY' response 
	        end                   // work error responses in future
	      else
	        begin
	          if (S_AXI_BREADY && axi_bvalid) 
	            //check if bready is asserted while bvalid is high) 
	            //(there is a possibility that bready is always asserted high)   
	            begin
	              axi_bvalid <= 1'b0; 
	            end  
	        end
	    end
	end   

	// Implement axi_arready generation
	// axi_arready is asserted for one S_AXI_ACLK clock cycle when
	// S_AXI_ARVALID is asserted. axi_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when S_AXI_ARVALID is 
	// asserted. axi_araddr is reset to zero on reset assertion.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_arready <= 1'b0;
	      axi_araddr  <= 32'b0;
	    end 
	  else
	    begin    
	      if (~axi_arready && S_AXI_ARVALID)
	        begin
	          // indicates that the slave has acceped the valid read address
	          axi_arready <= 1'b1;
	          // Read address latching
	          axi_araddr  <= S_AXI_ARADDR;
	        end
	      else
	        begin
	          axi_arready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	// data are available on the axi_rdata bus at this instance. The 
	// assertion of axi_rvalid marks the validity of read data on the 
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	// is deasserted on reset (active low). axi_rresp and axi_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rvalid <= 0;
	      axi_rresp  <= 0;
	    end 
	  else
	    begin    
	      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
	        begin
	          // Valid read data is available at the read data bus
	          axi_rvalid <= 1'b1;
	          axi_rresp  <= 2'b0; // 'OKAY' response
	        end   
	      else if (axi_rvalid && S_AXI_RREADY)
	        begin
	          // Read data is accepted by the master
	          axi_rvalid <= 1'b0;
	        end                
	    end
	end    

	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
	always @(*)
	begin
	      // Address decoding for reading registers
	      case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	        5'h00   : reg_data_out <= dsp_fifo_dout_1;             // dsp fifo data (sample) #1
	        5'h01   : reg_data_out <= dsp_fifo_dout_2;             // dsp fifo data (sample) #2
	        5'h02   : reg_data_out <= dsp_fifo_dout_3;             // dsp fifo data (sample) #3
	        5'h03   : reg_data_out <= dsp_fifo_dout_4;             // dsp fifo data (sample) #4
	        5'h04   : reg_data_out <= dsp_fifo_dout_5;             // dsp fifo data (sample) #5
	        5'h05   : reg_data_out <= dsp_fifo_dout_6;             // dsp fifo data (sample) #6
	        5'h06   : reg_data_out <= dsp_fifo_dout_7;             // dsp fifo data (sample) #7
	        5'h07   : reg_data_out <= dsp_fifo_dout_8;             // dsp fifo data (sample) #8
	        5'h08   : reg_data_out <= dsp_fifo_dout_9;             // dsp fifo data (sample) #9
	        5'h09   : reg_data_out <= dsp_fifo_dout_10;            // dsp fifo data (sample) #10
	        5'h0A   : reg_data_out <= dsp_fifo_dout_11;            // dsp fifo data (sample) #11
	        5'h0B   : reg_data_out <= dsp_fifo_dout_12;            // dsp fifo data (sample) #12
	        5'h0C   : reg_data_out <= dds_fifo_dout;               // dds fifo data (sample)
	        5'h0D   : reg_data_out <= slv_reg13;                   // pwr fifo data (sample)
	        
	        5'h0E   : reg_data_out <= {13'b0000_0000_0000_0,
	                                   dsp_fifo_full_1,
	                                   dsp_fifo_empty_1,
	                                   dsp_fifo_ok_1,
	                                   04'b0000,
	                                   dsp_fifo_data_count_1};     // dsp fifo signals #1 - full, empty, ok, data count
	        5'h0F   : reg_data_out <= {13'b0000_0000_0000_0,
	                                   dsp_fifo_full_2,
	                                   dsp_fifo_empty_2,
	                                   dsp_fifo_ok_2,
	                                   04'b0000,
	                                   dsp_fifo_data_count_2};     // dsp fifo signals #2 - full, empty, ok, data count
	        5'h10   : reg_data_out <= {13'b0000_0000_0000_0,
	                                   dsp_fifo_full_3,
	                                   dsp_fifo_empty_3,
	                                   dsp_fifo_ok_3,
	                                   04'b0000,
	                                   dsp_fifo_data_count_3};     // dsp fifo signals #3 - full, empty, ok, data count
	        5'h11   : reg_data_out <= {13'b0000_0000_0000_0,
	                                   dsp_fifo_full_4,
	                                   dsp_fifo_empty_4,
	                                   dsp_fifo_ok_4,
	                                   04'b0000,
	                                   dsp_fifo_data_count_4};     // dsp fifo signals #4 - full, empty, ok, data count
	        5'h12   : reg_data_out <= {13'b0000_0000_0000_0,
	                                   dsp_fifo_full_5,
	                                   dsp_fifo_empty_5,
	                                   dsp_fifo_ok_5,
	                                   04'b0000,
	                                   dsp_fifo_data_count_5};     // dsp fifo signals #5 - full, empty, ok, data count
	        5'h13   : reg_data_out <= {13'b0000_0000_0000_0,
	                                   dsp_fifo_full_6,
	                                   dsp_fifo_empty_6,
	                                   dsp_fifo_ok_6,
	                                   04'b0000,
	                                   dsp_fifo_data_count_6};     // dsp fifo signals #6 - full, empty, ok, data count
	        5'h14   : reg_data_out <= {13'b0000_0000_0000_0,
	                                   dsp_fifo_full_7,
	                                   dsp_fifo_empty_7,
	                                   dsp_fifo_ok_7,
	                                   04'b0000,
	                                   dsp_fifo_data_count_7};     // dsp fifo signals #7 - full, empty, ok, data count
	        5'h15   : reg_data_out <= {13'b0000_0000_0000_0,
	                                   dsp_fifo_full_8,
	                                   dsp_fifo_empty_8,
	                                   dsp_fifo_ok_8,
	                                   04'b0000,
	                                   dsp_fifo_data_count_8};     // dsp fifo signals #8 - full, empty, ok, data count
	        5'h16   : reg_data_out <= {13'b0000_0000_0000_0,
	                                   dsp_fifo_full_9,
	                                   dsp_fifo_empty_9,
	                                   dsp_fifo_ok_9,
	                                   04'b0000,
	                                   dsp_fifo_data_count_9};     // dsp fifo signals #9 - full, empty, ok, data count
	        5'h17   : reg_data_out <= {13'b0000_0000_0000_0,
	                                   dsp_fifo_full_10,
	                                   dsp_fifo_empty_10,
	                                   dsp_fifo_ok_10,
	                                   04'b0000,
	                                   dsp_fifo_data_count_10};    // dsp fifo signals #10 - full, empty, ok, data count
	        5'h18   : reg_data_out <= {13'b0000_0000_0000_0,
	                                   dsp_fifo_full_11,
	                                   dsp_fifo_empty_11,
	                                   dsp_fifo_ok_11,
	                                   04'b0000,
	                                   dsp_fifo_data_count_11};    // dsp fifo signals #11 - full, empty, ok, data count
	        5'h19   : reg_data_out <= {13'b0000_0000_0000_0,
	                                   dsp_fifo_full_12,
	                                   dsp_fifo_empty_12,
	                                   dsp_fifo_ok_12,
	                                   04'b0000,
	                                   dsp_fifo_data_count_12};    // dsp fifo signals #12 - full, empty, ok, data count
	        5'h1A   : reg_data_out <= {13'b0000_0000_0000_0,
	                                   dds_fifo_full,
	                                   dds_fifo_empty,
	                                   dds_fifo_ok,
	                                   04'b0000,
	                                   dds_fifo_data_count};       // dds fifo signals - full, empty, ok, data count
	        5'h1B   : reg_data_out <= slv_reg27;                   // pwr fifo data count
	        
	        5'h1C   : reg_data_out <= slv_reg28;
	        5'h1D   : reg_data_out <= slv_reg29;
	        5'h1E   : reg_data_out <= slv_reg30;
	        5'h1F   : reg_data_out <= slv_reg31;
	        default : reg_data_out <= 0;
	      endcase
	end

	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rdata  <= 0;
	    end 
	  else
	    begin    
	      // When there is a valid read address (S_AXI_ARVALID) with 
	      // acceptance of read address by the slave (axi_arready), 
	      // output the read dada 
	      if (slv_reg_rden)
	        begin
	          axi_rdata <= reg_data_out;     // register read data
	        end   
	    end
	end    

	// Add user logic here
	
	// Generation fifo rd_en signals
	always @( posedge S_AXI_ACLK )
	begin
	   if ( S_AXI_ARESETN == 1'b0 ) begin
	       dsp_fifo_rd_en_1_reg    <= 1'b0;
	       dsp_fifo_rd_en_2_reg    <= 1'b0;
	       dsp_fifo_rd_en_3_reg    <= 1'b0;
	       dsp_fifo_rd_en_4_reg    <= 1'b0;
	       dsp_fifo_rd_en_5_reg    <= 1'b0;
	       dsp_fifo_rd_en_6_reg    <= 1'b0;
	       dsp_fifo_rd_en_7_reg    <= 1'b0;
	       dsp_fifo_rd_en_8_reg    <= 1'b0;
	       dsp_fifo_rd_en_9_reg    <= 1'b0;
	       dsp_fifo_rd_en_10_reg   <= 1'b0;
	       dsp_fifo_rd_en_11_reg   <= 1'b0;
	       dsp_fifo_rd_en_12_reg   <= 1'b0;
	       dds_fifo_rd_en_reg      <= 1'b0;
//	       pwr_fifo_rd_en_reg      <= 1'b0;
	   end 
	   else begin    
	       if (slv_reg_rden) begin
	           case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	               5'h00   : dsp_fifo_rd_en_1_reg  <= 1'd1;        // dsp fifo rd_en #1
	               5'h01   : dsp_fifo_rd_en_2_reg  <= 1'd1;        // dsp fifo rd_en #2
	               5'h02   : dsp_fifo_rd_en_3_reg  <= 1'd1;        // dsp fifo rd_en #3
	               5'h03   : dsp_fifo_rd_en_4_reg  <= 1'd1;        // dsp fifo rd_en #4
	               5'h04   : dsp_fifo_rd_en_5_reg  <= 1'd1;        // dsp fifo rd_en #5
	               5'h05   : dsp_fifo_rd_en_6_reg  <= 1'd1;        // dsp fifo rd_en #6
	               5'h06   : dsp_fifo_rd_en_7_reg  <= 1'd1;        // dsp fifo rd_en #7
	               5'h07   : dsp_fifo_rd_en_8_reg  <= 1'd1;        // dsp fifo rd_en #8
	               5'h08   : dsp_fifo_rd_en_9_reg  <= 1'd1;        // dsp fifo rd_en #9
	               5'h09   : dsp_fifo_rd_en_10_reg <= 1'd1;        // dsp fifo rd_en #10
	               5'h0A   : dsp_fifo_rd_en_11_reg <= 1'd1;        // dsp fifo rd_en #11
	               5'h0B   : dsp_fifo_rd_en_12_reg <= 1'd1;        // dsp fifo rd_en #12
	               5'h0C   : dds_fifo_rd_en_reg    <= 1'd1;        // dds fifo rd_en
//	               5'h0D   : pwr_fifo_rd_en_reg <= 1'd1;           // pwr fifo rd_en
	           endcase
	       end
	       else begin
	           dsp_fifo_rd_en_1_reg    <= 1'b0;
	           dsp_fifo_rd_en_2_reg    <= 1'b0;
	           dsp_fifo_rd_en_3_reg    <= 1'b0;
	           dsp_fifo_rd_en_4_reg    <= 1'b0;
	           dsp_fifo_rd_en_5_reg    <= 1'b0;
	           dsp_fifo_rd_en_6_reg    <= 1'b0;
	           dsp_fifo_rd_en_7_reg    <= 1'b0;
	           dsp_fifo_rd_en_8_reg    <= 1'b0;
	           dsp_fifo_rd_en_9_reg    <= 1'b0;
	           dsp_fifo_rd_en_10_reg   <= 1'b0;
	           dsp_fifo_rd_en_11_reg   <= 1'b0;
	           dsp_fifo_rd_en_12_reg   <= 1'b0;
	           dds_fifo_rd_en_reg      <= 1'b0;
//	           pwr_fifo_rd_en_reg      <= 1'b0;
	       end
	   end
    end
    
    assign dsp_fifo_rd_en_1  = dsp_fifo_rd_en_1_reg;
    assign dsp_fifo_rd_en_2  = dsp_fifo_rd_en_2_reg;
    assign dsp_fifo_rd_en_3  = dsp_fifo_rd_en_3_reg;
    assign dsp_fifo_rd_en_4  = dsp_fifo_rd_en_4_reg;
    assign dsp_fifo_rd_en_5  = dsp_fifo_rd_en_5_reg;
    assign dsp_fifo_rd_en_6  = dsp_fifo_rd_en_6_reg;
    assign dsp_fifo_rd_en_7  = dsp_fifo_rd_en_7_reg;
    assign dsp_fifo_rd_en_8  = dsp_fifo_rd_en_8_reg;
    assign dsp_fifo_rd_en_9  = dsp_fifo_rd_en_9_reg;
    assign dsp_fifo_rd_en_10 = dsp_fifo_rd_en_10_reg;
    assign dsp_fifo_rd_en_11 = dsp_fifo_rd_en_11_reg;
    assign dsp_fifo_rd_en_12 = dsp_fifo_rd_en_12_reg;
    assign dds_fifo_rd_en    = dds_fifo_rd_en_reg;
    
    // Generation of fifo_reset signal
    assign fifo_reset   = slv_reg31[0];

    
	// User logic ends

	endmodule
