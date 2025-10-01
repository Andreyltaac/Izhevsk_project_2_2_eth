module descrambler
#(
  parameter  start_state = 12'b111111111111,
  parameter  length_pack = 1904  
)
(
  input   wire  iclk    ,
  input   wire  ireset  ,
  
  input   wire  isop    ,
  input   wire  ival    ,
  input   wire  idat    ,

  output  reg   oval    ,
  output  reg   osop    ,
  output  reg   odat
);

/**********************************     
		  Module Variables		  
**********************************/

  reg  [11:0]  shift_reg    ;
  wire       psp_out_bit    ;
  


/**********************************     
		      Code		  
**********************************/

  initial begin
    shift_reg = start_state;
  end

  initial begin
    shift_reg = start_state;
  end
  	 
  assign psp_out_bit = shift_reg[11] + shift_reg[5] + shift_reg[3] + shift_reg[0];  	 
	 
  always @ (posedge iclk or negedge ireset)
    if (~ireset)
	    shift_reg <= start_state;
	 else begin
	    if (isop)
		    shift_reg = start_state;
      else if (ival) begin
		    shift_reg    <= shift_reg << 1'b1;
        shift_reg[0] <= shift_reg[11] + shift_reg[5] + shift_reg[3] + shift_reg[0]; 		 
		  end 
	 end	

	 
  always @ (posedge iclk or negedge ireset)
    if (~ireset) begin
	    odat  <= '0 ;
		  oval  <= '0 ;
		  osop  <= '0 ;
	end	
	else begin
	  odat  <= idat + psp_out_bit     ;
		oval  <= ival                   ;
		osop  <= isop                   ;
	end 
  
endmodule

