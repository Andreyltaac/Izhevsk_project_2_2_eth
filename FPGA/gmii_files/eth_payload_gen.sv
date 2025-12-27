`default_nettype none

module eth_payload_gen #(
    parameter CLK_FREQ_HZ = 125_000_000
)(
    input  wire                   clk,
    input  wire                   rstn,

    input  wire [31:0]            s_axi_tdata,
    input  wire                   command_val,
    output reg                    ordy,

    input  wire                   ext_rst_cnt,

    output reg [7:0]              m_axis_tdata,
    output reg                    m_axis_tvalid,
    input  wire                   m_axis_tready,
    output reg                    m_axis_tlast,
    output reg [0:0]              m_axis_tuser,

    output reg                    cfg_tx_enable,
    output reg                    mii_select_out,

    output reg [31:0]             packet_counter
);

// ==============================
// Register declarations
// ==============================
reg 		mii_select_reg;
reg 		eth_infinity_mode_reg;
reg [11:0] 	eth_pack_delay_reg;
reg [10:0] 	eth_payload_len_reg;
reg [6:0] 	eth_num_pack_reg;
reg 		apply_pending;

reg [31:0] delay_counter;
reg [31:0] byte_counter;
reg [31:0] packet_sent;
reg [10:0] current_payload_len;

reg [31:0] crc_reg;
reg [7:0] prbs_reg;

// State machine 
typedef enum reg [2:0] {  
    ST_IDLE,
    ST_WAIT_DELAY,
    ST_SEND_HEADER,
    ST_SEND_PAYLOAD,
    ST_SEND_CRC
} state_t;

state_t state_reg, state_next;

// Wires for combinational logic
wire        mii_select_i        = s_axi_tdata[31];
wire        eth_infinity_mode_i = s_axi_tdata[30];
wire [11:0] eth_pack_delay_i    = s_axi_tdata[29:18];
wire [10:0] eth_payload_len_i   = s_axi_tdata[17:7];
wire [6:0]  eth_num_pack_i      = s_axi_tdata[6:0];

wire [10:0] payload_len = (eth_payload_len_i > 11'd1500) ? 11'd1500 : eth_payload_len_i;
wire [11:0] pack_delay  = (eth_pack_delay_i == 0) ? 12'd1 : eth_pack_delay_i;

// ==============================
// CRC32 LFSR (same as before)
// ==============================
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

wire [31:0] crc_next = update_crc32(crc_reg, m_axis_tdata);
wire crc_en = ((state_reg == ST_SEND_HEADER) || (state_reg == ST_SEND_PAYLOAD)) && 
              m_axis_tvalid && m_axis_tready;

// ==============================
// Sequential logic
// ==============================
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        state_reg 				<= ST_IDLE;
        delay_counter 			<= 0;
        byte_counter 			<= 0;
        packet_sent 			<= 0;
        current_payload_len 	<= 0;
        
        mii_select_reg 			<= 1'b0;
        eth_infinity_mode_reg 	<= 1'b1;
        eth_pack_delay_reg 		<= 12'd128;
        eth_payload_len_reg 	<= 11'd256;
        eth_num_pack_reg 		<= 7'd0;
        apply_pending 			<= 1'b0;
        
        ordy 					<= 1'b1;
        cfg_tx_enable 			<= 1'b0;
        m_axis_tvalid 			<= 1'b0;
        m_axis_tlast 			<= 1'b0;
        m_axis_tuser 			<= 1'b0;
        m_axis_tdata 			<= 8'd0;
        
        packet_counter 			<= 32'd0;
        crc_reg 				<= 32'hFFFFFFFF;
        prbs_reg 				<= 8'h55;
    end else begin
        // Packet counter: increment on tlast
        if (ext_rst_cnt) begin
            packet_counter <= 32'd0;
        end else if (m_axis_tlast && m_axis_tvalid && m_axis_tready) begin
            packet_counter <= packet_counter + 1;
        end

        // Config update
        if (ordy && command_val) begin
            mii_select_reg 			<= mii_select_i;
            eth_infinity_mode_reg 	<= eth_infinity_mode_i;
            eth_pack_delay_reg 		<= pack_delay;
            eth_payload_len_reg 	<= payload_len;
            eth_num_pack_reg 		<= eth_num_pack_i;
            apply_pending 			<= 1'b0;
			packet_sent				<= 0;
        end else if (m_axis_tlast && m_axis_tvalid && m_axis_tready) begin
            // Apply pending config after packet end
            if (apply_pending) begin
                mii_select_reg 			<= mii_select_i;
                eth_infinity_mode_reg 	<= eth_infinity_mode_i;
                eth_pack_delay_reg 		<= pack_delay;
                eth_payload_len_reg 	<= payload_len;
                eth_num_pack_reg 		<= eth_num_pack_i;
                apply_pending 			<= 1'b0;
            end
        end else if (command_val && !ordy) begin
            apply_pending <= 1'b1;
        end

        // FSM update
        state_reg <= state_next;

        // Reset on entry to SEND_HEADER
        if (state_next == ST_SEND_HEADER && state_reg != ST_SEND_HEADER) begin
            byte_counter <= 0;
            current_payload_len <= eth_payload_len_reg;
            crc_reg <= 32'hFFFFFFFF;
        end

        // Delay counter
        if (state_next == ST_WAIT_DELAY && state_reg != ST_WAIT_DELAY) begin
            delay_counter <= {20'b0, eth_pack_delay_reg};
        end else if (state_reg == ST_WAIT_DELAY && delay_counter > 0) begin
            delay_counter <= delay_counter - 1;
        end

        // Byte counter (advance only on tready)
        if (m_axis_tvalid && m_axis_tready) begin
            case (state_reg)
                ST_SEND_HEADER: 
                    byte_counter <= (byte_counter < 3) ? byte_counter + 1 : 0;
                ST_SEND_PAYLOAD: 
                    byte_counter <= (byte_counter < current_payload_len - 1) ? byte_counter + 1 : 0;
                ST_SEND_CRC: 
                    byte_counter <= (byte_counter < 3) ? byte_counter + 1 : 0;
                default: ;
            endcase
        end

        // CRC update
        if (crc_en) begin
            crc_reg <= crc_next;
        end

        // PRBS update
        if (state_reg == ST_SEND_PAYLOAD && m_axis_tvalid && m_axis_tready) begin
            prbs_reg <= {prbs_reg[6:0], prbs_reg[7] ^ prbs_reg[5] ^ prbs_reg[4] ^ prbs_reg[0]};
        end

        // Packet sent count
        if (m_axis_tlast && m_axis_tvalid && m_axis_tready) begin
            packet_sent <= packet_sent + 1;
        end
    end
end

// ==============================
// Combinational logic
// ==============================
always @(*) begin
    state_next 		= state_reg;
    ordy 			= 1'b0;
    cfg_tx_enable 	= 1'b0;
    m_axis_tvalid 	= 1'b0;
    m_axis_tlast 	= 1'b0;
    m_axis_tuser 	= 1'b0;
    m_axis_tdata 	= 8'd0;

    case (state_reg)
        ST_IDLE: begin
            ordy 			= 1'b1;
            cfg_tx_enable 	= 1'b1;
            if (eth_infinity_mode_reg || (packet_sent < {25'b0, eth_num_pack_reg})) 
                state_next = ST_WAIT_DELAY;
            else 
                cfg_tx_enable = 1'b0;
        end

        ST_WAIT_DELAY: begin
            cfg_tx_enable = 1'b1;
            if (delay_counter == 0) 
                state_next = ST_SEND_HEADER;
        end

        ST_SEND_HEADER: begin
            cfg_tx_enable = 1'b1;
            m_axis_tvalid = 1'b1;
            case (byte_counter)
                0: m_axis_tdata = packet_counter[7:0];
                1: m_axis_tdata = packet_counter[15:8];
                2: m_axis_tdata = packet_counter[23:16];
                3: m_axis_tdata = packet_counter[31:24];
                default: m_axis_tdata = 8'd0;
            endcase
            if (m_axis_tready && byte_counter == 3) 
                state_next = (current_payload_len == 0) ? ST_SEND_CRC : ST_SEND_PAYLOAD;
        end

        ST_SEND_PAYLOAD: begin
            cfg_tx_enable = 1'b1;
            m_axis_tvalid = 1'b1;
            m_axis_tdata = prbs_reg;
            if (m_axis_tready && byte_counter == current_payload_len - 1) 
                state_next = ST_SEND_CRC;
        end

        ST_SEND_CRC: begin
            cfg_tx_enable = 1'b1;
            m_axis_tvalid = 1'b1;
            
            // CRC bytes (LSB first), tlast=1 on last (MSB) byte
            case (byte_counter)
                0: m_axis_tdata = ~(crc_reg[7:0]);
                1: m_axis_tdata = ~(crc_reg[15:8]);
                2: m_axis_tdata = ~(crc_reg[23:16]);
                3: begin
                    m_axis_tdata = ~(crc_reg[31:24]);
                    m_axis_tlast = 1'b1;  
                end
                default: m_axis_tdata = 8'd0;
            endcase
            
            // Transition to IDLE after last CRC byte is sent
            if (m_axis_tready && byte_counter == 3) 
                state_next = ST_IDLE;
        end

        default: begin
            ordy = 1'b1;
            cfg_tx_enable = 1'b0;
            state_next = ST_IDLE;
        end
    endcase
end

// Output assignment
assign mii_select_out = mii_select_reg;

endmodule