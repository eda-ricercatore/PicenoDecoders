///////////////////////////////////////////////////////////////////////////////
/// Andrew Mattheisen
/// Zhiyang Ong 
///
/// EE-577b 2007 fall
/// VITERBI DECODER 
/// bmu module
///
///////////////////////////////////////////////////////////////////////////////

module bmu (cx0, cx1, bm0, bm1, bm2, bm3, bm4, bm5, bm6, bm7);

   // outputs
   output [1:0] bm0, bm1, bm2, bm3, bm4, bm5, bm6, bm7;

   // inputs
   input  	cx0, cx1;

   // registers
   reg [1:0] 	bm0, bm1, bm2, bm3, bm4, bm5, bm6, bm7;

   always@ (cx0 or cx1)
	 begin
	    if (cx0==0 && cx1==0)
	      begin
	        bm0 <= 2'd0; // this is going from 00 to 00
	    	bm1 <= 2'd2; // this is going from 00 to 10
	   	bm2 <= 2'd2; // this is going from 01 to 00
	    	bm3 <= 2'd0; // this is going from 01 to 10
	    	bm4 <= 2'd1; // this is going from 10 to 01
	    	bm5 <= 2'd1; // this is going from 10 to 11
	    	bm6 <= 2'd1; // this is going from 11 to 01
	    	bm7 <= 2'd1; // this is going from 11 to 11
	      end
	    else if (cx0==0 && cx1==1)
	      begin
	        bm0 <= 2'd1; // this is going from 00 to 00
	    	bm1 <= 2'd1; // this is going from 00 to 10
	   	bm2 <= 2'd1; // this is going from 01 to 00
	    	bm3 <= 2'd1; // this is going from 01 to 10
	    	bm4 <= 2'd2; // this is going from 10 to 01
	    	bm5 <= 2'd0; // this is going from 10 to 11
	    	bm6 <= 2'd0; // this is going from 11 to 01
	    	bm7 <= 2'd2; // this is going from 11 to 11
	      end
	    else if (cx0==1 && cx1==0)
	      begin
	        bm0 <= 2'd1; // this is going from 00 to 00
	    	bm1 <= 2'd1; // this is going from 00 to 10
	   	bm2 <= 2'd1; // this is going from 01 to 00
	    	bm3 <= 2'd1; // this is going from 01 to 10
	    	bm4 <= 2'd0; // this is going from 10 to 01
	    	bm5 <= 2'd2; // this is going from 10 to 11
	    	bm6 <= 2'd2; // this is going from 11 to 01
	    	bm7 <= 2'd0; // this is going from 11 to 11
	      end
	    else if (cx0==1 && cx1==1)
	      begin
	        bm0 <= 2'd2; // this is going from 00 to 00
	    	bm1 <= 2'd0; // this is going from 00 to 10
	   	bm2 <= 2'd0; // this is going from 01 to 00
	    	bm3 <= 2'd2; // this is going from 01 to 10
	    	bm4 <= 2'd1; // this is going from 10 to 01
	    	bm5 <= 2'd1; // this is going from 10 to 11
	    	bm6 <= 2'd1; // this is going from 11 to 01
	    	bm7 <= 2'd1; // this is going from 11 to 11
	      end

	 end // always @ (posedge clk)
endmodule
