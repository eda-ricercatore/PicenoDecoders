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



// Testbench for behavioral model for the Viterbi decoder


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
//`include "viterbidec.v"

// IMPORTANT: To run this, try: ncverilog -f ee577bHw2q2.f +gui
module tb_viterbi_decoder();
	/**
	 * Declare signal types for testbench to drive and monitor
	 * signals during the simulation of the Viterbi decoder
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
	wire data;				// Output signal d
	
	
	// Declare "reg" signals: inputs to the DUT
	reg [1:0] encoded_input;	// Input signal - cx
	reg clock;					// Input signal - clk
	reg reset_sig;				// Input signal - reset
	
	
	
	/**
	 * Instantiate an instance of Viterbi decoder so that
	 * inputs can be passed to the Device Under Test (DUT)
	 * Given instance name is "v_d"
	 */
	viterbi_decoder v_d (
		// instance_name(signal name),
		// Signal name can be the same as the instance name
		data,encoded_input,clock,reset_sig);
	
	
	
	
	/**
	 * Each sequential control block, such as the initial or always
	 * block, will execute concurrently in every module at the start
	 * of the simulation
	 */
	always begin
    	// Clock frequency is arbitrarily chosen
    	#5 clock = 0;
    	#5 clock = 1;
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
		reset_sig = 1'd0;
		encoded_input = 2'd1;
		
		
		// @t=10,
		#10
		reset_sig = 1'd1;
		encoded_input = 2'd0;
		
		
		// @t=20,
		#10
		reset_sig = 1'd0;
		encoded_input = 2'd1;
		
		
		// @t=30,
		#10
		reset_sig = 1'd0;
		encoded_input = 2'd0;
		
		
		// @t=40,
		#10
		reset_sig = 1'd0;
		encoded_input = 2'd0;
		
		
		// @t=50,
		#10
		reset_sig = 1'd0;
		encoded_input = 2'd3;
		
		
		// @t=60,
		#10
		reset_sig = 1'd0;
		encoded_input = 2'd2;
		
		
		// @t=70,
		#10
		reset_sig = 1'd0;
		encoded_input = 2'd0;
		
		
		// @t=80,
		#10
		reset_sig = 1'd0;
		encoded_input = 2'd2;
		
		
		// @t=90,
		#10
		reset_sig = 1'd0;
		encoded_input = 2'd1;
		
		
		// @t=100,
		#10
		reset_sig = 1'd0;
		encoded_input = 2'd3;
		
		
		// @t=110,
		#10
		reset_sig = 1'd0;
		encoded_input = 2'd0;
		
		
		// @t=120,
		#10
		reset_sig = 1'd0;
		encoded_input = 2'd1;
		
		
		// @t=130,
		#10
		reset_sig = 1'd0;
		encoded_input = 2'd0;
		
		
		// @t=140,
		#10
		reset_sig = 1'd0;
		encoded_input = 2'd2;
		
		
		// @t=150,
		#10
		reset_sig = 1'd0;
		encoded_input = 2'd0;
		
		
		// @t=160,
		#10
		reset_sig = 1'd0;
		encoded_input = 2'd0;
		
		
		// @t=170,
		#10
		reset_sig = 1'd0;
		encoded_input = 2'd3;
		
		
		// @t=180,
		#10
		reset_sig = 1'd0;
		encoded_input = 2'd1;
		
		
		// @t=190,
		#10
		reset_sig = 1'd0;
		encoded_input = 2'd0;
		
		
		// @t=200,
		#10
		reset_sig = 1'd0;
		encoded_input = 2'd1;
		
		
		// @t=210,
		#10
		reset_sig = 1'd0;
		encoded_input = 2'd2;
		
		
		// @t=220,
		#10
		reset_sig = 0;
		encoded_input = $random;
		
		
		// @t=230,
		#10
		reset_sig = 0;
		encoded_input = $random;
		
		
		// @t=240,
		#10
		reset_sig = 0;
		encoded_input = $random;
		
		
		// @t=250,s
		#10
		reset_sig = 0;
		encoded_input = $random;
		
		
		// @t=260,
		#10
		reset_sig = 0;
		encoded_input = $random;
		
		
		// @t=270,
		#10
		reset_sig = 0;
		encoded_input = $random;
		
		
		// @t=280,
		#10
		reset_sig = 0;
		encoded_input = $random;
		
		
		// @t=290,
		#10
		reset_sig = 0;
		encoded_input = $random;
		
		
		// @t=300,
		#10
		reset_sig = 0;
		encoded_input = $random;
		
		
		// @t=310,
		#10
		reset_sig = 0;
		encoded_input = $random;
		
		
		// @t=320,
		#10
		reset_sig = 0;
		encoded_input = $random;
		
		
		// @t=330,
		#10
		reset_sig = 0;
		encoded_input = $random;
		
		
		// @t=340,
		#10
		reset_sig = 0;
		encoded_input = $random;
		
		
		// @t=350,
		#10
		reset_sig = 0;
		encoded_input = $random;
		
		
		// @t=360,
		#10
		reset_sig = 0;
		encoded_input = $random;
		
		
		// @t=370,
		#10
		reset_sig = 0;
		encoded_input = $random;
		
		
		// @t=380,
		#10
		reset_sig = 0;
		encoded_input = $random;
		
		
		// @t=390,
		#10
		reset_sig = 0;
		encoded_input = $random;
		
		
		// @t=400,
		#10
		reset_sig = 1;
		encoded_input = $random;
		
		
		// @t=410,
		#10
		reset_sig = 0;
		encoded_input = $random;
		
		
		// @t=420,
		#10
		reset_sig = 0;
		encoded_input = $random;
		
		
		#20;
		
		$display(" << Finishing the simulation >>");
		$finish;
	end

endmodule
