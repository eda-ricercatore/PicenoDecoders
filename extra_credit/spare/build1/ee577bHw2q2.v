/**
 * This is written by Zhiyang Ong
 * for EE577b Extra Credit Homework , Question 2
 *
 * Behavioral model for the Hamming encoder
 */
module ham_15_11_encoder (input d[10:0],output c[14:0]);
	// Output signals representing the 15-bit encoded vector
	output reg [14:0] c;
	
	
	// Input signals representing the 15-bit output
	input [10:0] req_vector;
	
	
	// Declare "reg" signals...
	// Parity bits for Hamming encoding
	reg [3:0] p;
	
	// Declare "wire" signals...
	// Defining constants: parameter [name_of_constant] = value;
	
	
	// Determine for each parity bit, what data bits is it made of
	p[0]=((d[0]^d[1])^(d[3]^d[4]))^((d[6]^d[8])^d[10]);
	p[1]=((d[0]^d[2])^(d[3]^d[5]))^((d[6]^d[9])^d[10]);
	p[2]=((d[1]^d[2])^(d[3]^d[7]))^((d[8]^d[9])^d[10]);
	p[3]=((d[4]^d[5])^(d[6]^d[7]))^((d[8]^d[9])^d[10]);
	
	
	
	// Assign the encoded signal bits to data bits...
	c[2]=d[0];
	c[4]=d[1];
	c[5]=d[2];
	c[6]=d[3];
	c[8]=d[4];
	c[9]=d[5];
	c[10]=d[6];
	c[11]=d[7];
	c[12]=d[8];
	c[13]=d[9];
	c[14]=d[10];
	
	
	// Introduce parity bits to encode signal values
	c[0]=p[0];
	c[1]=p[1];
	c[3]=p[2];
	c[7]=p[3];
	
	
endmodule
