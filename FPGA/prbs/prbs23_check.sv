
/*

  localparam int pDAT_W        =  1 ;
  localparam bit pMSB_FIRST    =  0 ;
  localparam int pERR_PERIOD_W = 24 ;
  localparam int pERR_W        = 32 ;

  logic                prbs23_check__iclk    ;
  logic                prbs23_check__iclkena ;
  logic                prbs23_check__ibyp    ;
  logic                prbs23_check__ival    ;
  logic [pDAT_W-1 : 0] prbs23_check__idat    ;
  logic                prbs23_check__oval    ;
  logic [pDAT_W-1 : 0] prbs23_check__odat    ;
  logic [pERR_W-1 : 0] prbs23_check__err     ;
  logic                prbs23_check__err_led ;


  prbs23_check
  #(
   .pDAT_W        (  1 ) ,
   .pMSB_FIRST    (  0 ) ,  // 1/0 :: first scrambled bit is MSB/LSB
   .pERR_PERIOD_W ( 24 ) ,
   .pERR_W        ( 32 )
  )
  prbs23_check
  (
    .iclk     (  prbs23_check__iclk    ) ,
    .iclkena  (  prbs23_check__iclkena ) ,
    .ibyp     (  prbs23_check__ibyp    ) ,
    .ival     (  prbs23_check__ival    ) ,
    .idat     (  prbs23_check__idat    ) ,
    .oval     (  prbs23_check__oval    ) ,
    .odat     (  prbs23_check__odat    ) ,
    .err      (  prbs23_check__err     ) ,
    .err_led  (  prbs23_check__err_led )
  );

  assign prbs23_check__iclk    = '0;
  assign prbs23_check__iclkena = '0;
  assign prbs23_check__ibyp    = '0;
  assign prbs23_check__ival    = '0;
  assign prbs23_check__idat    = '0;

*/





//
// PRBS checker ( x^23 + x^18 + 1 )
//
module prbs23_check
#(
  parameter int pDAT_W        =  1 ,
  parameter bit pMSB_FIRST    =  0 ,  // 1/0 :: first scrambled bit is MSB/LSB
  parameter int pERR_PERIOD_W = 24 ,
  parameter int pERR_W        = 32
)
(
  iclk    ,
  iclkena ,
  ibyp    ,
  iclr    ,
  ival    ,
  idat    ,
  oval    ,
  odat    ,
  err     ,
  err_led ,
  odgood
);

  //------------------------------------------------------------------------------------------------------
  //
  //------------------------------------------------------------------------------------------------------

  input  logic                iclk    ;
  input  logic                iclkena ;
  input  logic                ibyp    ; // bypass iko : iko is simple pass through register
  input  logic                iclr    ;
  (* mark_debug = "true" *) input  logic                ival    ;
  (* mark_debug = "true" *) input  logic [pDAT_W-1 : 0] idat    ;
  output logic                oval    ;
  output logic [pDAT_W-1 : 0] odat    ;
  output logic [pERR_W-1 : 0] err     ;
  output logic                err_led ;
  output logic                odgood ;

  //------------------------------------------------------------------------------------------------------
  //
  //------------------------------------------------------------------------------------------------------

  localparam cTYPE = 23;

  typedef logic [pDAT_W-1 : 0] data_t;
  typedef logic    [cTYPE : 1] state_t;

  state_t state;

  (* mark_debug = "true" *) logic dat_good /* synthesis keep*/;

  logic [pERR_W-1 : 0] err_cnt = '0;
  logic [pERR_W-1 : 0] err_cnt_latched;

  logic [pERR_PERIOD_W-1 : 0] err_led_cnt;
  logic                       err_led_cnt_is_max;

  //------------------------------------------------------------------------------------------------------
  //
  //------------------------------------------------------------------------------------------------------
  // synthesis translate_off
  initial begin : ini
    odat  = '0;
    oval  = '0;
    state = '0;
  end

  initial begin
	err_led_cnt <= '0;
	odat		<= '0;
  end
  // synthesis translate_on
  //------------------------------------------------------------------------------------------------------
  //
  //------------------------------------------------------------------------------------------------------

  assign dat_good = &odat;
  assign odgood = dat_good;

  always @(posedge iclk) if (iclkena) begin
    if (!ibyp) begin  // IKO work in NOT bypass mode

      // error counter
      if (oval & !dat_good) begin
        err_cnt <= err_cnt + 1'b1;
      end

      // period counter
      err_led_cnt <= err_led_cnt + 1'b1;
      err_led_cnt_is_max <= &err_led_cnt;

      // led error on/off logic
      if (err_led_cnt_is_max) begin
        err_cnt_latched <= err_cnt;

        if (err_cnt_latched != err_cnt)
          err_led <= 1'b1;
        else
          err_led <= 1'b0;
      end
    end
    if (iclr) begin
		err_led_cnt		<= '0;
		err_cnt         <= '0;
		err_cnt_latched <= '0;
		err_led         <= '0;
    end
  end

  assign err = err_cnt;

  //------------------------------------------------------------------------------------------------------
  //
  //------------------------------------------------------------------------------------------------------

always @(posedge iclk) if (iclkena) begin
	if (ival) begin
		if (!ibyp) begin
			DescramblerWord(idat, state, odat);
		end
		else
			odat <= idat;
		end
		oval <= ival;
end


  //------------------------------------------------------------------------------------------------------
  //
  //------------------------------------------------------------------------------------------------------

  task automatic DescramblerBit (input bit b, inout state_t state, output bit msb);
    msb = state[23] ^ state[18] ^ b;
    state = (state << 1) | b;
  endtask

  //------------------------------------------------------------------------------------------------------
  //
  //------------------------------------------------------------------------------------------------------

  task automatic DescramblerWord (input data_t b, inout state_t state, output data_t msb);
    int i;
  begin
    if (pMSB_FIRST == 0) begin
      for (i = 0; i < $size(b); i++)  DescramblerBit (b[i], state, msb[i]);
    end
    else begin // pMSB_FIRST == 1
      for (i = $high(b); i >= 0; i--) DescramblerBit (b[i], state, msb[i]);
    end
  end
  endtask

endmodule