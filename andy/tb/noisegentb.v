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



// Testbench for behavioral model of the noise generator


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
//`include "noisegen.v"

// IMPORTANT: To run this, try: ncverilog -f ee577bHw2q2.f +gui
module tb_noise_gen();
	/**
	 * Declare signal types for testbench to drive and monitor
	 * signals during the simulation of the noise generator
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
	wire [1:0] n;				// Output signal noise
	
	
	// Declare "reg" signals: inputs to the DUT
	reg [7:0] err;				// Input signal - error
	reg [7:0] error_level;		// Input signal - err_level
	
	
	
	
	/**
	 * Instantiate an instance of noise generator so that
	 * inputs can be passed to the Device Under Test (DUT)
	 * Given instance name is "n_g"
	 */
	noise_generator n_g (
		// instance_name(signal name),
		// Signal name can be the same as the instance name
		err,n,error_level);
	
	
	
		

	
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
		err = 8'd1;
		error_level = 8'd100;
		
		
		// @t=10,
		#10
		err = 8'd103;
		error_level = 8'd100;
		
		
		// @t=20,
		#10
		err = 8'd205;
		error_level = 8'd100;
		
		
		// @t=30,
		#10
		err = 8'd251;
		error_level = 8'd100;
		
		
		// @t=40,
		#10
		err = 8'd79;
		error_level = 8'd100;
		
		
		// @t=50,
		#10
		err = 8'd37;
		error_level = 8'd10;
		
		
		// @t=60,
		#10
		err = 8'd7;
		error_level = 8'd10;
		
		
		// @t=70,
		#10
		err = 8'd10;
		error_level = 8'd10;
		
		
		#20;
		
		$display(" << Finishing the simulation >>");
		$finish;
	end

endmodule
