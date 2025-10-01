module sync_detect
#(
  parameter int pDAT_W    = 12,
  parameter int pDAT_Num  = 2048
)  
(
  input  logic                         iclk,
  input  logic                         ireset,
  input  logic                         iena,
  //
  input  logic          [11:0]         trh_lvl,
  input  logic          [pDAT_W-1 : 0] icorr,
  //
  output logic          [pDAT_W-1 : 0] ocorr_mlvl,
  output logic          [6:0]          ocorr_max_addr,
  output logic                         osop   
  
  
);
localparam int cWind = 32;

logic           [6:0]          max_cnt;
logic           [6:0]          max_addr;
logic	        [pDAT_W-1:0]   max_lvl;
logic           [1:0]          trh_trig;

assign osop = ~trh_trig[0] && trh_trig[1];
	
  //------------------------------------------------------------------------------------------------------
  //--TRESHOLD_DETECT
  //------------------------------------------------------------------------------------------------------
	always_ff @ (posedge iclk or negedge ireset) begin
			if	(~ireset)
			begin
				trh_trig <= '0;
			    ocorr_mlvl <= '0;
				ocorr_max_addr <='0;
			end	
				begin
			    if((icorr > trh_lvl) && ~trh_trig[0] && iena) trh_trig[0] <= '1;
            	   else if	((max_cnt == cWind && trh_trig[0]) || ~iena) 
				   begin
				   trh_trig[0] <= '0;
				   ocorr_mlvl     <= max_lvl;
			       ocorr_max_addr <= max_addr;
             	   end
				trh_trig[1] <= trh_trig[0];		
				end   
		end
		
				
    always_ff @ (posedge iclk or negedge ireset) begin
			if	(~ireset)
				max_cnt <= '0;
			    else if	(~trh_trig[0]) max_cnt <= '0;
			       else if (trh_trig[0]) max_cnt <= max_cnt + 6'd1;							
		end		
	
	always_ff @ (posedge iclk or negedge ireset) begin
			if	(~ireset)
			begin
				max_lvl  <= '0;
				max_addr <= '0;
			end
			    else if	(~trh_trig[0]) max_lvl <= '0;	
				   else if	(icorr > max_lvl) 
				   begin
				   max_lvl <= icorr;
				   max_addr <= max_cnt;
                   end				   
		end	
		
endmodule
		  