module sync_pss
#(
  parameter int pDAT_W    = 12,
  parameter int pDAT_Num  = 2048
)  
(
  input  logic                         iclk,
  input  logic                         ireset,
  input  logic                         iena,
  input  logic                         isop,
  //
  input  logic          [31:0]         idata_ctrl,
  //
  input  logic   signed [pDAT_W-1 : 0] idata_I,
  input  logic   signed [pDAT_W-1 : 0] idata_Q,
  //
  input  logic   signed [pDAT_W-1 : 0] odata_I,
  input  logic   signed [pDAT_W-1 : 0] odata_Q,
  //
  output logic                         oena,
  output logic          [pDAT_W-1 : 0] odata_corr,
  output logic          [pDAT_W-1 : 0] odata_mlvl,
  output logic                         osop_sync
);

  logic        sync_data_I;
  logic        sync_data_Q;
//
  logic [71:0] pss_odat;
  logic [10:0] pss_addr;
  logic        pss_init;
  logic        pss_ready; 
  logic [10:0] pss_addr_cnt; 
  
//
  logic [11:0] odata_corr_0;
  logic [11:0] odata_corr_1;
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
 

  logic        rdy_corr0;
  logic        rdy_corr1;
  logic        rdy_corr_all;
  logic [5:0]  ocorr_maddr;
  logic [6:0]  win_cnt;
  logic        swap_ff;
  
  logic [11:0] fft_size;
  logic [11:0] trh_lvl;
    
  
  
  //assign osop_sync    = (ocorr_mlvl_0 > ocorr_mlvl_1)? ocorr_osop0:ocorr_osop1;
  assign rdy_corr_all = rdy_corr0 && rdy_corr1;
  assign odata_corr   = odata_corr_0 + odata_corr_1;
  //assign odata_mlvl   = (ocorr_mlvl_0 > ocorr_mlvl_1)? ocorr_mlvl_0:ocorr_mlvl_1;
  assign corr_str_fr  = corr_str_rg[0] & ~corr_str_rg[1];
  assign I2_pos_ram   = (((idata_ctrl[31:24]-8'd1)<<3)+((idata_ctrl[31:24]-8'd1)<<2))+(idata_ctrl[23:16]<<1)-8'd3;
  assign Q2_pos_ram   = I2_pos_ram  - 7'd1;
  assign I1_pos_ram   = I2_pos_ram  + 7'd36;
  assign Q1_pos_ram   = I1_pos_ram  - 7'd1;
  assign oena         = iena;
  
  
	always_ff @(posedge iclk or negedge ireset) begin
            	if (~ireset)
				corr_str_rg <='0;
                   else	
				   corr_str_rg[0] <=isop;
          		   corr_str_rg[1] <=corr_str_rg[0] ;	   
           end
	
	
	always_ff @ (posedge iclk or negedge ireset)
	begin	
		if (~ireset)
		begin
		pss_init <= '0;
	    pss_ready <= '0; 
		end
	       else if	(pss_addr_cnt == pDAT_Num - 1) 
		   begin 
		   pss_init <= '0; 
		   pss_ready <= '1; 
		   end
		     else if (corr_str_fr && iena && ~pss_init) 
			 begin 
			 pss_init <= '1; 
			 pss_ready <= '0; 
			 end
    end	
	
	always_ff @ (posedge iclk or negedge ireset)
	begin	
		if (~ireset)
		pss_addr_cnt <= '0;
		else if	(~pss_init) pss_addr_cnt   <= '0; 
	       else if	(pss_init) pss_addr_cnt  <=  pss_addr_cnt + 11'd1; 
    end	
	
	always_ff @ (posedge iclk or negedge ireset)
	if (~ireset)
	fft_size <= '0;
	else 
	begin 
	case (idata_ctrl[23:16])

      default : begin 
      fft_size <=12'd1024;
	  trh_lvl  <=12'd1500; 
      end
 
      4'd1 : begin  
      fft_size <=12'd128;
	  trh_lvl  <=12'd175;                                    
      end

      4'd2 : begin 
      fft_size <=12'd256;
	  trh_lvl  <=12'd350;                                   
      end

      4'd3: begin
      fft_size <=12'd512;
	  trh_lvl  <=12'd700;
      end

      4'd4 : begin
      fft_size <=12'd1024;
	  trh_lvl  <=12'd1400;                                             
      end
      4'd5 : begin  
	  fft_size <=12'd1536;
	  trh_lvl  <=12'd2100;
      end

      4'd6 : begin
      fft_size <=12'd2048;
	  trh_lvl  <=12'd2800;
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
      sync_data_I <= (swap_ff) ? ~idata_I[pDAT_W-1]     : idata_I[pDAT_W-1];
      sync_data_Q <= (swap_ff) ? ~idata_Q[pDAT_W-1]     : idata_Q[pDAT_W-1];
	  end
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
	.ival     (pss_init),
	.odat 	  (pss_odat)
    );

