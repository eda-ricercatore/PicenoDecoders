
module decoder ( cx, d );
  input [8:0] cx;
  output [2:0] d;
  wire   n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170;

  MUX2X1 U47 ( .B(n133), .A(n134), .S(cx[2]), .Y(d[2]) );
  NOR2X1 U48 ( .A(n135), .B(n136), .Y(n134) );
  INVX1 U49 ( .A(n137), .Y(n135) );
  MUX2X1 U50 ( .B(n137), .A(n138), .S(cx[1]), .Y(d[1]) );
  NOR2X1 U51 ( .A(n139), .B(n136), .Y(n138) );
  NAND2X1 U52 ( .A(n140), .B(n141), .Y(n136) );
  INVX1 U53 ( .A(n142), .Y(n140) );
  MUX2X1 U54 ( .B(n141), .A(n143), .S(cx[0]), .Y(d[0]) );
  NOR2X1 U55 ( .A(n142), .B(n144), .Y(n143) );
  NAND2X1 U56 ( .A(n137), .B(n133), .Y(n144) );
  INVX1 U57 ( .A(n139), .Y(n133) );
  NOR2X1 U58 ( .A(n145), .B(n146), .Y(n139) );
  NAND3X1 U59 ( .A(n147), .B(cx[6]), .C(n148), .Y(n146) );
  NAND3X1 U60 ( .A(n149), .B(n150), .C(n151), .Y(n145) );
  NAND3X1 U61 ( .A(n147), .B(n152), .C(n153), .Y(n137) );
  NOR2X1 U62 ( .A(n149), .B(n154), .Y(n153) );
  NAND2X1 U63 ( .A(n150), .B(n155), .Y(n154) );
  INVX1 U64 ( .A(n156), .Y(n150) );
  NAND3X1 U65 ( .A(n157), .B(n158), .C(n159), .Y(n142) );
  INVX1 U66 ( .A(n160), .Y(n159) );
  OAI21X1 U67 ( .A(n152), .B(cx[6]), .C(n147), .Y(n160) );
  NOR2X1 U68 ( .A(n161), .B(n148), .Y(n152) );
  MUX2X1 U69 ( .B(n162), .A(n163), .S(n149), .Y(n158) );
  INVX1 U70 ( .A(n164), .Y(n149) );
  NOR2X1 U71 ( .A(n156), .B(n155), .Y(n162) );
  INVX1 U72 ( .A(cx[6]), .Y(n155) );
  MUX2X1 U73 ( .B(n156), .A(n148), .S(n161), .Y(n157) );
  OR2X1 U74 ( .A(n165), .B(n166), .Y(n141) );
  NAND3X1 U75 ( .A(n147), .B(n156), .C(cx[6]), .Y(n166) );
  XNOR2X1 U76 ( .A(cx[0]), .B(n167), .Y(n156) );
  XOR2X1 U77 ( .A(cx[4]), .B(cx[1]), .Y(n167) );
  XNOR2X1 U78 ( .A(cx[0]), .B(n168), .Y(n147) );
  XOR2X1 U79 ( .A(cx[5]), .B(cx[2]), .Y(n168) );
  NAND3X1 U80 ( .A(n161), .B(n163), .C(n164), .Y(n165) );
  XNOR2X1 U81 ( .A(cx[0]), .B(cx[8]), .Y(n164) );
  INVX1 U82 ( .A(n148), .Y(n163) );
  XOR2X1 U83 ( .A(n169), .B(n170), .Y(n148) );
  XOR2X1 U84 ( .A(cx[7]), .B(cx[2]), .Y(n170) );
  INVX1 U85 ( .A(cx[1]), .Y(n169) );
  INVX1 U86 ( .A(n151), .Y(n161) );
  XNOR2X1 U87 ( .A(cx[2]), .B(cx[3]), .Y(n151) );
endmodule

