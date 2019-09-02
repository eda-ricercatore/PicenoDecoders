/**
 * This is written by Zhiyang Ong
 * and Andrew Mattheisen 
 */


// Design of the pipe
module pipeline_buffer (in,out,clock,reset);
	// Output signal for the design module
	output out;			// Output data signal
	
	

	// Input signals for the design module
	input in;			// Input data signal
	input clock;		// Input clock signal
	input reset;		// Input reset signal
	
	
	
	
	// Declare "reg" signals... that will be assigned values
	reg out;
	reg o1;						// Output of flip-flop #1
	reg o2;						// Output of flip-flop #2
	reg o3;						// Output of flip-flop #3
	reg o4;						// Output of flip-flop #4
	reg o5;						// Output of flip-flop #5
	reg o6;						// Output of flip-flop #6
	reg o7;						// Output of flip-flop #7
	reg o8;						// Output of flip-flop #8
	reg o9;						// Output of flip-flop #9
	reg o10;					// Output of flip-flop #10
	reg o11;					// Output of flip-flop #11
	reg o12;					// Output of flip-flop #12
	reg o13;					// Output of flip-flop #13
	reg o14;					// Output of flip-flop #14
	
	reg o15;					// Output of flip-flop #15
	reg o16;					// Output of flip-flop #16
	reg o17;					// Output of flip-flop #17
	reg o18;					// Output of flip-flop #18
	reg o19;					// Output of flip-flop #19
	reg o20;					// Output of flip-flop #20
	reg o21;					// Output of flip-flop #21
	reg o22;					// Output of flip-flop #22
	reg o23;					// Output of flip-flop #23
	reg o24;					// Output of flip-flop #24
	reg o25;					// Output of flip-flop #25
	reg o26;					// Output of flip-flop #26
	reg o27;					// Output of flip-flop #27
	reg o28;					// Output of flip-flop #28
	reg o29;					// Output of flip-flop #29
	reg o30;					// Output of flip-flop #30
	reg o31;					// Output of flip-flop #31
	// Declare "wire" signals...
	// Defining constants: parameter [name_of_constant] = value;
	
	
	// Create the 1st flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o1 = 1'd0;
		else
			o1 = in;
	end
	
	
	// Create the 2nd flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o2 = 1'd0;
		else
			o2 = o1;
	end
	
	
	// Create the 3rd flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o3 = 1'd0;
		else
			o3 = o2;
	end
	
	
	// Create the 4th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o4 = 1'd0;
		else
			o4 = o3;
	end
	
	
	// Create the 5th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o5 = 1'd0;
		else
			o5 = o4;
	end
	
	
	// Create the 6th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o6 = 1'd0;
		else
			o6 = o5;
	end
	
	
	// Create the 7th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o7 = 1'd0;
		else
			o7 = o6;
	end
	
	
	// Create the 8th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o8 = 1'd0;
		else
			o8 = o7;
	end
	
	
	// Create the 9th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o9 = 1'd0;
		else
			o9 = o8;
	end
	
	
	// Create the 10th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o10 = 1'd0;
		else
			o10 = o9;
	end
	
	
	// Create the 11th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o11 = 1'd0;
		else
			o11 = o10;
	end
	
	
	// Create the 12th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o12 = 1'd0;
		else
			o12 = o11;
	end
	
	
	// Create the 13th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o13 = 1'd0;
		else
			o13 = o12;
	end
	
	
	// Create the 14th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o14 = 1'd0;
		else
			o14 = o13;
	end
	
	
	// Create the 15th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o15 = 1'd0;
		else
			o15 = o14;
	end
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// Create the 16th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o16 = 1'd0;
		else
			o16 = o15;
	end
	
	
	// Create the 17th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o17 = 1'd0;
		else
			o17 = o16;
	end
	
	
	// Create the 18th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o18 = 1'd0;
		else
			o18 = o17;
	end
	
	
	// Create the 19th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o19 = 1'd0;
		else
			o19 = o18;
	end
	
	
	// Create the 20th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o20 = 1'd0;
		else
			o20 = o19;
	end
	
	
	// Create the 21st flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o21 = 1'd0;
		else
			o21 = o20;
	end
	
	
	// Create the 22nd flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o22 = 1'd0;
		else
			o22 = o21;
	end
	
	
	// Create the 23rd flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o23 = 1'd0;
		else
			o23 = o22;
	end
	
	
	// Create the 24th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o24 = 1'd0;
		else
			o24 = o23;
	end
	
	
	// Create the 25th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o25 = 1'd0;
		else
			o25 = o24;
	end
	
	
	// Create the 26th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o26 = 1'd0;
		else
			o26 = o25;
	end
	
	
	// Create the 27th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o27 = 1'd0;
		else
			o27 = o26;
	end
	
	
	// Create the 28th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o28 = 1'd0;
		else
			o28 = o27;
	end
	
	
	// Create the 29th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o29 = 1'd0;
		else
			o29 = o28;
	end
	
	
	// Create the 30th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o30 = 1'd0;
		else
			o30 = o29;
	end
	
	
	// Create the 31st flip-flop of the 15 flip-flop pipeline buffer

	always @(posedge clock)
	begin
		if(reset)
			o31 = 1'd0;
		else
			o31 = o30;
	end
	
	
	// Create the 32nd flip-flop of the 15 flip-flop pipeline buffer

	always @(posedge clock)
	begin
		if(reset)
			out = 1'd0;
		else
			out = o31;
	end

	
	
	
	
	
endmodule


