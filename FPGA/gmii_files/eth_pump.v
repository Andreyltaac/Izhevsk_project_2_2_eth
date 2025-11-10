module eth_pump #
(
parameter MII_EN = 1
)
(
// eth clk & rst
input        iclk_eth,
input        irst_eth,
//			 
input        iclk_h,
input        iclk_hh,
// из eth в модем		 
input        eth_tx_en,
input        eth_tx_er,
input  [7:0] eth_txd,
// в eth из модема
output       eth_rx_en,
output       eth_rx_er,
output [7:0] eth_rxd,
// в tx модема
output wire [7:0] m_axis_tdata_modem,
output       m_axis_tlast_modem,
input        m_axis_tready_modem,
output       m_axis_tuser_modem,
output       m_axis_tvalid_modem,
// с rx модема
input  wire [7:0] s_axis_tdata_modem,
input        s_axis_tlast_modem,
output       s_axis_tready_modem,
input        s_axis_tuser_modem,
input        s_axis_tvalid_modem,
//
output wire  axis_cobs_decode_0_m_axis_TUSER,
output wire  prog_full,
output wire  m_status_overflow
);


// Сигналы для модулей TX пути
wire [7:0] axis_gmii_rx_0_m_axis_TDATA;
wire axis_gmii_rx_0_m_axis_TLAST;
wire axis_gmii_rx_0_m_axis_TUSER;
wire axis_gmii_rx_0_m_axis_TVALID;

wire [7:0] axis_async_fifo_0_m_axis_TDATA;
wire axis_async_fifo_0_m_axis_TLAST;
wire axis_async_fifo_0_m_axis_TREADY;
wire axis_async_fifo_0_m_axis_TUSER;
wire axis_async_fifo_0_m_axis_TVALID;

wire [7:0] axis_cobs_encode_0_m_axis_TDATA;
wire axis_cobs_encode_0_m_axis_TLAST;
wire axis_cobs_encode_0_m_axis_TREADY;
wire axis_cobs_encode_0_m_axis_TUSER;
wire axis_cobs_encode_0_m_axis_TVALID;

wire [7:0] axis_data_fifo_0_M_AXIS_TDATA;
wire      axis_data_fifo_0_M_AXIS_TLAST;
wire      axis_data_fifo_0_M_AXIS_TREADY;
wire      axis_data_fifo_0_M_AXIS_TUSER;
wire      axis_data_fifo_0_M_AXIS_TVALID;

// Сигналы для модулей RX пути
wire [7:0] axis_data_fifo_1_M_AXIS_TDATA;
wire axis_data_fifo_1_M_AXIS_TLAST;
wire axis_data_fifo_1_M_AXIS_TREADY;
wire axis_data_fifo_1_M_AXIS_TUSER;
wire axis_data_fifo_1_M_AXIS_TVALID;

wire [7:0] axis_cobs_decode_0_m_axis_TDATA;
wire axis_cobs_decode_0_m_axis_TLAST;
wire axis_cobs_decode_0_m_axis_TREADY;
//////////////////////////////////////wire axis_cobs_decode_0_m_axis_TUSER;
wire axis_cobs_decode_0_m_axis_TVALID;

wire [7:0] axis_async_fifo_1_m_axis_TDATA;
wire axis_async_fifo_1_m_axis_TLAST;
wire axis_async_fifo_1_m_axis_TREADY;
wire axis_async_fifo_1_m_axis_TUSER;
wire axis_async_fifo_1_m_axis_TVALID;

wire axis_gmii_tx_0_gmii_tx_en;
wire axis_gmii_tx_0_gmii_tx_er;
wire [7:0] axis_gmii_tx_0_gmii_txd;

// Сигналы от only_rx модуля
wire [7:0] only_rx_0_m_axis_TDATA;
wire only_rx_0_m_axis_TLAST;
wire only_rx_0_m_axis_TREADY;
wire only_rx_0_m_axis_TUSER;
wire only_rx_0_m_axis_TVALID;

// Сигналы от PS7 (Zynq Processing System)
wire [7:0] sys_ps7_ENET1_GMII_TXD;
wire sys_ps7_ENET1_GMII_TX_EN;
wire sys_ps7_ENET1_GMII_TX_ER;
wire sys_ps7_FCLK_CLK2;

