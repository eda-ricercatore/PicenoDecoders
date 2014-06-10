
module ham_15_11_encoder ( d, c );
  input [10:0] d;
  output [14:0] c;
  wire   n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97;
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

  XOR2X1 U61 ( .A(n84), .B(n85), .Y(c[7]) );
  XOR2X1 U62 ( .A(d[7]), .B(n86), .Y(n85) );
  XOR2X1 U63 ( .A(n87), .B(n88), .Y(c[3]) );
  XOR2X1 U64 ( .A(n89), .B(n90), .Y(n88) );
  XOR2X1 U65 ( .A(d[2]), .B(d[10]), .Y(n90) );
  XOR2X1 U66 ( .A(d[7]), .B(n91), .Y(n87) );
  XOR2X1 U67 ( .A(d[9]), .B(d[8]), .Y(n91) );
  XOR2X1 U68 ( .A(n92), .B(n93), .Y(c[1]) );
  XOR2X1 U69 ( .A(n86), .B(n94), .Y(n93) );
  XOR2X1 U70 ( .A(d[9]), .B(d[5]), .Y(n86) );
  XOR2X1 U71 ( .A(d[0]), .B(n95), .Y(n92) );
  XOR2X1 U72 ( .A(d[3]), .B(d[2]), .Y(n95) );
  XOR2X1 U73 ( .A(n89), .B(n96), .Y(c[0]) );
  XOR2X1 U74 ( .A(d[0]), .B(n84), .Y(n96) );
  XNOR2X1 U75 ( .A(n97), .B(n94), .Y(n84) );
  XOR2X1 U76 ( .A(d[10]), .B(d[6]), .Y(n94) );
  XNOR2X1 U77 ( .A(d[8]), .B(d[4]), .Y(n97) );
  XOR2X1 U78 ( .A(d[3]), .B(d[1]), .Y(n89) );
endmodule

