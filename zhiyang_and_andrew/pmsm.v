///////////////////////////////////////////////////////////////////////////////
/// Andrew Mattheisen
/// Zhiyang Ong 
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
