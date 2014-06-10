module encoder (b,c);
	output [8:0] c;

	input [2:0] b;

	reg [8:0] c;

	always @(b)
	begin
		c[0] = b[0];
		c[1] = b[1];
		c[2] = b[2];
		c[3] = b[2];
		c[4] = b[0] ^ b[1];
		c[5] = b[0] ^ b[2];
		c[6] = 1'b0;
		c[7] = b[1] ^ b[2];
		c[8] = b[0];
	end
endmodule
