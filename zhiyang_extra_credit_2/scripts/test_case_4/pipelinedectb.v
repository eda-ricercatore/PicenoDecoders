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

// Testbench for behavioral model for the decoder


// Import the modules that will be tested for in this testbench
`include "decoder4to16.v"
`include "encoder_pl.v"
`include "decoder_pl.v"
`include "pipelinedec.v"

// IMPORTANT: To run this, try: ncverilog -f ee577bHw2q2.f +gui
module tb_pipeline();
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
	
	// Declare "wire" signals: outputs from the DUTs
	// Output of stage 1
	wire [14:0] c;
	// Output of stage 2
	wire [15:1] err;
	wire [14:0] cx;
	// Output of stage 3
	wire [10:0] q;
	wire [10:0] qx;
	//wire [10:0] rb;
	
	
	// Declare "reg" signals: inputs to the DUTs
	// 1st stage
	reg [10:0] b;
	reg [10:0] r_b;
	reg [3:0] e;
	reg [3:0] r_e;
	// 2nd stage
	reg [14:0] r_c;
	reg [3:0] rr_e;
	reg [10:0] rr_b;
	//reg [15:1] err;
	// 3rd stage
	//reg [14:0] cx;
	//reg [10:0] qx;
	reg [14:0] r_qx;
	reg [10:0] rb;
	
	reg clk,reset;
	
	
	
	/**
	 * Instantiate an instance of arbiter_LRU4 so that
	 * inputs can be passed to the Device Under Test (DUT)
	 * Given instance name is "arb"
	 */
	decoder4to16 dec4to16 (
		// instance_name(signal name),
		// Signal name can be the same as the instance name
		rr_e,err);
	
	encoder enc (
		// instance_name(signal name),
		// Signal name can be the same as the instance name
		r_b,c);
	
	decoder dec (
		// instance_name(signal name),
		// Signal name can be the same as the instance name
		r_qx,q);
	
	large_xor xr (
		// instance_name(signal name),
		// Signal name can be the same as the instance name
		r_c,err,cx);
	
	parity_stripper ps (
		// instance_name(signal name),
		// Signal name can be the same as the instance name
		r_qx,qx);
	
	
	
	/**
	 * Each sequential control block, such as the initial or always
	 * block, will execute concurrently in every module at the start
	 * of the simulation
	 */
	always begin
    	// Clock frequency is arbitrarily chosen
    	#10 clk = 0;
    	#10 clk = 1;
    end		
	
	
	
	
	
	
	
	// Create the register (flip-flop) for the initial/1st stage
	always@(posedge clk)
	begin
		if(reset)
		begin
			r_b<=0;
			r_e<=0;
		end
		else
		begin
			r_e<=e;
			r_b<=b;
		end
	end
	
	
	// Create the register (flip-flop) for the 2nd stage
	always@(posedge clk)
	begin
		if(reset)
		begin
			r_c<=0;
			rr_e<=0;
			rr_b<=0;
		end
		else
		begin
			r_c<=c;
			rr_e<=r_e;
			rr_b<=r_b;
		end
	end
	
	
	
	// Create the register (flip-flop) for the 3rd stage
	always@(posedge clk)
	begin
		if(reset)
		begin
			r_qx<=0;
			rb<=0;
		end
		else
		begin
			r_qx<=cx;
			rb<=rr_b;
		end
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
		reset=1;
		#20;
		reset=0;
		b = $random;
		e = $random;
		$display(q, "<< Displaying q[10:0] >>");
		$display(qx, "<< Displaying qx[10:0] >>");
		$display(rb, "<< Displaying rb[10:0] >>");
		
		#20;
		b = $random;
		e = $random;
		$display(q, "<< Displaying q[10:0] >>");
		$display(qx, "<< Displaying qx[10:0] >>");
		$display(rb, "<< Displaying rb[10:0] >>");
		
		

		#20;
		b = $random;
		e = $random;
		$display(q, "<< Displaying q[10:0] >>");
		$display(qx, "<< Displaying qx[10:0] >>");
		$display(rb, "<< Displaying rb[10:0] >>");
		
		
		#20;
		b = $random;
		e = $random;
		$display(q, "<< Displaying q[10:0] >>");
		$display(qx, "<< Displaying qx[10:0] >>");
		$display(rb, "<< Displaying rb[10:0] >>");
		
		
		#20;
		b = $random;
		e = $random;
		$display(q, "<< Displaying q[10:0] >>");
		$display(qx, "<< Displaying qx[10:0] >>");
		$display(rb, "<< Displaying rb[10:0] >>");
		
		#20;
		b = $random;
		e = $random;
		$display(q, "<< Displaying q[10:0] >>");
		$display(qx, "<< Displaying qx[10:0] >>");
		$display(rb, "<< Displaying rb[10:0] >>");
		
		#20;
		b = $random;
		e = $random;
		$display(q, "<< Displaying q[10:0] >>");
		$display(qx, "<< Displaying qx[10:0] >>");
		$display(rb, "<< Displaying rb[10:0] >>");
		
		#20;
		b = $random;
		e = $random;
		$display(q, "<< Displaying q[10:0] >>");
		$display(qx, "<< Displaying qx[10:0] >>");
		$display(rb, "<< Displaying rb[10:0] >>");
		
		#20;
		b = $random;
		e = $random;
		$display(q, "<< Displaying q[10:0] >>");
		$display(qx, "<< Displaying qx[10:0] >>");
		$display(rb, "<< Displaying rb[10:0] >>");
		
		#20;
		b = $random;
		e = $random;
		$display(q, "<< Displaying q[10:0] >>");
		$display(qx, "<< Displaying qx[10:0] >>");
		$display(rb, "<< Displaying rb[10:0] >>");
		
				
		#300;
		
		$display(" << Finishing the simulation >>");
		$finish;
	end

endmodule
