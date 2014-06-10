/**
 * This is written by Zhiyang Ong -student number 6004919412-
 * for EE577b Extra Credit Homework , Question 2
 *
 * Behavioral model for the Hamming decoder
 */
module decoder4to16 (in,out);
	// Output signals representing the 11-bit decoded vector
	output reg [15:1] out;
	
	
	// Input signals representing the 15-bit input
	input [3:0] in;
	
	
	// Declare "reg" signals...
	reg [3:0] in_bar;
	// Declare "wire" signals...
	// Defining constants: parameter [name_of_constant] = value;
	
	
	always @(*)
	begin
		// Invert the inputs...
		in_bar=~in;
		
		// Don't define out[0] because you don't wanna flip correct outputs
		//out[0]=in_bar[0]	&	in_bar[1]	&	in_bar[2]	&	in_bar[3];
		out[1]=in[0]		&	in_bar[1]	&	in_bar[2]	&	in_bar[3];
		out[2]=in_bar[0]	&	in[1]		&	in_bar[2]	&	in_bar[3];
		out[3]=in[0]		&	in[1]		&	in_bar[2]	&	in_bar[3];
		out[4]=in_bar[0]	&	in_bar[1]	&	in[2]		&	in_bar[3];
		out[5]=in[0]		&	in_bar[1]	&	in[2]		&	in_bar[3];
		out[6]=in_bar[0]	&	in[1]		&	in[2]		&	in_bar[3];
		out[7]=in[0]		&	in[1]		&	in[2]		&	in_bar[3];
		out[8]=in_bar[0]	&	in_bar[1]	&	in_bar[2]	&	in[3];
		out[9]=in[0]		&	in_bar[1]	&	in_bar[2]	&	in[3];
		out[10]=in_bar[0]	&	in[1]		&	in_bar[2]	&	in[3];
		out[11]=in[0]		&	in[1]		&	in_bar[2]	&	in[3];
		out[12]=in_bar[0]	&	in_bar[1]	&	in[2]		&	in[3];
		out[13]=in[0]		&	in_bar[1]	&	in[2]		&	in[3];
		out[14]=in_bar[0]	&	in[1]		&	in[2]		&	in[3];
		out[15]=in[0]		&	in[1]		&	in[2]		&	in[3];

	end
	
	
endmodule
