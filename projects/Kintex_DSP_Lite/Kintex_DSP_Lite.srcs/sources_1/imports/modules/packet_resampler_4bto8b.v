// from EthernetLite to AuroraTx
// 25 MHz -> 60 MHz



module packet_resampler_4bto8b#( parameter DATA_WIDTH = 4,
                        parameter WATCHDOG_MAX_COUNT = 25 )
   (
    input   clk_in,
    input   clk_out,
    input   rst_n,
    input   enable_in,
    input   [DATA_WIDTH-1:0] data_in,

    output  enable_out,
    output  [DATA_WIDTH-1+4:0] data_out, // level signal

    output  [10:0] wcount_in,
//    output  [10:0] wcount_out,
    output  [2:0]  wphase_rx
//    output  [1:0]  wphase_tx,
//    output  wwfifo_tx_comlite

);
//--------------------------------------------------------
reg     [10:0]  count_in;
reg     [10:0]  rx_addr;
assign  wcount_in = count_in;

reg     [10:0]  count_out;
//assign  wcount_out = count_out;

reg     [10:0]  max_rx_cnt;
wire    [10:0]  wmax_rx_cnt;

reg     [2:0]   phase_rx;
assign  wphase_rx = phase_rx;

reg     [1:0]   phase_tx;

reg     enable_out_r;

//reg     [DATA_WIDTH-1:0]    ram_data [0:2047]; // in bram
reg     [DATA_WIDTH-1:0]    data_out_reg;
wire    [DATA_WIDTH-1:0]    wdata_out_reg;
reg     fifo_is_loaded;
wire    wfifo_is_loaded;

reg     fifo_tx_complite;
wire    wfifo_tx_comlite;
wire    wfifo_tx_loaded;

reg     fifo_tx_start;
wire    wtx_en;

wire    enable_inA;
wire    enable_inB;


assign enable_inA = ~count_in[0];
assign enable_inB =  count_in[0];

//module bram_two_clocks ( clkA, clkB, enWR, enRD, weA, weB, addrA, addrB, dinA, doutB );
bram2x_two_clocks bram (
        .clkA( clk_in ),
        .clkB( clk_out ),
        .enWR( enable_in ),
        .enRD( wtx_en ),
        .weA(  enable_inA ),
        .weB(  enable_inB ),
        .addrA ( rx_addr ),
        .addrB ( count_out ),
        .dinA  ( data_in ),
        .doutB ( data_out )
);

assign wdata_out_reg = data_out_reg;
//--------------------------------------------------------
 // - a clock domain generation input signals
//--------------------------------------------------------
assign wfifo_tx_comlite = fifo_tx_complite;
reg fifo_tx_transmited;
reg fifo_tx_transmited_p;

always @( posedge clk_in ) begin
    fifo_tx_transmited_p  <= wfifo_tx_comlite;
    fifo_tx_transmited    <= fifo_tx_transmited_p;
end


wire wfifo_tx_started;
assign wfifo_tx_started = fifo_tx_start;
reg fifo_tx_started;
reg fifo_tx_started_p;

always @( posedge clk_in ) begin
    fifo_tx_started_p  <= wfifo_tx_started;
    fifo_tx_started    <= fifo_tx_started_p;
end


reg     [19:0]  rx_watchdog_cnt;

