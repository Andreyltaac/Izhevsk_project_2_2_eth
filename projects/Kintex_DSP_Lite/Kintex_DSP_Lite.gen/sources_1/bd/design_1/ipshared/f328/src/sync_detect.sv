module sync_detect
#(
  parameter int pDAT_W     = 12,
  parameter int pDAT_Num   = 1024,
  parameter int pSTAT_Num  = 50,
  parameter int pSTAT_Gap  = 2,
  parameter int pSTAT_step = 10,
  parameter int pVERF_Gap  = 32
)  
(
  input  logic                         iclk,
  input  logic                         ireset,
  input  logic                         iena,
  //
  input  logic                         sync_mode,
  input  logic          [11:0]         itrh_lvl,
  input  logic                         trh_auto,
  input  logic          [23:0]         frame_time,
  input  logic          [18:0]         time_sop,   
  input  logic          [pDAT_W-1 : 0] icorr,
  //
  output logic          [pDAT_W-1 : 0] ocorr_mlvl,
  output logic          [5:0]          ocorr_max_addr,
  output logic                         osop,
  //   
  output logic                         trh_hold,
  output logic          [11:0]         trh_lvl,
  output logic                         vrf_val,
  output logic                         val_sop,
  output logic                         osop_vrf
          
);
localparam int cWind = 32;

logic           [5:0]          max_cnt;
logic           [5:0]          max_addr;
logic	        [pDAT_W-1 : 0] max_lvl;
logic           [1:0]          trh_trig;

//logic           [11:0]         trh_lvl;
logic           [11:0]         trh_lvl_upd;
logic           [1:0]          trh_auto_rg;
logic                          sync_mode_rg;
logic           [7:0]          ostat_0;
logic                          st_oval_0;
logic           [7:0]          stat_num;
logic           [18:0]         vrf_time_sop;

logic [18:0] cnt_time_sop;
logic        count_time_en;
logic [7:0]  ostat_1;
logic        st_oval_1;
logic        vrf_hold;
logic [23:0] watchdog_cnt;


assign osop_vrf     = osop & val_sop; 
assign osop         = ~trh_trig[0] && trh_trig[1];
assign sync_mode_stb = sync_mode && ~sync_mode_rg;
assign trh_lvl      = (trh_auto)? trh_lvl_upd:itrh_lvl;	
assign vrf_val      = vrf_hold && trh_hold;
assign stat_num     = (sync_mode)? 8'd25:8'd50;	
assign vrf_time_sop = (sync_mode)? time_sop<<1 : {1'b0,time_sop};
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
				else 
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
		//------------------------------------------------------------------------------------------------------
  //--AUTO_TRESHOLD_LEVEL
  //------------------------------------------------------------------------------------------------------
        always_ff @ (posedge iclk or negedge ireset) begin
			if	(~ireset)
				trh_auto_rg <= 2'd0;
			    else  
				begin
				trh_auto_rg[0] <= trh_auto;
                trh_auto_rg[1] <= trh_auto_rg[0];				
				end			
		end	
		
		always_ff @ (posedge iclk or negedge ireset) begin
			if	(~ireset)
				sync_mode_rg <= 1'd0;
			    else  
				begin
				sync_mode_rg <= sync_mode;              		
				end			
		end	
		
		always_ff @ (posedge iclk or negedge ireset) begin
			if	(~ireset)
				watchdog_cnt <= '0;
				else if	(~trh_auto_rg[0] || osop) watchdog_cnt <= '0;
		             else if (trh_auto_rg[0]) watchdog_cnt <= watchdog_cnt + 24'd1;	 
		end		
		
		
	sync_stat
   #(
    .pTM_W     (24),
    .pST_W     (8)
    )
	sync_stat_sub_0
    (	
	.iclk 	   (iclk),
	.ireset	   (ireset),
    .iena      (trh_auto),
	.isop      (osop),
    .frame_time(frame_time),    
    .ostat     (ostat_0),
    .oval      (st_oval_0)

    );	
		
		
	always_ff @ (posedge iclk or negedge ireset) begin
			if	(~ireset)
			    begin
				trh_lvl_upd <= 12'd0;
				trh_hold <= 1'd0;		
			    end	
				else if (trh_auto)
                begin				
			    if (trh_auto_rg[0] && ~trh_auto_rg[1]) trh_lvl_upd <= itrh_lvl; 
				   else if (watchdog_cnt == frame_time)  trh_lvl_upd <= 12'd140;
			         else if (st_oval_0 && (ostat_0 < (stat_num-8'd2)) && trh_lvl_upd > 12'd140) 
					 begin 
					 trh_lvl_upd <= trh_lvl_upd - pSTAT_step;
                     trh_hold <= 1'd0;					 
                     end					 
			         else if (st_oval_0 && (ostat_0 > (stat_num+8'd2))) 
				         begin
					     trh_lvl_upd <= trh_lvl_upd + pSTAT_step;	
                         trh_hold <= 1'd0;					 
                         end
						 else if (st_oval_0) trh_hold <= 1'd1;
		        end
			    else trh_hold <= 1'd0;     						 
		end
		
		//------------------------------------------------------------------------------------------------------
  //--synchronization verification 
  //------------------------------------------------------------------------------------------------------	
	
	   	
		
		 always_ff @ (posedge iclk or negedge ireset) begin
			if	(~ireset)
				count_time_en <= 1'b0;
			    else if	(~trh_auto) count_time_en <= 1'b0;
			       else if (osop)  count_time_en <= 1'b1;
   		end	
		
		 always_ff @ (posedge iclk or negedge ireset) begin
			if	(~ireset)
				cnt_time_sop <= 19'd0;
			    else if	((cnt_time_sop == vrf_time_sop) || (osop && (~trh_hold || ~vrf_hold)) || (osop_vrf)) cnt_time_sop <= 19'd0;			
			       else if (count_time_en) cnt_time_sop <= cnt_time_sop + 19'd1;							
		end
		
		 always_ff @ (posedge iclk or negedge ireset) begin
			if	(~ireset)
				val_sop <= 1'b0;
			    else if	(~trh_auto || (cnt_time_sop == pVERF_Gap)) val_sop <= 1'b0;
			       else if (cnt_time_sop == vrf_time_sop - pVERF_Gap)  val_sop <= 1'b1;
		   
		end	
		
    sync_stat
   #(
    .pTM_W     (24),
    .pST_W     (8)
    )
	sync_stat_sub_1
    (	
	.iclk 	   (iclk),
	.ireset	   (ireset),
    .iena      (trh_auto),
	
	.isop      (osop_vrf),
    .frame_time(frame_time),    
    .ostat     (ostat_1),
    .oval      (st_oval_1)

    );
		
		
	always_ff @ (posedge iclk or negedge ireset) begin
			if	(~ireset)
			    begin
			    vrf_hold <= 8'd0;		
			    end	
				else if (trh_auto)
                begin				
			    if (st_oval_1 && ((ostat_1 < (stat_num-pSTAT_Gap)) || (ostat_1 > (stat_num+pSTAT_Gap))) || sync_mode_stb) vrf_hold <= 8'd0; 
                    else if (st_oval_1) vrf_hold <= 8'd1;	    
				end
			    else vrf_hold <= 8'd0;
               						 
		end
		
		
endmodule
		  