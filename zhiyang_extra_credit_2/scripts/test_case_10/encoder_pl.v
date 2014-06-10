module encoder (b,c);
	output [12:0] c;

	input [7:0] b;

	reg [12:0] c;

	always @(b)
	begin
		c[0] = b[0];
		c[1] = b[1];
		c[2] = b[2];
		c[3] = b[3];
		c[4] = b[4];
		c[5] = b[5];
		c[6] = b[6];
		c[7] = b[7];
		c[8] = b[0] ^ b[1] ^ b[2] ^ b[4] ^ b[5] ^ b[6];
		c[9] = b[0] ^ b[1] ^ b[6];
		c[10] = b[4] ^ b[6];
		c[11] = b[2] ^ b[3] ^ b[4];
		c[12] = b[0];
	end
endmodule
