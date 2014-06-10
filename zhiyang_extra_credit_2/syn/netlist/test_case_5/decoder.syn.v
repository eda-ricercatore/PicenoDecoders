
module decoder ( cx, d );
  input [11:0] cx;
  output [6:0] d;
  wire   d_6_, d_4_, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221;
  assign d[6] = d_6_;
  assign d_6_ = cx[6];
  assign d[4] = d_4_;
  assign d_4_ = cx[4];

  XOR2X1 U52 ( .A(n189), .B(n190), .Y(d[5]) );
  NAND3X1 U53 ( .A(n191), .B(n192), .C(n193), .Y(n190) );
  XOR2X1 U54 ( .A(cx[3]), .B(n194), .Y(d[3]) );
  NOR2X1 U55 ( .A(n195), .B(n196), .Y(n194) );
  NAND2X1 U56 ( .A(n197), .B(n198), .Y(n196) );
  NAND3X1 U57 ( .A(n199), .B(n200), .C(n192), .Y(n195) );
  XOR2X1 U58 ( .A(cx[2]), .B(n201), .Y(d[2]) );
  NOR2X1 U59 ( .A(n202), .B(n203), .Y(n201) );
  OR2X1 U60 ( .A(n199), .B(n200), .Y(n203) );
  NAND3X1 U61 ( .A(n197), .B(n191), .C(n204), .Y(n202) );
  XNOR2X1 U62 ( .A(cx[1]), .B(n205), .Y(d[1]) );
  NAND3X1 U63 ( .A(n193), .B(n192), .C(n198), .Y(n205) );
  INVX1 U64 ( .A(n204), .Y(n192) );
  XNOR2X1 U65 ( .A(cx[0]), .B(n206), .Y(d[0]) );
  NAND3X1 U66 ( .A(n193), .B(n191), .C(n204), .Y(n206) );
  XOR2X1 U67 ( .A(n207), .B(n208), .Y(n204) );
  XOR2X1 U68 ( .A(d_6_), .B(cx[7]), .Y(n208) );
  XOR2X1 U69 ( .A(n189), .B(n209), .Y(n207) );
  INVX1 U70 ( .A(n198), .Y(n191) );
  XOR2X1 U71 ( .A(n210), .B(n211), .Y(n198) );
  XOR2X1 U72 ( .A(cx[10]), .B(n212), .Y(n211) );
  INVX1 U73 ( .A(n213), .Y(n193) );
  NAND3X1 U74 ( .A(n200), .B(n214), .C(n199), .Y(n213) );
  XNOR2X1 U75 ( .A(n215), .B(n216), .Y(n199) );
  XOR2X1 U76 ( .A(cx[2]), .B(cx[0]), .Y(n216) );
  XOR2X1 U77 ( .A(n217), .B(cx[5]), .Y(n215) );
  XNOR2X1 U78 ( .A(d_4_), .B(cx[8]), .Y(n217) );
  INVX1 U79 ( .A(n197), .Y(n214) );
  XOR2X1 U80 ( .A(n218), .B(n219), .Y(n197) );
  XOR2X1 U81 ( .A(cx[1]), .B(cx[11]), .Y(n219) );
  XNOR2X1 U82 ( .A(cx[3]), .B(n220), .Y(n218) );
  XOR2X1 U83 ( .A(d_6_), .B(cx[5]), .Y(n220) );
  XNOR2X1 U84 ( .A(n210), .B(n221), .Y(n200) );
  XOR2X1 U85 ( .A(cx[9]), .B(n212), .Y(n221) );
  XNOR2X1 U86 ( .A(d_6_), .B(n189), .Y(n212) );
  INVX1 U87 ( .A(cx[5]), .Y(n189) );
  XNOR2X1 U88 ( .A(cx[3]), .B(n209), .Y(n210) );
  XOR2X1 U89 ( .A(cx[0]), .B(cx[1]), .Y(n209) );
endmodule

