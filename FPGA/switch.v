
module switch(  
    // input interface
    input	[15:0]	iredata_tx,
    input	[15:0]	iimdata_tx,

    input	[15:0]	iredata_ad,
    input	[15:0]	iimdata_ad,
  
    input			switch_on,
	// output interface
	output	[15:0]	oredata_rx,
    output	[15:0]	oimdata_rx

  
    );
	assign oredata_rx = (switch_on)? iredata_tx:iredata_ad;
	assign oimdata_rx = (switch_on)? iimdata_tx:iimdata_ad;
	
	endmodule
	