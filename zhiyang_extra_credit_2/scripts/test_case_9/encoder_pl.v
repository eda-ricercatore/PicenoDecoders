module encoder (b,c);
	output [20:0] c;

	input [17:0] b;

	reg [20:0] c;

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
		c[8] = b[8];
		c[9] = b[9];
		c[10] = b[10];
		c[11] = b[11];
		c[12] = b[12];
		c[13] = b[13];
		c[14] = b[14];
		c[15] = b[15];
		c[16] = b[16];
		c[17] = b[17];
		c[18] = b[0];
		c[19] = b[1];
		c[20] = b[2];
	end
endmodule
