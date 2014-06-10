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



// Testbench for behavioral model for the convolutional encoder


// Import the modules that will be tested for in this testbench
`include "cencoder.v"

// IMPORTANT: To run this, try: ncverilog -f ee577bHw2q2.f +gui
module tb_cencoder();
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
	wire [1:0] cout;
	
	// Declare "reg" signals: inputs to the DUT
	reg bin;			// Input signal - b
	reg ck;				// Input clk signal
	reg rset;			// Input signal - reset
	
	
	
	
	
	/**
	 * Set the clock signal, and its frequency
	 *
	 * Each sequential control block, such as the initial or always
	 * block, will execute concurrently in every module at the start
	 * of the simulation
	 */
	always begin
    	/*
		 * Clock frequency is arbitrarily chosen
		 * Period = 10 ns, frequency = 100MHz
		 */
    	#5 ck = 0;
    	#5 ck = 1;
    end	
	
	
	
	
	
	/**
	 * Instantiate an instance of a convolutional encoder so that
	 * inputs can be passed to the Device Under Test (DUT)
	 * Given instance name is "enc"
	 */
	conv_encoder enc (
		// instance_name(signal name),
		// Signal name can be the same as the instance name
		cout,bin,ck,rset);
	

	
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
		bin = 1'b0;
		rset=0;
		
		// @ t=3,
		#3;
		bin = 1'b1;
		rset=0;
		
		
		// @ t=10,
		#7;
		bin = 1'b0;
		rset=0;
		
		
		// @ t=19,
		#9;
		bin = 1'b1;
		rset=0;
		
		
		// @ t=29,
		#10;
		bin = 1'b0;
		rset=0;
		
		
		// @ t=39,
		#10;
		bin = 1'b1;
		rset=0;
		
		
		// @ t=50-1,
		#10;
		bin = 1'b0;
		rset=0;
		
		
		// @ t=60-1,
		#10;
		bin = 1'b1;
		rset=0;
		
		
		// @ t=70-1,
		#10;
		bin = 1'b0;
		rset=0;
		
		
		// @ t=80-1,
		#10;
		bin = 1'b0;
		rset=0;
		
		
		// @ t=90-1,
		#10;
		bin = 1'b1;
		rset=0;
		
		
		// @ t=100-1,
		#10;
		bin = 1'b1;
		rset=1;
		
		
		// @ t=110-1,
		#9;
		bin = 1'b0;
		rset=0;
		
		
		// @ t=120-1,
		#10;
		bin = 1'b1;
		rset=0;
		
		
		// @ t=130-1,
		#10;
		bin = 1'b0;
		rset=0;
		
		
		// @ t=140-1,
		#10;
		bin = 1'b1;
		rset=1;
		
		
		#20;
		
		$display(" << Finishing the simulation >>");
		$finish;
	end

endmodule
