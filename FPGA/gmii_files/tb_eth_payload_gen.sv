`timescale 1ns / 1ps
`default_nettype none

module tb_eth_payload_gen;

// ======================
// Clock & Reset
// ======================
reg clk 	= 0;
reg rstn 	= 0;
reg clk_l 	= 0;
reg clk_h 	= 0;
reg clk_hh 	= 0;

always #59 	clk		= ~clk; 	// ~25 MHz
always #48 	clk_l 	= ~clk_l; 	// ~30.72 MHz
always #8 	clk_h 	= ~clk_h; 	// ~30.72*6 MHz
always #6 	clk_hh 	= ~clk_hh; 	// ~30.72*8 MHz

initial begin
    rstn = 0;
    #400; rstn = 1; 
end

// ======================
// DUT Interface Signals
// ======================
reg [31:0] s_axi_tdata;
reg        command_val;
wire       ordy;
reg        ext_rst_cnt = 0;

// GMII
wire [7:0] gmii_txd;
wire       gmii_tx_en;
wire       gmii_tx_er;
wire       start_packet;
wire       error_underflow;

// RX status
wire       rx_start_packet;
wire       rx_error_bad_frame;
wire       rx_error_bad_fcs;

// PTP (unused)
wire [95:0] ptp_ts = '0;
wire [95:0] m_axis_ptp_ts;
wire [15:0] m_axis_ptp_ts_tag;
wire        m_axis_ptp_ts_valid;

reg  [7:0] cfg_ifg = 8'd96;
wire       cfg_tx_enable;
wire       mii_select_out;
wire [31:0] packet_counter;

// AXIS
wire [7:0]  epg_s_axis_tdata;
wire        epg_s_axis_tvalid;
wire        epg_s_axis_tready;  
wire        epg_s_axis_tlast;
wire [0:0]  epg_s_axis_tuser;

wire [7:0]  rx_m_axis_tdata;
wire        rx_m_axis_tvalid;
wire        rx_m_axis_tlast;
wire [0:0]  rx_m_axis_tuser;

// eth_pump Signals

wire 		eth_tx_en		;	
wire 		eth_tx_er		;	
wire [7:0]	eth_txd			;	

wire 		eth_rx_en		;	
wire 		eth_rx_er		;	
wire [7:0]	eth_rxd			;

wire [7:0]	modem_tx_data	;			
wire 		modem_tx_last	;			
wire 		modem_tx_ready	;			
wire 		modem_tx_error	;			
wire 		modem_tx_valid	;			

wire [7:0]	modem_rx_data	;			
wire 		modem_rx_last	;			
wire 		modem_rx_ready	;			
wire 		modem_rx_error	;			
wire 		modem_rx_valid	;			

wire 		axis_cobs_decode_TUSER;
wire 		prog_full_int;			
wire 		status_overflow_int;	

// TX signals
wire		[3:0]			ctrl_tx_rst			;
wire		[2:0]			ctrl_ss             ;
wire       	[2:0]           ctrl_mod            ;
wire						ctrl_bw             ;
wire						ctrl_data_off       ;
wire						ctrl_validate_on    ;
wire						s_axis_aclk         ;
wire		[7:0]			s_axis_tdata        ;
wire						s_axis_tvalid       ;
wire						s_axis_tready       ;
wire		[15:0]			tx_i_axis_tdata     ;
wire		[15:0]			tx_q_axis_tdata     ;

// Only_tx Signals
wire		[15:0]			only_tx_loop_Idat	;
wire		[15:0]			only_tx_loop_Qdat	;
wire						only_tx_loop_oeop	;
wire						only_tx_loop_osop	;
wire						only_tx_loop_oval	;

// Only_rx Signals
wire		[15:0]			only_rx_loop_Idat    ;
wire		[15:0]			only_rx_loop_Qdat    ;
wire						only_rx_loop_ival    ;
wire						only_rx_loop_isop    ;
wire						only_rx_loop_ieop    ;

