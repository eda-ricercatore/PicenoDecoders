
module ham_15_11_encoder ( d, c );
  input [10:0] d;
  output [14:0] c;
  wire   n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;
  assign c[14] = d[10];
  assign c[13] = d[9];
  assign c[12] = d[8];
  assign c[11] = d[7];
  assign c[10] = d[6];
  assign c[9] = d[5];
  assign c[8] = d[4];
  assign c[6] = d[3];
  assign c[5] = d[2];
  assign c[4] = d[1];
  assign c[2] = d[0];

  XOR2X1 U25 ( .A(n28), .B(n29), .Y(c[7]) );
  XOR2X1 U26 ( .A(d[7]), .B(n30), .Y(n29) );
  XOR2X1 U27 ( .A(n31), .B(n32), .Y(c[3]) );
  XOR2X1 U28 ( .A(n33), .B(n34), .Y(n32) );
  XOR2X1 U29 ( .A(d[2]), .B(d[10]), .Y(n34) );
  XOR2X1 U30 ( .A(d[7]), .B(n35), .Y(n31) );
  XOR2X1 U31 ( .A(d[9]), .B(d[8]), .Y(n35) );
  XOR2X1 U32 ( .A(n36), .B(n37), .Y(c[1]) );
  XOR2X1 U33 ( .A(n30), .B(n38), .Y(n37) );
  XOR2X1 U34 ( .A(d[9]), .B(d[5]), .Y(n30) );
  XOR2X1 U35 ( .A(d[0]), .B(n39), .Y(n36) );
  XOR2X1 U36 ( .A(d[3]), .B(d[2]), .Y(n39) );
  XOR2X1 U37 ( .A(n33), .B(n40), .Y(c[0]) );
  XOR2X1 U38 ( .A(d[0]), .B(n28), .Y(n40) );
  XNOR2X1 U39 ( .A(n41), .B(n38), .Y(n28) );
  XOR2X1 U40 ( .A(d[10]), .B(d[6]), .Y(n38) );
  XNOR2X1 U41 ( .A(d[8]), .B(d[4]), .Y(n41) );
  XOR2X1 U42 ( .A(d[3]), .B(d[1]), .Y(n33) );
endmodule