// Тактовые сигналы и сбросы
wire clk_wiz_1_clk_out2;
wire clk_wiz_1_clk_out3;
wire util_vector_logic_0_Res;
wire sys_cpu_resetn;

// Константные сигналы
//wire [0:0]xlconstant_0_dout;
//wire [7:0]xlconstant_1_dout;
localparam xlconstant_0_dout = 1;
localparam xlconstant_1_dout = 96;

assign sys_ps7_FCLK_CLK2 = iclk_eth;
assign sys_cpu_resetn = irst_eth;
assign util_vector_logic_0_Res = ~irst_eth; 

assign sys_ps7_ENET1_GMII_TX_EN = eth_tx_en; 
assign sys_ps7_ENET1_GMII_TX_ER = eth_tx_er;
assign sys_ps7_ENET1_GMII_TXD   = eth_txd;

assign clk_wiz_1_clk_out2 = iclk_h;
assign clk_wiz_1_clk_out3 = iclk_hh;


assign m_axis_tdata_modem             = axis_data_fifo_0_M_AXIS_TDATA;
assign m_axis_tlast_modem             = 0;//axis_data_fifo_0_M_AXIS_TLAST;
assign axis_data_fifo_0_M_AXIS_TREADY = m_axis_tready_modem;
assign m_axis_tuser_modem             = 0;//axis_data_fifo_0_M_AXIS_TUSER;
assign m_axis_tvalid_modem            = axis_data_fifo_0_M_AXIS_TVALID;


assign only_rx_0_m_axis_TDATA  = s_axis_tdata_modem;
assign only_rx_0_m_axis_TLAST  = s_axis_tlast_modem;
assign s_axis_tready_modem     = only_rx_0_m_axis_TREADY;
assign only_rx_0_m_axis_TUSER  = s_axis_tuser_modem;
assign only_rx_0_m_axis_TVALID = s_axis_tvalid_modem;

assign eth_rx_en = axis_gmii_tx_0_gmii_tx_en;
assign eth_rx_er = axis_gmii_tx_0_gmii_tx_er;
assign eth_rxd   = axis_gmii_tx_0_gmii_txd;

///////////////////////////////////////////////////////////////////////////// TX PATH

