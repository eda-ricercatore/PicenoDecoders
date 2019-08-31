/**
 * This is written by Zhiyang Ong
 * for EE577b Extra Credit Homework , Question 2
 *
 * Behavioral model for the Hamming decoder
 */
module ham_15_11_decoder (c,q);
	// Output signals representing the 11-bit decoded vector
	output reg [10:0] q;
	
	
	// Input signals representing the 15-bit input
	input [14:0] c;
	
	
	// Declare "reg" signals...
	// Parity bits for Hamming decoding - P's (P primes)
	reg [3:0] pb;
	// Syndrome bits for Hamming decoding
	reg [3:0] s;
	// Temporary variable to contain the conversion from binary to decimal
	//real temp;
	reg [3:0] temp;
	// Temporary storage for inputs
	reg [14:0] inputs;
	
	// Declare "wire" signals...
	// Defining constants: parameter [name_of_constant] = value;
	
	
	always @(*)
	begin
	
		/*
		 * Determine for each parity prime bit, what code bits
		 * is it made of
		 */
		pb[0]=c[2]^c[4]^c[6]^c[8]^c[10]^c[12]^c[14];
		pb[1]=c[2]^c[5]^c[6]^c[9]^c[10]^c[13]^c[14];
		pb[2]=c[4]^c[5]^c[6]^c[11]^c[12]^c[13]^c[14];
		pb[3]=c[8]^c[9]^c[10]^c[11]^c[12]^c[13]^c[14];
//	assign p[0]=d[0];
	//p{0}=d{0};
	//p(0)=d(0);		
		
		// Determine S from pb and p
		s[0] = c[0]^pb[0];
		s[1] = c[1]^pb[1];
		s[2] = c[3]^pb[2];
		s[3] = c[7]^pb[3];
	
		// Temporary store the values into a temp variable
		inputs=c;
	
			
		// Flip the decode bit with the detected error to correct it
		/*
		temp[0]=s[0]*1;
		temp[1]=s[1]*2;
		temp[2]=s[2]*4;
		temp[3]=s[3]*8;
		*/
		temp=s[0]*1;
		temp=temp+s[1]*2;
		temp=temp+s[2]*4;
		temp=temp+s[3]*8-1;
		//temp=$bitstoreal(s);
		//c[temp]=c[temp]^1;	// Compiling error
		//q[temp]=c[temp]^1;	// I/P index != output index
		inputs[temp]=c[temp]^1;
		
		
		// Assign the decoded signal bits to syndrome bits...
		q[0]=inputs[2];
		q[1]=inputs[4];
		q[2]=inputs[5];
		q[3]=inputs[6];
		q[4]=inputs[8];
		q[5]=inputs[9];
		q[6]=inputs[10];
		q[7]=inputs[11];
		q[8]=inputs[12];
		q[9]=inputs[13];
		q[10]=inputs[14];

	end
	
	
endmodule
