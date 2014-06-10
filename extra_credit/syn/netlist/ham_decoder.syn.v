
module ham_15_11_decoder ( c, q );
  input [14:0] c;
  output [10:0] q;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73;

  MUX2X1 U45 ( .B(n1), .A(n2), .S(n3), .Y(q[9]) );
  NOR2X1 U46 ( .A(n4), .B(n5), .Y(n3) );
  MUX2X1 U47 ( .B(n6), .A(n2), .S(n7), .Y(q[8]) );
  NOR2X1 U48 ( .A(n8), .B(n5), .Y(n7) );
  INVX1 U49 ( .A(c[12]), .Y(n6) );
  MUX2X1 U50 ( .B(n9), .A(n2), .S(n10), .Y(q[7]) );
  NOR2X1 U51 ( .A(n11), .B(n12), .Y(n10) );
  MUX2X1 U52 ( .B(n13), .A(n2), .S(n14), .Y(q[6]) );
  NOR2X1 U53 ( .A(n15), .B(n12), .Y(n14) );
  NAND3X1 U54 ( .A(n16), .B(n17), .C(n18), .Y(n12) );
  MUX2X1 U55 ( .B(n19), .A(n2), .S(n20), .Y(q[5]) );
  NOR2X1 U56 ( .A(n11), .B(n21), .Y(n20) );
  MUX2X1 U57 ( .B(n22), .A(n2), .S(n23), .Y(q[4]) );
  NOR2X1 U58 ( .A(n15), .B(n21), .Y(n23) );
  OR2X1 U59 ( .A(n5), .B(n24), .Y(n21) );
  MUX2X1 U60 ( .B(n25), .A(n2), .S(n26), .Y(q[3]) );
  NOR2X1 U61 ( .A(n27), .B(n16), .Y(n26) );
  MUX2X1 U62 ( .B(n28), .A(n2), .S(n29), .Y(q[2]) );
  NOR2X1 U63 ( .A(n4), .B(n30), .Y(n29) );
  MUX2X1 U64 ( .B(n31), .A(n2), .S(n32), .Y(q[1]) );
  NOR2X1 U65 ( .A(n8), .B(n30), .Y(n32) );
  NAND2X1 U66 ( .A(n33), .B(n34), .Y(n30) );
  MUX2X1 U67 ( .B(n35), .A(n2), .S(n36), .Y(q[10]) );
  NOR2X1 U68 ( .A(n33), .B(n27), .Y(n36) );
  INVX1 U69 ( .A(c[14]), .Y(n35) );
  MUX2X1 U70 ( .B(n37), .A(n2), .S(n38), .Y(q[0]) );
  NOR2X1 U71 ( .A(n39), .B(n40), .Y(n38) );
  NAND2X1 U72 ( .A(n33), .B(n18), .Y(n40) );
  NAND2X1 U73 ( .A(n11), .B(n17), .Y(n39) );
  OAI21X1 U74 ( .A(n41), .B(n5), .C(n42), .Y(n2) );
  MUX2X1 U75 ( .B(n43), .A(n44), .S(n16), .Y(n42) );
  NOR2X1 U76 ( .A(n34), .B(n45), .Y(n44) );
  AOI22X1 U77 ( .A(n46), .B(n18), .C(n47), .D(c[14]), .Y(n45) );
  MUX2X1 U78 ( .B(n9), .A(n13), .S(n11), .Y(n46) );
  INVX1 U79 ( .A(c[10]), .Y(n13) );
  INVX1 U80 ( .A(c[11]), .Y(n9) );
  OAI21X1 U81 ( .A(n37), .B(n24), .C(n48), .Y(n43) );
  AOI22X1 U82 ( .A(n34), .B(n49), .C(n50), .D(c[6]), .Y(n48) );
  INVX1 U83 ( .A(n27), .Y(n50) );
  NAND2X1 U84 ( .A(n47), .B(n17), .Y(n27) );
  OAI22X1 U85 ( .A(n31), .B(n8), .C(n28), .D(n4), .Y(n49) );
  INVX1 U86 ( .A(c[5]), .Y(n28) );
  NAND2X1 U87 ( .A(n34), .B(n16), .Y(n5) );
  INVX1 U88 ( .A(n33), .Y(n16) );
  XOR2X1 U89 ( .A(n51), .B(n52), .Y(n33) );
  XOR2X1 U90 ( .A(c[7]), .B(c[11]), .Y(n52) );
  XOR2X1 U91 ( .A(n53), .B(n54), .Y(n51) );
  INVX1 U92 ( .A(n17), .Y(n34) );
  OAI21X1 U93 ( .A(n55), .B(n15), .C(n56), .Y(n17) );
  AOI21X1 U94 ( .A(n47), .B(c[12]), .C(n57), .Y(n41) );
  OAI22X1 U95 ( .A(n1), .B(n4), .C(n24), .D(n58), .Y(n57) );
  MUX2X1 U96 ( .B(c[9]), .A(c[8]), .S(n11), .Y(n58) );
  NAND2X1 U97 ( .A(n15), .B(n24), .Y(n4) );
  INVX1 U98 ( .A(c[13]), .Y(n1) );
  INVX1 U99 ( .A(n8), .Y(n47) );
  NAND2X1 U100 ( .A(n24), .B(n11), .Y(n8) );
  INVX1 U101 ( .A(n15), .Y(n11) );
  INVX1 U102 ( .A(n18), .Y(n24) );
  XOR2X1 U103 ( .A(n59), .B(n60), .Y(n18) );
  XOR2X1 U104 ( .A(n61), .B(n62), .Y(n60) );
  XOR2X1 U105 ( .A(c[14]), .B(c[13]), .Y(n62) );
  XOR2X1 U106 ( .A(c[5]), .B(c[3]), .Y(n61) );
  XOR2X1 U107 ( .A(n63), .B(n64), .Y(n59) );
  XOR2X1 U108 ( .A(c[12]), .B(c[11]), .Y(n64) );
  XOR2X1 U109 ( .A(n56), .B(n65), .Y(n63) );
  NAND2X1 U110 ( .A(n55), .B(n15), .Y(n56) );
  XOR2X1 U111 ( .A(n66), .B(n67), .Y(n15) );
  XOR2X1 U112 ( .A(c[2]), .B(c[0]), .Y(n67) );
  XNOR2X1 U113 ( .A(n65), .B(n54), .Y(n66) );
  XNOR2X1 U114 ( .A(n68), .B(n69), .Y(n54) );
  XOR2X1 U115 ( .A(n22), .B(c[12]), .Y(n68) );
  INVX1 U116 ( .A(c[8]), .Y(n22) );
  XOR2X1 U117 ( .A(n31), .B(n25), .Y(n65) );
  INVX1 U118 ( .A(c[6]), .Y(n25) );
  INVX1 U119 ( .A(c[4]), .Y(n31) );
  XOR2X1 U120 ( .A(n70), .B(n71), .Y(n55) );
  XOR2X1 U121 ( .A(c[2]), .B(n72), .Y(n71) );
  XOR2X1 U122 ( .A(c[6]), .B(c[5]), .Y(n72) );
  XOR2X1 U123 ( .A(n53), .B(n73), .Y(n70) );
  XOR2X1 U124 ( .A(c[1]), .B(n69), .Y(n73) );
  XOR2X1 U125 ( .A(c[10]), .B(c[14]), .Y(n69) );
  XOR2X1 U126 ( .A(n19), .B(c[13]), .Y(n53) );
  INVX1 U127 ( .A(c[9]), .Y(n19) );
  INVX1 U128 ( .A(c[2]), .Y(n37) );
endmodule


module ham_decoder ( cc, qq );
  input [14:0] cc;
  output [10:0] qq;


  ham_15_11_decoder hdec ( .c(cc), .q(qq) );
endmodule

