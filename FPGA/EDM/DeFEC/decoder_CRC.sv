module decoder_CRC
(
input		wire			    clk         ,
input		wire			    rst         ,

input		wire			    ival        ,
input		wire 			    data_in     ,

output	    wire				decod_data  ,
output	    wire				oval_data   ,
output	    wire				osop        ,
output	    wire				oeop        ,
output	    wire				errors      ,
output	    wire				err_val
);

localparam  int NUM_BITS = 1904;

wire	    en_in_r;
reg [11:0] 	reg_counter;
reg [15:0] 	crc;
reg [15:0] 	ost;

assign en_in_r = ival;	
assign osop = (en_in_r)&(reg_counter == 12'd0);
assign oeop = (en_in_r)&(reg_counter == (NUM_BITS-1));//2922
assign oval_data = ((en_in_r)&(reg_counter < NUM_BITS));//2923


	
always @ (posedge clk or negedge rst)
	begin	
		if (~rst)
	
			reg_counter <= 12'd0;
		
		else if	(en_in_r) reg_counter   <= (reg_counter == (NUM_BITS + 15))? 0 : reg_counter+1'b1;//2959
	end

	
	always @ (posedge clk or negedge rst)
	begin	
		if (~rst)
		begin
			crc <= 16'd0;
		end
		else if (en_in_r&(reg_counter < (NUM_BITS+15)))//2938
	   begin
			crc<=crc<<1;
			crc[0]<=crc[15]^(data_in);
			crc[5]<=crc[15]^crc[4];
			crc[12]<=crc[15]^crc[11];
		end
		else if (en_in_r&(reg_counter == (NUM_BITS + 15)))//2938
	   begin
			ost<=crc<<1;
			ost[0]<=crc[15]^(data_in);
			ost[1]<=crc[0];
			ost[2]<=crc[1];
			ost[3]<=crc[2];
			ost[4]<=crc[3];
			ost[5]<=crc[15]^crc[4];
			ost[6]<=crc[5];
			ost[7]<=crc[6];
			ost[8]<=crc[7];
			ost[9]<=crc[8];
			ost[10]<=crc[9];
			ost[11]<=crc[10];
			ost[12]<=crc[15]^crc[11];
			ost[13]<=crc[12];
			ost[14]<=crc[13];
			ost[15]<=crc[14];
			crc<=16'd0;
		end
		else
		   ost<=16'd0;
	end
	
	assign decod_data = data_in&(reg_counter >= 12'd0)&(reg_counter <= (NUM_BITS - 1))&(en_in_r);//2922
	
	assign err_val = en_in_r&(reg_counter == (NUM_BITS + 15));
	assign errors  =(ost==0)?1'b0:1'b1;	
	
	

endmodule
