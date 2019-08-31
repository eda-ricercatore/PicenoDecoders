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

/**
 * This is written by Zhiyang Ong
 * for EE577b Homework 2, Question 2
 */

// Testbench for behavioral model for the encoder


// Import the modules that will be tested for in this testbench
`include "encoder.v"

// IMPORTANT: To run this, try: ncverilog -f ee577bHw2q2.f +gui
module tb_arbiter();
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
	wire [3:0] grant_vector;
	
	// Declare "reg" signals: inputs to the DUT
	reg [3:0] req_vector;
	reg clk,reset,enable;
	
	
	
	/**
	 * Each sequential control block, such as the initial or always
	 * block, will execute concurrently in every module at the start
	 * of the simulation
	 */
	always begin
    	// Clock frequency is given in the question
    	#5 clk = 0;
    	#5 clk = 1;
    end	
	
	
	/**
	 * Instantiate an instance of arbiter_LRU4 so that
	 * inputs can be passed to the Device Under Test (DUT)
	 * Given instance name is "arb"
	 */
	arbiter_LRU4 arb (
		// instance_name(signal name),
		// Signal name can be the same as the instance name
		grant_vector,req_vector,enable,clk,reset);
	

	
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
		$display($time, " << Starting the simulation >>");
		reset = 1;
		enable = 0;
		req_vector = 4'b1010;
		
		// @ t=0,
		@(posedge clk);
		#1;
		reset = 0;
		enable = 0;
		req_vector = 4'b1110;
		
		
		@(posedge clk);
		#1;
		reset = 0;
		enable = 1;
		req_vector = 4'b1111;
		
		
		@(posedge clk);
		#1;
		reset = 0;
		enable = 1;
		req_vector = 4'b1000;
		
		
		@(posedge clk);
		#1;
		reset = 0;
		enable = 1;
		req_vector = 4'b1011;
		
		
		@(posedge clk);
		#1;
		reset = 0;
		enable = 1;
		req_vector = 4'b0111;
		
		
		@(posedge clk);
		#1;
		reset = 0;
		enable = 0;
		req_vector = 4'b1110;
		
		
		@(posedge clk);
		#1;
		reset = 1;
		enable = 0;
		req_vector = 4'b1011;
		
		
		@(posedge clk);
		#1;
		reset = 0;
		enable = 1;
		req_vector = 4'b1100;
		
		
		@(posedge clk);
		#1;
		reset = 0;
		enable = 1;
		req_vector = 4'b1101;
		
		
		@(posedge clk);
		#1;
		reset = 0;
		enable = 1;
		req_vector = 4'b1010;
		
		
		@(posedge clk);
		#1;
		reset = 0;
		enable = 1;
		req_vector = 4'b1111;
		
		
		@(posedge clk);
		#1;
		reset = 0;
		enable = 1;
		req_vector = 4'b1110;
		
		
		// Wait for another 20 ns
		#20;
		
		$display($time, " << Finishing the simulation >>");
		$finish;
	end

endmodule
