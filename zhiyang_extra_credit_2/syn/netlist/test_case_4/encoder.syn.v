
module encoder ( b, c );
  input [2:0] b;
  output [8:0] c;
  wire   c_2_, c_1_, c_0_;
  assign c[6] = 1'b0;
  assign c[2] = c_2_;
  assign c[3] = c_2_;
  assign c_2_ = b[2];
  assign c[1] = c_1_;
  assign c_1_ = b[1];
  assign c[0] = c_0_;
  assign c[8] = c_0_;
  assign c_0_ = b[0];

  XOR2X1 U9 ( .A(c_2_), .B(c_1_), .Y(c[7]) );
  XOR2X1 U10 ( .A(c_2_), .B(c_0_), .Y(c[5]) );
  XOR2X1 U11 ( .A(c_1_), .B(c_0_), .Y(c[4]) );
endmodule

