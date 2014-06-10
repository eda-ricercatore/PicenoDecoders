/*
 Andrew Mattheisen amattheisen@yahoo.com
 Zhiyang Ong zhiyang@ieee.org

 EE-577b 2007 fall
 VITERBI DECODER 
 spd module
*/
`include "spdu.v"
`include "demux2to4.v"
`include "selector.v"


module spd (d0, d1, d2, d3, pm0, pm1, pm2, pm3, out, clk, reset);

   // outputs
   output  	out;
   
   // inputs
   input 	d0, d1, d2, d3;
   input [3:0]	pm0, pm1, pm2, pm3; 
   input 	clk, reset;
   
   // wires
   wire		out;
   wire 	selectord0, selectord1;
   wire 	spdu0out0, spdu0out1, spdu0out2, spdu0out3;
   wire 	spdu1out0, spdu1out1, spdu1out2, spdu1out3;
   wire 	spdu2out0, spdu2out1, spdu2out2, spdu2out3;
   wire 	spdu3out0, spdu3out1, spdu3out2, spdu3out3;
   wire 	spdu4out0, spdu4out1, spdu4out2, spdu4out3;
   wire 	spdu5out0, spdu5out1, spdu5out2, spdu5out3;
   wire 	spdu6out0, spdu6out1, spdu6out2, spdu6out3;
   wire 	spdu7out0, spdu7out1, spdu7out2, spdu7out3;
   wire 	spdu8out0, spdu8out1, spdu8out2, spdu8out3;
   wire 	spdu9out0, spdu9out1, spdu9out2, spdu9out3;
   wire 	spdu10out0, spdu10out1, spdu10out2, spdu10out3;
   wire 	spdu11out0, spdu11out1, spdu11out2, spdu11out3;
   wire 	spdu12out0, spdu12out1, spdu12out2, spdu12out3;
   wire 	spdu13out0, spdu13out1, spdu13out2, spdu13out3;
   wire 	spdu14out0, spdu14out1, spdu14out2, spdu14out3;
   
   spdu spdu0(1'b0, 
   	      1'b0, 
   	      1'b1, 
   	      1'b1, d0, d1, d2, d3,
    	spdu0out0, 
    	spdu0out1, 
    	spdu0out2, 
    	spdu0out3, clk, reset);

   spdu spdu1(spdu0out0, 
   	      spdu0out1, 
   	      spdu0out2, 
   	      spdu0out3, d0, d1, d2, d3,
    	spdu1out0, 
    	spdu1out1, 
    	spdu1out2, 
    	spdu1out3, clk, reset);

   spdu spdu2(spdu1out0, 
   	      spdu1out1, 
   	      spdu1out2, 
   	      spdu1out3, d0, d1, d2, d3,
    	spdu2out0, 
    	spdu2out1, 
    	spdu2out2, 
    	spdu2out3, clk, reset);

   spdu spdu3(spdu2out0, 
   	      spdu2out1, 
   	      spdu2out2, 
   	      spdu2out3, d0, d1, d2, d3,
    	spdu3out0, 
    	spdu3out1, 
    	spdu3out2, 
    	spdu3out3, clk, reset);

   spdu spdu4(spdu3out0, 
   	      spdu3out1, 
   	      spdu3out2, 
   	      spdu3out3, d0, d1, d2, d3,
    	spdu4out0, 
    	spdu4out1, 
    	spdu4out2, 
    	spdu4out3, clk, reset);

   spdu spdu5(spdu4out0, 
   	      spdu4out1, 
   	      spdu4out2, 
   	      spdu4out3, d0, d1, d2, d3,
    	spdu5out0, 
    	spdu5out1, 
    	spdu5out2, 
    	spdu5out3, clk, reset);

   spdu spdu6(spdu5out0, 
   	      spdu5out1, 
   	      spdu5out2, 
   	      spdu5out3, d0, d1, d2, d3,
    	spdu6out0, 
    	spdu6out1, 
    	spdu6out2, 
    	spdu6out3, clk, reset);

   spdu spdu7(spdu6out0, 
   	      spdu6out1, 
   	      spdu6out2, 
   	      spdu6out3, d0, d1, d2, d3,
    	spdu7out0, 
    	spdu7out1, 
    	spdu7out2, 
    	spdu7out3, clk, reset);

   spdu spdu8(spdu7out0, 
   	      spdu7out1, 
   	      spdu7out2, 
   	      spdu7out3, d0, d1, d2, d3,
    	spdu8out0, 
    	spdu8out1, 
    	spdu8out2, 
    	spdu8out3, clk, reset);

   spdu spdu9(spdu8out0, 
   	      spdu8out1, 
   	      spdu8out2, 
   	      spdu8out3, d0, d1, d2, d3,
    	spdu9out0, 
    	spdu9out1, 
    	spdu9out2, 
    	spdu9out3, clk, reset);

   spdu spdu10(spdu9out0, 
   	       spdu9out1, 
   	       spdu9out2, 
   	       spdu9out3, d0, d1, d2, d3,
    	spdu10out0, 
    	spdu10out1, 
    	spdu10out2, 
    	spdu10out3, clk, reset);

   spdu spdu11(spdu10out0, 
   	       spdu10out1, 
   	       spdu10out2, 
   	       spdu10out3, d0, d1, d2, d3,
    	spdu11out0, 
    	spdu11out1, 
    	spdu11out2, 
    	spdu11out3, clk, reset);

   spdu spdu12(spdu11out0, 
   	       spdu11out1, 
   	       spdu11out2, 
   	       spdu11out3, d0, d1, d2, d3,
    	spdu12out0, 
    	spdu12out1, 
    	spdu12out2, 
    	spdu12out3, clk, reset);

   spdu spdu13(spdu12out0, 
   	       spdu12out1, 
   	       spdu12out2, 
   	       spdu12out3, d0, d1, d2, d3,
    	spdu13out0, 
    	spdu13out1, 
    	spdu13out2, 
    	spdu13out3, clk, reset);

   spdu spdu14(spdu13out0, 
   	       spdu13out1, 
   	       spdu13out2, 
   	       spdu13out3, d0, d1, d2, d3,
    	spdu14out0, 
    	spdu14out1, 
    	spdu14out2, 
    	spdu14out3, clk, reset);



   selector selector1 (pm0, pm1, pm2, pm3, selectord0, selectord1);

   demux demux1 (spdu14out0, spdu14out1, spdu14out2, spdu14out3,
	         selectord0, selectord1, out);





endmodule