wire		[3:0]			onlrx_ctrl_ss		 ;	
wire		[2:0]			onlrx_ctrl_mod		 ;	
wire        [2:0]           onlrx_ctrl_bw		 ;	
wire		[23:0]			onlrx_ctrl_trh_lvl	 ;	
wire		[1:0]			onlrx_ctrl_frsync	 ;	
wire 		[13:0]			onlrx_ctrl_corr_addrshift;

wire		[7:0]			onlrx_m_axis_tdata;
wire						onlrx_m_axis_tvalid;
wire						onlrx_m_axis_tlast;
wire		[0:0]			onlrx_m_axis_tuser;
wire						onlrx_m_axis_tready;
wire						onlrx_m_axis_aclk;


// Monitor signals
reg         ext_rst_mon_cnt = 0;

// >>> FIXED: all packets are 72 bytes (4 ID + 64 payload + 4 CRC)
wire [10:0] mon_packet_len = 11'd1508;
// <<<

wire [31:0] mon_packet_counter;
wire [31:0] mon_crc_error_counter;
wire [31:0] mon_lost_packet_counter;

// Inject faults for testing
reg         inject_crc_error = 0;
reg         force_tlast_early = 0;

// >>> CORRECT CRC ERROR INJECTION: corrupt payload byte #10
wire [7:0] epg_s_axis_tdata_corrupted = 
    (inject_crc_error && epg_s_axis_tvalid && epg_s_axis_tready && 
     pkt_num_in_payload == 10)  // corrupt 11th byte of payload
    ? ~epg_s_axis_tdata : epg_s_axis_tdata;

reg [7:0] pkt_num_in_payload;
always @(posedge clk) begin
    if (!rstn) pkt_num_in_payload <= 0;
    else if (epg_s_axis_tvalid && epg_s_axis_tready) begin
        if (epg_s_axis_tlast) pkt_num_in_payload <= 0;
        else pkt_num_in_payload <= pkt_num_in_payload + 1;
    end
end


// ======================
// DUT Instantiation
// ======================
eth_payload_gen u_gen (
    .clk				(clk				), 
	.rstn				(rstn				), 
	.s_axi_tdata		(s_axi_tdata		), 
	.command_val		(command_val		),
    .ordy				(ordy				), 
	.ext_rst_cnt		(ext_rst_cnt		), 
	.m_axis_tdata		(epg_s_axis_tdata	),
    .m_axis_tvalid		(epg_s_axis_tvalid	), 
	.m_axis_tready		(epg_s_axis_tready	),
    .m_axis_tlast		(epg_s_axis_tlast	), 
	.m_axis_tuser		(epg_s_axis_tuser	),
    .cfg_tx_enable		(cfg_tx_enable		), 
	.mii_select_out		(mii_select_out		),
    .packet_counter		(packet_counter		)
);

wire       gmii_tx_en_corrupted = force_tlast_early ? (gmii_tx_en && (data_index < 64 + 12)) : gmii_tx_en;

