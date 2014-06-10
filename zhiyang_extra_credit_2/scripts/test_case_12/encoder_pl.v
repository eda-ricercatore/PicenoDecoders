module encoder (b,c);
	output [13:0] c;

	input [3:0] b;

	reg [13:0] c;

	always @(b)
	begin
		c[13] = b[3];
		c[12] = b[2];
		c[11] = b[1];
		c[10] = b[0];
		c[9] = b[0] ^ b[2] ^ b[3];
		c[8] = b[2] ^ b[3];
		c[7] = b[0] ^ b[1] ^ b[3];
		c[6] = b[1] ^ b[3];
		c[5] = b[0] ^ b[3];
		c[4] = b[0] ^ b[1] ^ b[2];
		c[3] = b[1] ^ b[2];
		c[2] = b[0] ^ b[2];
		c[1] = b[0] ^ b[1];
		c[0] = b[0];
	end
endmodule
