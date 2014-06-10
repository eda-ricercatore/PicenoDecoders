module adder1bit(A,B,Cin,S,Cout);
	input A,B,Cin;
	output S,Cout;
	reg [1:0] SUM;
	reg S, Cout;
	
	always @(A or B or Cin)
	begin
		SUM[1:0] = A + B + Cin;
		S = SUM[0];
		Cout = SUM[1];
	end

endmodule
