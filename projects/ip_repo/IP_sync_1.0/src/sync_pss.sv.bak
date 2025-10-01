module sync_pss
#(
  parameter int pDAT_W    = 12,
  parameter int pDAT_Num  = 1024
)  
(
  input  logic                         iclk,
  input  logic                         ireset,
  input  logic                         iena,
  input  logic                         isop,
  //
  input  logic          [23:0]         str_frame_count,
  input  logic          [31:0]         idata_ctrl,
  input  logic                         iclk_axi,
  input  logic                         ival_axi,
  input  logic          [1:0]          addr_axi,
  input  logic          [3:0]          data_axi,
  //
  input  logic                         ireq_data,
  input  logic                         iready_buff,
  input  logic   signed [pDAT_W-1 : 0] idata_I,
  input  logic   signed [pDAT_W-1 : 0] idata_Q,
  //
  input  logic   signed [pDAT_W-1 : 0] odata_I,
  input  logic   signed [pDAT_W-1 : 0] odata_Q,
  //
  output logic                         oena,
  output logic          [pDAT_W-1 : 0] odata_corr,
  output logic          [pDAT_W-1 : 0] odata_mlvl,
  output logic                         osop_sync,
  output logic                         osop_buff,
  output logic                         oready_corr_wr,
   //
  output logic                         trh_hold,
  output logic                         vrf_val,
  output logic                         val_sop,
  output logic           [31:0]        ostat_data,
  output logic                         str_frame,
  output logic           [11:0]        otrh_lvl
  
);

  logic        sync_data_I;
  logic        sync_data_Q;
//
  logic [71:0] pss_odat;
  logic [10:0] pss_addr;
  logic [1:0]  pss_init;
  logic        pss_ready; 
  logic [10:0] pss_addr_cnt; 
  
