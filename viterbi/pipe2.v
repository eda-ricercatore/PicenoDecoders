/**
 * This is written by Zhiyang Ong 
 * and Andrew Mattheisen 
 */


// Design of the 2-bit pipe
module pipeline_buffer_2bit (in,out,clock,reset);
	// Output signal for the design module
	output [1:0] out;			// Output data signal
	
	

	// Input signals for the design module
	input [1:0] in;				// Input data signal
	input clock;				// Input clock signal
	input reset;				// Input reset signal
	
	
	
	
	// Declare "reg" signals... that will be assigned values
	reg [1:0] out;
	reg [1:0] o1;					// Output of flip-flop #1
	reg [1:0] o2;					// Output of flip-flop #2
	reg [1:0] o3;					// Output of flip-flop #3
	reg [1:0] o4;					// Output of flip-flop #4
	reg [1:0] o5;					// Output of flip-flop #5
	reg [1:0] o6;					// Output of flip-flop #6
	reg [1:0] o7;					// Output of flip-flop #7
	reg [1:0] o8;					// Output of flip-flop #8
	reg [1:0] o9;					// Output of flip-flop #9
	reg [1:0] o10;					// Output of flip-flop #10
	reg [1:0] o11;					// Output of flip-flop #11
	reg [1:0] o12;					// Output of flip-flop #12
	reg [1:0] o13;					// Output of flip-flop #13
	reg [1:0] o14;					// Output of flip-flop #14
	
	reg [1:0] o15;					// Output of flip-flop #15
	reg [1:0] o16;					// Output of flip-flop #16
	reg [1:0] o17;					// Output of flip-flop #17
	reg [1:0] o18;					// Output of flip-flop #18
	reg [1:0] o19;					// Output of flip-flop #19
	reg [1:0] o20;					// Output of flip-flop #20
	reg [1:0] o21;					// Output of flip-flop #21
	reg [1:0] o22;					// Output of flip-flop #22
	reg [1:0] o23;					// Output of flip-flop #23
	reg [1:0] o24;					// Output of flip-flop #24
	reg [1:0] o25;					// Output of flip-flop #25
	reg [1:0] o26;					// Output of flip-flop #26
	reg [1:0] o27;					// Output of flip-flop #27
	reg [1:0] o28;					// Output of flip-flop #28
	reg [1:0] o29;					// Output of flip-flop #29
	reg [1:0] o30;					// Output of flip-flop #30
	reg [1:0] o31;					// Output of flip-flop #31
	// Declare "wire" signals...
	// Defining constants: parameter [name_of_constant] = value;
	
	
	// Create the 1st flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o1 = 2'd0;
		else
			o1 = in;
	end
	
	
	// Create the 2nd flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o2 = 2'd0;
		else
			o2 = o1;
	end
	
	
	// Create the 3rd flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o3 = 2'd0;
		else
			o3 = o2;
	end
	
	
	// Create the 4th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o4 = 2'd0;
		else
			o4 = o3;
	end
	
	
	// Create the 5th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o5 = 2'd0;
		else
			o5 = o4;
	end
	
	
	// Create the 6th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o6 = 2'd0;
		else
			o6 = o5;
	end
	
	
	// Create the 7th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o7 = 2'd0;
		else
			o7 = o6;
	end
	
	
	// Create the 8th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o8 = 2'd0;
		else
			o8 = o7;
	end
	
	
	// Create the 9th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o9 = 2'd0;
		else
			o9 = o8;
	end
	
	
	// Create the 10th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o10 = 2'd0;
		else
			o10 = o9;
	end
	
	
	// Create the 11th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o11 = 2'd0;
		else
			o11 = o10;
	end
	
	
	// Create the 12th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o12 = 2'd0;
		else
			o12 = o11;
	end
	
	
	// Create the 13th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o13 = 2'd0;
		else
			o13 = o12;
	end
	
	
	// Create the 14th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o14 = 2'd0;
		else
			o14 = o13;
	end
	
	
	// Create the 15th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o15 = 2'd0;
		else
			o15 = o14;
	end
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// Create the 16th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o16 = 2'd0;
		else
			o16 = o15;
	end
	
	
	// Create the 17th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o17 = 2'd0;
		else
			o17 = o16;
	end
	
	
	// Create the 18th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o18 = 2'd0;
		else
			o18 = o17;
	end
	
	
	// Create the 19th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o19 = 2'd0;
		else
			o19 = o18;
	end
	
	
	// Create the 20th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o20 = 2'd0;
		else
			o20 = o19;
	end
	
	
	// Create the 21st flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o21 = 2'd0;
		else
			o21 = o20;
	end
	
	
	// Create the 22nd flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o22 = 2'd0;
		else
			o22 = o21;
	end
	
	
	// Create the 23rd flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o23 = 2'd0;
		else
			o23 = o22;
	end
	
	
	// Create the 24th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o24 = 2'd0;
		else
			o24 = o23;
	end
	
	
	// Create the 25th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o25 = 2'd0;
		else
			o25 = o24;
	end
	
	
	// Create the 26th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o26 = 2'd0;
		else
			o26 = o25;
	end
	
	
	// Create the 27th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o27 = 2'd0;
		else
			o27 = o26;
	end
	
	
	// Create the 28th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o28 = 2'd0;
		else
			o28 = o27;
	end
	
	
	// Create the 29th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o29 = 2'd0;
		else
			o29 = o28;
	end
	
	
	// Create the 30th flip-flop of the 15 flip-flop pipeline buffer
	always @(posedge clock)
	begin
		if(reset)
			o30 = 2'd0;
		else
			o30 = o29;
	end
	
	
	// Create the 31st flip-flop of the 15 flip-flop pipeline buffer

	always @(posedge clock)
	begin
		if(reset)
			o31 = 2'd0;
		else
			o31 = o30;
	end

	
	
	// Create the 32nd flip-flop of the 15 flip-flop pipeline buffer

	always @(posedge clock)
	begin
		if(reset)
			out = 2'd0;
		else
			out = o31;
	end

	
	
	
	
	
endmodule