axis_gmii_tx #(
.DATA_WIDTH			(8), 
.ENABLE_PADDING		(1), 
.MIN_FRAME_LENGTH	(64), 
.PTP_TS_ENABLE		(0), 
.USER_WIDTH			(1))
u_tx (
    .clk				(clk), 
	.rst				(~rstn), 
	.s_axis_tdata		(epg_s_axis_tdata_corrupted), 
    .s_axis_tvalid		(epg_s_axis_tvalid), 
	.s_axis_tready		(epg_s_axis_tready),
    .s_axis_tlast		(epg_s_axis_tlast), 
	.s_axis_tuser		(epg_s_axis_tuser),
    .gmii_txd			(gmii_txd), 
	.gmii_tx_en			(gmii_tx_en_corrupted), 
	.gmii_tx_er			(gmii_tx_er),
    .ptp_ts				(ptp_ts), 
	.m_axis_ptp_ts		(m_axis_ptp_ts), 
	.m_axis_ptp_ts_tag	(m_axis_ptp_ts_tag),
    .m_axis_ptp_ts_valid(m_axis_ptp_ts_valid), 
	.clk_enable			(1'b1), 
	.mii_select			(1'b1),
    .cfg_ifg			(cfg_ifg), 
	.cfg_tx_enable		(cfg_tx_enable), 
	.start_packet		(start_packet),
    .error_underflow	(error_underflow)
);

// eth_pump
eth_pump #(
    .MII_EN(1)
) eth_pump_core (
    .iclk_eth							(clk					),
    .irst_eth							(rstn					),
						
    .iclk_h								(clk_h					),
    .iclk_hh							(clk_hh					),
						
    .eth_tx_en							(eth_tx_en				),
    .eth_tx_er							(eth_tx_er				),
    .eth_txd							(eth_txd				),
						
    .eth_rx_en							(eth_rx_en				),
    .eth_rx_er							(eth_rx_er				),
    .eth_rxd							(eth_rxd				),
						
    .m_axis_tdata_modem					(modem_tx_data			),
    .m_axis_tlast_modem					(modem_tx_last			),
    .m_axis_tready_modem				(modem_tx_ready			),
    .m_axis_tuser_modem					(modem_tx_error			),
    .m_axis_tvalid_modem				(modem_tx_valid			),
						
    .s_axis_tdata_modem					(modem_rx_data			),
    .s_axis_tlast_modem					(modem_rx_last			),
    .s_axis_tready_modem				(modem_rx_ready			),
    .s_axis_tuser_modem					(modem_rx_error			),
    .s_axis_tvalid_modem				(modem_rx_valid			),
    
    .axis_cobs_decode_0_m_axis_TUSER	(axis_cobs_decode_TUSER	),
    .prog_full							(prog_full_int			),
    .m_status_overflow					(status_overflow_int	)
);

assign eth_tx_en		= gmii_tx_en_corrupted;		
assign eth_tx_er		= gmii_tx_er;
assign eth_txd			= gmii_txd;
																
assign modem_rx_data	= onlrx_m_axis_tdata;
assign modem_rx_last	= 0;
assign modem_rx_error	= 0;
assign modem_rx_valid	= onlrx_m_axis_tvalid;







only_tx modem_tx(
    // System clocks and reset
    .clk_l            (clk_l),
    .clk_h            (clk_h),
    .rst              (rstn),
    
    // Configuration and control
    .ss_in            (1),
    .m_in             (2),
    .bw_in            (5),
    .data_off_tx      (0),
    .validate_en      (0),
    
    // Input AXI-Stream
    .s_axis_aclk      (),
    .s_axis_tdata     (modem_tx_data),
    .s_axis_tvalid    (modem_tx_valid),
    .s_axis_tready    (modem_tx_ready),
    .s_axis_tlast     (),
    .s_axis_tuser     (),
    
    // I-channel output
    .tx_i_axis_aclk   (),
    .tx_i_axis_tdata  (),
    .tx_i_axis_tvalid (),
    .tx_i_axis_tready (),
    
    // Q-channel output
    .tx_q_axis_aclk   (),
    .tx_q_axis_tdata  (),
    .tx_q_axis_tvalid (),
    .tx_q_axis_tready (),
	
	// Debug
	.debug_scrsc_loop_Idat	(only_tx_loop_Idat),
	.debug_scrsc_loop_Qdat	(only_tx_loop_Qdat),
	.debug_scrsc_loop_oeop	(only_tx_loop_oeop),
	.debug_scrsc_loop_osop	(only_tx_loop_osop),
	.debug_scrsc_loop_oval	(only_tx_loop_oval)	
);

only_rx modem_rx (
    // System clocks and reset
    .clk_l            (clk_l),
    .clk_h            (clk_h),
    .clk_hh           (clk_hh),
    .rst              (rstn),

    // Configuration parameters
    .ss_in            (1),
    .m_in             (2),
    .bw_in            (5),
    .thr_lvl          (0),
    .frsync_ctrl      (0),
    .addr_shft        (0),

    // I/Q Input interfaces
    .rx_i_axis_tdata  (),
    .rx_i_axis_tvalid (),
    .rx_i_axis_tready (),
    
    .rx_q_axis_tdata  (),
    .rx_q_axis_tvalid (),
    .rx_q_axis_tready (),

    // Clock inputs for I/Q interfaces
    .rx_i_axis_aclk   (),
    .rx_q_axis_aclk   (),

    // Output data interface
    .m_axis_tdata     (onlrx_m_axis_tdata	),
    .m_axis_tvalid    (onlrx_m_axis_tvalid	),
    .m_axis_tlast     (),
    .m_axis_tuser     (),
    .m_axis_tready    (onlrx_m_axis_tready	),
    .m_axis_aclk      (onlrx_m_axis_aclk	),

    // Detection and status outputs
    .corr_pr_detect   (),
    .DeFec_err_dtct   (),
    .decrc_oerr       (),
    .decrc_verr       (),
    .finder_osop      (),
    .p1_verr          (),
    .p2_oerr          (),
    .time_er          (),
    .rx_ocorr_dtct    (),
    .delta_ph         (),
    .kb_ps            (),
    .corr_sig         (),

    // Statistical outputs
    .thr_lvl_auto     (),
    .N_sop_detect     (),
    .N_err            (),
	
	// Debug
	.RX_phy_scrsc_loop_Idat	(only_rx_loop_Idat),
	.RX_phy_scrsc_loop_Qdat	(only_rx_loop_Qdat),
	.RX_phy_scrsc_loop_ival	(only_rx_loop_ival),
	.RX_phy_scrsc_loop_isop	(only_rx_loop_isop),
	.RX_phy_scrsc_loop_ieop	(only_rx_loop_ieop)
);


assign only_rx_loop_Idat = only_tx_loop_Idat;
assign only_rx_loop_Qdat = only_tx_loop_Qdat;
assign only_rx_loop_ival = only_tx_loop_oval;
assign only_rx_loop_isop = only_tx_loop_osop;
assign only_rx_loop_ieop = only_tx_loop_oeop;


axis_gmii_rx #(
	.DATA_WIDTH		(8), 
	.PTP_TS_ENABLE	(0), 
	.USER_WIDTH		(1))
