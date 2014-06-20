/**
 * This is written by Zhiyang Ong (zhiyango@usc.edu; 6004 9194 12)
 * and Andrew Mattheisen (mattheis@usc.edu; 2134 5147 11)
 */

`timescale 1ns/100ps
/**
 * `timescale time_unit base / precision base
 *
 * -Specifies the time units and precision for delays:
 * -time_unit is the amount of time a delay of 1 represents.
 *	The time unit must be 1 10 or 100
 * -base is the time base for each unit, ranging from seconds
 *	to femtoseconds, and must be: s ms us ns ps or fs
 * -precision and base represent how many decimal points of
 *	precision to use relative to the time units.
 */



// Testbench for behavioral model for the 2-bit 2-input XOR gate


/**
 * Import the modules that will be tested for in this testbench
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
//`include "xor2.v"

// IMPORTANT: To run this, try: ncverilog -f ee577bHw2q2.f +gui
module tb_xor2_2bit();
	/**
	 * Declare signal types for testbench to drive and monitor
	 * signals during the simulation of the 2-bit 2-input XOR gate
	 *
	 * The reg data type holds a value until a new value is driven
	 * onto it in an "initial" or "always" block. It can only be
	 * assigned a value in an "always" or "initial" block, and is
	 * used to apply stimulus to the inputs of the DUT.
	 *
	 * The wire type is a passive data type that holds a value driven
	 * onto it by a port, assign statement or reg type. Wires cannot be
	 * assigned values inside "always" and "initial" blocks. They can
	 * be used to hold the values of the DUT's outputs
	 */
	
	// Declare "wire" signals: outputs from the DUT
	wire [1:0] y;				// Output signal out
	
	
	// Declare "reg" signals: inputs to the DUT
	reg [1:0] a;				// Input signal - a
	reg [1:0] b;				// Input signal - b
	
	
	
	/**
	 * Instantiate an instance of the 2-bit 2-input XOR gate
	 * so that inputs can be passed to the Device Under Test (DUT)
	 * Given instance name is "xor22"
	 */
	xor2_2bit xor22 (
		// instance_name(signal name),
		// Signal name can be the same as the instance name
		a,b,y);
	
	
	
	
		
	
	

	
	/**
	 * Initial block start executing sequentially @ t=0
	 * If and when a delay is encountered, the execution of this block
	 * pauses or waits until the delay time has passed, before resuming
	 * execution
	 *
	 * Each intial or always block executes concurrently; that is,
	 * multiple "always" or "initial" blocks will execute simultaneously
	 *
	 * E.g.
	 * always
	 * begin
	 *		#10 clk_50 = ~clk_50; // Invert clock signal every 10 ns
	 *		// Clock signal has a period of 20 ns or 50 MHz
	 * end
	 */
	initial
	begin
		// "$time" indicates the current time in the simulation
		$display(" << Starting the simulation >>");
		// @t=0,
		a = 2'd0;
		b = 2'd0;
		
		
		// @t=10,
		#10
		a = 2'd0;
		b = 2'd1;
		
		
		// @t=20,
		#10
		a = 2'd1;
		b = 2'd0;
		
		
		// @t=30,
		#10
		a = 2'd1;
		b = 2'd1;
		
		// ----------------------
		
		// @t=40,
		#10
		a = 2'd2;
		b = 2'd0;
		
		
		// @t=50,
		#10
		a = 2'd0;
		b = 2'd2;
		
		
		// @t=60,
		#10
		a = 2'd1;
		b = 2'd2;
		
		
		// @t=70,
		#10
		a = 2'd2;
		b = 2'd1;
		
		
		// @t=80,
		#10
		a = 2'd2;
		b = 2'd2;
		
		// ----------------------
		
		// @t=90,
		#10
		a = 2'd3;
		b = 2'd0;
		
		
		// @t=100,
		#10
		a = 2'd0;
		b = 2'd3;
		
		
		// @t=110,
		#10
		a = 2'd3;
		b = 2'd1;
		
		
		// @t=120,
		#10
		a = 2'd1;
		b = 2'd3;
		
		
		// @t=130,
		#10
		a = 2'd3;
		b = 2'd2;
		
		
		// @t=140,
		#10
		a = 2'd2;
		b = 2'd3;
		
		
		// @t=150,
		#10
		a = 2'd3;
		b = 2'd3;
		
		
		#20;
		
		$display(" << Finishing the simulation >>");
		$finish;
	end

endmodule
