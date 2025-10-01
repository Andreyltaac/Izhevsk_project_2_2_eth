/*

  localparam  int pDAT_W      = 1;
  localparam  bit pMSB_FIRST  = 0;

  logic                prbs_gen23__iclk    ;
  logic                prbs_gen23__iclkena ;
  logic                prbs_gen23__ival    ;
  logic                prbs_gen23__oval    ;
  logic [pDAT_W-1 : 0] prbs_gen23__odat    ;

  prbs_gen23
  #(
    .pDAT_W      ( pDAT_W     ) ,
    .pMSB_FIRST  ( pMSB_FIRST )
  )
  prbs_gen23
  (
    .iclk    ( prbs_gen23__iclk    ) ,
    .iclkena ( prbs_gen23__iclkena ) ,
    .ival    ( prbs_gen23__ival    ) ,
    .oval    ( prbs_gen23__oval    ) ,
    .odat    ( prbs_gen23__odat    )
  );

  assign prbs_gen23__iclk    = '0;
  assign prbs_gen23__iclkena = '0;
  assign prbs_gen23__ival    = '0;

*/


//
// x^23 + x^18 + 1
//
module prbs_gen23
#(
  parameter int  pDAT_W      =  1,
  parameter bit  pMSB_FIRST  =  0 // 1/0 :: first scrambled bit is MSB/LSB
)
(
  iclk    ,
  iclkena ,
  ival    ,
  oval    ,
  odat
);

  //------------------------------------------------------------------------------------------------------
  //
  //------------------------------------------------------------------------------------------------------

  input  logic                iclk    ;
  input  logic                iclkena ;
  input  logic                ival    ;
  output logic                oval    ;
  output logic [pDAT_W-1 : 0] odat    ;

  //------------------------------------------------------------------------------------------------------
  //
  //------------------------------------------------------------------------------------------------------

  localparam cTYPE = 23;

  typedef logic [pDAT_W-1 : 0] data_t;
  typedef logic    [cTYPE : 1] state_t;

  state_t state;
  data_t  in_data;

  //------------------------------------------------------------------------------------------------------
  //
  //------------------------------------------------------------------------------------------------------
  // synthesis translate_off
  initial begin : ini
    odat  = '0;
    oval  = '0;
    state = '0;
  end
  // synthesis translate_on
  //------------------------------------------------------------------------------------------------------
  //
  //------------------------------------------------------------------------------------------------------

  always @(posedge iclk) begin
    if (iclkena) begin
		oval <= '1;
		if (ival) begin
			ScramblerWord(in_data, state, odat);
		end
    end
  end

  assign in_data = '1;

  //------------------------------------------------------------------------------------------------------
  //
  //------------------------------------------------------------------------------------------------------

  task automatic ScramblerBit(input bit b, inout state_t state, output bit msb);
    msb = state[23] ^ state[18] ^ b;
    state = (state << 1) | msb;
  endtask

  //------------------------------------------------------------------------------------------------------
  //
  //------------------------------------------------------------------------------------------------------

  task automatic ScramblerWord (input data_t b, inout state_t state, output data_t msb);
    int i;
  begin
    if (pMSB_FIRST == 0) begin
      for (i = 0; i < $size(b); i++)  ScramblerBit (b[i], state, msb[i]);
    end
    else begin // pMSB_FIRST == 1
      for (i = $high(b); i >= 0; i--) ScramblerBit (b[i], state, msb[i]);
    end
  end
  endtask

endmodule