always @( posedge clk_in or negedge rst_n )begin
    if(!rst_n) begin
        count_in        <= 11'b0;
        rx_addr         <= 11'b0;
        fifo_is_loaded  <= 1'b0;
        phase_rx        <= 3'b0;
        max_rx_cnt      <= 11'b0;
        rx_watchdog_cnt <= 20'b0;
    end
    else begin
    case ( phase_rx )
        3'b000 : begin                  /// loading fifo to tx
            if ( enable_in == 1'b1 ) begin // detected enable
                //ram_data[count_in] <= data_in;
                count_in    <= count_in + 1; //
                phase_rx    <= 3'b001;
                rx_watchdog_cnt <= 20'b0;
            end
        end
        3'b111 : begin
                //ram_data[count_in]  <= data_in;
                count_in   <= count_in + 1; //
            //if ( enable_in == 1'b0) begin //
                phase_rx   <= 3'b001;
            //end
        end

        3'b001 : begin
                //ram_data[count_in]  <= data_in;
                count_in   <= count_in + 1; //
                rx_addr    <= rx_addr + 1;

            if ( enable_in == 1'b0) //begin //
                phase_rx   <= 3'b010;
            else
                phase_rx   <= 3'b111;
            //end
        end
        3'b010 : begin
                if ( count_in >= 8 ) // was in job 32
                    phase_rx   <= 3'b011;   // true packet
                else
                    phase_rx   <= 3'b110;   // glitch packet
        end
        3'b011 : begin
                fifo_is_loaded <= 1'b1;
                //max_rx_cnt      <= count_in;
                max_rx_cnt      <= rx_addr;

                phase_rx        <= 3'b100;
                rx_watchdog_cnt <= 20'b0;
        end
        3'b100 : begin
            if ( fifo_tx_started == 1'b1 ) begin
                fifo_is_loaded  <= 1'b0;
                phase_rx        <= 3'b101;
                rx_watchdog_cnt <= 20'b0;
            end

            rx_watchdog_cnt = rx_watchdog_cnt + 1;
            if( rx_watchdog_cnt >= WATCHDOG_MAX_COUNT ) begin
                fifo_is_loaded  <= 1'b0;
                phase_rx        <= 3'b000;
                count_in        <= 0;
                rx_addr         <= 11'b0;
            end
        end
        3'b101 : begin
            if ( fifo_tx_transmited == 1'b1 ) begin
                phase_rx        <= 3'b000;
                //max_rx_cnt      <= 11'b0;
                count_in        <= 0;
                rx_addr         <= 11'b0;
            end

            rx_watchdog_cnt = rx_watchdog_cnt + 1;
            if( rx_watchdog_cnt >= WATCHDOG_MAX_COUNT ) begin
                phase_rx        <= 3'b000;
                fifo_is_loaded  <= 1'b0;
                count_in        <= 0;
                rx_addr         <= 11'b0;
                rx_watchdog_cnt <= 0;
            end
        end
        3'b110 : begin
                phase_rx        <= 3'b000;
                fifo_is_loaded  <= 1'b0;
                count_in        <= 0;
                rx_addr         <= 11'b0;
                rx_watchdog_cnt <= 0;
        end
    endcase
    end
    //else if( )
end


//--------------------------------------------------------
// - Exhibition signal synchronization tx signals
//--------------------------------------------------------
assign  wfifo_is_loaded = fifo_is_loaded;
reg     fifo_tx_loaded;
reg     fifo_tx_loaded_pred;

assign wfifo_tx_loaded = fifo_tx_loaded;


always @( posedge clk_out ) begin
    fifo_tx_loaded_pred <= wfifo_is_loaded;
    fifo_tx_loaded      <= fifo_tx_loaded_pred;
end


assign  wmax_rx_cnt = max_rx_cnt;
reg     [10:0] max_tx_cnt;
reg     [10:0] max_tx_cnt_pred;

always @( posedge clk_out ) begin
    max_tx_cnt_pred <= wmax_rx_cnt;
    max_tx_cnt      <= max_tx_cnt_pred;
end

reg     tx_en;
wire wtx_en0 = tx_en;

assign wtx_en = tx_en | wfifo_tx_loaded;

always @( posedge clk_out or negedge rst_n )begin
    if(!rst_n) begin
        count_out        <= 11'b0;
        data_out_reg     <= 4'b0;
        fifo_tx_complite <= 1'b0;
        phase_tx         <= 2'b0;
        fifo_tx_start    <= 1'b0;
        enable_out_r     <= 1'b0;
        tx_en            <= 1'b0;
    end
    else begin
    case ( phase_tx )
        2'b00 : begin                           /// wait fifo to tx
            if ( fifo_tx_loaded == 1'b1 ) begin // detected fifo is loaded
                //data_out_reg <= ram_data[count_out];
                count_out <= count_out + 1;     //
                phase_tx        <= 2'b01;
                fifo_tx_start   <= 1'b1;
                enable_out_r    <= 1'b1;        //???
                tx_en <= 1;
            end
        end
        2'b01 : begin
                //data_out_reg <= ram_data[count_out];
                count_out <= count_out + 1;     //
            if ( count_out == max_tx_cnt - 1 ) begin
                enable_out_r     <= 0;
                count_out        <= 0;
                fifo_tx_complite <= 1;
                phase_tx         <= 2'b10;
                fifo_tx_start    <= 1'b0;
            end
            if( count_out == max_tx_cnt - 1 ) begin
                tx_en <= 0;
            end
        end
        2'b10 : begin
            //if ( fifo_tx_complite == 1'b1 ) begin

                phase_tx        <= 2'b11;
                data_out_reg    <= 0;
            //end
        end
        2'b11 : begin
            //if ( fifo_tx_complite == 1'b1 ) begin
                phase_tx         <= 2'b00;
                fifo_tx_complite <= 1'b0;
            //end
        end
    endcase
    end
end

assign enable_out = enable_out_r;
endmodule


module bram2x_two_clocks ( clkA, clkB, enWR, enRD, weA, weB, addrA, addrB, dinA, doutB );
        input  clkA, clkB, enWR, enRD, weA, weB;
        input  [10:0]  addrA, addrB;
        input  [3:0] dinA;
        output [7:0] doutB;
        reg [3:0] ramA [0:2047];
        reg [3:0] ramB [0:2047];
        reg [7:0] doutB;

    always @(posedge clkA)
    begin
        if ( enWR )
        begin
            if ( weA ) begin
                ramA[addrA] <= dinA;
            end
            if ( weB ) begin
                ramB[addrA] <= dinA;
            end
        end
    end

    always @(posedge clkB)
    begin
        if ( enRD )
        begin
            doutB[7:4] <= ramB[addrB];
            doutB[3:0] <= ramA[addrB];
        end
    end
endmodule