//
  logic signed [12:0]   odata_corr_0;
  logic signed [12:0]   odata_corr_1;
  logic [pDAT_W-1 : 0]  ocorr_mlvl_0;
  logic [pDAT_W-1 : 0]  ocorr_mlvl_1;
  logic [5:0]  ocorr_maddr0;
  logic [5:0]  ocorr_maddr1;
 //
  logic        osop_all;
  
  
  logic [1:0]  corr_str_rg;
  logic        corr_str_fr;
 
  logic [6:0]  I1_pos_ram;
  logic [6:0]  Q1_pos_ram;
  logic [6:0]  I2_pos_ram;
  logic [6:0]  Q2_pos_ram;
 
  logic [10:0] ocorr_maddr;
  logic [6:0]  win_cnt;
  logic        swap_ff;
  
  logic [11:0] fft_size;
  logic [11:0] trh_lvl;
  logic [23:0] frame_time; 
  logic [23:0] cnt_time_frame; 
  logic [13:0] wr_addr_fifo;
  logic [13:0] r_addr_fifo;
  logic [23:0] odata_fifo;
  logic [23:0] idata_fifo;
  logic [13:0] addr_shift;
  logic        req_data;
  logic [1:0]  req_data_rg;
  logic        r_en_fifo;
  logic [18:0] time_sop;
  logic [3:0]  sss_odat;
  logic [3:0]  ref_data;
  logic        sync_mode;
  logic        sync_mode_25;
  logic [10:0] w_addr_axi;
  logic [1:0]  mode_axi_rg;
  logic        mode_axi_stb;
  logic [1:0]  ival_rg;
  logic        wval_axi;
  logic        osop_vrf;   
  logic        wr_buff_lable;
  logic        w_axi_en;
  logic [22:0] abs_corr; 
 
 
 
 
 
  assign odata_corr   = abs_corr >> 9;
  assign req_data     = req_data_rg[0]&~req_data_rg[1];
  assign corr_str_fr  = corr_str_rg[0] & ~corr_str_rg[1];
  assign Q2_pos_ram   = 48 - ((idata_ctrl[27:24]<<3)+(idata_ctrl[27:24]<<2))-(idata_ctrl[23:16]<<1);
  assign I2_pos_ram   = Q2_pos_ram  + 7'd1;
  assign Q1_pos_ram   = Q2_pos_ram  + 7'd36;
  assign I1_pos_ram   = Q1_pos_ram  + 7'd1;
  assign oena         = iena;
  assign idata_fifo   = {idata_I,idata_Q};
  assign odata_I      = odata_fifo[23:12];
  assign odata_Q      = odata_fifo[11:0];
  
  assign wr_buff_lable   = (sync_mode) ? str_frame:(osop_vrf && idata_ctrl[12] || osop_sync && ~idata_ctrl[12]);
  assign osop_buff    =  wr_buff_lable && r_en_fifo && iready_buff;
  
  
  assign ref_data     = (sync_mode) ? {sss_odat[3], sss_odat[2], sss_odat[1], sss_odat[0]} : {pss_odat[I1_pos_ram], pss_odat[Q1_pos_ram], pss_odat[I2_pos_ram], pss_odat[Q2_pos_ram]};
  assign mode_axi_stb = mode_axi_rg[0] && ~mode_axi_rg[1];
  assign str_frame    = (cnt_time_frame == str_frame_count+8'd1);
  assign wval_axi     = ival_rg[0] && ~ival_rg[1];
  assign oready_corr_wr = r_en_fifo;
  
  always_ff @ (posedge iclk or negedge ireset)
	if (~ireset)
	begin
	fft_size    <= '0;
	addr_shift  <='0;
	frame_time  <= '0;
	time_sop    <='0;
	end
	else 
	begin 
	case (idata_ctrl[23:16])

      default : begin 
      fft_size    <= 12'd1024;
	  trh_lvl     <= 12'd1500;
      frame_time  <= 24'd3840000;//7680000;	  
	  addr_shift  <= 14'd5376;
	  time_sop    <= 19'd76800;
      end
 
      8'd1 : begin  
      fft_size    <= 12'd128;
	  trh_lvl     <= 12'd175;
      frame_time  <= 24'd479232;//958464;	  
      addr_shift  <= 14'd1568;	//768
      time_sop    <= 19'd9600;	  
      end

      8'd2 : begin 
      fft_size    <= 12'd256;
	  trh_lvl     <= 12'd350;
      frame_time  <= 24'd960000;//1920000;	  
      addr_shift  <= 14'd2112;//1536
      time_sop    <= 19'd19200;	  
      end

      8'd3: begin
      fft_size    <= 12'd512;
	  trh_lvl     <= 12'd700;
	  frame_time  <= 24'd1920000;//3840000;
	  addr_shift  <= 14'd3200;
	  time_sop    <= 19'd38400;	
      end

      8'd4 : begin
      fft_size    <= 12'd1024;
	  trh_lvl     <= 12'd1400;
	  frame_time  <= 24'd3840000;
	  addr_shift  <= 14'd5376;
	  time_sop    <= 19'd76800;	
      end
	  
      8'd5 : begin  
	  fft_size    <= 12'd1024;
	  trh_lvl     <= 12'd2100;
	  frame_time  <= 24'd5760000;//11366400;
	  addr_shift  <= 14'd8320;
	  time_sop    <= 19'd115200;
      end

      8'd6 : begin
      fft_size    <= 12'd1024;
	  trh_lvl     <= 12'd2800;
	  frame_time  <= 24'd7680000;
	  addr_shift  <= 14'd11264;
	  time_sop    <= 19'd153600;
      end
 
    endcase
	end
  
    //------------------------------------------------------------------------------------------------------
  //  spectrum swap 
  //------------------------------------------------------------------------------------------------------



  always_ff @(posedge iclk or negedge ireset) begin
      if (~ireset)
	  begin
	  swap_ff     <= '0;
	  sync_data_I <= '0;
	  sync_data_Q <= '0;
	  end
	  else 
	  begin
	  swap_ff     <= ~swap_ff;
	  //
      sync_data_I <= (swap_ff) ? ~idata_I[pDAT_W-1] : idata_I[pDAT_W-1];
      sync_data_Q <= (swap_ff) ? ~idata_Q[pDAT_W-1] : idata_Q[pDAT_W-1];
	  end
  end
  
    //------------------------------------------------------------------------------------------------------
  //  PSS SSS mem 
  //------------------------------------------------------------------------------------------------------
  
    always_ff @(posedge iclk or negedge ireset) begin
            	if (~ireset)
				begin
				sync_mode <='0;
				sync_mode_25 <='0;
				end
                   else
                   begin				   
				   sync_mode    <= idata_ctrl[28];
				   sync_mode_25 <=  idata_ctrl[29];
                   end				   
           end
  
  
  
	always_ff @(posedge iclk or negedge ireset) begin
            	if (~ireset)
				corr_str_rg <='0;
                   else	
				   corr_str_rg[0] <=isop;
          		   corr_str_rg[1] <=corr_str_rg[0] ;	   
           end
	
		always_ff @(posedge iclk or negedge ireset) begin
            	if (~ireset)
				req_data_rg <='0;
                   else	
				   req_data_rg[0] <=ireq_data;
          		   req_data_rg[1] <=req_data_rg[0] ;	   
           end
	
	always_ff @ (posedge iclk or negedge ireset)
	begin	
		if (~ireset)
		begin
		pss_init <= '0;
	    pss_ready <= '0; 
		end 
		else
		begin
		pss_init[1] <=  pss_init[0]; 
	       if	(pss_addr_cnt == pDAT_Num - 1) 
		   begin 
		   pss_init[0] <= '0;   
		   pss_ready <= '1; 
		   end
		     else if (corr_str_fr && iena && ~pss_init[0]) 
			 begin 
			 pss_init[0] <= '1;	 
			 pss_ready <= '0; 
			 end
		end	 
    end	
	
	always_ff @ (posedge iclk or negedge ireset)
	begin	
		if (~ireset)
		pss_addr_cnt <= '0;
		else if	(~pss_init[0]) pss_addr_cnt   <= '0; 
	       else if	(pss_init[0]) pss_addr_cnt  <=  pss_addr_cnt + 11'd1; 
    end	
	
		
	PSS_ram	
   #(
    .pDAT_W  ( 72 ),
    .pDAT_Num( pDAT_Num)
    )
	PSS_ram_sub
    (	
	.iclk 	  (iclk),
	.addr 	  (pss_addr_cnt),
	.ival     (pss_init[0]),
	.odat 	  (pss_odat)
    );

   always_ff @(posedge iclk_axi or negedge ireset) begin
            	if (~ireset)
				w_axi_en <='0;
                   else if ((w_addr_axi==fft_size) || ~idata_ctrl[28]) w_axi_en <= '0;
				      else if (mode_axi_stb) w_axi_en <= '1;	 
				       		   
           end

    always_ff @(posedge iclk_axi or negedge ireset) begin
            	if (~ireset)
				ival_rg <='0;
                   else	
				   ival_rg[0] <=ival_axi;
          		   ival_rg[1] <=ival_rg[0] ;	   
           end

	always_ff @(posedge iclk_axi or negedge ireset) begin
            	if (~ireset)
				mode_axi_rg <='0;
                   else	
				   mode_axi_rg[0] <=idata_ctrl[28];
          		   mode_axi_rg[1] <=mode_axi_rg[0] ;	   
           end


	always_ff @ (posedge iclk_axi or negedge ireset)
	begin	
		if (~ireset)
		w_addr_axi <= '0;
		else if	(~w_axi_en || (w_addr_axi==fft_size)) w_addr_axi   <= '0; 
	       else if	(wval_axi && (addr_axi == 2'd2)) w_addr_axi  <=  w_addr_axi + 11'd1; 
    end	


	SSS_ram	
   #(
    .pDAT_W  ( 4 ),
    .pDAT_Num( pDAT_Num)
    )
	SSS_ram_sub
    (
	.idat_axi (data_axi),
    .ival_axi (wval_axi),
    .iclk_axi (iclk_axi),
    .addr_axi (w_addr_axi),
	//
	.iclk 	  (iclk),
	.addr 	  (pss_addr_cnt),
	.ival     (pss_init[0]),
	.odat 	  (sss_odat)
    );


   //------------------------------------------------------------------------------------------------------
   //  sign correlator
   //------------------------------------------------------------------------------------------------------
	
	sync_sign	
   #(
    .pDAT_W  ( pDAT_W ),
    .pDAT_Num( pDAT_Num )
    )
	sync_sign_0 
    (
   .iclk	 (iclk),
   .ireset	 (ireset),
   .iena     (pss_ready),
   //
   .corr_size (fft_size),
   //.trh_lvl  (trh_lvl),
   //
   .ival_pss (pss_init[1]),
   .ipss_I	 (ref_data[3]),//Re
   .ipss_Q	 (ref_data[2]),//Im
   //
   .idata_I	 (sync_data_I),
   .idata_Q	 (sync_data_Q),
    //
   .ocorr	 (odata_corr_0)
    );
  
  	sync_sign	
   #(
    .pDAT_W  ( pDAT_W ),
    .pDAT_Num( pDAT_Num )
    )
	sync_sign_1 
    (
   .iclk	 (iclk),
   .ireset	 (ireset),
   .iena     (pss_ready),
   //
   .corr_size (fft_size),
   //.trh_lvl  (trh_lvl),
   //
   .ival_pss (pss_init[1]),
   .ipss_I	 (ref_data[2]),//Im
   .ipss_Q	 (ref_data[3]),//Re
   //
   .idata_I	 (sync_data_I),
   .idata_Q	 (~sync_data_Q),
    //
   .ocorr	 (odata_corr_1)
    );
  
   	
     always_ff @(posedge iclk or negedge ireset) begin
            	if (~ireset)
				abs_corr <= '0;
                   else	 abs_corr <= (odata_corr_0*odata_corr_0 + odata_corr_1*odata_corr_1);	  	   
           end	
   	
   	
   	
	sync_detect	
   #(
    .pDAT_W         ( pDAT_W ),
    .pDAT_Num       ( pDAT_Num),
    .pSTAT_Num      ( 50),
    .pSTAT_Gap      ( 5),
	.pSTAT_step_low ( 10),
	.pSTAT_step_mid ( 25),
	.pSTAT_step_high( 50),
	.pVERF_Gap      ( 64)
    )
	sync_detect_sub
    (	
	.iclk 	        (iclk),
	.ireset	        (ireset),
    .iena           (iena),
	//
	.sync_mode      (sync_mode || sync_mode_25),
	.itrh_lvl       (idata_ctrl[11:0]),
    .trh_auto       (idata_ctrl[12]),
    .frame_time     (frame_time),
    .time_sop       (time_sop),		
	.icorr	        (odata_corr),
    .ocorr_mlvl     (odata_mlvl),
    .ocorr_max_addr (ocorr_maddr),
    .osop           (osop_sync),
    .trh_hold       (trh_hold),
    .trh_lvl        (otrh_lvl),
	.vrf_val        (vrf_val),
	.val_sop        (val_sop),
	.osop_vrf       (osop_vrf),
	.ostat_data     (ostat_data)
    );
	
	always_ff @ (posedge iclk or negedge ireset)
	begin	
		if (~ireset)
		cnt_time_frame <= '0;
		else if	(osop_vrf) cnt_time_frame <= '0; 
			else if (sync_mode && vrf_val) cnt_time_frame  <=  cnt_time_frame + 24'd1; 
    end	
	
	
	
  always_ff @(posedge iclk or negedge ireset) 
  begin
        if (~ireset)
		r_en_fifo <='0; 
		else if (req_data) r_en_fifo <='1; 
            else if (osop_buff) r_en_fifo <='0;
          	    	   
  end
	
		
  always_ff @ (posedge iclk or negedge ireset)
	begin	
		if (~ireset)
		wr_addr_fifo <= '0;
			else if	(1) wr_addr_fifo  <=  wr_addr_fifo + 14'd1; 
    end	
  
  always @ (posedge iclk or negedge ireset)
  	begin
			if	(~ireset)
				   r_addr_fifo <= 14'd0;
			
			else if (osop_buff)
					r_addr_fifo	<=	(sync_mode) ? (wr_addr_fifo - {3'd0, ocorr_maddr} - 14'd1) : (wr_addr_fifo - {2'd0, fft_size} - {3'd0, ocorr_maddr} - addr_shift - 14'd1);
					
			else				
					r_addr_fifo <= r_addr_fifo + 14'd1;
    end
  
  
  	sync_fifo	
   #(
    .DATA_W  ( 24 ),
    .ADDR_W  ( 14 )
    )
	sync_fifo_sub
    (	
	.iclk 	  (iclk),
	.en_wr    (1'b1),
	//
	.wr_addr  (wr_addr_fifo),
    .idata 	  (idata_fifo),
	//
	.r_addr   (r_addr_fifo),
	.odata 	  (odata_fifo)
    );
  
    
		   
		   
endmodule
