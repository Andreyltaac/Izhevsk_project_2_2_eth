module coder_CRC(

input        wire           clk     ,
input        wire           rst     ,

input        wire           ival    ,
input        wire           isop    ,
input        wire           idat    ,
output       reg            oreq    ,

input                       ireq    ,
output       wire           odat    ,
output       wire            oval    ,
output       wire           osop

);

localparam int NUM_BITS = 1904;


reg [11:0]        bit_counter     ;
reg [15:0]        data_trig       ;
reg [15:0]        crc             ;
reg [4:0]         crc_counter     ;
reg                val;

reg                crc_rd;
reg [4:0]          crc_rd_cnt;


assign osop = (bit_counter == 12'd16) ? 1:0; 
assign odat= (crc_rd) ?crc[15-crc_rd_cnt]:data_trig[15];


always @ (posedge clk or negedge rst) begin    
    if (~rst)
        bit_counter <= '0;
    else if (bit_counter == NUM_BITS) 
        bit_counter   <= '0;
    else if (ival&~oreq) 
        bit_counter   <= bit_counter+1'b1;
end 

always @ (posedge clk or negedge rst) begin    
    if (~rst)
        crc_counter <= '0;
    else if (oreq) 
        crc_counter   <= crc_counter+1'b1;
    else
        crc_counter <= '0;
end    

always @(posedge clk or negedge rst) begin
    if (~rst)
        oreq <= '0;
    else if (bit_counter == NUM_BITS-1) 
        oreq   <= 1;
    else if (crc_counter == 15)
        oreq   <= 0;    
end




always @ (posedge clk or negedge rst) begin    
    if (~rst)
        crc_rd_cnt <= '0;
    else if (crc_rd) 
        crc_rd_cnt   <= crc_rd_cnt+1'b1;
    else
        crc_rd_cnt <= '0;
end  

always @(posedge clk or negedge rst) begin
    if (~rst)
        crc_rd <= '0;
    else if (crc_counter == 15) 
        crc_rd   <= 1;   
    else if (crc_rd_cnt == 15)
        crc_rd   <= 0;            
end

always @(posedge clk or negedge rst) begin
    if (~rst)
        val <= '0;
    else if (bit_counter == 15) 
        val   <= 1;   
    else if (crc_rd_cnt == 15)
        val   <= 0;            
end
assign oval = (val&ival)||oreq||crc_rd;


always @ (posedge clk or negedge rst) begin    
    if (~rst) 
        crc <= 16'd0;
    else if (ival||oreq) begin
        crc<=crc<<1;
        crc[0]<=crc[15]^(idat&~oreq);
        crc[5]<=crc[15]^crc[4];
        crc[12]<=crc[15]^crc[11];
    end
    else if (crc_rd_cnt==5'd15)
        crc <= 16'd0;    
end

    
always @ (posedge clk or negedge rst) begin    
    if (~rst) begin
        data_trig <= 16'd0;
    end 
    else if (ival||oreq) begin
        data_trig       <= data_trig<< 1'b1; 
        data_trig[0]    <= idat      ;
    end
    else if (isop)
        data_trig   <= '0;    
end
    
    endmodule
