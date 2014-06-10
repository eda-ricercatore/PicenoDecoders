/**
 * This is written by Zhiyang Ong (zhiyango@usc.edu; 6004 9194 12)
 * and Andrew Mattheisen (mattheis@usc.edu; 2134 5147 11)
 */
module add_compare_select (npm, d, pm1, bm1, pm2, bm2);
	/**
	 * WARNING TO DEVELOPER(S)!!!
	 *
	 * CHECK/VERIFY THAT THE WIDTH OF ALL THE PATH METRIC BUSES
	 * ARE THE SAME
	 *
	 * SUCH BUSES INCLUDE npm, pm1, pm2, add1, and add2
	 *
	 * THE FOLLOWING BUSES ARE NOT INCLUDED: bm1, bm2, add_temp1,
	 * and add_temp2
	 *
	 * NOTE THAT THE WIDTHS OF add_temp1 AND add_temp2 ARE ONE GREATER
	 * THAN THOSE OF THE PATH METRIC BUSES
	 */


	
	// Output signals for the design module
	/**
	 * New path metric - It keeps growing, so reasonable number
	 * of bits have to be chosen so that npm is unlikely to overflow
	 * Number of bits chosen = 4
	 *
	 * To handle overflows, I have decided to saturate the result
	 * of the computation at 2^n - 1 = 2^4 - 1 = 15
	 */
	output [3:0] npm;
	// Decision bit from the add-compare-select unit
	output d;
	
	
	// Input signals for the design module
	// Current path metric #1 for a set of addition
	input [3:0] pm1;
	// Branch metric #1 for a set of addition
	input [1:0] bm1;
	// Current path metric #2 for another set of addition
	input [3:0] pm2;
	// Branch metric #2 for another set of addition
	input [1:0] bm2;
	
	// Declare "reg" signals... that will be assigned values
	reg [3:0] npm;
	reg d;
	/**
	 * Result of the additions in the first stage of the
	 * add-compare-select unit
	 */
	// Result of a set of addition
	reg [3:0] add1;
	// Result of another set of addition
	reg [3:0] add2;
	// Temporary storage for a set of addition to check for overflow
	reg [4:0] add_temp1;
	// Temporary storage for another set of addition to check for overflow
	reg [4:0] add_temp2;



	
	// Declare "wire" signals...
	// Defining constants: parameter [name_of_constant] = value;
	// Maximum value that can be stored in a 4-bit bus
	parameter max_add = 4'd15;


	/**
	 * Perform the addition stage of the add-compare-select unit
	 * Result of a set of addition
	 */
	always @ (pm1 or bm1)
	begin
		// Add the operands and temporary store them
		add_temp1 = pm1 + bm1;
		// Did the (temporary) addition cause an overflow
		if(add_temp1 > max_add)
		begin
			/**
			 * Yes... An overflow has occurred.
			 * Saturate the addition to max_add
			 */
			add1 = max_add;
		end
		else
		begin
			/**
			 * An overflow did not occur with the addition of 2
			 * numbers. Hence, the result of the addition is the
			 * sum of the 2 numbers.
			 */
			add1 = pm1 + bm1;
		end
	end
	
	/**
	 * Perform the addition stage of the add-compare-select unit
	 * Result of another set of addition
	 */
	always @ (pm2 or bm2)
	begin
		// Add the operands and temporary store them
		add_temp2 = pm2 + bm2;
		// Did the (temporary) addition cause an overflow
		if(add_temp2 > max_add)
		begin
			/**
			 * Yes... An overflow has occurred.
			 * Saturate the addition to max_add
			 */
			add2 = max_add;
		end
		else
		begin
			/**
			 * An overflow did not occur with the addition of 2
			 * numbers. Hence, the result of the addition is the
			 * sum of the 2 numbers.
			 */
			add2 = pm2 + bm2;
		end
	end
	
	// ========================================================
	
	// Perform the compare stage of the add-compare-select unit
	always @ (add1 or add2)
	begin
		if(add1 <= add2)
		begin
			// Select path 1 ==> d=0
			d = 1'b0;
		end
		else
		begin
			// Select path 2 ==> d=1
			d = 1'b1;
		end
	end
	
	// ========================================================
	
	// Perform the select stage of the add-compare-select unit
	always @ (d or add1 or add2)
	begin
		if(d)
		begin
			// Select path 2... add1 < add2
			npm = add2;
		end
		else
		begin
			// Select path 1... add1 >= add2
			npm = add1;
		end
	end
	
	
	
endmodule


