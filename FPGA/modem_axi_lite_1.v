// Auto-generated AXI Lite interface for modem
// Generated from modem.yaml on 2025-11-18 11:25:00
// Base address: 0x8ac20000

`timescale 1 ns / 1 ps

module modem_axi_lite_1 #
(
	// Users to add parameters here
	// User parameters ends
	// Do not modify the parameters beyond this line

	// Width of S_AXI data bus
	parameter integer C_S_AXI_DATA_WIDTH	= 32,
	// Width of S_AXI address bus
	parameter integer C_S_AXI_ADDR_WIDTH	= 9
)
(
	// Users to add ports here
	output reg [31:0] rst_rx_out,	// rst_rx
	output reg rst_rx_out_valid,
	output reg [31:0] switchtx_ad_out,	// switchtx_ad
	output reg switchtx_ad_out_valid,
	output reg [31:0] tx_rst_out,	// tx_rst
	output reg tx_rst_out_valid,
	output reg [31:0] validate_on_out,	// validate_on
	output reg validate_on_out_valid,
	output reg [31:0] data_off_out,	// data_off
	output reg data_off_out_valid,
	output reg [31:0] trh_lvl_out,	// trh_lvl
	output reg trh_lvl_out_valid,
	output reg [31:0] set_bw_out,	// set_bw
	output reg set_bw_out_valid,
	output reg [31:0] modulation_out,	// mod in
	output reg modulation_out_valid,
	output reg [31:0] spread_spectrum_out,	// spread spectrum
	output reg spread_spectrum_out_valid,
	output reg [31:0] frsync_control_out,	// frsync_control
	output reg frsync_control_out_valid,
	output reg [31:0] corr_addrshift_out,	// corr_addrshift
	output reg corr_addrshift_out_valid,
	output reg [31:0] rezerv_w_out,	// rezerv
	output reg rezerv_w_out_valid,
	output reg [31:0] w_reg1_out,	// w_reg1
	output reg w_reg1_out_valid,
	output reg [31:0] w_reg2_out,	// w_reg2
	output reg w_reg2_out_valid,
	output reg [31:0] w_reg3_out,	// w_reg3
	output reg w_reg3_out_valid,
	output reg [31:0] w_reg4_out,	// w_reg4
	output reg w_reg4_out_valid,
	output reg [31:0] w_reg5_out,	// w_reg5
	output reg w_reg5_out_valid,
	output reg [31:0] w_reg6_out,	// w_reg6
	output reg w_reg6_out_valid,
	output reg [31:0] w_reg7_out,	// w_reg7
	output reg w_reg7_out_valid,
	output reg [31:0] w_reg8_out,	// w_reg8
	output reg w_reg8_out_valid,
	output reg [31:0] w_reg9_out,	// w_reg9
	output reg w_reg9_out_valid,
	output reg [31:0] w_reg10_out,	// w_reg10
	output reg w_reg10_out_valid,
	input wire [31:0] speedtest_in,	// speedtest
	input wire [31:0] nsop_detect_in,	// nsop_detect
	input wire [31:0] thr_lvlauto_in,	// thr_lvlauto
	input wire [31:0] delta_phi_in,	// delta_phi
	input wire [31:0] n_err_in,	// n_err
	input wire [31:0] rezerv_r_in,	// rezerv
	input wire [31:0] r_reg1_in,	// r_reg1
	input wire [31:0] r_reg2_in,	// r_reg2
	input wire [31:0] r_reg3_in,	// r_reg3
	input wire [31:0] r_reg4_in,	// r_reg4
	input wire [31:0] r_reg5_in,	// r_reg5
	input wire [31:0] r_reg6_in,	// r_reg6
	input wire [31:0] r_reg7_in,	// r_reg7
	input wire [31:0] r_reg8_in,	// r_reg8
	input wire [31:0] r_reg9_in,	// r_reg9
	input wire [31:0] r_reg10_in,	// r_reg10
	// User ports ends
	// Do not modify the ports beyond this line

	// Global Clock Signal
	input wire S_AXI_ACLK,
	// Global Reset Signal. This Signal is Active LOW
	input wire S_AXI_ARESETN,
	// Write address
	input wire [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_AWADDR,
	// Write protection type
	input wire [2:0] S_AXI_AWPROT,
	// Write address valid
	input wire S_AXI_AWVALID,
	// Write address ready
	output wire S_AXI_AWREADY,
	// Write data
	input wire [C_S_AXI_DATA_WIDTH-1:0] S_AXI_WDATA,
	// Write strobes
	input wire [3:0] S_AXI_WSTRB,
	// Write valid
	input wire S_AXI_WVALID,
	// Write ready
	output wire S_AXI_WREADY,
	// Write response
	output wire [1:0] S_AXI_BRESP,
	// Write response valid
	output wire S_AXI_BVALID,
	// Response ready
	input wire S_AXI_BREADY,
	// Read address
	input wire [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_ARADDR,
	// Protection type
	input wire [2:0] S_AXI_ARPROT,
	// Read address valid
	input wire S_AXI_ARVALID,
	// Read address ready
	output wire S_AXI_ARREADY,
	// Read data
	output wire [C_S_AXI_DATA_WIDTH-1:0] S_AXI_RDATA,
	// Read response
	output wire [1:0] S_AXI_RRESP,
	// Read valid
	output wire S_AXI_RVALID,
	// Read ready
	input wire S_AXI_RREADY
);

	// Local parameters for address decoding
	localparam integer ADDR_LSB = 2;
	localparam integer OPT_MEM_ADDR_BITS = 6;
	localparam integer NUM_REG = 38;

	// AXI4LITE signals
	reg [C_S_AXI_ADDR_WIDTH-1:0] axi_awaddr;
	reg axi_awready;
	reg axi_wready;
	reg [1:0] axi_bresp;
	reg axi_bvalid;
	reg [8:0] axi_araddr;
	reg axi_arready;
	reg [31:0] axi_rdata;
	reg [1:0] axi_rresp;
	reg axi_rvalid;
	reg aw_en;

	// Internal registers for write-only signals
	reg [31:0] rst_rx_reg;
	reg [31:0] switchtx_ad_reg;
	reg [31:0] tx_rst_reg;
	reg [31:0] validate_on_reg;
	reg [31:0] data_off_reg;
	reg [31:0] trh_lvl_reg;
	reg [31:0] set_bw_reg;
	reg [31:0] modulation_reg;
	reg [31:0] spread_spectrum_reg;
	reg [31:0] frsync_control_reg;
	reg [31:0] corr_addrshift_reg;
	reg [31:0] rezerv_w_reg;
	reg [31:0] w_reg1_reg;
	reg [31:0] w_reg2_reg;
	reg [31:0] w_reg3_reg;
	reg [31:0] w_reg4_reg;
	reg [31:0] w_reg5_reg;
	reg [31:0] w_reg6_reg;
	reg [31:0] w_reg7_reg;
	reg [31:0] w_reg8_reg;
	reg [31:0] w_reg9_reg;
	reg [31:0] w_reg10_reg;

	// Write control signals
	reg [31:0] wr_data;
	reg [3:0] wr_strb;
	reg wr_valid;
	reg [8:0] wr_addr;

	// I/O Connections assignments
	assign S_AXI_AWREADY = axi_awready;
	assign S_AXI_WREADY = axi_wready;
	assign S_AXI_BRESP = 2'b0;
	assign S_AXI_BVALID = axi_bvalid;
	assign S_AXI_ARREADY = axi_arready;
	assign S_AXI_RDATA = axi_rdata;
	assign S_AXI_RRESP = 2'b0;
	assign S_AXI_RVALID = axi_rvalid;

	// Implement axi_awready generation
	always @(posedge S_AXI_ACLK) begin
		if (S_AXI_ARESETN == 1'b0) begin
			axi_awready <= 1'b0;
			aw_en <= 1'b1;
		end else begin
			if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en) begin
				axi_awready <= 1'b1;
				aw_en <= 1'b0;
			end else if (S_AXI_BREADY && axi_bvalid) begin
				aw_en <= 1'b1;
				axi_awready <= 1'b0;
			end else begin
				axi_awready <= 1'b0;
			end
		end
	end

	// Implement axi_awaddr latching
	always @(posedge S_AXI_ACLK) begin
		if (S_AXI_ARESETN == 1'b0) begin
			axi_awaddr <= 0;
		end else begin
			if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en) begin
				axi_awaddr <= S_AXI_AWADDR;
			end
		end
	end

	// Implement axi_wready generation
	always @(posedge S_AXI_ACLK) begin
		if (S_AXI_ARESETN == 1'b0) begin
			axi_wready <= 1'b0;
		end else begin
			if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en) begin
				axi_wready <= 1'b1;
			end else begin
				axi_wready <= 1'b0;
			end
		end
	end

	// Implement write logic
	always @(posedge S_AXI_ACLK) begin
		if (S_AXI_ARESETN == 1'b0) begin
			rst_rx_out <= 0;
			rst_rx_out_valid <= 0;
			switchtx_ad_out <= 0;
			switchtx_ad_out_valid <= 0;
			tx_rst_out <= 0;
			tx_rst_out_valid <= 0;
			validate_on_out <= 0;
			validate_on_out_valid <= 0;
			data_off_out <= 0;
			data_off_out_valid <= 0;
			trh_lvl_out <= 0;
			trh_lvl_out_valid <= 0;
			set_bw_out <= 0;
			set_bw_out_valid <= 0;
			modulation_out <= 0;
			modulation_out_valid <= 0;
			spread_spectrum_out <= 0;
			spread_spectrum_out_valid <= 0;
			frsync_control_out <= 0;
			frsync_control_out_valid <= 0;
			corr_addrshift_out <= 0;
			corr_addrshift_out_valid <= 0;
			rezerv_w_out <= 0;
			rezerv_w_out_valid <= 0;
			w_reg1_out <= 0;
			w_reg1_out_valid <= 0;
			w_reg2_out <= 0;
			w_reg2_out_valid <= 0;
			w_reg3_out <= 0;
			w_reg3_out_valid <= 0;
			w_reg4_out <= 0;
			w_reg4_out_valid <= 0;
			w_reg5_out <= 0;
			w_reg5_out_valid <= 0;
			w_reg6_out <= 0;
			w_reg6_out_valid <= 0;
			w_reg7_out <= 0;
			w_reg7_out_valid <= 0;
			w_reg8_out <= 0;
			w_reg8_out_valid <= 0;
			w_reg9_out <= 0;
			w_reg9_out_valid <= 0;
			w_reg10_out <= 0;
			w_reg10_out_valid <= 0;
			rst_rx_reg <= 0;
			switchtx_ad_reg <= 0;
			tx_rst_reg <= 0;
			validate_on_reg <= 0;
			data_off_reg <= 0;
			trh_lvl_reg <= 0;
			set_bw_reg <= 0;
			modulation_reg <= 0;
			spread_spectrum_reg <= 0;
			frsync_control_reg <= 0;
			corr_addrshift_reg <= 0;
			rezerv_w_reg <= 0;
			w_reg1_reg <= 0;
			w_reg2_reg <= 0;
			w_reg3_reg <= 0;
			w_reg4_reg <= 0;
			w_reg5_reg <= 0;
			w_reg6_reg <= 0;
			w_reg7_reg <= 0;
			w_reg8_reg <= 0;
			w_reg9_reg <= 0;
			w_reg10_reg <= 0;
			wr_valid <= 0;
		end else begin
			wr_valid <= 0;
			rst_rx_out_valid <= 0;
			switchtx_ad_out_valid <= 0;
			tx_rst_out_valid <= 0;
			validate_on_out_valid <= 0;
			data_off_out_valid <= 0;
			trh_lvl_out_valid <= 0;
			set_bw_out_valid <= 0;
			modulation_out_valid <= 0;
			spread_spectrum_out_valid <= 0;
			frsync_control_out_valid <= 0;
			corr_addrshift_out_valid <= 0;
			rezerv_w_out_valid <= 0;
			w_reg1_out_valid <= 0;
			w_reg2_out_valid <= 0;
			w_reg3_out_valid <= 0;
			w_reg4_out_valid <= 0;
			w_reg5_out_valid <= 0;
			w_reg6_out_valid <= 0;
			w_reg7_out_valid <= 0;
			w_reg8_out_valid <= 0;
			w_reg9_out_valid <= 0;
			w_reg10_out_valid <= 0;
			if (axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID) begin
				wr_data <= S_AXI_WDATA;
				wr_strb <= S_AXI_WSTRB;
				wr_addr <= axi_awaddr;
				wr_valid <= 1'b1;
			end

			// Handle writes to registers
			if (wr_valid) begin
				case (wr_addr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB])
					9'h0: begin
						rst_rx_out <= wr_data;
						rst_rx_out_valid <= 1'b1;
						rst_rx_reg <= wr_data;
					end
					9'h1: begin
						switchtx_ad_out <= wr_data;
						switchtx_ad_out_valid <= 1'b1;
						switchtx_ad_reg <= wr_data;
					end
					9'h2: begin
						tx_rst_out <= wr_data;
						tx_rst_out_valid <= 1'b1;
						tx_rst_reg <= wr_data;
					end
					9'h3: begin
						validate_on_out <= wr_data;
						validate_on_out_valid <= 1'b1;
						validate_on_reg <= wr_data;
					end
					9'h4: begin
						data_off_out <= wr_data;
						data_off_out_valid <= 1'b1;
						data_off_reg <= wr_data;
					end
					9'h5: begin
						trh_lvl_out <= wr_data;
						trh_lvl_out_valid <= 1'b1;
						trh_lvl_reg <= wr_data;
					end
					9'h6: begin
						set_bw_out <= wr_data;
						set_bw_out_valid <= 1'b1;
						set_bw_reg <= wr_data;
					end
					9'h7: begin
						modulation_out <= wr_data;
						modulation_out_valid <= 1'b1;
						modulation_reg <= wr_data;
					end
					9'h8: begin
						spread_spectrum_out <= wr_data;
						spread_spectrum_out_valid <= 1'b1;
						spread_spectrum_reg <= wr_data;
					end
					9'h9: begin
						frsync_control_out <= wr_data;
						frsync_control_out_valid <= 1'b1;
						frsync_control_reg <= wr_data;
					end
					9'ha: begin
						corr_addrshift_out <= wr_data;
						corr_addrshift_out_valid <= 1'b1;
						corr_addrshift_reg <= wr_data;
					end
					9'hb: begin
						rezerv_w_out <= wr_data;
						rezerv_w_out_valid <= 1'b1;
						rezerv_w_reg <= wr_data;
					end
					9'hc: begin
						w_reg1_out <= wr_data;
						w_reg1_out_valid <= 1'b1;
						w_reg1_reg <= wr_data;
					end
					9'hd: begin
						w_reg2_out <= wr_data;
						w_reg2_out_valid <= 1'b1;
						w_reg2_reg <= wr_data;
					end
					9'he: begin
						w_reg3_out <= wr_data;
						w_reg3_out_valid <= 1'b1;
						w_reg3_reg <= wr_data;
					end
					9'hf: begin
						w_reg4_out <= wr_data;
						w_reg4_out_valid <= 1'b1;
						w_reg4_reg <= wr_data;
					end
					9'h10: begin
						w_reg5_out <= wr_data;
						w_reg5_out_valid <= 1'b1;
						w_reg5_reg <= wr_data;
					end
					9'h11: begin
						w_reg6_out <= wr_data;
						w_reg6_out_valid <= 1'b1;
						w_reg6_reg <= wr_data;
					end
					9'h12: begin
						w_reg7_out <= wr_data;
						w_reg7_out_valid <= 1'b1;
						w_reg7_reg <= wr_data;
					end
					9'h13: begin
						w_reg8_out <= wr_data;
						w_reg8_out_valid <= 1'b1;
						w_reg8_reg <= wr_data;
					end
					9'h14: begin
						w_reg9_out <= wr_data;
						w_reg9_out_valid <= 1'b1;
						w_reg9_reg <= wr_data;
					end
					9'h15: begin
						w_reg10_out <= wr_data;
						w_reg10_out_valid <= 1'b1;
						w_reg10_reg <= wr_data;
					end
					default: begin end
				endcase
			end
		end
	end

	// Implement write response logic generation
	always @(posedge S_AXI_ACLK) begin
		if (S_AXI_ARESETN == 1'b0) begin
			axi_bvalid <= 0;
		end else begin
			if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID) begin
				axi_bvalid <= 1'b1;
			end else if (S_AXI_BREADY && axi_bvalid) begin
				axi_bvalid <= 1'b0;
			end
		end
	end

	// Implement axi_arready generation
	always @(posedge S_AXI_ACLK) begin
		if (S_AXI_ARESETN == 1'b0) begin
			axi_arready <= 1'b0;
			axi_araddr <= 0;
		end else begin
			if (~axi_arready && S_AXI_ARVALID) begin
				axi_arready <= 1'b1;
				axi_araddr <= S_AXI_ARADDR;
			end else begin
				axi_arready <= 1'b0;
			end
		end
	end

	// Implement axi_rvalid generation
	always @(posedge S_AXI_ACLK) begin
		if (S_AXI_ARESETN == 1'b0) begin
			axi_rvalid <= 0;
			axi_rdata <= 0;
		end else begin
			if (axi_arready && S_AXI_ARVALID && ~axi_rvalid) begin
				axi_rvalid <= 1'b1;
				case (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB])
					9'h0: axi_rdata <= rst_rx_reg;
					9'h1: axi_rdata <= switchtx_ad_reg;
					9'h2: axi_rdata <= tx_rst_reg;
					9'h3: axi_rdata <= validate_on_reg;
					9'h4: axi_rdata <= data_off_reg;
					9'h5: axi_rdata <= trh_lvl_reg;
					9'h6: axi_rdata <= set_bw_reg;
					9'h7: axi_rdata <= modulation_reg;
					9'h8: axi_rdata <= spread_spectrum_reg;
					9'h9: axi_rdata <= frsync_control_reg;
					9'ha: axi_rdata <= corr_addrshift_reg;
					9'hb: axi_rdata <= rezerv_w_reg;
					9'hc: axi_rdata <= w_reg1_reg;
					9'hd: axi_rdata <= w_reg2_reg;
					9'he: axi_rdata <= w_reg3_reg;
					9'hf: axi_rdata <= w_reg4_reg;
					9'h10: axi_rdata <= w_reg5_reg;
					9'h11: axi_rdata <= w_reg6_reg;
					9'h12: axi_rdata <= w_reg7_reg;
					9'h13: axi_rdata <= w_reg8_reg;
					9'h14: axi_rdata <= w_reg9_reg;
					9'h15: axi_rdata <= w_reg10_reg;
					9'h16: axi_rdata <= speedtest_in;
					9'h17: axi_rdata <= nsop_detect_in;
					9'h18: axi_rdata <= thr_lvlauto_in;
					9'h19: axi_rdata <= delta_phi_in;
					9'h1a: axi_rdata <= n_err_in;
					9'h1b: axi_rdata <= rezerv_r_in;
					9'h1c: axi_rdata <= r_reg1_in;
					9'h1d: axi_rdata <= r_reg2_in;
					9'h1e: axi_rdata <= r_reg3_in;
					9'h1f: axi_rdata <= r_reg4_in;
					9'h20: axi_rdata <= r_reg5_in;
					9'h21: axi_rdata <= r_reg6_in;
					9'h22: axi_rdata <= r_reg7_in;
					9'h23: axi_rdata <= r_reg8_in;
					9'h24: axi_rdata <= r_reg9_in;
					9'h25: axi_rdata <= r_reg10_in;
					default: axi_rdata <= 32'h0;
				endcase
			end else if (axi_rvalid && S_AXI_RREADY) begin
				axi_rvalid <= 1'b0;
			end
		end
	end

	// Add user logic here

endmodule
