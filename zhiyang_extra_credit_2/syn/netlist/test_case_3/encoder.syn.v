
module encoder ( b, c );
  input [5:0] b;
  output [18:0] c;
  wire   c_15_, c_6_, c_5_, c_4_, c_3_, c_2_, c_1_, c_0_, n20, n21, n22, n23;
  assign c[11] = c_15_;
  assign c[15] = c_15_;
  assign c[13] = c_6_;
  assign c[6] = c_6_;
  assign c[5] = c_5_;
  assign c_5_ = b[5];
  assign c[4] = c_4_;
  assign c_4_ = b[4];
  assign c[3] = c_3_;
  assign c_3_ = b[3];
  assign c[2] = c_2_;
  assign c_2_ = b[2];
  assign c[1] = c_1_;
  assign c_1_ = b[1];
  assign c[0] = c_0_;
  assign c_0_ = b[0];

  XOR2X1 U23 ( .A(c_4_), .B(c[14]), .Y(c[9]) );
  XOR2X1 U24 ( .A(c_5_), .B(n20), .Y(c[8]) );
  XOR2X1 U25 ( .A(c_5_), .B(c_4_), .Y(c[7]) );
  XOR2X1 U26 ( .A(n21), .B(n22), .Y(c_6_) );
  XOR2X1 U27 ( .A(c_1_), .B(n20), .Y(c[18]) );
  XOR2X1 U28 ( .A(c_2_), .B(c_3_), .Y(n20) );
  XOR2X1 U29 ( .A(n22), .B(n23), .Y(c[17]) );
  XOR2X1 U30 ( .A(c_5_), .B(c_2_), .Y(n23) );
  XOR2X1 U31 ( .A(c_4_), .B(c_2_), .Y(c_15_) );
  XOR2X1 U32 ( .A(c_0_), .B(c_3_), .Y(c[14]) );
  XOR2X1 U33 ( .A(c_1_), .B(n21), .Y(c[12]) );
  XOR2X1 U34 ( .A(c_0_), .B(c_5_), .Y(n21) );
  XOR2X1 U35 ( .A(c_5_), .B(c[16]), .Y(c[10]) );
  XOR2X1 U36 ( .A(c_3_), .B(n22), .Y(c[16]) );
  XOR2X1 U37 ( .A(c_1_), .B(c_4_), .Y(n22) );
endmodule

