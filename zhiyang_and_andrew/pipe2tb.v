/**
 * This is written by Zhiyang Ong 
 * and Andrew Mattheisen 
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



// Testbench for behavioral model for the 2-bit pipe


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
`include "pipe2.v"

// IMPORTANT: To run this, try: ncverilog -f ee577bHw2q2.f +gui
module tb_pipe2();
	/**
	 * Declare signal types for testbench to drive and monitor
	 * signals during the simulation of the 2-bit pipe
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
	wire [1:0] op;			// Output signal out
	
	
	// Declare "reg" signals: inputs to the DUT
	reg [1:0] ip;			// Input signal - in
	reg clk;				// Input signal - clock
	reg rst;				// Input signal - reset
	
	
	
	/**
	 * Instantiate an instance of the pipe
	 * so that inputs can be passed to the Device Under Test (DUT)
	 * Given instance name is "pp"
	 */
	pipeline_buffer_2bit pp (
		// instance_name(signal name),
		// Signal name can be the same as the instance name
		ip,op,clk,rst);
	
	
	
	
	
	
	
	
	/**
	 * Each sequential control block, such as the initial or always
	 * block, will execute concurrently in every module at the start
	 * of the simulation
	 */
	always begin
		// Clock frequency is arbitrarily chosen
		#5 clk = 0;
		#5 clk = 1;
		// Period = 10 ns
	end
	
	
	
	

	
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
		ip = 2'd0;
		rst = 1'd0;
		
		
		// @t=9,
		#9
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=19,
		#10
		ip = 2'd0;
		rst = 1'd0;
		
		
		// @t=29,
		#10
		ip = 2'd2;
		rst = 1'd0;
		
		
		// @t=39,
		#10
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=49,
		#10
		ip = 2'd3;
		rst = 1'd0;
		
		
		// @t=59,
		#10
		ip = 2'd0;
		rst = 1'd0;
		
		
		// @t=69,
		#10
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=79,
		#10
		ip = 2'd0;
		rst = 1'd0;
		
		
		// @t=89,
		#10
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=99,
		#10
		ip = 2'd0;
		rst = 1'd0;
		
		
		// @t=109,
		#10
		ip = 2'd3;
		rst = 1'd0;
		
		
		// @t=119,
		#10
		ip = 2'd0;
		rst = 1'd0;
		
		
		// @t=129,
		#10
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=139,
		#10
		ip = 2'd0;
		rst = 1'd0;
		
		
		// @t=149,
		#10
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=159,
		#10
		ip = 2'd2;
		rst = 1'd0;
		
		
		// @t=169,
		#10
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=179,
		#10
		ip = 2'd0;
		rst = 1'd0;
		
		
		// @t=189,
		#10
		ip = 2'd2;
		rst = 1'd0;
		
		
		// @t=199,
		#10
		ip = 2'd0;
		rst = 1'd0;
		
		
		// @t=209,
		#10
		ip = 2'd3;
		rst = 1'd0;
		
		
		// @t=219,
		#10
		ip = 2'd3;
		rst = 1'd0;
		
		
		// @t=229,
		#10
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=239,
		#10
		ip = 2'd2;
		rst = 1'd0;
		
		
		// @t=249,
		#10
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=259,
		#10
		ip = 2'd0;
		rst = 1'd0;
		
		
		// @t=269,
		#10
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=279,
		#10
		ip = 2'd2;
		rst = 1'd1;
		
		
		// @t=289,
		#10
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=299,
		#10
		ip = 2'd0;
		rst = 1'd0;
		
		
		// @t=309,
		#10
		ip = 2'd2;
		rst = 1'd0;
		
		
		// @t=319,
		#10
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=329,
		#10
		ip = 2'd0;
		rst = 1'd0;
		
		
		// @t=339,
		#10
		ip = 2'd2;
		rst = 1'd0;
		
		
		// @t=349,
		#10
		ip = 2'd0;
		rst = 1'd0;
		
		
		// @t=359,
		#10
		ip = 2'd3;
		rst = 1'd0;
		
		
		// @t=369,
		#10
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=379,
		#10
		ip = 2'd2;
		rst = 1'd0;
		
		
		// @t=389,
		#10
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=399,
		#10
		ip = 2'd0;
		rst = 1'd0;
		
		
		// @t=409,
		#10
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=419,
		#10
		ip = 2'd2;
		rst = 1'd0;
		
		
		// @t=429,
		#10
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=439,
		#10
		ip = 2'd3;
		rst = 1'd0;
		
		
		// @t=449,
		#10
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=459,
		#10
		ip = 2'd0;
		rst = 1'd0;
		
		
		// @t=469,
		#10
		ip = 2'd2;
		rst = 1'd0;
		
		
		// @t=479,
		#10
		ip = 2'd0;
		rst = 1'd0;
		
		
		// @t=489,
		#10
		ip = 2'd0;
		rst = 1'd0;
		
		
		// @t=499,
		#10
		ip = 2'd0;
		rst = 1'd0;
		
		
		// @t=509,
		#10
		ip = 2'd0;
		rst = 1'd0;
		
		
		// @t=519,
		#10
		ip = 2'd2;
		rst = 1'd0;
		
		
		// @t=529,
		#10
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=539,
		#10
		ip = 2'd0;
		rst = 1'd0;
		
		
		// @t=549,
		#10
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=559,
		#10
		ip = 2'd3;
		rst = 1'd0;
		
		
		// @t=569,
		#10
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=579,
		#10
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=589,
		#10
		ip = 2'd0;
		rst = 1'd0;
		
		
		// @t=599,
		#10
		ip = 2'd1;
		rst = 1'd0;
		
		
		// @t=609,
		#10
		ip = 2'd0;
		rst = 1'd0;
		
		
		
		
		#20;
		
		$display(" << Finishing the simulation >>");
		$finish;
	end

endmodule
