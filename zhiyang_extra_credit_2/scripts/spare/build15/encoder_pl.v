module encoder (b,c);
	output [11:0] c;

	input [6:0] b;

	reg [11:0] c;

	always @(b)
	begin
		c[0] = b[0];
		c[1] = b[1];
		c[2] = b[2];
		c[3] = b[3];
		c[4] = b[4];
		c[5] = b[5];
		c[6] = b[6];
		c[7] = b[1] ^ b[4] ^ b[5];
		c[8] = b[0] ^ b[2] ^ b[3] ^ b[4] ^ b[5];
		c[9] = b[0] ^ b[3];
		c[10] = b[0] ^ b[3] ^ b[4] ^ b[5];
		c[11] = b[3] ^ b[5];
	end
endmodule
