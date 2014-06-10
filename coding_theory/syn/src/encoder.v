/**
 * This is written by Zhiyang Ong -student number 6004919412-
 * for EE577b Extra Credit Homework , Question 2
 *
 * Behavioral model for the Hamming encoder
 */
module ham_15_11_encoder (d,c);
	// Output signals representing the 15-bit encoded vector
	output [14:0] c;
	
	
	// Input signals representing the 11-bit input
	input [10:0] d;
	
	
	// Declare "reg" signals...
	// Parity bits for Hamming encoding
//	reg [3:0] p;
	
	// Declare "wire" signals...
	// Defining constants: parameter [name_of_constant] = value;
	
	
//	always @(*)
//	begin
	
		// Determine for each parity bit, what data bits is it made of
		//p[0]=((d[0]^d[1])^(d[3]^d[4]))^((d[6]^d[8])^d[10]);
//		assign p[0]=d[0]^d[1]^d[3]^d[4]^d[6]^d[8]^d[10];

//	assign p[0]=d[0];
	//p{0}=d{0};
	//p(0)=d(0);
//		assign p[1]=((d[0]^d[2])^(d[3]^d[5]))^((d[6]^d[9])^d[10]);
//		assign p[2]=((d[1]^d[2])^(d[3]^d[7]))^((d[8]^d[9])^d[10]);
//		assign p[3]=((d[4]^d[5])^(d[6]^d[7]))^((d[8]^d[9])^d[10]);
		
		
	
		// Assign the encoded signal bits to data bits...
		assign c[2]=d[0];
		assign c[4]=d[1];
		assign c[5]=d[2];
		assign c[6]=d[3];
		assign c[8]=d[4];
		assign c[9]=d[5];
		assign c[10]=d[6];
		assign c[11]=d[7];
		assign c[12]=d[8];
		assign c[13]=d[9];
		assign c[14]=d[10];
		
	
		// Introduce parity bits to encode signal values
//		assign c[0]=p[0];
//		assign c[1]=p[1];
//		assign c[3]=p[2];
//		assign c[7]=p[3];


        assign c[0]=d[0]^d[1]^d[3]^d[4]^d[6]^d[8]^d[10];
		assign c[1]=((d[0]^d[2])^(d[3]^d[5]))^((d[6]^d[9])^d[10]);
		assign c[3]=((d[1]^d[2])^(d[3]^d[7]))^((d[8]^d[9])^d[10]);
		assign c[7]=((d[4]^d[5])^(d[6]^d[7]))^((d[8]^d[9])^d[10]);
//	end
	
	
endmodule
