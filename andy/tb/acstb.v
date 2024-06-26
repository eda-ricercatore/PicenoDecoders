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



// Testbench for behavioral model for the add-compare


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
 * environment
 *
 * If the ".f" files are used to run NC-Verilog to compile and
 * simulate the Verilog testbench modules,
 */
//`include "acs.v"

// IMPORTANT: To run this, try: ncverilog -f ee577bHw2q2.f +gui
module tb_acs();
	/**
	 * Declare signal types for testbench to drive and monitor
	 * signals during the simulation of the arbiter
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
	wire [3:0] new_pm;		// Output signal npm
	wire decision;			// Output signal d
	
	
	// Declare "reg" signals: inputs to the DUT
	reg [1:0] brch_m1;		// Input signal - bm1
	reg [1:0] brch_m2;		// Input signal - bm2
	reg [3:0] path_m1;		// Input signal - pm1
	reg [3:0] path_m2;		// Input signal - pm2

	
	
	/**
	 * Instantiate an instance of arbiter_LRU4 so that
	 * inputs can be passed to the Device Under Test (DUT)
	 * Given instance name is "arb"
	 */
	add_compare_select acs_cir (
		// instance_name(signal name),
		// Signal name can be the same as the instance name
		new_pm,decision,path_m1,brch_m1,path_m2,brch_m2);
	

	
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
		path_m1 = 4'd0;
		brch_m1 = 2'd0;
		path_m2 = 4'd0;
		brch_m2 = 2'd0;

		// @t=1,
		#1
		path_m1 = 4'd0;
		brch_m1 = 2'd1;
		path_m2 = 4'd6;
		brch_m2 = 2'd2;

		
		// @t=2,
		#1
		path_m1 = 4'd7;
		brch_m1 = 2'd2;
		path_m2 = 4'd0;
		brch_m2 = 2'd3;

		
		// @t=3,
		#1
		path_m1 = 4'd14;
		brch_m1 = 2'd1;
		path_m2 = 4'd13;
		brch_m2 = 2'd0;

		
		// @t=4,
		#1
		path_m1 = 4'd9;
		brch_m1 = 2'd3;
		path_m2 = 4'd8;
		brch_m2 = 2'd1;

		
		// @t=5,
		#1
		path_m1 = 4'd15;
		brch_m1 = 2'd1;
		path_m2 = 4'd15;
		brch_m2 = 2'd0;

		
		// @t=6,
		#1
		path_m1 = 4'd15;
		brch_m1 = 2'd1;
		path_m2 = 4'd15;
		brch_m2 = 2'd2;

		
		// @t=7,
		#1
		path_m1 = 4'd13;
		brch_m1 = 2'd3;
		path_m2 = 4'd14;
		brch_m2 = 2'd2;

		
		// @t=8,
		#1
		path_m1 = 4'd14;
		brch_m1 = 2'd3;
		path_m2 = 4'd15;
		brch_m2 = 2'd3;

		
		// @t=9,
		#1
		path_m1 = 4'd15;
		brch_m1 = 2'd3;
		path_m2 = 4'd15;
		brch_m2 = 2'd3;

		
		// @t=10,
		#1
		path_m1 = 4'd16;
		brch_m1 = 2'd8;
		path_m2 = 4'd2;
		brch_m2 = 2'd3;

		
		// @t=11,
		#1
		path_m1 = 4'd12;
		brch_m1 = 2'd2;
		path_m2 = 4'd12;
		brch_m2 = 2'd1;

		
		// @t=12,
		#1
		path_m1 = 4'd9;
		brch_m1 = 2'd1;
		path_m2 = 4'd10;
		brch_m2 = 2'd2;

		
		#20;
		
		$display(" << Finishing the simulation >>");
		$finish;
	end

endmodule
