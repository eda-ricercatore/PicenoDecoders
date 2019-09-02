/**
 * This is written by Zhiyang Ong 
 * and Andrew Mattheisen 
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


