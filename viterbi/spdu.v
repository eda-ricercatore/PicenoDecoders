/*
 Andrew Mattheisen 
 Zhiyang Ong 

 EE-577b 2007 fall
 VITERBI DECODER 
 spdu module
*/

module spdu (in0, in1, in2, in3, d0, d1, d2, d3,
    	       out0, out1, out2, out3, clk, reset);

   // outputs
   output  	out0, out1, out2, out3;
   
   // inputs
   input  	in0, in1, in2, in3;
   input 	d0, d1, d2, d3; 
   input 	clk, reset;
   
   // registers
   reg   	w0, w1, w2, w3;
   reg		out0, out1, out2, out3;

   always @ (d0 or d1 or d2 or d3 or in0 or in1 or in2 or in3)
	 begin
		w0  <= d0?in1:in0; // select 0 or 1
		w1  <= d1?in3:in2; // select 2 or 3
		w2  <= d2?in1:in0; // select 0 or 1
		w3  <= d3?in3:in2; // select 2 or 3
	 end // always @ (d0 or d1 or d2 or d3 or in0 or in1 or in2 or in3)


   always @ (posedge clk)
	 begin
		if (reset)
		  begin
		    out0 <= 1'b0;
		    out1 <= 1'b0;
		    out2 <= 1'b0;
		    out3 <= 1'b0;
		  end
		else
		  begin
		    out0 <= w0;
		    out1 <= w1;
		    out2 <= w2;
		    out3 <= w3;
		  end
	 end // always @ (posedge clk)


endmodule
