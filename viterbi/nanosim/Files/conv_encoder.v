///////////////////////////////////////////////////////////////////////////////
/// Andrew Mattheisen 
/// Zhiyang Ong 
///
/// EE-577b 2007 fall
/// VITERBI DECODER 
/// conv_encoder module
///
/// Zhiyang, I changed every capital variable to lower case.
/// I will not use uppercase to avoid that problem in the future. 
/// You can delete this note once you read it. - Andrew
///////////////////////////////////////////////////////////////////////////////
`timescale 1ns/100ps
module conv_encoder (c, b, clk, reset);

   // outputs
   output [1:0] c;
   
   // inputs
   input  	b, clk, reset;
   
   // registers
   reg [1:0] 	c;
   reg		d0, d1;

   always @ (posedge clk)
	 begin
		if (reset)
		  begin
		    d0 <= 1'b0;
		    d1 <= 1'b0;
		  end
		if (b)
		  begin
		    d1 <= d0;
		    d0 <= b;
		  end
	 end // always @ (posedge clk)

   always @ (d0 or d1 or b)
	 begin
		c[0]  <= b^d0^d1;
		c[1]  <= b^d1;
	 end // always @ (d0 or d1 or b)

endmodule
