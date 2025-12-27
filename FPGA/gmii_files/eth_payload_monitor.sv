`default_nettype none

module eth_payload_monitor #(
    parameter CLK_FREQ_HZ = 125_000_000
)(
    input  wire                   clk,
    input  wire                   rstn,

    // AXI Stream input
    input  wire [7:0]             s_axis_tdata,
    input  wire                   s_axis_tvalid,
    output reg                    s_axis_tready,
    input  wire                   s_axis_tlast,
    input  wire [0:0]             s_axis_tuser,

    // >>> НОВОЕ: длина пакета (в байтах, включая header + payload + CRC)
    input  wire [10:0]            packet_len,  // e.g. 64+8=72

    // External reset
    input  wire                   ext_rst_cnt,

    // AXI Stream output
    output reg [31:0]             m_axi_tdata,
    output reg                    m_axi_tvalid,
    input  wire                   m_axi_tready,

    // Debug outputs
    output reg [31:0]             packet_counter,
    output reg [31:0]             crc_error_counter,
    output reg [31:0]             lost_packet_counter
);

// FSM states
typedef enum reg [2:0] {
    ST_IDLE,
    ST_HEADER,   // bytes 0-3: packet ID (LSB first)
    ST_PAYLOAD,  // bytes 4..N+3: payload
    ST_CRC       // bytes N+4..N+7: CRC32 (LSB first)
} state_t;

state_t state_reg, state_next;

// Data registers
reg [31:0] 	received_id;
reg [31:0] 	expected_id;
reg [31:0] 	crc_reg;        // same name as in eth_payload_gen
reg  [3:0]	crc_err_flag;
// reg [7:0]  byte_cnt;       // 0..255 per section


// Counters
reg [31:0] pkt_cnt;
reg [31:0] crc_err_cnt;
reg [31:0] lost_cnt;
reg [10:0] total_byte_cnt;  // 0-based byte index in packet

// Output control
reg stats_pending;
reg [1:0] output_phase;  // 0: pkt_cnt, 1: crc_err, 2: lost_cnt, 3: idle

reg	[7:0] 	temp_s_axis_tdata; 	
reg	 		temp_s_axis_tvalid; 	
reg	 		temp_s_axis_tready; 	
reg	 		temp_s_axis_tlast; 	
reg	 		temp_s_axis_tuser;

// ===================================================================
// CRC32: exact copy from eth_payload_gen (Vivado 2019.1 compatible)
// ===================================================================
function [31:0] update_crc32;
    input [31:0] crc;
    input [7:0] data;
    begin
        update_crc32 = crc ^ {data, 24'h0};
        update_crc32 = update_crc32[31] ? {update_crc32[30:0], 1'b0} ^ 32'h04C11DB7 : {update_crc32[30:0], 1'b0};
        update_crc32 = update_crc32[31] ? {update_crc32[30:0], 1'b0} ^ 32'h04C11DB7 : {update_crc32[30:0], 1'b0};
        update_crc32 = update_crc32[31] ? {update_crc32[30:0], 1'b0} ^ 32'h04C11DB7 : {update_crc32[30:0], 1'b0};
        update_crc32 = update_crc32[31] ? {update_crc32[30:0], 1'b0} ^ 32'h04C11DB7 : {update_crc32[30:0], 1'b0};
        update_crc32 = update_crc32[31] ? {update_crc32[30:0], 1'b0} ^ 32'h04C11DB7 : {update_crc32[30:0], 1'b0};
        update_crc32 = update_crc32[31] ? {update_crc32[30:0], 1'b0} ^ 32'h04C11DB7 : {update_crc32[30:0], 1'b0};
        update_crc32 = update_crc32[31] ? {update_crc32[30:0], 1'b0} ^ 32'h04C11DB7 : {update_crc32[30:0], 1'b0};
        update_crc32 = update_crc32[31] ? {update_crc32[30:0], 1'b0} ^ 32'h04C11DB7 : {update_crc32[30:0], 1'b0};
    end
endfunction

wire [31:0] crc_next = update_crc32(crc_reg, temp_s_axis_tdata);

// ===================================================================
// Sequential logic
// ===================================================================

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
		temp_s_axis_tdata 	<= '0;
		temp_s_axis_tvalid 	<= '0;
		temp_s_axis_tready 	<= '0;
		temp_s_axis_tlast 	<= '0;
		temp_s_axis_tuser 	<= '0;
    end else begin
		temp_s_axis_tdata 	<= s_axis_tdata;
		temp_s_axis_tvalid 	<= s_axis_tvalid;
		temp_s_axis_tready 	<= s_axis_tready;
		temp_s_axis_tlast 	<= s_axis_tlast;
		temp_s_axis_tuser 	<= s_axis_tuser;
		end
end


always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        state_reg <= ST_IDLE;
        received_id <= 0;
        expected_id <= 0;
        crc_reg <= 32'hFFFFFFFF;  // 
        crc_err_flag <= 0;
        total_byte_cnt <= 0;
        pkt_cnt <= 0;
        crc_err_cnt <= 0;
        lost_cnt <= 0;
        s_axis_tready <= 1'b1;
        stats_pending <= 0;
        output_phase <= 2'd3;
        m_axi_tvalid <= 0;
    end else begin
        // External reset
        if (ext_rst_cnt) begin
            pkt_cnt <= 0;
            crc_err_cnt <= 0;
            lost_cnt <= 0;
            expected_id <= 0;
        end

        // FSM state update
        state_reg <= state_next;

        // CRC update: only in HEADER and PAYLOAD (NOT in CRC phase!)
        if ((state_reg == ST_HEADER || state_reg == ST_PAYLOAD) &&
            temp_s_axis_tvalid && temp_s_axis_tready) begin
            crc_reg <= crc_next;
        end
		
	


        // Byte processing
        if (temp_s_axis_tvalid && temp_s_axis_tready) begin
            case (state_reg)
                ST_IDLE: begin
                    // First byte ? start header
                    received_id[7:0] <= temp_s_axis_tdata;
                    total_byte_cnt <= 0;
					crc_reg <= 32'hFFFFFFFF;
                end

                ST_HEADER: begin
                    // Collect packet ID (4 bytes total)
                    case (total_byte_cnt)
                        0: received_id[7:0]   <= temp_s_axis_tdata;
                        1: received_id[15:8]  <= temp_s_axis_tdata;
                        2: received_id[23:16] <= temp_s_axis_tdata;
                        3: received_id[31:24] <= temp_s_axis_tdata;
                    endcase
					
					if (temp_s_axis_tlast) begin
						received_id[7:0] <= temp_s_axis_tdata;
						total_byte_cnt <= 0;
						crc_reg <= 32'hFFFFFFFF;
					end
					else
						total_byte_cnt <= total_byte_cnt + 1;
                end
				
                ST_PAYLOAD: begin
                    // Just count bytes — no data processing needed
					if (temp_s_axis_tlast) begin
						received_id[7:0] <= temp_s_axis_tdata;
						total_byte_cnt <= 0;
						crc_reg <= 32'hFFFFFFFF;
					end
					else
						total_byte_cnt <= total_byte_cnt + 1;
                end

                ST_CRC: begin
                    // Collect CRC (4 bytes, LSB first)
                    case (total_byte_cnt - (packet_len - 4))  // 0,1,2,3
                        0: crc_err_flag[0]	<= temp_s_axis_tdata!==~crc_reg[ 7: 0];
                        1: crc_err_flag[1]	<= temp_s_axis_tdata!==~crc_reg[15: 8];
                        2: crc_err_flag[2]	<= temp_s_axis_tdata!==~crc_reg[23:16];
						3: crc_err_flag[3]	<= temp_s_axis_tdata!==~crc_reg[31:24];
                    endcase
					if (temp_s_axis_tlast) begin
						received_id[7:0] <= temp_s_axis_tdata;
						total_byte_cnt <= 0;
						crc_reg <= 32'hFFFFFFFF;
					end
					else
						total_byte_cnt <= total_byte_cnt + 1;

                end
            endcase
        end

        // End of packet: on tlast & last CRC byte
        if (state_reg == ST_CRC && 
            temp_s_axis_tvalid && temp_s_axis_tready && 
            temp_s_axis_tlast && total_byte_cnt == packet_len-1) begin

            // Update counters
            pkt_cnt <= pkt_cnt + 1;

            // Check lost packets
            if (received_id != expected_id) begin
                if (received_id > expected_id)
                    lost_cnt <= lost_cnt + (received_id - expected_id);
                else
                    lost_cnt <= lost_cnt + 1; 
					expected_id <= received_id + 1;
            end else begin
                expected_id <= expected_id + 1;
            end

            // CRC check: eth_payload_gen sends ~crc_reg
            if (|crc_err_flag) begin
                crc_err_cnt <= crc_err_cnt + 1;
            end
			crc_reg <= 32'hFFFFFFFF;
			total_byte_cnt <= 0;
            stats_pending <= 1'b1;
        end

        // Output FSM
        if (stats_pending) begin
            if (m_axi_tvalid && m_axi_tready) begin
                output_phase <= output_phase + 1;
                if (output_phase == 2) begin
                    stats_pending <= 1'b0;
                    output_phase <= 0;
                end
            end
        end
    end
end


// ===================================================================
// Combinational logic
// ===================================================================
always @(*) begin
    state_next = state_reg;
    m_axi_tdata = 32'd0;
    m_axi_tvalid = m_axi_tvalid;

    // FSM transitions
    case (state_reg)
        ST_IDLE: begin
            if (s_axis_tvalid) 
                state_next = ST_HEADER;
        end

        ST_HEADER: begin
            if (temp_s_axis_tvalid && temp_s_axis_tready && total_byte_cnt == 3)
                state_next = ST_PAYLOAD;
        end

        ST_PAYLOAD: begin
            if (temp_s_axis_tvalid && temp_s_axis_tready && 
                total_byte_cnt == (packet_len - 5))
                state_next = ST_CRC;
			if (temp_s_axis_tvalid && temp_s_axis_tready && temp_s_axis_tlast)
				state_next = ST_IDLE;
        end

        ST_CRC: begin
            if (temp_s_axis_tvalid && temp_s_axis_tready && 
                total_byte_cnt == packet_len-1 && temp_s_axis_tlast)
                state_next = ST_IDLE;
        end
    endcase

    // Output data selection
    case (output_phase)
        0: m_axi_tdata = pkt_cnt;
        1: m_axi_tdata = crc_err_cnt;
        2: m_axi_tdata = lost_cnt;
    endcase

    // Drive m_axi_tvalid
    if (stats_pending && output_phase <= 2 && m_axi_tready)
        m_axi_tvalid = 1'b1;
    else if (m_axi_tvalid && m_axi_tready)
        m_axi_tvalid = 1'b0;
end  


// Debug outputs
assign packet_counter = pkt_cnt;
assign crc_error_counter = crc_err_cnt;
assign lost_packet_counter = lost_cnt;

endmodule