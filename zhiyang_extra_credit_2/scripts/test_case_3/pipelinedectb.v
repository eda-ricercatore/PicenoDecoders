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
 * This is written by Zhiyang Ong -student number 6004919412-
 * for EE577b Homework 2, Question 2
 */

// Testbench for behavioral model for the decoder


// Import the modules that will be tested for in this testbench
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
	wire [18:0] c;
	// Output of stage 2
	wire [18:0] cx;
	// Output of stage 3
	wire [5:0] q;
	//wire [10:0] rb;
	
	
	// Declare "reg" signals: inputs to the DUTs
	// 1st stage
	reg [5:0] b;
	reg [5:0] r_b;
	reg [18:0] e;
	reg [18:0] r_e;
	// 2nd stage
	reg [18:0] r_c;
	reg [18:0] rr_e;
	reg [5:0] rr_b;
	//reg [15:1] err;
	// 3rd stage
	//reg [14:0] cx;
	//reg [10:0] qx;
	reg [18:0] r_qx;
	reg [5:0] rb;
	
	reg clk,reset;
	reg [18:0] e2;
	
	
	
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
		r_c,rr_e,cx);
	
	
	
	
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
			rb<=0;
		end
		else
		begin
			r_qx<=cx;
			rb<=rr_b;
			e2<=rr_e;
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
		e = 18'b000000000000000000;
		$display(q, "<< Displaying q >>");
		$display(rb, "<< Displaying rb >>");
		
		#20;
		b = $random;
		e = 18'b000000000000000000;
		$display(q, "<< Displaying q >>");
		$display(rb, "<< Displaying rb >>");
		
		

		#20;
		b = $random;
		e = 18'b000001000000000000;
		$display(q, "<< Displaying q >>");
		$display(rb, "<< Displaying rb >>");
		
		
		#20;
		b = $random;
		e = 18'b000000000000000000;
		$display(q, "<< Displaying q >>");
		$display(rb, "<< Displaying rb >>");
		
		
		#20;
		b = $random;
		e = 18'b000000000000000000;
		$display(q, "<< Displaying q >>");
		$display(rb, "<< Displaying rb >>");
		
		#20;
		b = $random;
		e = 18'b000010000000000000;
		$display(q, "<< Displaying q >>");
		$display(rb, "<< Displaying rb >>");
		
		#20;
		b = $random;
		e = 18'b000000000010000000;
		$display(q, "<< Displaying q >>");
		$display(rb, "<< Displaying rb >>");
		
		#20;
		b = $random;
		e = 18'b000000000000000000;
		$display(q, "<< Displaying q >>");
		$display(rb, "<< Displaying rb >>");
		
		#20;
		b = $random;
		e = 18'b001000000000000000;
		$display(q, "<< Displaying q >>");
		$display(rb, "<< Displaying rb >>");
		
		#20;
		b = $random;
		e = 18'b000000000000000000000;
		$display(q, "<< Displaying q >>");
		$display(rb, "<< Displaying rb >>");
		
				
		#300;
		
		$display(" << Finishing the simulation >>");
		$finish;
	end

endmodule