/* 	logic ocorr_osop1;
	assign ocorr_osop1 = '0; */
	
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
   .ival_pss (pss_init),
   .ipss_I	 (pss_odat[I1_pos_ram]),
   .ipss_Q	 (pss_odat[Q1_pos_ram]),
   //
   .idata_I	 (sync_data_I),
   .idata_Q	 (sync_data_Q),
    //
   .ocorr	       (odata_corr_0)
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
   .ival_pss (pss_init),
   .ipss_I	 (pss_odat[I2_pos_ram]),
   .ipss_Q	 (pss_odat[Q2_pos_ram]),
   //
   .idata_I	 (sync_data_I),
   .idata_Q	 (sync_data_Q),
    //
   .ocorr	 (odata_corr_1)
    );
  
   	
	sync_detect	
   #(
    .pDAT_W         ( pDAT_W ),
    .pDAT_Num       ( pDAT_Num)
    )
	sync_detect_sub
    (	
	.iclk 	        (iclk),
	.ireset	        (ireset),
    .iena           (iena),
	//
	.trh_lvl        (idata_ctrl[11:0]),
	.icorr	        (odata_corr),
    .ocorr_mlvl     (odata_mlvl),
    .ocorr_max_addr (ocorr_maddr),
    .osop           (osop_sync)
    );
  
  
  
  	/* always_ff @(posedge iclk or negedge ireset) begin
            	if (~ireset)
				rdy_corr0 <='0;
                   else	if (ocorr_osop0) rdy_corr0<='1;
				        else if (rdy_corr_all || win_cnt == 6'd32)  rdy_corr0<='0;
				end
   	always_ff @(posedge iclk or negedge ireset) begin
            	if (~ireset)
				rdy_corr1 <='0;
                   else	if (ocorr_osop1) rdy_corr1<='1;
				        else if (rdy_corr_all || win_cnt == 6'd32)  rdy_corr1<='0;
          		end
      	
	
	always_ff @ (posedge iclk or negedge ireset) begin
			if	(~ireset)
				win_cnt <= '0;
			    else if	(win_cnt == 6'd32 || rdy_corr0 && rdy_corr1) win_cnt <= '0;
			       else if (rdy_corr0 || rdy_corr1) win_cnt <= win_cnt + 6'd1;							
		end		
	
	always_ff @(posedge iclk or negedge ireset) begin
            	if (~ireset)
				ocorr_maddr <='0;
                   else	if (rdy_corr_all)
				   ocorr_maddr<=(ocorr_mlvl_0 > ocorr_mlvl_1)? ocorr_maddr0:ocorr_maddr1;
				   else if (win_cnt == 6'd32)  ocorr_maddr<=((rdy_corr0 && ~rdy_corr1)? ocorr_maddr0:ocorr_maddr1)+6'd32;
			    end
	
	always_ff @(posedge iclk or negedge ireset) begin
            	if (~ireset)
				osop_all <='0;
				else 
				begin
                   if ((win_cnt == 6'd32 && (rdy_corr0 || rdy_corr1)) || rdy_corr_all) osop_all <='1;
				       if (osop_all == '1)  osop_all <='0;
			    end
	       end */
		   
		   
endmodule