///////////////////////////////////////////////////////////////////////////////
/// Andrew Mattheisen amattheisen@yahoo.com
/// Zhiyang Ong zhiyang@ieee.org
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


/*
 Andrew Mattheisen amattheisen@yahoo.com
 Zhiyang Ong zhiyang@ieee.org

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


///////////////////////////////////////////////////////////////////////////////
/// Andrew Mattheisen amattheisen@yahoo.com
/// Zhiyang Ong zhiyang@ieee.org
///
/// EE-577b 2007 fall
/// VITERBI DECODER 
/// pmsm module (Path Metric State Memory)
///
/**
 * @modified by Zhiyang Ong on  November 1, 2007
 *	The reset values for the 2nd to the 4th
 *	registers are modified to achieve a unique solution,
 *	and avoid a set of equivalent paths for the solution.
 *	See subsequent comments in the code for further
 *	elaboration
 */
///  @modified by AJM - uncommented the change mentioned above
///////////////////////////////////////////////////////////////////////////////

module pmsm (npm0, npm1, npm2, npm3, pm0, pm1, pm2, pm3, clk, reset);

   // outputs
   output [3:0] pm0, pm1, pm2, pm3;

   // inputs
   input  	clk, reset;
   input [3:0] 	npm0, npm1, npm2, npm3;

   reg [3:0] 	pm0, pm1, pm2, pm3;
   reg [3:0] 	npm0norm, npm1norm, npm2norm, npm3norm;
   
   // Defining constants: parameter [name_of_constant] = value;
   parameter saturating_value = 4'd15;
   
   always @ (npm0 or npm1 or npm2 or npm3)
	 begin
	   if ((npm0 <= npm1)&&(npm0 <= npm2)&&(npm0 <= npm3))
	     begin
	       npm0norm <= 0;
	       npm1norm <= npm1-npm0;
	       npm2norm <= npm2-npm0;
	       npm3norm <= npm3-npm0;
	     end
	   else if ((npm1 <= npm0)&&(npm1 <= npm2)&&(npm1 <= npm3))
	     begin
	       npm0norm <= npm0-npm1;
	       npm1norm <= 0;
	       npm2norm <= npm2-npm1;
	       npm3norm <= npm3-npm1;
	     end
	   else if ((npm2 <= npm0)&&(npm2 <= npm1)&&(npm2 <= npm3))
	     begin
	       npm0norm <= npm0-npm2;
	       npm1norm <= npm1-npm2;
	       npm2norm <= 0;
	       npm3norm <= npm3-npm2;
	     end
	   else if ((npm3 <= npm0)&&(npm3 <= npm1)&&(npm3 <= npm2))
	     begin
	       npm0norm <= npm0-npm3;
	       npm1norm <= npm1-npm3;
	       npm2norm <= npm2-npm3;
	       npm3norm <= 0;
	     end
	 end // always @ (npm0 or npm1 or npm2 or npm3)


	/**
	 * @modified by Zhiyang Ong, November 1, 2007
	 * Note that the first register is reset to zero,
	 * and the rest are reset to infinity, which is
	 * represented by the saturating value of 15
	 * = 2^n - 1 = 2^4 - 1.
	 *
	 * This prevents the solution from arriving at a
	 * set of false/incorrect set of equivalent
	 * paths in the Trellis diagram. Multiple paths
	 * with zero costs indicate no unique solution.
	 * Also, these infinite/saturated values will be
	 * "removed"/diminished in 2 clock cycles.
	 */
   always @ (posedge clk)
	 begin
		if (reset)
		  begin
		    pm0 <= 4'd0;
		    pm1 <= saturating_value;
		    pm2 <= saturating_value;
		    pm3 <= saturating_value;
		  end
		else
		  begin
		    pm0 <= npm0norm;
		    pm1 <= npm1norm;
		    pm2 <= npm2norm;
		    pm3 <= npm3norm;
		  end
	 end // always @ (posedge clk)
endmodule
/*
 Andrew Mattheisen amattheisen@yahoo.com
 Zhiyang Ong zhiyang@ieee.org

 EE-577b 2007 fall
 VITERBI DECODER 
 selector module
*/

