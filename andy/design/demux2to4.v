/*
 Andrew Mattheisen 
 Zhiyang Ong

 EE-577b 2007 fall
 VITERBI DECODER 
 2-4demux module used in spdu module
*/

module demux (in0, in1, in2, in3, d0, d1, out);

   // outputs
   output  	out;
   
   // inputs
   input  	in0, in1, in2, in3;
   input 	d0, d1; 
   
   // registers
   reg temp1, temp2, out;
   
   always@(in0 or in1 or in2 or in3 or d0 or d1)
     begin
       temp1 = d0?in1:in0;
       temp2 = d0?in3:in2;
       out =  d1?temp2:temp1;     
     end // always@(in0 or in1 or in2 or in3 or d0 or d1)

endmodule
