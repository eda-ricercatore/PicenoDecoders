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



// Testbench for behavioral model for the communication channel


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
`include "viterbidec.v"
`include "cencoder.v"
`include "noisegen.v"
`include "xor2.v"
`include "pipe.v"
`include "pipe2.v"


// IMPORTANT: To run this, try: ncverilog -f ee577bHw2q2.f +gui
// ============================================================
module tb_communication_channel();
	/**
	 * Description of module to model a communication channel
	 *
	 * This includes 3 stages in the communications channel
	 * @stage 1: Data from the transmitter (TX) is encoded.
	 * @stage 2: Data is "transmitted" across the communication
	 *			 channel, and gets corrupted with noise.
	 *			 Noise in the communication channel is modeled
	 *			 by pseudo-random noise that corrupts some of
	 *			 the data bits
	 * @stage 3: Data is received at the receiver (RX), and is
	 *			 subsequently decoded.
	 */
	 
	// ============================================================
	
	/**
	 * Declare signal types for testbench to drive and monitor
	 * signals during the simulation of the communication channel
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
	
	
	
		

	// ============================================================
	
	// Declare "wire" signals: outputs from the DUT
	// Outputs from the communication channel
	wire d;						// Output data signal
	wire [1:0] c;				// Encoded data 
	wire [1:0] cx;				// Corrupted encoded data 
wire b;				// Original data 
	// -----------------------------------------------------------
	// Encoded data output from the convolutional encoder
	wire [1:0] r_c;
	



	
	
	
//wire [255:0] rf;	
	// ============================================================
	// Declare "reg" signals: inputs to the DUT
	// ------------------------------------------------------------
	// Inputs to the communication channel
	//reg [255:0] r;				// Original data: 256 stream of bits
	reg  r[0:255];				// Original data: 256 stream of bits

reg rr;
	/**
	 * Randomly generated number to determine if data bit should
	 * be corrupted
	 */
	reg [7:0] e;
	reg clock;					// Clock input to all flip-flops
	// ------------------------------------------------------------
	/**
	 * Inputs to and outputs from the 1st stage of the communication
	 * channel
	 */
	// Original data input & input to the convolutional encoder
	reg r_b;
	// Encoded data output from the convolutional encoder
//	reg [1:0] r_c;
	/**
	 * Propagated randomly generated number to determine if data
	 * bit should be corrupted - propagated value from the input
	 * to the communications channel
	 */
	reg [7:0] r_e;
	// ------------------------------------------------------------
	/**
	 * Inputs to and outputs from the 2nd stage of the communication
	 * channel
	 */
	// Propagated values of the encoded data; also, input to XOR gate
	reg [1:0] rr_c;
	/**
	 * Further propagated randomly generated number to determine
	 * if data bit should be corrupted - propagated value from the
	 * input to the communications channel
	 */
	reg [7:0] r_e1;
	/**
	 * Randomly generated error that determines the corruption of
	 * the data bits
	 *
	 * Random number will corrupt the encoded data bits based on
	 * the XOR operator - invert the bits of the encoded data if
	 * they are different from the random error bits
	 *
	 * Also, input to XOR gate to generated corrupted encoded bits
	 */
wire [1:0] r_e2;
	/**
	 * Corrupted encoded data bits - model corruption of data during
	 * transmission of the data in the communications channel
	 */