module selector (pm0, pm1, pm2, pm3, d0, d1);

   // outputs
   output  	d0, d1;
   
   // inputs
   input [3:0] 	pm0, pm1, pm2, pm3;
   
   // registers
   reg   	d0, d1;
   reg [1:0]	int0, int1;
   reg [3:0]	pm_int0, pm_int1;

   always @ (pm0 or pm1 or pm2 or pm3)
	 begin
		int0 = (pm0<=pm1)?2'd0:2'd1; // select smaller of pm0 or pm1 
		int1 = (pm2<=pm3)?2'd2:2'd3; // select smaller of pm2 or pm3
		pm_int0 = (pm0<=pm1)?pm0:pm1; // select smaller of pm0 or pm1
		pm_int1 = (pm2<=pm3)?pm2:pm3; // select smaller of pm2 or pm3
		{d1,d0} = (pm_int0<=pm_int1)?int0:int1; // create control signals d0 and d1
	 end // always @ (pm0 or pm1 or pm2 or pm3)


endmodule
/*
 Andrew Mattheisen amattheisen@yahoo.com
 Zhiyang Ong zhiyang@ieee.org

 EE-577b 2007 fall
 VITERBI DECODER 
 spd module
 
 @modified by Zhiyang Ong on November 1, 2007
 The output out signal must be of the data type reg
 I had to reallocate this data-type reg.
 Correction: It is relabelled to the wire data type since
 it is not used again, or explicitly assigned a value in
 this module
*/


module spd (d0, d1, d2, d3, pm0, pm1, pm2, pm3, out, clk, reset);

   // outputs
   output  	out;
   
   // inputs
   input 	d0, d1, d2, d3;
   input [3:0]	pm0, pm1, pm2, pm3; 
   input 	clk, reset;
   
	// @modified by Zhiyang Ong on November 1, 2007
	// Registers...
//	reg out;
/*
	reg selectord0, selectord1;
	reg spdu0out0, spdu0out1, spdu0out2, spdu0out3;
	reg spdu1out0, spdu1out1, spdu1out2, spdu1out3;
	reg spdu2out0, spdu2out1, spdu2out2, spdu2out3;
	reg spdu3out0, spdu3out1, spdu3out2, spdu3out3;
	reg spdu4out0, spdu4out1, spdu4out2, spdu4out3;
	reg spdu5out0, spdu5out1, spdu5out2, spdu5out3;
	reg spdu6out0, spdu6out1, spdu6out2, spdu6out3;
	reg spdu7out0, spdu7out1, spdu7out2, spdu7out3;
	reg spdu8out0, spdu8out1, spdu8out2, spdu8out3;
	reg spdu9out0, spdu9out1, spdu9out2, spdu9out3;
	reg spdu10out0, spdu10out1, spdu10out2, spdu10out3;
	reg spdu11out0, spdu11out1, spdu11out2, spdu11out3;
	reg spdu12out0, spdu12out1, spdu12out2, spdu12out3;
	reg spdu13out0, spdu13out1, spdu13out2, spdu13out3;
	reg spdu14out0, spdu14out1, spdu14out2, spdu14out3;
*/



   // wires
   // @Modified by Zhiyang Ong on November 1, 2007
   wire out;
   
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
/*
 Andrew Mattheisen amattheisen@yahoo.com
 Zhiyang Ong zhiyang@ieee.org

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
/**
 * This is written by Zhiyang Ong (zhiyango@usc.edu; 6004 9194 12)
 * and Andrew Mattheisen (mattheis@usc.edu; 2134 5147 11)
 */

/**
 * Import the design modules for other design submodules
 *
 * Include statements for design modules/files need to be commented
 * out when I use the Make environment - similar to that in
 * Assignment/Homework 3.
 *
 * Else, the Make/Cadence environment will not be able to locate
 * the files that need to be included.
 *
 * The Make/Cadence environment will automatically search all
 * files in the design/ and include/ directories of the working
 * directory for this project that uses the Make/Cadence
 * environment for the design modules
 *
 * If the ".f" files are used to run NC-Verilog to compile and
 * simulate the Verilog testbench modules, use this include
 * statement
 */

// Design of the Viterbi decoder
module viterbi_decoder (d, cx, clk, reset);
	// Output signals for the design module
	// Decoded output signal from the Viterbi decoder
	output d;
	
	
	
	
	
	// Input signals for the design module
	// Received encoded signal that may have corrupted bits
	input [1:0] cx;
	// Input clock signal for the Viterbi decoder
	input clk;
	// Reset signal for the Viterbi decoder
	input reset;
	
	
	
	
	
	// Declare "reg" signals... that will be assigned values
//	reg d;
	// Set of branch metric outputs from the BMU
//	reg [1:0] brch_met0,brch_met1,brch_met2,brch_met3;
//	reg [1:0] brch_met4,brch_met5,brch_met6,brch_met7;
	
	// Outputs from the ACS units
	// Decision bit output from the ACS units
