
module encoder ( b, c );
  input [6:0] b;
  output [11:0] c;
  wire   c_9_, c_6_, c_5_, c_4_, c_3_, c_2_, c_1_, c_0_, n20, n21, n22, n23;
  assign c[10] = c_9_;
  assign c[9] = c_9_;
  assign c[6] = c_6_;
  assign c_6_ = b[6];
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

  XOR2X1 U16 ( .A(c_0_), .B(c[11]), .Y(c_9_) );
  XOR2X1 U17 ( .A(n20), .B(n21), .Y(c[8]) );
  XOR2X1 U18 ( .A(c_2_), .B(c_0_), .Y(n21) );
  XOR2X1 U19 ( .A(c_5_), .B(c_4_), .Y(n20) );
  XOR2X1 U20 ( .A(c_0_), .B(n22), .Y(c[7]) );
  XOR2X1 U21 ( .A(n22), .B(c_3_), .Y(c[11]) );
  XNOR2X1 U22 ( .A(n23), .B(c_1_), .Y(n22) );
  XNOR2X1 U23 ( .A(c_5_), .B(c_6_), .Y(n23) );
endmodule