wire [1:0] r_cx;
	// Propagated original data input
	reg r_b1;
	/** ########################################################
		#
		#	IMPORTANT!!!: MODIFY THE error_level HERE!!!
		#
		########################################################
	 ***
	 * 
	 * Error level that will be used to generate noise that will
	 * be used to corrupt encoded data bits
	 *
	 * Randomly generated error bits will be compared with this
	 * error level
	 */
	reg [7:0] error_level;
	// ------------------------------------------------------------
	// Inputs to the 3rd stage of the communication channel
	// Further propagated values of the encoded data
	reg [1:0] rr_c1;
	// Propagated values of the corrupted encoded data
	reg [1:0] r_cx1;
	// Propagated original data input
	reg r_b2;
	// Reset signal for the flip-flops and registers
	reg rset;
	
	
	
	
	
	
	
	
	
	
	// ============================================================
	// Counter for loop to enumerate all the values of r
	integer count;
	
	
	
	
	
	
	
	// ============================================================
	
	// Defining constants: parameter [name_of_constant] = value;
	parameter size_of_input = 9'd256;
	
	
	
	
	
	// ============================================================
	// Declare and instantiate modules for the communication channel
	
	/**
	 * Instantiate an instance of Viterbi decoder so that
	 * inputs can be passed to the Device Under Test (DUT)
	 * Given instance name is "v_d"
	 */
	viterbi_decoder v_d (
		// instance_name(signal name),
		// Signal name can be the same as the instance name
		d,r_cx1,clock,rset);
	
	// ------------------------------------------------------------
	
	/**
	 * Instantiate an instance of the convolutional encoder so that
	 * inputs can be passed to the Device Under Test (DUT)
	 * Given instance name is "enc"
	 */
	conv_encoder enc (
		// instance_name(signal name),
		// Signal name can be the same as the instance name
		r_c,r_b,clock,rset);
	
	// ------------------------------------------------------------
	
	/**
	 * Instantiate an instance of the noise generator so that
	 * inputs can be passed to the Device Under Test (DUT)
	 * Given instance name is "ng"
	 */
	noise_generator ng (
		// instance_name(signal name),
		// Signal name can be the same as the instance name
		r_e1,r_e2,error_level);
	
	// ------------------------------------------------------------
	
	/**
	 * Instantiate an instance of the 2-bit 2-input XOR gate so that
	 * inputs can be passed to the Device Under Test (DUT)
	 * Given instance name is "xor22"
	 */
	xor2_2bit xor22 (
		// instance_name(signal name),
		// Signal name can be the same as the instance name
		rr_c,r_e2,r_cx);
	
	
	// ------------------------------------------------------------
	
	/**
	 * Instantiate an instance of the pipe
	 * so that inputs can be passed to the Device Under Test (DUT)
	 * Given instance name is "pipe_c"
	 */
	pipeline_buffer_2bit pipe_c (
		// instance_name(signal name),
		// Signal name can be the same as the instance name
		rr_c1,c,clock,rset);
	
	// ------------------------------------------------------------
	
	/**
	 * Instantiate an instance of the pipe
	 * so that inputs can be passed to the Device Under Test (DUT)
	 * Given instance name is "pipe_cx"
	 */
	pipeline_buffer_2bit pipe_cx (
		// instance_name(signal name),
		// Signal name can be the same as the instance name
		r_cx1,cx,clock,rset);
	
	// ------------------------------------------------------------
	
	/**
	 * Instantiate an instance of the pipe
	 * so that inputs can be passed to the Device Under Test (DUT)
	 * Given instance name is "pipe_b"
	 */
	pipeline_buffer pipe_b (
		// instance_name(signal name),
		// Signal name can be the same as the instance name
		r_b2,b,clock,rset);
	
	
	
	
	
	
	
	
	
	
	
	
	
	// ============================================================
	
	/**
	 * Each sequential control block, such as the initial or always
	 * block, will execute concurrently in every module at the start
	 * of the simulation
	 */
	always begin
    	// Clock frequency is arbitrarily chosen
    	#5 clock = 0;
    	#5 clock = 1;
		// Period = 10 clock cycles
    end		
	
	
	
	
	

	// ============================================================
	// Create the register (flip-flop) for the initial/1st stage
	always@(posedge clock)
	begin
		if(rset)
		begin
			r_b<=0;
			r_e<=0;
		end
		else
		begin
			r_e<=e;
			r_b<=rr;
		end
	end
	
	// ------------------------------------------------------------
	// Create the register (flip-flop) for the 2nd stage
	always@(posedge clock)
	begin
		if(rset)
		begin
			rr_c<=0;
			r_e1<=0;
			r_b1<=0;
		end
		else
		begin
			rr_c<=r_c;
			r_e1<=r_e;
			r_b1<=r_b;
		end
	end
	
	// ------------------------------------------------------------
	// Create the register (flip-flop) for the 3rd stage
	always@(posedge clock)
	begin
		if(rset)
		begin
			rr_c1<=0;
			r_cx1<=0;
			r_b2<=0;
		end
		else
		begin
			rr_c1<=rr_c;
			r_cx1<=r_cx;
			r_b2<=r_b1;
		end
	end
	
	// ------------------------------------------------------------
	
	
	
	
	
	
	
	
	
	
	
	// ============================================================
	
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
		error_level=8'd5;
		rset=1;
		// @t=20,
		#20
		rset=0;
		
		
		
		/**
		 * Read the input data for r from an input file named
		 * "testfile.bit"
		 */
		$readmemb("testfile.bit",r);
///		$readmemb("testfile.bit",rf);
		
		/**
		 * IMPORTANT NOTE:
		 * Start to process inputs from the input file after
		 * 30 clock cycles
		 */
		
		for(count=0;count<size_of_input;count=count+1)
		begin
			#10
			//$display("Next");
			e=$random;
			rr=r[count];
			
			
			if(rr_c != r_cx) 
			begin
				//$display($time,"rr_c NOT EQUAL to r_cx");
			end
			
if(count==150)
begin
	rset=1;
end
else if(count==151)
begin
	rset=0;
end
			$display(cx[0],cx[1],rset);
			
		end
		
		
		
		
// Problem with d and error_level
		
		
		
		
		#20;
		
		$display(" << Finishing the simulation >>");
		$finish;
	end

endmodule
