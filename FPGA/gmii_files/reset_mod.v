module reset_mod
#(
  Cycle_Num = 64
) 
(
	input irst,
	input iclk,
	output reg rst_out
	
);

reg	[12:0]	counter;
reg			block;

initial begin 
 counter = 13'd0;
 block   = 1'b1;
 end


always @(posedge iclk)
	begin
		if (irst==1'b0)
			begin
				block<=1'b1;
			end
		if ((block==1)&&(counter != Cycle_Num)&&(irst==1'b1)) 
			begin 
				counter <= counter+1'b1; rst_out<=1'b0;
			end 
			else if (counter == Cycle_Num)
			begin 
				block<=1'b0;
				rst_out<=1'b1;
				counter<=13'd0;
			end
		
	end
	
	

	
endmodule
	