//	reg d0,d1,d2,d3;
	// Output from the ACS that indicates the new path metric
//	reg [3:0] n_pm0,n_pm1,n_pm2,n_pm3;
	
	// Outputs from the PMSM units
//	reg [3:0] p_m0, p_m1, p_m2, p_m3;
	
	
	

	// Declare "wire" signals...
	wire d;
	
	// Set of branch metric outputs from the BMU
	wire [1:0] brch_met0,brch_met1,brch_met2,brch_met3;
	wire [1:0] brch_met4,brch_met5,brch_met6,brch_met7;
	
	// Outputs from the ACS units
	// Decision bit output from the ACS units
	wire d0,d1,d2,d3;
	// Output from the ACS that indicates the new path metric
	wire [3:0] n_pm0,n_pm1,n_pm2,n_pm3;
	
	// Outputs from the PMSM units
	wire [3:0] p_m0, p_m1, p_m2, p_m3;
	
	
	
	// Defining constants: parameter [name_of_constant] = value;
	
	
	
	/*******************************************************
	 *
	 * Connecting the modules of the Viterbi decoder together
	 * That is, link the following modules together:
	 * # Branch Metric calculation Unit (BMU)
	 * # Add-Compare-Select unit (ACS)
	 * # Survivor Path Decoding Unit (SPDU)
	 * # Survivor Path Decoder (SPD)
	 * # Path Metric State Memory (PMSM)
	 *
	 * Note that the SPD module includes the demux (2-to-4
	 * DEMUX/demultiplexer) and selector.
	 *
	 * The selector chooses the smallest path metric to
	 * create the control signal to select the smallest path
	 *
	 * In addition, note that the SPD module includes 15 SPDU
	 * units.
	 *
	 *
	 *
	 * Basic architecture of the Viterbi decoder:
	 *
	 *  (1)  (4)  (1)   (1)
	 * BMU->ACS->PMSM->SPD
	 *		v ^	   V	^
	 *		| |   |		|
	 *		| -----		|
	 *		|			|
	 *		------------|
	 *
	 *******************************************************
	 */
	
	// =====================================================
	
	/**
	 * Instantiate the BMU to receive inputs for the Viterbi
	 * decoder, and produce outputs for the ACS units
	 *
	 * There is only one BMU for the Viterbi decoder
	 */
	bmu brch_met (cx[0], cx[1],
		brch_met0,brch_met1,brch_met2,brch_met3,
		brch_met4,brch_met5,brch_met6,brch_met7);
	
	// =====================================================
	
	/**
	 * Instantiate the 4 ACS units to receive inputs from
	 * the BMU and the PMSM, and produce outputs for the SPD
	 * and the PMSM
	 *
	 * The assignment of branch and path metrics to each
	 * state is based on the Trellis diagrams for different
	 * inputs for the input code(s), cx or cin
	 *
	 * See the BMU module for the interconnections.
	 */
	 
	// Instantiate the 1st ACS unit
	add_compare_select acs0 (n_pm0, d0,
		p_m0, brch_met0, p_m1, brch_met2);
	// Instantiate the 2nd ACS unit
	add_compare_select acs1 (n_pm1, d1,
		p_m2, brch_met4, p_m3, brch_met6);
	// Instantiate the 3rd ACS unit
	add_compare_select acs2 (n_pm2, d2,
		p_m0, brch_met1, p_m1, brch_met3);
	// Instantiate the 4th ACS unit
	add_compare_select acs3 (n_pm3, d3,
		p_m2, brch_met5, p_m3, brch_met7);
		
	// =====================================================
	
	/**
	 * Instantiate the PMSM that contains a set of 4
	 * registers, and circuitry to normalize the path metrics
	 * by subtracting the smallest path metric from all of
	 * the path metrics
	 * 
	 * There is only one PMSM for the Viterbi decoder
	 */
	pmsm path_metric_sm (n_pm0, n_pm1, n_pm2, n_pm3,
		p_m0, p_m1, p_m2, p_m3, clk, reset);
	
	// =====================================================
	
	/**
	 * Instantiate the SPD that uses the current path metric
	 * and the decision bits to determine the optimal path
	 * for Viterbi decoding using dynamic programming
	 * 
	 * There is only one SPD for the Viterbi decoder
	 */
	spd survivor_path_dec (d0, d1, d2, d3, p_m0, p_m1, p_m2, p_m3,
		d, clk, reset);
	
endmodule

