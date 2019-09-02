/**
 * This is written by Zhiyang Ong 
 * and Andrew Mattheisen 
 */


// Design of the 2-bit 2-input XOR gate
module xor2_2bit (a, b, out);
	// Output vector for the design module
	output [1:0] out;
	
	
	
	
	
	// Input signals for the design module
	// Input vector
	input [1:0] a;
	// Another input vector
	input [1:0] b;
	
	
	
	
	
	// Declare "reg" signals... that will be assigned values
	reg [1:0] out;
	// Declare "wire" signals...
	// Defining constants: parameter [name_of_constant] = value;
	
	
	// Carry out the XOR operation on the 2 2-bit inputs
	always @(*)
	begin
		out[0]=a[0]^b[0];
		out[1]=a[1]^b[1];
		
	end
	
	
endmodule


