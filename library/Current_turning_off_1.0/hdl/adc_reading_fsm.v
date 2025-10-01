`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////////////
// This FSM is intended for reading ADC (ADS7841 TI) data from channel#0 to channel#4
//////////////////////////////////////////////////////////////////////////////////////////


module adc_reading_fsm #(
    parameter SPI_MODE = 0,
    parameter CLKS_PER_HALF_BIT = 32)
    (
    // Control/Data Signals,
    input           i_Rst_L,            // FPGA Reset
    input           i_Clk,              // FPGA Clock
    
    // SPI Interface
    output          o_SPI_Clk,
    input           i_SPI_MISO,
    output          o_SPI_MOSI,
    output          o_SPI_CS_n,
    
    // ADC output value
    output [11:0]   adc_data_ch0,
    output [11:0]   adc_data_ch1,
    output [11:0]   adc_data_ch2,
    output [11:0]   adc_data_ch3,
    
    output          adc_valid_ch0,
    output          adc_valid_ch1,
    output          adc_valid_ch2,
    output          adc_valid_ch3
    
    // Signals for debug
//    output [3:0]    State,
//    output [7:0]    TX_Byte,
//    output          TX_DV,
//    output          TX_Ready,
//    output [7:0]    RX_Byte,
//    output          RX_DV,
//    output [7:0]    RX_Byte_tmp
    );
    
    // Local parameters for ADC controls
    localparam C_SELECT_CH0     = 8'h9F;    // control byte for ADC channel 0 selection
    localparam C_SELECT_CH1     = 8'hDF;    // control byte for ADC channel 1 selection
    localparam C_SELECT_CH2     = 8'hAF;    // control byte for ADC channel 2 selection
    localparam C_SELECT_CH3     = 8'hEF;    // control byte for ADC channel 3 selection
    
    // Local parameters for states
    localparam ADC_SPI_DISABLE  = 4'b0000;      // spi transfer disable
    localparam ADC_CTRL_WR_CH0  = 4'b0001;      // write control byte to ADC          (channel#0)
    localparam ADC_HIGH_RD_CH0  = 4'b0010;      // read ADC data (high bits [11:5])   (channel#0)
    localparam ADC_LOW_RD_CH0   = 4'b0011;      // read ADC data (low bits [4:0])     (channel#0)
    localparam ADC_CTRL_WR_CH1  = 4'b0100;      // write control byte to ADC          (channel#1)
    localparam ADC_HIGH_RD_CH1  = 4'b0101;      // read ADC data (high bits [11:5])   (channel#1)
    localparam ADC_LOW_RD_CH1   = 4'b0110;      // read ADC data (low bits [4:0])     (channel#1)
    localparam ADC_CTRL_WR_CH2  = 4'b0111;      // write control byte to ADC          (channel#2)
    localparam ADC_HIGH_RD_CH2  = 4'b1000;      // read ADC data (high bits [11:5])   (channel#2)
    localparam ADC_LOW_RD_CH2   = 4'b1001;      // read ADC data (low bits [4:0])     (channel#2)
    localparam ADC_CTRL_WR_CH3  = 4'b1010;      // write control byte to ADC          (channel#3)
    localparam ADC_HIGH_RD_CH3  = 4'b1011;      // read ADC data (high bits [11:5])   (channel#3)
    localparam ADC_LOW_RD_CH3   = 4'b1100;      // read ADC data (low bits [4:0])     (channel#3)
    
    // Wires
    wire        TX_Ready;
    wire [7:0]  RX_Byte;
    wire        RX_DV;
    wire [7:0]  RX_Byte_tmp;
  
    // Registers
    reg [11:0]  adc_data_ch0_reg = 12'd0;
    reg [11:0]  adc_data_ch1_reg = 12'd0;
    reg [11:0]  adc_data_ch2_reg = 12'd0;
    reg [11:0]  adc_data_ch3_reg = 12'd0;

    reg [11:0]  adc_valid_ch0_reg = 12'd0;
    reg [11:0]  adc_valid_ch1_reg = 12'd0;
    reg [11:0]  adc_valid_ch2_reg = 12'd0;
    reg [11:0]  adc_valid_ch3_reg = 12'd0;
    
    reg         CS_n_reg        = 1'b1;
    
    reg [3:0]   State_reg       = 4'b0000;
    reg [7:0]   TX_Byte_reg     = 8'h00;
    reg         TX_DV_reg       = 1'b0;
    reg [7:0]   RX_Byte_tmp_reg = 8'h00;
    
   
    // Instantiate Master
    spi_master #(
        .SPI_MODE           (SPI_MODE),
        .CLKS_PER_HALF_BIT  (CLKS_PER_HALF_BIT)
    ) spi_master_inst (
        // Control/Data Signals,
        .i_Rst_L        (i_Rst_L),      // FPGA Reset
        .i_Clk          (i_Clk),        // FPGA Clock
           
        // TX (MOSI) Signals
        .i_TX_Byte      (TX_Byte_reg),  // Byte to transmit
        .i_TX_DV        (TX_DV_reg),    // Data Valid Pulse 
        .o_TX_Ready     (TX_Ready),     // Transmit Ready for Byte
           
        // RX (MISO) Signals
        .o_RX_DV        (RX_DV),        // Data Valid pulse (1 clock cycle)
        .o_RX_Byte      (RX_Byte),      // Byte received on MISO
        
        // SPI Interface
        .o_SPI_Clk      (o_SPI_Clk),
        .i_SPI_MISO     (i_SPI_MISO),
        .o_SPI_MOSI     (o_SPI_MOSI)
    );


    // Purpose: Control CS line using State Machine
    always @(posedge i_Clk or negedge i_Rst_L)
    begin
        if (~i_Rst_L)
        begin
            CS_n_reg    <= 1'b1;            // Resets to high
            State_reg   <= ADC_SPI_DISABLE;
        end
        else
        begin
            case (State_reg)      
                ADC_SPI_DISABLE:
                begin
                    if (TX_Ready == 1'b1)
                    begin
                        CS_n_reg    <= 1'b0;            // Drive CS low
                        TX_Byte_reg <= C_SELECT_CH0;
                        TX_DV_reg   <= 1'b1;
                        State_reg   <= ADC_CTRL_WR_CH0;
                    end
                end
                
                ADC_CTRL_WR_CH0:
                begin
                    if (TX_DV_reg == 1'b1)
                        TX_DV_reg <= 1'b0;
                    else
                    begin                    
                        if (TX_Ready == 1'b1)
                        begin
                            TX_Byte_reg <= 8'h00;
                            TX_DV_reg   <= 1'b1;
                            State_reg   <= ADC_HIGH_RD_CH0;
                        end
                    end
                end
                
                ADC_HIGH_RD_CH0:
                begin
                    if (TX_DV_reg == 1)
                        TX_DV_reg <= 1'b0;
                    else
                    begin
                        if (TX_Ready == 1'b1)
                        begin
                            TX_Byte_reg <= 8'h00;
                            TX_DV_reg   <= 1'b1;
                            State_reg   <= ADC_LOW_RD_CH0;
                        end
                    end

                    if (RX_DV == 1'b1)                  // Read byte from ADC
                        RX_Byte_tmp_reg <= RX_Byte;
                end
                
                ADC_LOW_RD_CH0:
                begin
                    if (TX_DV_reg == 1)
                        TX_DV_reg <= 1'b0;
                    else
                    begin
                        if (TX_Ready == 1'b1)
                        begin
                            TX_Byte_reg <= C_SELECT_CH1;
                            TX_DV_reg   <= 1'b1;
                            State_reg   <= ADC_CTRL_WR_CH1;
                        end
                    end
                    
                    if (RX_DV == 1'b1)                  // Read byte from ADC
                    begin
                        adc_data_ch0_reg    <= {RX_Byte_tmp_reg[6:0], RX_Byte[7:3]};
                        adc_valid_ch0_reg   <= 1'b1;
                    end
                    else
                        adc_valid_ch0_reg   <= 1'b0;
                end
                
                ADC_CTRL_WR_CH1:
                begin
                    if (TX_DV_reg == 1'b1)
                        TX_DV_reg <= 1'b0;
                    else
                    begin                    
                        if (TX_Ready == 1'b1)
                        begin
                            TX_Byte_reg <= 8'h00;
                            TX_DV_reg   <= 1'b1;
                            State_reg   <= ADC_HIGH_RD_CH1;
                        end
                    end
                end
                                
                ADC_HIGH_RD_CH1:
                begin
                    if (TX_DV_reg == 1)
                        TX_DV_reg <= 1'b0;
                    else
                    begin
                        if (TX_Ready == 1'b1)
                        begin
                            TX_Byte_reg <= 8'h00;
                            TX_DV_reg   <= 1'b1;
                            State_reg   <= ADC_LOW_RD_CH1;
                        end
                    end

                    if (RX_DV == 1'b1)                  // Read byte from ADC
                        RX_Byte_tmp_reg <= RX_Byte;
                end
                
                ADC_LOW_RD_CH1:
                begin
                    if (TX_DV_reg == 1)
                        TX_DV_reg <= 1'b0;
                    else
                    begin
                        if (TX_Ready == 1'b1)
                        begin
                            TX_Byte_reg <= C_SELECT_CH2;
                            TX_DV_reg   <= 1'b1;
                            State_reg   <= ADC_CTRL_WR_CH2;
                        end
                    end
                    
                    if (RX_DV == 1'b1)                  // Read byte from ADC
                    begin
                        adc_data_ch1_reg    <= {RX_Byte_tmp_reg[6:0], RX_Byte[7:3]};
                        adc_valid_ch1_reg   <= 1'b1;
                    end
                    else
                        adc_valid_ch1_reg   <= 1'b0;
                end
                
                ADC_CTRL_WR_CH2:
                begin
                    if (TX_DV_reg == 1'b1)
                        TX_DV_reg <= 1'b0;
                    else
                    begin                    
                        if (TX_Ready == 1'b1)
                        begin
                            TX_Byte_reg <= 8'h00;
                            TX_DV_reg   <= 1'b1;
                            State_reg   <= ADC_HIGH_RD_CH2;
                        end
                    end
                end
                                
                ADC_HIGH_RD_CH2:
                begin
                    if (TX_DV_reg == 1)
                        TX_DV_reg <= 1'b0;
                    else
                    begin
                        if (TX_Ready == 1'b1)
                        begin
                            TX_Byte_reg <= 8'h00;
                            TX_DV_reg   <= 1'b1;
                            State_reg   <= ADC_LOW_RD_CH2;
                        end
                    end

                    if (RX_DV == 1'b1)                  // Read byte from ADC
                        RX_Byte_tmp_reg <= RX_Byte;
                end
                
                ADC_LOW_RD_CH2:
                begin
                    if (TX_DV_reg == 1)
                        TX_DV_reg <= 1'b0;
                    else
                    begin
                        if (TX_Ready == 1'b1)
                        begin
                            TX_Byte_reg <= C_SELECT_CH3;
                            TX_DV_reg   <= 1'b1;
                            State_reg   <= ADC_CTRL_WR_CH3;
                        end
                    end
                    
                    if (RX_DV == 1'b1)                  // Read byte from ADC
                    begin
                        adc_data_ch2_reg    <= {RX_Byte_tmp_reg[6:0], RX_Byte[7:3]};
                        adc_valid_ch2_reg   <= 1'b1;
                    end
                    else
                        adc_valid_ch2_reg   <= 1'b0;
                end
                
                ADC_CTRL_WR_CH3:
                begin
                    if (TX_DV_reg == 1'b1)
                        TX_DV_reg <= 1'b0;
                    else
                    begin                    
                        if (TX_Ready == 1'b1)
                        begin
                            TX_Byte_reg <= 8'h00;
                            TX_DV_reg   <= 1'b1;
                            State_reg   <= ADC_HIGH_RD_CH3;
                        end
                    end
                end
                                
                ADC_HIGH_RD_CH3:
                begin
                    if (TX_DV_reg == 1)
                        TX_DV_reg <= 1'b0;
                    else
                    begin
                        if (TX_Ready == 1'b1)
                        begin
                            TX_Byte_reg <= 8'h00;
                            TX_DV_reg   <= 1'b1;
                            State_reg   <= ADC_LOW_RD_CH3;
                        end
                    end

                    if (RX_DV == 1'b1)                  // Read byte from ADC
                        RX_Byte_tmp_reg <= RX_Byte;
                end
                
                ADC_LOW_RD_CH3:
                begin
                    if (TX_DV_reg == 1)
                        TX_DV_reg <= 1'b0;
                    else
                    begin
                        if (TX_Ready == 1'b1)
                        begin
                            TX_Byte_reg <= C_SELECT_CH0;
                            TX_DV_reg   <= 1'b1;
                            State_reg   <= ADC_CTRL_WR_CH0;
                        end
                    end
                    
                    if (RX_DV == 1'b1)                  // Read byte from ADC
                    begin
                        adc_data_ch3_reg    <= {RX_Byte_tmp_reg[6:0], RX_Byte[7:3]};
                        adc_valid_ch3_reg   <= 1'b1;
                    end
                    else
                        adc_valid_ch3_reg   <= 1'b0;
                end
                
                default:
                begin
                    CS_n_reg    <= 1'b1;   // Resets to high
                    State_reg   <= ADC_SPI_DISABLE;
                end
            endcase
        end
    end
    
    // Assingments
    assign o_SPI_CS_n   = CS_n_reg;
    
    assign adc_data_ch0  = adc_data_ch0_reg;
    assign adc_data_ch1  = adc_data_ch1_reg;
    assign adc_data_ch2  = adc_data_ch2_reg;
    assign adc_data_ch3  = adc_data_ch3_reg;
    
    assign adc_valid_ch0  = adc_valid_ch0_reg;
    assign adc_valid_ch1  = adc_valid_ch1_reg;
    assign adc_valid_ch2  = adc_valid_ch2_reg;
    assign adc_valid_ch3  = adc_valid_ch3_reg;
    
    
    // Assignments for debug
//    assign State        = State_reg;
//    assign TX_Byte      = TX_Byte_reg;
//    assign TX_DV        = TX_DV_reg;
//    assign RX_Byte_tmp  = RX_Byte_tmp_reg;
    
    
endmodule
