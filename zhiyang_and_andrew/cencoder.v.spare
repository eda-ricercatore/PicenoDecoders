///////////////////////////////////////////////////////////////////////////////
/// Andrew Mattheisen 
/// Zhiyang Ong 
///
/// EE-577b 2007 fall
/// VITERBI DECODER 
/// conv_encoder module
///
///////////////////////////////////////////////////////////////////////////////
`timescale 1ns/100ps
module conv_encoder (output [1:0] c, input b, input clk, input reset);

   //output [1:0] c;
   //input  	b, clk, reset;
   reg [1:0] 	c;
   reg		D_0, D_1;

   always @ (posedge clk)
	 begin
		if (reset)
		  begin
		    D_0 <= 1'b0;
		    D_1 <= 1'b0;
		  end
		if (b)
		  begin
		    D_1 <= D_0;
		    D_0 <= b;
		  end
	 end // always @ (posedge clk)

   always @ (D_0 or D_1 or b)
	 begin
		c[0]  <= b^D_0^D_1;
		c[1]  <= b^D_1;
	 end // always @ (D_0 or D_1 or b)

endmodule