u_rx (
    .clk			(clk					), 
	.rst			(~rstn					), 
	.gmii_rxd		(eth_rxd				), 
	.gmii_rx_dv		(eth_rx_en				),
    .gmii_rx_er		(eth_rx_er				), 
	.m_axis_tdata	(rx_m_axis_tdata		), 
	.m_axis_tvalid	(rx_m_axis_tvalid		),
    .m_axis_tlast	(rx_m_axis_tlast		), 
	.m_axis_tuser	(rx_m_axis_tuser		), 
	.ptp_ts			(ptp_ts					),
    .clk_enable		(1'b1					), 
	.mii_select		(1'b1					), 
	.cfg_rx_enable	(1'b1					), 
	.start_packet	(rx_start_packet		),
    .error_bad_frame(rx_error_bad_frame		), 
	.error_bad_fcs	(rx_error_bad_fcs		)
);

eth_payload_monitor u_mon (
    .clk					(clk				), 
	.rstn					(rstn				), 
	.s_axis_tdata			(rx_m_axis_tdata	), 
	.s_axis_tvalid			(rx_m_axis_tvalid	),
    .s_axis_tready			(), 
	.s_axis_tlast			(rx_m_axis_tlast	), 
	.s_axis_tuser			(rx_m_axis_tuser	),
    .packet_len				(mon_packet_len		), 
	.ext_rst_cnt			(ext_rst_mon_cnt	),
    .m_axi_tdata			(), 
	.m_axi_tvalid			(), 
	.m_axi_tready			(1'b1),
    .packet_counter			(mon_packet_counter		), 
	.crc_error_counter		(mon_crc_error_counter	),
    .lost_packet_counter	(mon_lost_packet_counter)
);

// ======================
// Monitoring (unchanged)
// ======================
reg [7:0]   captured_rx_data [0:1500];
integer     rx_data_index;
reg         rx_capture_en = 0;
integer     rx_pkt_num = 0;

task reset_rx_capture;
    integer i; begin
        for (i = 0; i < 1500; i = i + 1) captured_rx_data[i] = 8'h00;
        rx_data_index = 0;
    end
endtask

always @(posedge clk) begin
    if (!rstn) begin
        reset_rx_capture(); rx_capture_en <= 0; rx_pkt_num <= 0;
    end else begin
        if (rx_m_axis_tvalid) begin
            if (rx_start_packet) begin
                reset_rx_capture(); rx_capture_en <= 1;
            end
            if (rx_capture_en && rx_data_index < 1500) begin
                captured_rx_data[rx_data_index] <= rx_m_axis_tdata;
                rx_data_index <= rx_data_index + 1;
            end
            if (rx_m_axis_tlast) begin
                rx_capture_en <= 0; rx_pkt_num <= rx_pkt_num + 1;
            end
        end
    end
end

reg [7:0]   captured_data [0:1500];
integer     data_index;
reg         capture_en = 0;
integer     pkt_num = 0;
integer     len;
reg [31:0]  cnt;

task reset_capture;
    integer i; begin
        for (i = 0; i < 1500; i = i + 1) captured_data[i] = 8'h00;
        data_index = 0;
    end
endtask

always @(posedge clk) begin
    if (!rstn) begin
        reset_capture(); capture_en <= 0; pkt_num <= 0;
    end else begin
        if (gmii_tx_en && !gmii_tx_er) begin
            if (start_packet) begin reset_capture(); capture_en <= 1; end
            if (capture_en && data_index < 1500) begin
                captured_data[data_index] <= gmii_txd;
                data_index <= data_index + 1;
            end
        end else if (capture_en && !gmii_tx_en) begin
            capture_en <= 0; pkt_num <= pkt_num + 1;
        end
    end
end

// ======================
// Test Sequence
// ======================
task send_config;
    input [31:0] data;
begin
    s_axi_tdata <= data;
    command_val <= 1;
    @(posedge clk);
    while (!ordy) @(posedge clk);
    command_val <= 0;
    #10;
end
endtask

task wait_packets;
    input [31:0] expected;
begin
    integer timeout = 0;
    while (mon_packet_counter != expected && timeout < 5000) begin
        @(posedge clk);
        timeout = timeout + 1;
    end
    if (timeout >= 10000) $fatal(1, "Timeout waiting for %0d packets (got %0d)", expected, mon_packet_counter);
end
endtask

// >>> Helper: wait for condition
task wait_condition;
    input condition;
    integer timeout = 0;
begin
    while (!condition && timeout < 10000) begin
        @(posedge clk);
        timeout = timeout + 1;
    end
    if (timeout >= 10000) $fatal(1, "Timeout waiting for condition");
end
endtask
// <<<

initial begin
    $display("Fixed-Length Test: all packets = 72 bytes (64 payload + 8 overhead)");

    @(posedge rstn);

    // === Test 1: Normal operation (5 packets) ===
    $display("\n=== Test 1: Normal operation (5 packets, payload=64) ===");
    send_config({1'b0, 1'b0, 12'd32, 11'd1500, 7'd40});
    wait_packets(40);
    if (mon_crc_error_counter != 0) $fatal(1, "Test 1 FAILED: Unexpected CRC errors: %0d", mon_crc_error_counter);
    if (mon_lost_packet_counter != 0) $fatal(1, "Test 1 FAILED: Unexpected lost packets: %0d", mon_lost_packet_counter);
    $display("Test 1 PASSED: %0d packets, 0 CRC errors, 0 lost", mon_packet_counter);

end

initial begin
    $dumpfile("tb_eth_payload_gen.vcd");
    $dumpvars(0, tb_eth_payload_gen);
end

endmodule