// GMII RX -> AXI-Stream преобразователь
axis_gmii_rx axis_gmii_rx_0 (
    // Тактирование и управление
    .clk(sys_ps7_FCLK_CLK2),
    .rst(util_vector_logic_0_Res),
    .cfg_rx_enable(xlconstant_0_dout),
    .clk_enable(xlconstant_0_dout),
    .mii_select(MII_EN),
    
    // GMII RX интерфейс (входные данные от PS7)
    .gmii_rx_dv(sys_ps7_ENET1_GMII_TX_EN),
    .gmii_rx_er(sys_ps7_ENET1_GMII_TX_ER),
    .gmii_rxd(sys_ps7_ENET1_GMII_TXD),
    
    // AXI-Stream выходной интерфейс
    .m_axis_tdata(axis_gmii_rx_0_m_axis_TDATA),
    .m_axis_tlast(axis_gmii_rx_0_m_axis_TLAST),
    .m_axis_tuser(axis_gmii_rx_0_m_axis_TUSER),
    .m_axis_tvalid(axis_gmii_rx_0_m_axis_TVALID),
    
    // Неиспользуемые сигналы (PTP timestamp)
    .ptp_ts(96'd0)
);

// Асинхронный FIFO для буферизации данных
axis_async_fifo axis_async_fifo_0 (
    // Тактирование и управление
    .axis_aclk(sys_ps7_FCLK_CLK2),
    .m_rst(util_vector_logic_0_Res),
    .s_rst(util_vector_logic_0_Res),
    
    // Входной AXI-Stream интерфейс (от GMII RX)
    .s_axis_tdata(axis_gmii_rx_0_m_axis_TDATA),
    .s_axis_tlast(axis_gmii_rx_0_m_axis_TLAST),
    .s_axis_tuser(axis_gmii_rx_0_m_axis_TUSER),
    .s_axis_tvalid(axis_gmii_rx_0_m_axis_TVALID),
    
    // Выходной AXI-Stream интерфейс (к COBS энкодеру)
    .m_axis_tdata(axis_async_fifo_0_m_axis_TDATA),
    .m_axis_tlast(axis_async_fifo_0_m_axis_TLAST),
    .m_axis_tuser(axis_async_fifo_0_m_axis_TUSER),
    .m_axis_tvalid(axis_async_fifo_0_m_axis_TVALID),
    .m_axis_tready(axis_async_fifo_0_m_axis_TREADY),
    
    // Неиспользуемые сигналы
    .s_axis_tdest({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
    .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
    .s_axis_tkeep(1'b1),
    .m_pause_req(1'b0),
    .s_pause_req(1'b0),
    
    .m_status_overflow()
);

// COBS энкодер (упаковка данных)
axis_cobs_encode axis_cobs_encode_0 (
    // Тактирование и управление
    .clk(sys_ps7_FCLK_CLK2),
    .rst(util_vector_logic_0_Res),
    
    // Входной AXI-Stream интерфейс (от FIFO)
    .s_axis_tdata(axis_async_fifo_0_m_axis_TDATA),
    .s_axis_tlast(axis_async_fifo_0_m_axis_TLAST),
    .s_axis_tuser(axis_async_fifo_0_m_axis_TUSER),
    .s_axis_tvalid(axis_async_fifo_0_m_axis_TVALID),
    .s_axis_tready(axis_async_fifo_0_m_axis_TREADY),
    
    // Выходной AXI-Stream интерфейс (к FIFO доменного перехода)
    .m_axis_tdata(axis_cobs_encode_0_m_axis_TDATA),
    .m_axis_tlast(axis_cobs_encode_0_m_axis_TLAST),
    .m_axis_tuser(axis_cobs_encode_0_m_axis_TUSER),
    .m_axis_tvalid(axis_cobs_encode_0_m_axis_TVALID),
    .m_axis_tready(axis_cobs_encode_0_m_axis_TREADY)
);

// FIFO для доменного перехода (PS7 clock -> другой clock домен)
axis_data_fifo_0 axis_data_fifo_0_0 (
    // Тактирование входного интерфейса (PS7 clock домен)
    .s_axis_aclk(sys_ps7_FCLK_CLK2),
    .s_axis_aresetn(sys_cpu_resetn),
    
    // Тактирование выходного интерфейса (другой clock домен)
    .m_axis_aclk(clk_wiz_1_clk_out2),
    
    // Входной AXI-Stream интерфейс (от COBS энкодера)
    .s_axis_tdata(axis_cobs_encode_0_m_axis_TDATA),
    //.s_axis_tlast(0),//axis_cobs_encode_0_m_axis_TLAST
    .s_axis_tuser(0),//axis_cobs_encode_0_m_axis_TUSER
    .s_axis_tvalid(axis_cobs_encode_0_m_axis_TVALID),
    .s_axis_tready(axis_cobs_encode_0_m_axis_TREADY),
    
    // Выходной AXI-Stream интерфейс (к получателю в другом clock домене)
    .m_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
    //.m_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
    .m_axis_tuser(axis_data_fifo_0_M_AXIS_TUSER),
    .m_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
    .m_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
    .prog_full ()
);

///////////////////////////////////////////////////////////////////////////// RX PATH

// FIFO для доменного перехода (другой clock домен -> PS7 clock)
axis_data_fifo_0 axis_data_fifo_0_1 (
    // Тактирование входного интерфейса (другой clock домен)
    .s_axis_aclk(clk_wiz_1_clk_out3),
    .s_axis_aresetn(sys_cpu_resetn),
    
    // Тактирование выходного интерфейса (PS7 clock домен)
    .m_axis_aclk(sys_ps7_FCLK_CLK2),
    
    // Входной AXI-Stream интерфейс (от only_rx модуля)
    .s_axis_tdata (only_rx_0_m_axis_TDATA),
    //.s_axis_tlast (only_rx_0_m_axis_TLAST),
    .s_axis_tuser (only_rx_0_m_axis_TUSER),
    .s_axis_tvalid(only_rx_0_m_axis_TVALID),
    .s_axis_tready(only_rx_0_m_axis_TREADY),
    
    // Выходной AXI-Stream интерфейс (к COBS декодеру)
    .m_axis_tdata(axis_data_fifo_1_M_AXIS_TDATA),
    //.m_axis_tlast(axis_data_fifo_1_M_AXIS_TLAST),
    .m_axis_tuser(axis_data_fifo_1_M_AXIS_TUSER),
    .m_axis_tvalid(axis_data_fifo_1_M_AXIS_TVALID),
    .m_axis_tready(axis_data_fifo_1_M_AXIS_TREADY),
    .prog_full (prog_full)
);

// COBS декодер (распаковка данных)
axis_cobs_decode axis_cobs_decode_0 (
    // Тактирование и управление
    .clk(sys_ps7_FCLK_CLK2),
    .rst(util_vector_logic_0_Res),
    
    // Входной AXI-Stream интерфейс (от FIFO доменного перехода)
    .s_axis_tdata(axis_data_fifo_1_M_AXIS_TDATA),
    .s_axis_tlast(0),
    .s_axis_tuser(0),
    .s_axis_tvalid(axis_data_fifo_1_M_AXIS_TVALID),
    .s_axis_tready(axis_data_fifo_1_M_AXIS_TREADY),
    
    // Выходной AXI-Stream интерфейс (к FIFO)
    .m_axis_tdata(axis_cobs_decode_0_m_axis_TDATA),
    .m_axis_tlast(axis_cobs_decode_0_m_axis_TLAST),
    .m_axis_tuser(axis_cobs_decode_0_m_axis_TUSER),
    .m_axis_tvalid(axis_cobs_decode_0_m_axis_TVALID),
    .m_axis_tready(axis_cobs_decode_0_m_axis_TREADY)
);

// Асинхронный FIFO для буферизации данных
axis_async_fifo axis_async_fifo_1 (
    // Тактирование и управление
    .axis_aclk(sys_ps7_FCLK_CLK2),
    .m_rst(util_vector_logic_0_Res),
    .s_rst(util_vector_logic_0_Res),
    
    // Входной AXI-Stream интерфейс (от COBS декодера)
    .s_axis_tdata(axis_cobs_decode_0_m_axis_TDATA),
    .s_axis_tlast(axis_cobs_decode_0_m_axis_TLAST),
    .s_axis_tuser(axis_cobs_decode_0_m_axis_TUSER),
    .s_axis_tvalid(axis_cobs_decode_0_m_axis_TVALID),
    .s_axis_tready(axis_cobs_decode_0_m_axis_TREADY),
    
    // Выходной AXI-Stream интерфейс (к GMII TX)
    .m_axis_tdata(axis_async_fifo_1_m_axis_TDATA),
    .m_axis_tlast(axis_async_fifo_1_m_axis_TLAST),
    .m_axis_tuser(axis_async_fifo_1_m_axis_TUSER),
    .m_axis_tvalid(axis_async_fifo_1_m_axis_TVALID),
    .m_axis_tready(axis_async_fifo_1_m_axis_TREADY),
    
    // Неиспользуемые сигналы
    .s_axis_tdest({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
    .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
    .s_axis_tkeep(1'b1),
    .m_pause_req(1'b0),
    .s_pause_req(1'b0),
    
    .m_status_overflow(m_status_overflow)
);

// AXI-Stream -> GMII TX преобразователь
axis_gmii_tx axis_gmii_tx_0 (
    // Тактирование и управление
    .clk(sys_ps7_FCLK_CLK2),
    .rst(util_vector_logic_0_Res),
    .cfg_tx_enable(xlconstant_0_dout),
    .clk_enable(xlconstant_0_dout),
    .cfg_ifg(xlconstant_1_dout),
    .mii_select(MII_EN),
    
    // Входной AXI-Stream интерфейс
    .s_axis_tdata(axis_async_fifo_1_m_axis_TDATA),
    .s_axis_tlast(axis_async_fifo_1_m_axis_TLAST),
    .s_axis_tuser(axis_async_fifo_1_m_axis_TUSER),
    .s_axis_tvalid(axis_async_fifo_1_m_axis_TVALID),
    .s_axis_tready(axis_async_fifo_1_m_axis_TREADY),
    
    // GMII TX интерфейс (выходные данные)
    .gmii_tx_en(axis_gmii_tx_0_gmii_tx_en),
    .gmii_tx_er(axis_gmii_tx_0_gmii_tx_er),
    .gmii_txd(axis_gmii_tx_0_gmii_txd),
    
    // Неиспользуемые сигналы (PTP timestamp)
    .ptp_ts(96'd0)
);

endmodule