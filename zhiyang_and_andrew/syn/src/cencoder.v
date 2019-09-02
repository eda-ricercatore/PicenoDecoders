/**
 * This is written by Andrew Mattheisen 
 * and Zhiyang Ong
 */
module conv_encoder (output [1:0] c, input b, input clk, input reset);
	// Output signals for the design module
	
	
	// Input signals for the design module
	
	
	// Declare "reg" signals...
	// Output bus that will be assigned values
	reg [1:0] c;
	/*
	 * Output of flip-flops in the convolutional encoder
	 * D_0 is the output of the first flip-flop
	 * D_1 is the output of the second flip-flop
	 */
	reg D_0, D_1;


	
	// Declare "wire" signals...
	// Defining constants: parameter [name_of_constant] = value;



	// First flip-flop of the convolutional encoder
	always @ (posedge clk)
	begin
		// If the reset signal is HIGH
		if (reset)
		begin
			// Ground the output signal of the first flip-flop
			D_0 <= 1'b0;
		end
		else
		begin
			// Assign the output of the 1st flip-flop to the signal b
			D_0 <= b;
		end
	end
	
	
	
	// Second flip-flop of the convolutional encoder
	always @ (posedge clk)
	begin
		// If the reset signal is HIGH
		if (reset)
		begin
			// Ground the output signal of the 2nd flip-flop
			D_1 <= 1'b0;
		end
		else
		begin
			// Assign the output of the 2nd flip-flop to the signal b
			D_1 <= D_0;
		end
	end
	
	

	always @ (D_0 or D_1 or b)
	begin
		// 3-input XOR gate of the convolutional encoder
		c[0]  <= b^D_0^D_1;
		// 2-input XOR gate of the convolutional encoder
		c[1]  <= b^D_1;
	end // always @ (D_0 or D_1 or b)
	
endmodule


