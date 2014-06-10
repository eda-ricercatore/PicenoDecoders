
module spdu_13 ( in0, in1, in2, in3, d0, d1, d2, d3, out0, out1, out2, out3, 
        clk, reset );
  input in0, in1, in2, in3, d0, d1, d2, d3, clk, reset;
  output out0, out1, out2, out3;
  wire   out0205, out1211, out2217, out3223, n1, n2, n3, n4;

  DFFPOSX1 out3_reg ( .D(out3223), .CLK(clk), .Q(out3) );
  DFFPOSX1 out2_reg ( .D(out2217), .CLK(clk), .Q(out2) );
  DFFPOSX1 out1_reg ( .D(out1211), .CLK(clk), .Q(out1) );
  DFFPOSX1 out0_reg ( .D(out0205), .CLK(clk), .Q(out0) );
  NOR2X1 U37 ( .A(reset), .B(n1), .Y(out3223) );
  MUX2X1 U38 ( .B(in2), .A(in3), .S(d3), .Y(n1) );
  NOR2X1 U39 ( .A(reset), .B(n2), .Y(out2217) );
  MUX2X1 U40 ( .B(in0), .A(in1), .S(d2), .Y(n2) );
  NOR2X1 U41 ( .A(reset), .B(n3), .Y(out1211) );
  MUX2X1 U42 ( .B(in2), .A(in3), .S(d1), .Y(n3) );
  NOR2X1 U43 ( .A(reset), .B(n4), .Y(out0205) );
  MUX2X1 U44 ( .B(in0), .A(in1), .S(d0), .Y(n4) );
endmodule


module spdu_12 ( in0, in1, in2, in3, d0, d1, d2, d3, out0, out1, out2, out3, 
        clk, reset );
  input in0, in1, in2, in3, d0, d1, d2, d3, clk, reset;
  output out0, out1, out2, out3;
  wire   out0205, out1211, out2217, out3223, n1, n2, n3, n4;

  DFFPOSX1 out3_reg ( .D(out3223), .CLK(clk), .Q(out3) );
  DFFPOSX1 out2_reg ( .D(out2217), .CLK(clk), .Q(out2) );
  DFFPOSX1 out1_reg ( .D(out1211), .CLK(clk), .Q(out1) );
  DFFPOSX1 out0_reg ( .D(out0205), .CLK(clk), .Q(out0) );
  NOR2X1 U37 ( .A(reset), .B(n1), .Y(out3223) );
  MUX2X1 U38 ( .B(in2), .A(in3), .S(d3), .Y(n1) );
  NOR2X1 U39 ( .A(reset), .B(n2), .Y(out2217) );
  MUX2X1 U40 ( .B(in0), .A(in1), .S(d2), .Y(n2) );
  NOR2X1 U41 ( .A(reset), .B(n3), .Y(out1211) );
  MUX2X1 U42 ( .B(in2), .A(in3), .S(d1), .Y(n3) );
  NOR2X1 U43 ( .A(reset), .B(n4), .Y(out0205) );
  MUX2X1 U44 ( .B(in0), .A(in1), .S(d0), .Y(n4) );
endmodule


module spdu_11 ( in0, in1, in2, in3, d0, d1, d2, d3, out0, out1, out2, out3, 
        clk, reset );
  input in0, in1, in2, in3, d0, d1, d2, d3, clk, reset;
  output out0, out1, out2, out3;
  wire   out0205, out1211, out2217, out3223, n1, n2, n3, n4;

  DFFPOSX1 out3_reg ( .D(out3223), .CLK(clk), .Q(out3) );
  DFFPOSX1 out2_reg ( .D(out2217), .CLK(clk), .Q(out2) );
  DFFPOSX1 out1_reg ( .D(out1211), .CLK(clk), .Q(out1) );
  DFFPOSX1 out0_reg ( .D(out0205), .CLK(clk), .Q(out0) );
  NOR2X1 U37 ( .A(reset), .B(n1), .Y(out3223) );
  MUX2X1 U38 ( .B(in2), .A(in3), .S(d3), .Y(n1) );
  NOR2X1 U39 ( .A(reset), .B(n2), .Y(out2217) );
  MUX2X1 U40 ( .B(in0), .A(in1), .S(d2), .Y(n2) );
  NOR2X1 U41 ( .A(reset), .B(n3), .Y(out1211) );
  MUX2X1 U42 ( .B(in2), .A(in3), .S(d1), .Y(n3) );
  NOR2X1 U43 ( .A(reset), .B(n4), .Y(out0205) );
  MUX2X1 U44 ( .B(in0), .A(in1), .S(d0), .Y(n4) );
endmodule


module spdu_10 ( in0, in1, in2, in3, d0, d1, d2, d3, out0, out1, out2, out3, 
        clk, reset );
  input in0, in1, in2, in3, d0, d1, d2, d3, clk, reset;
  output out0, out1, out2, out3;
  wire   out0205, out1211, out2217, out3223, n1, n2, n3, n4;

  DFFPOSX1 out3_reg ( .D(out3223), .CLK(clk), .Q(out3) );
  DFFPOSX1 out2_reg ( .D(out2217), .CLK(clk), .Q(out2) );
  DFFPOSX1 out1_reg ( .D(out1211), .CLK(clk), .Q(out1) );
  DFFPOSX1 out0_reg ( .D(out0205), .CLK(clk), .Q(out0) );
  NOR2X1 U37 ( .A(reset), .B(n1), .Y(out3223) );
  MUX2X1 U38 ( .B(in2), .A(in3), .S(d3), .Y(n1) );
  NOR2X1 U39 ( .A(reset), .B(n2), .Y(out2217) );
  MUX2X1 U40 ( .B(in0), .A(in1), .S(d2), .Y(n2) );
  NOR2X1 U41 ( .A(reset), .B(n3), .Y(out1211) );
  MUX2X1 U42 ( .B(in2), .A(in3), .S(d1), .Y(n3) );
  NOR2X1 U43 ( .A(reset), .B(n4), .Y(out0205) );
  MUX2X1 U44 ( .B(in0), .A(in1), .S(d0), .Y(n4) );
endmodule


module spdu_9 ( in0, in1, in2, in3, d0, d1, d2, d3, out0, out1, out2, out3, 
        clk, reset );
  input in0, in1, in2, in3, d0, d1, d2, d3, clk, reset;
  output out0, out1, out2, out3;
  wire   out0205, out1211, out2217, out3223, n1, n2, n3, n4;

  DFFPOSX1 out3_reg ( .D(out3223), .CLK(clk), .Q(out3) );
  DFFPOSX1 out2_reg ( .D(out2217), .CLK(clk), .Q(out2) );
  DFFPOSX1 out1_reg ( .D(out1211), .CLK(clk), .Q(out1) );
  DFFPOSX1 out0_reg ( .D(out0205), .CLK(clk), .Q(out0) );
  NOR2X1 U37 ( .A(reset), .B(n1), .Y(out3223) );
  MUX2X1 U38 ( .B(in2), .A(in3), .S(d3), .Y(n1) );
  NOR2X1 U39 ( .A(reset), .B(n2), .Y(out2217) );
  MUX2X1 U40 ( .B(in0), .A(in1), .S(d2), .Y(n2) );
  NOR2X1 U41 ( .A(reset), .B(n3), .Y(out1211) );
  MUX2X1 U42 ( .B(in2), .A(in3), .S(d1), .Y(n3) );
  NOR2X1 U43 ( .A(reset), .B(n4), .Y(out0205) );
  MUX2X1 U44 ( .B(in0), .A(in1), .S(d0), .Y(n4) );
endmodule


module spdu_8 ( in0, in1, in2, in3, d0, d1, d2, d3, out0, out1, out2, out3, 
        clk, reset );
  input in0, in1, in2, in3, d0, d1, d2, d3, clk, reset;
  output out0, out1, out2, out3;
  wire   out0205, out1211, out2217, out3223, n1, n2, n3, n4;

  DFFPOSX1 out3_reg ( .D(out3223), .CLK(clk), .Q(out3) );
  DFFPOSX1 out2_reg ( .D(out2217), .CLK(clk), .Q(out2) );
  DFFPOSX1 out1_reg ( .D(out1211), .CLK(clk), .Q(out1) );
  DFFPOSX1 out0_reg ( .D(out0205), .CLK(clk), .Q(out0) );
  NOR2X1 U37 ( .A(reset), .B(n1), .Y(out3223) );
  MUX2X1 U38 ( .B(in2), .A(in3), .S(d3), .Y(n1) );
  NOR2X1 U39 ( .A(reset), .B(n2), .Y(out2217) );
  MUX2X1 U40 ( .B(in0), .A(in1), .S(d2), .Y(n2) );
  NOR2X1 U41 ( .A(reset), .B(n3), .Y(out1211) );
  MUX2X1 U42 ( .B(in2), .A(in3), .S(d1), .Y(n3) );
  NOR2X1 U43 ( .A(reset), .B(n4), .Y(out0205) );
  MUX2X1 U44 ( .B(in0), .A(in1), .S(d0), .Y(n4) );
endmodule


module spdu_7 ( in0, in1, in2, in3, d0, d1, d2, d3, out0, out1, out2, out3, 
        clk, reset );
  input in0, in1, in2, in3, d0, d1, d2, d3, clk, reset;
  output out0, out1, out2, out3;
  wire   out0205, out1211, out2217, out3223, n1, n2, n3, n4;

  DFFPOSX1 out3_reg ( .D(out3223), .CLK(clk), .Q(out3) );
  DFFPOSX1 out2_reg ( .D(out2217), .CLK(clk), .Q(out2) );
  DFFPOSX1 out1_reg ( .D(out1211), .CLK(clk), .Q(out1) );
  DFFPOSX1 out0_reg ( .D(out0205), .CLK(clk), .Q(out0) );
  NOR2X1 U37 ( .A(reset), .B(n1), .Y(out3223) );
  MUX2X1 U38 ( .B(in2), .A(in3), .S(d3), .Y(n1) );
  NOR2X1 U39 ( .A(reset), .B(n2), .Y(out2217) );
  MUX2X1 U40 ( .B(in0), .A(in1), .S(d2), .Y(n2) );
  NOR2X1 U41 ( .A(reset), .B(n3), .Y(out1211) );
  MUX2X1 U42 ( .B(in2), .A(in3), .S(d1), .Y(n3) );
  NOR2X1 U43 ( .A(reset), .B(n4), .Y(out0205) );
  MUX2X1 U44 ( .B(in0), .A(in1), .S(d0), .Y(n4) );
endmodule


module spdu_6 ( in0, in1, in2, in3, d0, d1, d2, d3, out0, out1, out2, out3, 
        clk, reset );
  input in0, in1, in2, in3, d0, d1, d2, d3, clk, reset;
  output out0, out1, out2, out3;
  wire   out0205, out1211, out2217, out3223, n1, n2, n3, n4;

  DFFPOSX1 out3_reg ( .D(out3223), .CLK(clk), .Q(out3) );
  DFFPOSX1 out2_reg ( .D(out2217), .CLK(clk), .Q(out2) );
  DFFPOSX1 out1_reg ( .D(out1211), .CLK(clk), .Q(out1) );
  DFFPOSX1 out0_reg ( .D(out0205), .CLK(clk), .Q(out0) );
  NOR2X1 U37 ( .A(reset), .B(n1), .Y(out3223) );
  MUX2X1 U38 ( .B(in2), .A(in3), .S(d3), .Y(n1) );
  NOR2X1 U39 ( .A(reset), .B(n2), .Y(out2217) );
  MUX2X1 U40 ( .B(in0), .A(in1), .S(d2), .Y(n2) );
  NOR2X1 U41 ( .A(reset), .B(n3), .Y(out1211) );
  MUX2X1 U42 ( .B(in2), .A(in3), .S(d1), .Y(n3) );
  NOR2X1 U43 ( .A(reset), .B(n4), .Y(out0205) );
  MUX2X1 U44 ( .B(in0), .A(in1), .S(d0), .Y(n4) );
endmodule


module spdu_5 ( in0, in1, in2, in3, d0, d1, d2, d3, out0, out1, out2, out3, 
        clk, reset );
  input in0, in1, in2, in3, d0, d1, d2, d3, clk, reset;
  output out0, out1, out2, out3;
  wire   out0205, out1211, out2217, out3223, n1, n2, n3, n4;

  DFFPOSX1 out3_reg ( .D(out3223), .CLK(clk), .Q(out3) );
  DFFPOSX1 out2_reg ( .D(out2217), .CLK(clk), .Q(out2) );
  DFFPOSX1 out1_reg ( .D(out1211), .CLK(clk), .Q(out1) );
  DFFPOSX1 out0_reg ( .D(out0205), .CLK(clk), .Q(out0) );
  NOR2X1 U37 ( .A(reset), .B(n1), .Y(out3223) );
  MUX2X1 U38 ( .B(in2), .A(in3), .S(d3), .Y(n1) );
  NOR2X1 U39 ( .A(reset), .B(n2), .Y(out2217) );
  MUX2X1 U40 ( .B(in0), .A(in1), .S(d2), .Y(n2) );
  NOR2X1 U41 ( .A(reset), .B(n3), .Y(out1211) );
  MUX2X1 U42 ( .B(in2), .A(in3), .S(d1), .Y(n3) );
  NOR2X1 U43 ( .A(reset), .B(n4), .Y(out0205) );
  MUX2X1 U44 ( .B(in0), .A(in1), .S(d0), .Y(n4) );
endmodule


module spdu_4 ( in0, in1, in2, in3, d0, d1, d2, d3, out0, out1, out2, out3, 
        clk, reset );
  input in0, in1, in2, in3, d0, d1, d2, d3, clk, reset;
  output out0, out1, out2, out3;
  wire   out0205, out1211, out2217, out3223, n1, n2, n3, n4;

  DFFPOSX1 out3_reg ( .D(out3223), .CLK(clk), .Q(out3) );
  DFFPOSX1 out2_reg ( .D(out2217), .CLK(clk), .Q(out2) );
  DFFPOSX1 out1_reg ( .D(out1211), .CLK(clk), .Q(out1) );
  DFFPOSX1 out0_reg ( .D(out0205), .CLK(clk), .Q(out0) );
  NOR2X1 U37 ( .A(reset), .B(n1), .Y(out3223) );
  MUX2X1 U38 ( .B(in2), .A(in3), .S(d3), .Y(n1) );
  NOR2X1 U39 ( .A(reset), .B(n2), .Y(out2217) );
  MUX2X1 U40 ( .B(in0), .A(in1), .S(d2), .Y(n2) );
  NOR2X1 U41 ( .A(reset), .B(n3), .Y(out1211) );
  MUX2X1 U42 ( .B(in2), .A(in3), .S(d1), .Y(n3) );
  NOR2X1 U43 ( .A(reset), .B(n4), .Y(out0205) );
  MUX2X1 U44 ( .B(in0), .A(in1), .S(d0), .Y(n4) );
endmodule


module spdu_3 ( in0, in1, in2, in3, d0, d1, d2, d3, out0, out1, out2, out3, 
        clk, reset );
  input in0, in1, in2, in3, d0, d1, d2, d3, clk, reset;
  output out0, out1, out2, out3;
  wire   out0205, out1211, out2217, out3223, n1, n2, n3, n4;

  DFFPOSX1 out3_reg ( .D(out3223), .CLK(clk), .Q(out3) );
  DFFPOSX1 out2_reg ( .D(out2217), .CLK(clk), .Q(out2) );
  DFFPOSX1 out1_reg ( .D(out1211), .CLK(clk), .Q(out1) );
  DFFPOSX1 out0_reg ( .D(out0205), .CLK(clk), .Q(out0) );
  NOR2X1 U37 ( .A(reset), .B(n1), .Y(out3223) );
  MUX2X1 U38 ( .B(in2), .A(in3), .S(d3), .Y(n1) );
  NOR2X1 U39 ( .A(reset), .B(n2), .Y(out2217) );
  MUX2X1 U40 ( .B(in0), .A(in1), .S(d2), .Y(n2) );
  NOR2X1 U41 ( .A(reset), .B(n3), .Y(out1211) );
  MUX2X1 U42 ( .B(in2), .A(in3), .S(d1), .Y(n3) );
  NOR2X1 U43 ( .A(reset), .B(n4), .Y(out0205) );
  MUX2X1 U44 ( .B(in0), .A(in1), .S(d0), .Y(n4) );
endmodule


module spdu_2 ( in0, in1, in2, in3, d0, d1, d2, d3, out0, out1, out2, out3, 
        clk, reset );
  input in0, in1, in2, in3, d0, d1, d2, d3, clk, reset;
  output out0, out1, out2, out3;
  wire   out0205, out1211, out2217, out3223, n1, n2, n3, n4;

  DFFPOSX1 out3_reg ( .D(out3223), .CLK(clk), .Q(out3) );
  DFFPOSX1 out2_reg ( .D(out2217), .CLK(clk), .Q(out2) );
  DFFPOSX1 out1_reg ( .D(out1211), .CLK(clk), .Q(out1) );
  DFFPOSX1 out0_reg ( .D(out0205), .CLK(clk), .Q(out0) );
  NOR2X1 U37 ( .A(reset), .B(n1), .Y(out3223) );
  MUX2X1 U38 ( .B(in2), .A(in3), .S(d3), .Y(n1) );
  NOR2X1 U39 ( .A(reset), .B(n2), .Y(out2217) );
  MUX2X1 U40 ( .B(in0), .A(in1), .S(d2), .Y(n2) );
  NOR2X1 U41 ( .A(reset), .B(n3), .Y(out1211) );
  MUX2X1 U42 ( .B(in2), .A(in3), .S(d1), .Y(n3) );
  NOR2X1 U43 ( .A(reset), .B(n4), .Y(out0205) );
  MUX2X1 U44 ( .B(in0), .A(in1), .S(d0), .Y(n4) );
endmodule


module spdu_1 ( in0, in1, in2, in3, d0, d1, d2, d3, out0, out1, out2, out3, 
        clk, reset );
  input in0, in1, in2, in3, d0, d1, d2, d3, clk, reset;
  output out0, out1, out2, out3;
  wire   out0205, out1211, out2217, out3223, n1, n2, n3, n4;

  DFFPOSX1 out3_reg ( .D(out3223), .CLK(clk), .Q(out3) );
  DFFPOSX1 out2_reg ( .D(out2217), .CLK(clk), .Q(out2) );
  DFFPOSX1 out1_reg ( .D(out1211), .CLK(clk), .Q(out1) );
  DFFPOSX1 out0_reg ( .D(out0205), .CLK(clk), .Q(out0) );
  NOR2X1 U37 ( .A(reset), .B(n1), .Y(out3223) );
  MUX2X1 U38 ( .B(in2), .A(in3), .S(d3), .Y(n1) );
  NOR2X1 U39 ( .A(reset), .B(n2), .Y(out2217) );
  MUX2X1 U40 ( .B(in0), .A(in1), .S(d2), .Y(n2) );
  NOR2X1 U41 ( .A(reset), .B(n3), .Y(out1211) );
  MUX2X1 U42 ( .B(in2), .A(in3), .S(d1), .Y(n3) );
  NOR2X1 U43 ( .A(reset), .B(n4), .Y(out0205) );
  MUX2X1 U44 ( .B(in0), .A(in1), .S(d0), .Y(n4) );
endmodule


module spdu_0 ( in0, in1, in2, in3, d0, d1, d2, d3, out0, out1, out2, out3, 
        clk, reset );
  input in0, in1, in2, in3, d0, d1, d2, d3, clk, reset;
  output out0, out1, out2, out3;
  wire   out0205, out1211, out2217, out3223, n1, n2, n3, n4;

  DFFPOSX1 out3_reg ( .D(out3223), .CLK(clk), .Q(out3) );
  DFFPOSX1 out2_reg ( .D(out2217), .CLK(clk), .Q(out2) );
  DFFPOSX1 out1_reg ( .D(out1211), .CLK(clk), .Q(out1) );
  DFFPOSX1 out0_reg ( .D(out0205), .CLK(clk), .Q(out0) );
  NOR2X1 U37 ( .A(reset), .B(n1), .Y(out3223) );
  MUX2X1 U38 ( .B(in2), .A(in3), .S(d3), .Y(n1) );
  NOR2X1 U39 ( .A(reset), .B(n2), .Y(out2217) );
  MUX2X1 U40 ( .B(in0), .A(in1), .S(d2), .Y(n2) );
  NOR2X1 U41 ( .A(reset), .B(n3), .Y(out1211) );
  MUX2X1 U42 ( .B(in2), .A(in3), .S(d1), .Y(n3) );
  NOR2X1 U43 ( .A(reset), .B(n4), .Y(out0205) );
  MUX2X1 U44 ( .B(in0), .A(in1), .S(d0), .Y(n4) );
endmodule


module add_compare_select_2 ( npm, d, pm1, bm1, pm2, bm2 );
  output [3:0] npm;
  input [3:0] pm1;
  input [1:0] bm1;
  input [3:0] pm2;
  input [1:0] bm2;
  output d;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43;

  MUX2X1 U29 ( .B(n1), .A(n2), .S(d), .Y(npm[3]) );
  MUX2X1 U30 ( .B(n3), .A(n4), .S(d), .Y(npm[2]) );
  MUX2X1 U31 ( .B(n5), .A(n6), .S(d), .Y(npm[1]) );
  MUX2X1 U32 ( .B(n7), .A(n8), .S(d), .Y(npm[0]) );
  AOI21X1 U33 ( .A(n9), .B(n1), .C(n10), .Y(d) );
  INVX1 U34 ( .A(n11), .Y(n10) );
  OAI21X1 U35 ( .A(n1), .B(n9), .C(n12), .Y(n11) );
  OAI21X1 U36 ( .A(n4), .B(n13), .C(n14), .Y(n12) );
  OAI21X1 U37 ( .A(n3), .B(n15), .C(n16), .Y(n14) );
  AOI22X1 U38 ( .A(n17), .B(n8), .C(n6), .D(n18), .Y(n16) );
  INVX1 U39 ( .A(n19), .Y(n6) );
  INVX1 U40 ( .A(n20), .Y(n8) );
  OAI21X1 U41 ( .A(n21), .B(n22), .C(n23), .Y(n20) );
  NOR2X1 U42 ( .A(pm2[0]), .B(bm2[0]), .Y(n21) );
  AOI21X1 U43 ( .A(n5), .B(n19), .C(n7), .Y(n17) );
  INVX1 U44 ( .A(n24), .Y(n7) );
  OAI21X1 U45 ( .A(n25), .B(n26), .C(n27), .Y(n24) );
  NOR2X1 U46 ( .A(pm1[0]), .B(bm1[0]), .Y(n25) );
  NAND2X1 U47 ( .A(n28), .B(n23), .Y(n19) );
  XOR2X1 U48 ( .A(n29), .B(n30), .Y(n28) );
  XOR2X1 U49 ( .A(pm2[1]), .B(bm2[1]), .Y(n30) );
  INVX1 U50 ( .A(n18), .Y(n5) );
  NAND2X1 U51 ( .A(n31), .B(n27), .Y(n18) );
  XOR2X1 U52 ( .A(n32), .B(n33), .Y(n31) );
  XOR2X1 U53 ( .A(pm1[1]), .B(bm1[1]), .Y(n33) );
  INVX1 U54 ( .A(n13), .Y(n3) );
  OAI21X1 U55 ( .A(n34), .B(n35), .C(n27), .Y(n13) );
  NAND2X1 U56 ( .A(pm1[3]), .B(n35), .Y(n27) );
  NOR2X1 U57 ( .A(pm1[2]), .B(n36), .Y(n34) );
  INVX1 U58 ( .A(n15), .Y(n4) );
  OAI21X1 U59 ( .A(n37), .B(n38), .C(n23), .Y(n15) );
  NAND2X1 U60 ( .A(pm2[3]), .B(n38), .Y(n23) );
  NOR2X1 U61 ( .A(pm2[2]), .B(n39), .Y(n37) );
  NOR2X1 U62 ( .A(n35), .B(pm1[3]), .Y(n1) );
  AND2X1 U63 ( .A(pm1[2]), .B(n36), .Y(n35) );
  AOI21X1 U64 ( .A(n40), .B(n32), .C(n41), .Y(n36) );
  AOI21X1 U65 ( .A(n26), .B(bm1[1]), .C(pm1[1]), .Y(n41) );
  INVX1 U66 ( .A(n32), .Y(n26) );
  NAND2X1 U67 ( .A(pm1[0]), .B(bm1[0]), .Y(n32) );
  INVX1 U68 ( .A(bm1[1]), .Y(n40) );
  INVX1 U69 ( .A(n2), .Y(n9) );
  NOR2X1 U70 ( .A(n38), .B(pm2[3]), .Y(n2) );
  AND2X1 U71 ( .A(pm2[2]), .B(n39), .Y(n38) );
  AOI21X1 U72 ( .A(n42), .B(n29), .C(n43), .Y(n39) );
  AOI21X1 U73 ( .A(n22), .B(bm2[1]), .C(pm2[1]), .Y(n43) );
  INVX1 U74 ( .A(n29), .Y(n22) );
  NAND2X1 U75 ( .A(pm2[0]), .B(bm2[0]), .Y(n29) );
  INVX1 U76 ( .A(bm2[1]), .Y(n42) );
endmodule


module add_compare_select_1 ( npm, d, pm1, bm1, pm2, bm2 );
  output [3:0] npm;
  input [3:0] pm1;
  input [1:0] bm1;
  input [3:0] pm2;
  input [1:0] bm2;
  output d;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43;

  MUX2X1 U29 ( .B(n1), .A(n2), .S(d), .Y(npm[3]) );
  MUX2X1 U30 ( .B(n3), .A(n4), .S(d), .Y(npm[2]) );
  MUX2X1 U31 ( .B(n5), .A(n6), .S(d), .Y(npm[1]) );
  MUX2X1 U32 ( .B(n7), .A(n8), .S(d), .Y(npm[0]) );
  AOI21X1 U33 ( .A(n9), .B(n1), .C(n10), .Y(d) );
  INVX1 U34 ( .A(n11), .Y(n10) );
  OAI21X1 U35 ( .A(n1), .B(n9), .C(n12), .Y(n11) );
  OAI21X1 U36 ( .A(n4), .B(n13), .C(n14), .Y(n12) );
  OAI21X1 U37 ( .A(n3), .B(n15), .C(n16), .Y(n14) );
  AOI22X1 U38 ( .A(n17), .B(n8), .C(n6), .D(n18), .Y(n16) );
  INVX1 U39 ( .A(n19), .Y(n6) );
  INVX1 U40 ( .A(n20), .Y(n8) );
  OAI21X1 U41 ( .A(n21), .B(n22), .C(n23), .Y(n20) );
  NOR2X1 U42 ( .A(pm2[0]), .B(bm2[0]), .Y(n21) );
  AOI21X1 U43 ( .A(n5), .B(n19), .C(n7), .Y(n17) );
  INVX1 U44 ( .A(n24), .Y(n7) );
  OAI21X1 U45 ( .A(n25), .B(n26), .C(n27), .Y(n24) );
  NOR2X1 U46 ( .A(pm1[0]), .B(bm1[0]), .Y(n25) );
  NAND2X1 U47 ( .A(n28), .B(n23), .Y(n19) );
  XOR2X1 U48 ( .A(n29), .B(n30), .Y(n28) );
  XOR2X1 U49 ( .A(pm2[1]), .B(bm2[1]), .Y(n30) );
  INVX1 U50 ( .A(n18), .Y(n5) );
  NAND2X1 U51 ( .A(n31), .B(n27), .Y(n18) );
  XOR2X1 U52 ( .A(n32), .B(n33), .Y(n31) );
  XOR2X1 U53 ( .A(pm1[1]), .B(bm1[1]), .Y(n33) );
  INVX1 U54 ( .A(n13), .Y(n3) );
  OAI21X1 U55 ( .A(n34), .B(n35), .C(n27), .Y(n13) );
  NAND2X1 U56 ( .A(pm1[3]), .B(n35), .Y(n27) );
  NOR2X1 U57 ( .A(pm1[2]), .B(n36), .Y(n34) );
  INVX1 U58 ( .A(n15), .Y(n4) );
  OAI21X1 U59 ( .A(n37), .B(n38), .C(n23), .Y(n15) );
  NAND2X1 U60 ( .A(pm2[3]), .B(n38), .Y(n23) );
  NOR2X1 U61 ( .A(pm2[2]), .B(n39), .Y(n37) );
  NOR2X1 U62 ( .A(n35), .B(pm1[3]), .Y(n1) );
  AND2X1 U63 ( .A(pm1[2]), .B(n36), .Y(n35) );
  AOI21X1 U64 ( .A(n40), .B(n32), .C(n41), .Y(n36) );
  AOI21X1 U65 ( .A(n26), .B(bm1[1]), .C(pm1[1]), .Y(n41) );
  INVX1 U66 ( .A(n32), .Y(n26) );
  NAND2X1 U67 ( .A(pm1[0]), .B(bm1[0]), .Y(n32) );
  INVX1 U68 ( .A(bm1[1]), .Y(n40) );
  INVX1 U69 ( .A(n2), .Y(n9) );
  NOR2X1 U70 ( .A(n38), .B(pm2[3]), .Y(n2) );
  AND2X1 U71 ( .A(pm2[2]), .B(n39), .Y(n38) );
  AOI21X1 U72 ( .A(n42), .B(n29), .C(n43), .Y(n39) );
  AOI21X1 U73 ( .A(n22), .B(bm2[1]), .C(pm2[1]), .Y(n43) );
  INVX1 U74 ( .A(n29), .Y(n22) );
  NAND2X1 U75 ( .A(pm2[0]), .B(bm2[0]), .Y(n29) );
  INVX1 U76 ( .A(bm2[1]), .Y(n42) );
endmodule


module add_compare_select_0 ( npm, d, pm1, bm1, pm2, bm2 );
  output [3:0] npm;
  input [3:0] pm1;
  input [1:0] bm1;
  input [3:0] pm2;
  input [1:0] bm2;
  output d;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43;

  MUX2X1 U29 ( .B(n1), .A(n2), .S(d), .Y(npm[3]) );
  MUX2X1 U30 ( .B(n3), .A(n4), .S(d), .Y(npm[2]) );
  MUX2X1 U31 ( .B(n5), .A(n6), .S(d), .Y(npm[1]) );
  MUX2X1 U32 ( .B(n7), .A(n8), .S(d), .Y(npm[0]) );
  AOI21X1 U33 ( .A(n9), .B(n1), .C(n10), .Y(d) );
  INVX1 U34 ( .A(n11), .Y(n10) );
  OAI21X1 U35 ( .A(n1), .B(n9), .C(n12), .Y(n11) );
  OAI21X1 U36 ( .A(n4), .B(n13), .C(n14), .Y(n12) );
  OAI21X1 U37 ( .A(n3), .B(n15), .C(n16), .Y(n14) );
  AOI22X1 U38 ( .A(n17), .B(n8), .C(n6), .D(n18), .Y(n16) );
  INVX1 U39 ( .A(n19), .Y(n6) );
  INVX1 U40 ( .A(n20), .Y(n8) );
  OAI21X1 U41 ( .A(n21), .B(n22), .C(n23), .Y(n20) );
  NOR2X1 U42 ( .A(pm2[0]), .B(bm2[0]), .Y(n21) );
  AOI21X1 U43 ( .A(n5), .B(n19), .C(n7), .Y(n17) );
  INVX1 U44 ( .A(n24), .Y(n7) );
  OAI21X1 U45 ( .A(n25), .B(n26), .C(n27), .Y(n24) );
  NOR2X1 U46 ( .A(pm1[0]), .B(bm1[0]), .Y(n25) );
  NAND2X1 U47 ( .A(n28), .B(n23), .Y(n19) );
  XOR2X1 U48 ( .A(n29), .B(n30), .Y(n28) );
  XOR2X1 U49 ( .A(pm2[1]), .B(bm2[1]), .Y(n30) );
  INVX1 U50 ( .A(n18), .Y(n5) );
  NAND2X1 U51 ( .A(n31), .B(n27), .Y(n18) );
  XOR2X1 U52 ( .A(n32), .B(n33), .Y(n31) );
  XOR2X1 U53 ( .A(pm1[1]), .B(bm1[1]), .Y(n33) );
  INVX1 U54 ( .A(n13), .Y(n3) );
  OAI21X1 U55 ( .A(n34), .B(n35), .C(n27), .Y(n13) );
  NAND2X1 U56 ( .A(pm1[3]), .B(n35), .Y(n27) );
  NOR2X1 U57 ( .A(pm1[2]), .B(n36), .Y(n34) );
  INVX1 U58 ( .A(n15), .Y(n4) );
  OAI21X1 U59 ( .A(n37), .B(n38), .C(n23), .Y(n15) );
  NAND2X1 U60 ( .A(pm2[3]), .B(n38), .Y(n23) );
  NOR2X1 U61 ( .A(pm2[2]), .B(n39), .Y(n37) );
  NOR2X1 U62 ( .A(n35), .B(pm1[3]), .Y(n1) );
  AND2X1 U63 ( .A(pm1[2]), .B(n36), .Y(n35) );
  AOI21X1 U64 ( .A(n40), .B(n32), .C(n41), .Y(n36) );
  AOI21X1 U65 ( .A(n26), .B(bm1[1]), .C(pm1[1]), .Y(n41) );
  INVX1 U66 ( .A(n32), .Y(n26) );
  NAND2X1 U67 ( .A(pm1[0]), .B(bm1[0]), .Y(n32) );
  INVX1 U68 ( .A(bm1[1]), .Y(n40) );
  INVX1 U69 ( .A(n2), .Y(n9) );
  NOR2X1 U70 ( .A(n38), .B(pm2[3]), .Y(n2) );
  AND2X1 U71 ( .A(pm2[2]), .B(n39), .Y(n38) );
  AOI21X1 U72 ( .A(n42), .B(n29), .C(n43), .Y(n39) );
  AOI21X1 U73 ( .A(n22), .B(bm2[1]), .C(pm2[1]), .Y(n43) );
  INVX1 U74 ( .A(n29), .Y(n22) );
  NAND2X1 U75 ( .A(pm2[0]), .B(bm2[0]), .Y(n29) );
  INVX1 U76 ( .A(bm2[1]), .Y(n42) );
endmodule


module demux ( in0, in1, in2, in3, d0, d1, out );
  input in0, in1, in2, in3, d0, d1;
  output out;
  wire   n1, n2;

  MUX2X1 U26 ( .B(n1), .A(n2), .S(d1), .Y(out) );
  MUX2X1 U27 ( .B(in2), .A(in3), .S(d0), .Y(n2) );
  MUX2X1 U28 ( .B(in0), .A(in1), .S(d0), .Y(n1) );
endmodule


module selector ( pm0, pm1, pm2, pm3, d0, d1 );
  input [3:0] pm0;
  input [3:0] pm1;
  input [3:0] pm2;
  input [3:0] pm3;
  output d0, d1;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51;

  INVX1 U43 ( .A(n1), .Y(d0) );
  MUX2X1 U44 ( .B(n2), .A(n3), .S(d1), .Y(n1) );
  INVX1 U45 ( .A(n4), .Y(d1) );
  OAI21X1 U46 ( .A(n5), .B(n6), .C(n7), .Y(n4) );
  OAI21X1 U47 ( .A(n8), .B(n9), .C(n10), .Y(n7) );
  MUX2X1 U48 ( .B(n11), .A(n12), .S(n2), .Y(n10) );
  OAI22X1 U49 ( .A(n13), .B(n14), .C(n15), .D(n16), .Y(n12) );
  OAI22X1 U50 ( .A(n13), .B(n17), .C(n15), .D(n18), .Y(n11) );
  INVX1 U51 ( .A(pm0[2]), .Y(n18) );
  AND2X1 U52 ( .A(n8), .B(n9), .Y(n15) );
  INVX1 U53 ( .A(n5), .Y(n13) );
  OAI21X1 U54 ( .A(n19), .B(n20), .C(n21), .Y(n9) );
  INVX1 U55 ( .A(n22), .Y(n21) );
  AOI21X1 U56 ( .A(n20), .B(n19), .C(n23), .Y(n22) );
  MUX2X1 U57 ( .B(pm2[1]), .A(pm3[1]), .S(n3), .Y(n23) );
  MUX2X1 U58 ( .B(n24), .A(n25), .S(n2), .Y(n20) );
  INVX1 U59 ( .A(pm1[1]), .Y(n25) );
  NOR2X1 U60 ( .A(n26), .B(n27), .Y(n19) );
  MUX2X1 U61 ( .B(n28), .A(n29), .S(n3), .Y(n27) );
  INVX1 U62 ( .A(pm3[0]), .Y(n29) );
  MUX2X1 U63 ( .B(pm0[0]), .A(pm1[0]), .S(n2), .Y(n26) );
  MUX2X1 U64 ( .B(n30), .A(n31), .S(n3), .Y(n8) );
  INVX1 U65 ( .A(pm2[2]), .Y(n30) );
  MUX2X1 U66 ( .B(n17), .A(n14), .S(n2), .Y(n6) );
  NAND2X1 U67 ( .A(pm2[3]), .B(pm3[3]), .Y(n5) );
  OAI21X1 U68 ( .A(n32), .B(n33), .C(n34), .Y(n3) );
  AOI22X1 U69 ( .A(n35), .B(pm2[2]), .C(pm2[3]), .D(n36), .Y(n34) );
  NOR2X1 U70 ( .A(pm3[2]), .B(n37), .Y(n35) );
  OAI22X1 U71 ( .A(pm2[2]), .B(n31), .C(pm2[1]), .D(n38), .Y(n33) );
  INVX1 U72 ( .A(pm3[2]), .Y(n31) );
  NAND2X1 U73 ( .A(n39), .B(n40), .Y(n32) );
  INVX1 U74 ( .A(n37), .Y(n40) );
  NOR2X1 U75 ( .A(n36), .B(pm2[3]), .Y(n37) );
  INVX1 U76 ( .A(pm3[3]), .Y(n36) );
  OAI21X1 U77 ( .A(n41), .B(n42), .C(pm3[1]), .Y(n39) );
  INVX1 U78 ( .A(pm2[1]), .Y(n42) );
  INVX1 U79 ( .A(n38), .Y(n41) );
  NOR2X1 U80 ( .A(n28), .B(pm3[0]), .Y(n38) );
  INVX1 U81 ( .A(pm2[0]), .Y(n28) );
  OAI21X1 U82 ( .A(n43), .B(n44), .C(n45), .Y(n2) );
  AOI22X1 U83 ( .A(n46), .B(pm0[2]), .C(pm0[3]), .D(n14), .Y(n45) );
  INVX1 U84 ( .A(pm1[3]), .Y(n14) );
  AND2X1 U85 ( .A(n16), .B(n47), .Y(n46) );
  OAI22X1 U86 ( .A(pm0[2]), .B(n16), .C(pm0[1]), .D(n48), .Y(n44) );
  INVX1 U87 ( .A(pm1[2]), .Y(n16) );
  NAND2X1 U88 ( .A(n49), .B(n47), .Y(n43) );
  NAND2X1 U89 ( .A(pm1[3]), .B(n17), .Y(n47) );
  INVX1 U90 ( .A(pm0[3]), .Y(n17) );
  OAI21X1 U91 ( .A(n50), .B(n24), .C(pm1[1]), .Y(n49) );
  INVX1 U92 ( .A(pm0[1]), .Y(n24) );
  INVX1 U93 ( .A(n48), .Y(n50) );
  NOR2X1 U94 ( .A(n51), .B(pm1[0]), .Y(n48) );
  INVX1 U95 ( .A(pm0[0]), .Y(n51) );
endmodule


module spdu_14 ( in0, in1, in2, in3, d0, d1, d2, d3, out0, out1, out2, out3, 
        clk, reset );
  input in0, in1, in2, in3, d0, d1, d2, d3, clk, reset;
  output out0, out1, out2, out3;
  wire   out0205, out1211, out2217, out3223, n1, n2, n3, n4;

  DFFPOSX1 out3_reg ( .D(out3223), .CLK(clk), .Q(out3) );
  DFFPOSX1 out2_reg ( .D(out2217), .CLK(clk), .Q(out2) );
  DFFPOSX1 out1_reg ( .D(out1211), .CLK(clk), .Q(out1) );
  DFFPOSX1 out0_reg ( .D(out0205), .CLK(clk), .Q(out0) );
  NOR2X1 U37 ( .A(reset), .B(n1), .Y(out3223) );
  MUX2X1 U38 ( .B(in2), .A(in3), .S(d3), .Y(n1) );
  NOR2X1 U39 ( .A(reset), .B(n2), .Y(out2217) );
  MUX2X1 U40 ( .B(in0), .A(in1), .S(d2), .Y(n2) );
  NOR2X1 U41 ( .A(reset), .B(n3), .Y(out1211) );
  MUX2X1 U42 ( .B(in2), .A(in3), .S(d1), .Y(n3) );
  NOR2X1 U43 ( .A(reset), .B(n4), .Y(out0205) );
  MUX2X1 U44 ( .B(in0), .A(in1), .S(d0), .Y(n4) );
endmodule


module spd ( d0, d1, d2, d3, pm0, pm1, pm2, pm3, out, clk, reset );
  input [3:0] pm0;
  input [3:0] pm1;
  input [3:0] pm2;
  input [3:0] pm3;
  input d0, d1, d2, d3, clk, reset;
  output out;
  wire   spdu0out0, spdu0out1, spdu0out2, spdu0out3, spdu1out0, spdu1out1,
         spdu1out2, spdu1out3, spdu2out0, spdu2out1, spdu2out2, spdu2out3,
         spdu3out0, spdu3out1, spdu3out2, spdu3out3, spdu4out0, spdu4out1,
         spdu4out2, spdu4out3, spdu5out0, spdu5out1, spdu5out2, spdu5out3,
         spdu6out0, spdu6out1, spdu6out2, spdu6out3, spdu7out0, spdu7out1,
         spdu7out2, spdu7out3, spdu8out0, spdu8out1, spdu8out2, spdu8out3,
         spdu9out0, spdu9out1, spdu9out2, spdu9out3, spdu10out0, spdu10out1,
         spdu10out2, spdu10out3, spdu11out0, spdu11out1, spdu11out2,
         spdu11out3, spdu12out0, spdu12out1, spdu12out2, spdu12out3,
         spdu13out0, spdu13out1, spdu13out2, spdu13out3, spdu14out0,
         spdu14out1, spdu14out2, spdu14out3, selectord0, selectord1;

  spdu_14 spdu0 ( .in0(1'b0), .in1(1'b0), .in2(1'b1), .in3(1'b1), .d0(d0), 
        .d1(d1), .d2(d2), .d3(d3), .out0(spdu0out0), .out1(spdu0out1), .out2(
        spdu0out2), .out3(spdu0out3), .clk(clk), .reset(reset) );
  spdu_13 spdu1 ( .in0(spdu0out0), .in1(spdu0out1), .in2(spdu0out2), .in3(
        spdu0out3), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .out0(spdu1out0), 
        .out1(spdu1out1), .out2(spdu1out2), .out3(spdu1out3), .clk(clk), 
        .reset(reset) );
  spdu_12 spdu2 ( .in0(spdu1out0), .in1(spdu1out1), .in2(spdu1out2), .in3(
        spdu1out3), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .out0(spdu2out0), 
        .out1(spdu2out1), .out2(spdu2out2), .out3(spdu2out3), .clk(clk), 
        .reset(reset) );
  spdu_11 spdu3 ( .in0(spdu2out0), .in1(spdu2out1), .in2(spdu2out2), .in3(
        spdu2out3), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .out0(spdu3out0), 
        .out1(spdu3out1), .out2(spdu3out2), .out3(spdu3out3), .clk(clk), 
        .reset(reset) );
  spdu_10 spdu4 ( .in0(spdu3out0), .in1(spdu3out1), .in2(spdu3out2), .in3(
        spdu3out3), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .out0(spdu4out0), 
        .out1(spdu4out1), .out2(spdu4out2), .out3(spdu4out3), .clk(clk), 
        .reset(reset) );
  spdu_9 spdu5 ( .in0(spdu4out0), .in1(spdu4out1), .in2(spdu4out2), .in3(
        spdu4out3), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .out0(spdu5out0), 
        .out1(spdu5out1), .out2(spdu5out2), .out3(spdu5out3), .clk(clk), 
        .reset(reset) );
  spdu_8 spdu6 ( .in0(spdu5out0), .in1(spdu5out1), .in2(spdu5out2), .in3(
        spdu5out3), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .out0(spdu6out0), 
        .out1(spdu6out1), .out2(spdu6out2), .out3(spdu6out3), .clk(clk), 
        .reset(reset) );
  spdu_7 spdu7 ( .in0(spdu6out0), .in1(spdu6out1), .in2(spdu6out2), .in3(
        spdu6out3), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .out0(spdu7out0), 
        .out1(spdu7out1), .out2(spdu7out2), .out3(spdu7out3), .clk(clk), 
        .reset(reset) );
  spdu_6 spdu8 ( .in0(spdu7out0), .in1(spdu7out1), .in2(spdu7out2), .in3(
        spdu7out3), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .out0(spdu8out0), 
        .out1(spdu8out1), .out2(spdu8out2), .out3(spdu8out3), .clk(clk), 
        .reset(reset) );
  spdu_5 spdu9 ( .in0(spdu8out0), .in1(spdu8out1), .in2(spdu8out2), .in3(
        spdu8out3), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .out0(spdu9out0), 
        .out1(spdu9out1), .out2(spdu9out2), .out3(spdu9out3), .clk(clk), 
        .reset(reset) );
  spdu_4 spdu10 ( .in0(spdu9out0), .in1(spdu9out1), .in2(spdu9out2), .in3(
        spdu9out3), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .out0(spdu10out0), 
        .out1(spdu10out1), .out2(spdu10out2), .out3(spdu10out3), .clk(clk), 
        .reset(reset) );
  spdu_3 spdu11 ( .in0(spdu10out0), .in1(spdu10out1), .in2(spdu10out2), .in3(
        spdu10out3), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .out0(spdu11out0), 
        .out1(spdu11out1), .out2(spdu11out2), .out3(spdu11out3), .clk(clk), 
        .reset(reset) );
  spdu_2 spdu12 ( .in0(spdu11out0), .in1(spdu11out1), .in2(spdu11out2), .in3(
        spdu11out3), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .out0(spdu12out0), 
        .out1(spdu12out1), .out2(spdu12out2), .out3(spdu12out3), .clk(clk), 
        .reset(reset) );
  spdu_1 spdu13 ( .in0(spdu12out0), .in1(spdu12out1), .in2(spdu12out2), .in3(
        spdu12out3), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .out0(spdu13out0), 
        .out1(spdu13out1), .out2(spdu13out2), .out3(spdu13out3), .clk(clk), 
        .reset(reset) );
  spdu_0 spdu14 ( .in0(spdu13out0), .in1(spdu13out1), .in2(spdu13out2), .in3(
        spdu13out3), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .out0(spdu14out0), 
        .out1(spdu14out1), .out2(spdu14out2), .out3(spdu14out3), .clk(clk), 
        .reset(reset) );
  selector selector1 ( .pm0(pm0), .pm1(pm1), .pm2(pm2), .pm3(pm3), .d0(
        selectord0), .d1(selectord1) );
  demux demux1 ( .in0(spdu14out0), .in1(spdu14out1), .in2(spdu14out2), .in3(
        spdu14out3), .d0(selectord0), .d1(selectord1), .out(out) );
endmodule


module pmsm ( npm0, npm1, npm2, npm3, pm0, pm1, pm2, pm3, clk, reset );
  input [3:0] npm0;
  input [3:0] npm1;
  input [3:0] npm2;
  input [3:0] npm3;
  output [3:0] pm0;
  output [3:0] pm1;
  output [3:0] pm2;
  output [3:0] pm3;
  input clk, reset;
  wire   npm0norm146_3_, npm0norm146_2_, npm0norm146_1_, npm0norm146_0_,
         npm1norm160_3_, npm1norm160_2_, npm1norm160_1_, npm1norm160_0_,
         npm2norm174_3_, npm2norm174_2_, npm2norm174_1_, npm2norm174_0_,
         npm3norm188_3_, npm3norm188_2_, npm3norm188_1_, npm3norm188_0_,
         n189_0_, pm0233_3_, pm0233_2_, pm0233_1_, pm0233_0_, pm1240_3_,
         pm1240_2_, pm1240_1_, pm1240_0_, pm2247_3_, pm2247_2_, pm2247_1_,
         pm2247_0_, pm3254_3_, pm3254_2_, pm3254_1_, pm3254_0_, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195;
  wire   [3:0] npm0norm;
  wire   [3:0] npm1norm;
  wire   [3:0] npm2norm;
  wire   [3:0] npm3norm;

  LATCH npm3norm_reg_0_ ( .CLK(n189_0_), .D(npm3norm188_0_), .Q(npm3norm[0])
         );
  DFFPOSX1 pm3_reg_0_ ( .D(pm3254_0_), .CLK(clk), .Q(pm3[0]) );
  LATCH npm3norm_reg_1_ ( .CLK(n189_0_), .D(npm3norm188_1_), .Q(npm3norm[1])
         );
  DFFPOSX1 pm3_reg_1_ ( .D(pm3254_1_), .CLK(clk), .Q(pm3[1]) );
  LATCH npm3norm_reg_2_ ( .CLK(n189_0_), .D(npm3norm188_2_), .Q(npm3norm[2])
         );
  DFFPOSX1 pm3_reg_2_ ( .D(pm3254_2_), .CLK(clk), .Q(pm3[2]) );
  LATCH npm3norm_reg_3_ ( .CLK(n189_0_), .D(npm3norm188_3_), .Q(npm3norm[3])
         );
  DFFPOSX1 pm3_reg_3_ ( .D(pm3254_3_), .CLK(clk), .Q(pm3[3]) );
  LATCH npm2norm_reg_0_ ( .CLK(n189_0_), .D(npm2norm174_0_), .Q(npm2norm[0])
         );
  DFFPOSX1 pm2_reg_0_ ( .D(pm2247_0_), .CLK(clk), .Q(pm2[0]) );
  LATCH npm2norm_reg_1_ ( .CLK(n189_0_), .D(npm2norm174_1_), .Q(npm2norm[1])
         );
  DFFPOSX1 pm2_reg_1_ ( .D(pm2247_1_), .CLK(clk), .Q(pm2[1]) );
  LATCH npm2norm_reg_2_ ( .CLK(n189_0_), .D(npm2norm174_2_), .Q(npm2norm[2])
         );
  DFFPOSX1 pm2_reg_2_ ( .D(pm2247_2_), .CLK(clk), .Q(pm2[2]) );
  LATCH npm2norm_reg_3_ ( .CLK(n189_0_), .D(npm2norm174_3_), .Q(npm2norm[3])
         );
  DFFPOSX1 pm2_reg_3_ ( .D(pm2247_3_), .CLK(clk), .Q(pm2[3]) );
  LATCH npm1norm_reg_0_ ( .CLK(n189_0_), .D(npm1norm160_0_), .Q(npm1norm[0])
         );
  DFFPOSX1 pm1_reg_0_ ( .D(pm1240_0_), .CLK(clk), .Q(pm1[0]) );
  LATCH npm1norm_reg_1_ ( .CLK(n189_0_), .D(npm1norm160_1_), .Q(npm1norm[1])
         );
  DFFPOSX1 pm1_reg_1_ ( .D(pm1240_1_), .CLK(clk), .Q(pm1[1]) );
  LATCH npm1norm_reg_2_ ( .CLK(n189_0_), .D(npm1norm160_2_), .Q(npm1norm[2])
         );
  DFFPOSX1 pm1_reg_2_ ( .D(pm1240_2_), .CLK(clk), .Q(pm1[2]) );
  LATCH npm1norm_reg_3_ ( .CLK(n189_0_), .D(npm1norm160_3_), .Q(npm1norm[3])
         );
  DFFPOSX1 pm1_reg_3_ ( .D(pm1240_3_), .CLK(clk), .Q(pm1[3]) );
  LATCH npm0norm_reg_0_ ( .CLK(n189_0_), .D(npm0norm146_0_), .Q(npm0norm[0])
         );
  DFFPOSX1 pm0_reg_0_ ( .D(pm0233_0_), .CLK(clk), .Q(pm0[0]) );
  LATCH npm0norm_reg_1_ ( .CLK(n189_0_), .D(npm0norm146_1_), .Q(npm0norm[1])
         );
  DFFPOSX1 pm0_reg_1_ ( .D(pm0233_1_), .CLK(clk), .Q(pm0[1]) );
  LATCH npm0norm_reg_2_ ( .CLK(n189_0_), .D(npm0norm146_2_), .Q(npm0norm[2])
         );
  DFFPOSX1 pm0_reg_2_ ( .D(pm0233_2_), .CLK(clk), .Q(pm0[2]) );
  LATCH npm0norm_reg_3_ ( .CLK(n189_0_), .D(npm0norm146_3_), .Q(npm0norm[3])
         );
  DFFPOSX1 pm0_reg_3_ ( .D(pm0233_3_), .CLK(clk), .Q(pm0[3]) );
  OR2X1 U58 ( .A(npm3norm[3]), .B(reset), .Y(pm3254_3_) );
  OR2X1 U59 ( .A(npm3norm[2]), .B(reset), .Y(pm3254_2_) );
  OR2X1 U60 ( .A(npm3norm[1]), .B(reset), .Y(pm3254_1_) );
  OR2X1 U61 ( .A(npm3norm[0]), .B(reset), .Y(pm3254_0_) );
  OR2X1 U62 ( .A(npm2norm[3]), .B(reset), .Y(pm2247_3_) );
  OR2X1 U63 ( .A(npm2norm[2]), .B(reset), .Y(pm2247_2_) );
  OR2X1 U64 ( .A(npm2norm[1]), .B(reset), .Y(pm2247_1_) );
  OR2X1 U65 ( .A(npm2norm[0]), .B(reset), .Y(pm2247_0_) );
  OR2X1 U66 ( .A(npm1norm[3]), .B(reset), .Y(pm1240_3_) );
  OR2X1 U67 ( .A(npm1norm[2]), .B(reset), .Y(pm1240_2_) );
  OR2X1 U68 ( .A(npm1norm[1]), .B(reset), .Y(pm1240_1_) );
  OR2X1 U69 ( .A(npm1norm[0]), .B(reset), .Y(pm1240_0_) );
  AND2X1 U70 ( .A(npm0norm[3]), .B(n1), .Y(pm0233_3_) );
  AND2X1 U71 ( .A(npm0norm[2]), .B(n1), .Y(pm0233_2_) );
  AND2X1 U72 ( .A(npm0norm[1]), .B(n1), .Y(pm0233_1_) );
  AND2X1 U73 ( .A(npm0norm[0]), .B(n1), .Y(pm0233_0_) );
  INVX1 U74 ( .A(reset), .Y(n1) );
  NOR2X1 U75 ( .A(n2), .B(n3), .Y(npm3norm188_3_) );
  XOR2X1 U76 ( .A(n4), .B(n5), .Y(n3) );
  XOR2X1 U77 ( .A(n6), .B(npm3[3]), .Y(n5) );
  OAI21X1 U78 ( .A(n7), .B(n8), .C(n9), .Y(n6) );
  OAI21X1 U79 ( .A(n10), .B(n11), .C(npm3[2]), .Y(n9) );
  OAI21X1 U80 ( .A(n12), .B(n13), .C(n14), .Y(n4) );
  NOR2X1 U81 ( .A(n2), .B(n15), .Y(npm3norm188_2_) );
  XOR2X1 U82 ( .A(n16), .B(n10), .Y(n15) );
  INVX1 U83 ( .A(n7), .Y(n10) );
  OAI21X1 U84 ( .A(n17), .B(n13), .C(n18), .Y(n7) );
  XOR2X1 U85 ( .A(n19), .B(n11), .Y(n16) );
  INVX1 U86 ( .A(n8), .Y(n11) );
  OAI21X1 U87 ( .A(n20), .B(n21), .C(n22), .Y(n8) );
  OAI21X1 U88 ( .A(n23), .B(n24), .C(n25), .Y(n22) );
  INVX1 U89 ( .A(n21), .Y(n23) );
  INVX1 U90 ( .A(n24), .Y(n20) );
  NOR2X1 U91 ( .A(n2), .B(n26), .Y(npm3norm188_1_) );
  XOR2X1 U92 ( .A(n24), .B(n27), .Y(n26) );
  XOR2X1 U93 ( .A(n21), .B(npm3[1]), .Y(n27) );
  OAI21X1 U94 ( .A(n28), .B(n13), .C(n29), .Y(n24) );
  NOR2X1 U95 ( .A(n30), .B(n2), .Y(npm3norm188_0_) );
  INVX1 U96 ( .A(n31), .Y(n30) );
  OAI21X1 U97 ( .A(n32), .B(n33), .C(n21), .Y(n31) );
  NAND2X1 U98 ( .A(n33), .B(n32), .Y(n21) );
  OAI21X1 U99 ( .A(n34), .B(n13), .C(n35), .Y(n32) );
  NOR2X1 U100 ( .A(n36), .B(n37), .Y(npm2norm174_3_) );
  XOR2X1 U101 ( .A(n38), .B(n39), .Y(n37) );
  XOR2X1 U102 ( .A(n40), .B(npm2[3]), .Y(n39) );
  OAI21X1 U103 ( .A(n41), .B(n42), .C(n43), .Y(n40) );
  OAI21X1 U104 ( .A(n44), .B(n45), .C(npm2[2]), .Y(n43) );
  OAI21X1 U105 ( .A(n46), .B(n13), .C(n14), .Y(n38) );
  AOI22X1 U106 ( .A(npm0[3]), .B(n47), .C(npm1[3]), .D(n48), .Y(n14) );
  NOR2X1 U107 ( .A(n36), .B(n49), .Y(npm2norm174_2_) );
  XOR2X1 U108 ( .A(n50), .B(n44), .Y(n49) );
  INVX1 U109 ( .A(n41), .Y(n44) );
  OAI21X1 U110 ( .A(n13), .B(n19), .C(n18), .Y(n41) );
  AOI22X1 U111 ( .A(npm0[2]), .B(n47), .C(npm1[2]), .D(n48), .Y(n18) );
  XOR2X1 U112 ( .A(n17), .B(n45), .Y(n50) );
  INVX1 U113 ( .A(n42), .Y(n45) );
  OAI21X1 U114 ( .A(n51), .B(n52), .C(n53), .Y(n42) );
  OAI21X1 U115 ( .A(n54), .B(n55), .C(n28), .Y(n53) );
  INVX1 U116 ( .A(n52), .Y(n54) );
  INVX1 U117 ( .A(n55), .Y(n51) );
  NOR2X1 U118 ( .A(n36), .B(n56), .Y(npm2norm174_1_) );
  XOR2X1 U119 ( .A(n55), .B(n57), .Y(n56) );
  XOR2X1 U120 ( .A(n52), .B(npm2[1]), .Y(n57) );
  OAI21X1 U121 ( .A(n25), .B(n13), .C(n29), .Y(n55) );
  AOI22X1 U122 ( .A(npm0[1]), .B(n47), .C(npm1[1]), .D(n48), .Y(n29) );
  NOR2X1 U123 ( .A(n58), .B(n36), .Y(npm2norm174_0_) );
  NOR2X1 U124 ( .A(n59), .B(n13), .Y(n36) );
  INVX1 U125 ( .A(n60), .Y(n58) );
  OAI21X1 U126 ( .A(n34), .B(n61), .C(n52), .Y(n60) );
  NAND2X1 U127 ( .A(n34), .B(n61), .Y(n52) );
  OAI21X1 U128 ( .A(n13), .B(n33), .C(n35), .Y(n61) );
  AOI22X1 U129 ( .A(npm0[0]), .B(n47), .C(npm1[0]), .D(n48), .Y(n35) );
  INVX1 U130 ( .A(npm3[0]), .Y(n33) );
  NOR2X1 U131 ( .A(n62), .B(n63), .Y(npm1norm160_3_) );
  XOR2X1 U132 ( .A(n64), .B(n65), .Y(n63) );
  MUX2X1 U133 ( .B(n66), .A(n67), .S(n47), .Y(n65) );
  XOR2X1 U134 ( .A(n68), .B(npm1[3]), .Y(n64) );
  OAI21X1 U135 ( .A(n69), .B(n70), .C(n71), .Y(n68) );
  OAI21X1 U136 ( .A(n72), .B(n73), .C(npm1[2]), .Y(n71) );
  INVX1 U137 ( .A(n70), .Y(n72) );
  INVX1 U138 ( .A(n73), .Y(n69) );
  NOR2X1 U139 ( .A(n62), .B(n74), .Y(npm1norm160_2_) );
  XOR2X1 U140 ( .A(n73), .B(n75), .Y(n74) );
  XOR2X1 U141 ( .A(n70), .B(npm1[2]), .Y(n75) );
  OAI21X1 U142 ( .A(n76), .B(n77), .C(n78), .Y(n70) );
  OAI21X1 U143 ( .A(n79), .B(n80), .C(n81), .Y(n78) );
  MUX2X1 U144 ( .B(n82), .A(npm0[2]), .S(n47), .Y(n73) );
  NOR2X1 U145 ( .A(n62), .B(n83), .Y(npm1norm160_1_) );
  XOR2X1 U146 ( .A(n84), .B(n80), .Y(n83) );
  INVX1 U147 ( .A(n76), .Y(n80) );
  MUX2X1 U148 ( .B(n85), .A(npm0[1]), .S(n47), .Y(n76) );
  XOR2X1 U149 ( .A(n81), .B(n79), .Y(n84) );
  INVX1 U150 ( .A(n77), .Y(n79) );
  NOR2X1 U151 ( .A(n86), .B(n62), .Y(npm1norm160_0_) );
  NOR2X1 U152 ( .A(n47), .B(n87), .Y(n62) );
  INVX1 U153 ( .A(n88), .Y(n86) );
  OAI21X1 U154 ( .A(n89), .B(n90), .C(n77), .Y(n88) );
  NAND2X1 U155 ( .A(n90), .B(n89), .Y(n77) );
  MUX2X1 U156 ( .B(n91), .A(n92), .S(n47), .Y(n90) );
  NOR2X1 U157 ( .A(n93), .B(n94), .Y(npm0norm146_3_) );
  XOR2X1 U158 ( .A(n95), .B(n96), .Y(n94) );
  MUX2X1 U159 ( .B(n66), .A(n97), .S(n48), .Y(n96) );
  MUX2X1 U160 ( .B(npm3[3]), .A(npm2[3]), .S(n98), .Y(n66) );
  XOR2X1 U161 ( .A(n99), .B(npm0[3]), .Y(n95) );
  OAI21X1 U162 ( .A(n100), .B(n101), .C(n102), .Y(n99) );
  OAI21X1 U163 ( .A(n103), .B(n104), .C(npm0[2]), .Y(n102) );
  INVX1 U164 ( .A(n101), .Y(n103) );
  INVX1 U165 ( .A(n104), .Y(n100) );
  NOR2X1 U166 ( .A(n93), .B(n105), .Y(npm0norm146_2_) );
  XOR2X1 U167 ( .A(n104), .B(n106), .Y(n105) );
  XOR2X1 U168 ( .A(n101), .B(npm0[2]), .Y(n106) );
  OAI21X1 U169 ( .A(n107), .B(n108), .C(n109), .Y(n101) );
  OAI21X1 U170 ( .A(n110), .B(n111), .C(n112), .Y(n109) );
  MUX2X1 U171 ( .B(n82), .A(npm1[2]), .S(n48), .Y(n104) );
  MUX2X1 U172 ( .B(n17), .A(n19), .S(n59), .Y(n82) );
  NOR2X1 U173 ( .A(n93), .B(n113), .Y(npm0norm146_1_) );
  XOR2X1 U174 ( .A(n114), .B(n111), .Y(n113) );
  INVX1 U175 ( .A(n107), .Y(n111) );
  MUX2X1 U176 ( .B(n85), .A(npm1[1]), .S(n48), .Y(n107) );
  MUX2X1 U177 ( .B(n28), .A(n25), .S(n59), .Y(n85) );
  XOR2X1 U178 ( .A(n112), .B(n110), .Y(n114) );
  INVX1 U179 ( .A(n108), .Y(n110) );
  NOR2X1 U180 ( .A(n115), .B(n93), .Y(npm0norm146_0_) );
  NOR2X1 U181 ( .A(n87), .B(n48), .Y(n93) );
  INVX1 U182 ( .A(n116), .Y(n115) );
  OAI21X1 U183 ( .A(n92), .B(n117), .C(n108), .Y(n116) );
  NAND2X1 U184 ( .A(n117), .B(n92), .Y(n108) );
  MUX2X1 U185 ( .B(n91), .A(n89), .S(n48), .Y(n117) );
  MUX2X1 U186 ( .B(npm3[0]), .A(npm2[0]), .S(n98), .Y(n91) );
  INVX1 U187 ( .A(npm0[0]), .Y(n92) );
  NAND3X1 U188 ( .A(npm3[3]), .B(n67), .C(n2), .Y(n189_0_) );
  NOR2X1 U189 ( .A(n13), .B(n98), .Y(n2) );
  INVX1 U190 ( .A(n59), .Y(n98) );
  NAND2X1 U191 ( .A(n118), .B(n119), .Y(n59) );
  AOI21X1 U192 ( .A(n120), .B(n121), .C(n122), .Y(n119) );
  OAI22X1 U193 ( .A(n123), .B(n124), .C(n125), .D(n17), .Y(n122) );
  AOI22X1 U194 ( .A(n121), .B(n46), .C(n126), .D(n67), .Y(n125) );
  AOI22X1 U195 ( .A(n127), .B(n126), .C(npm2[3]), .D(n128), .Y(n118) );
  NAND3X1 U196 ( .A(npm3[3]), .B(npm0[3]), .C(n129), .Y(n128) );
  INVX1 U197 ( .A(n130), .Y(n129) );
  OAI21X1 U198 ( .A(n123), .B(npm1[2]), .C(n131), .Y(n130) );
  AOI22X1 U199 ( .A(n19), .B(n121), .C(n121), .D(npm2[2]), .Y(n131) );
  OAI21X1 U200 ( .A(npm3[2]), .B(n17), .C(n132), .Y(n121) );
  AOI22X1 U201 ( .A(npm2[1]), .B(n25), .C(n133), .D(npm2[0]), .Y(n132) );
  AOI21X1 U202 ( .A(npm3[1]), .B(n28), .C(npm3[0]), .Y(n133) );
  INVX1 U203 ( .A(n134), .Y(n123) );
  NAND3X1 U204 ( .A(n135), .B(n136), .C(n17), .Y(n134) );
  NAND3X1 U205 ( .A(n137), .B(n89), .C(npm2[0]), .Y(n135) );
  INVX1 U206 ( .A(npm1[0]), .Y(n89) );
  OAI21X1 U207 ( .A(n34), .B(n138), .C(n139), .Y(n126) );
  OR2X1 U208 ( .A(n140), .B(npm0[0]), .Y(n138) );
  INVX1 U209 ( .A(n141), .Y(n127) );
  INVX1 U210 ( .A(n87), .Y(n13) );
  NOR2X1 U211 ( .A(n47), .B(n48), .Y(n87) );
  NOR2X1 U212 ( .A(n142), .B(n143), .Y(n48) );
  OAI21X1 U213 ( .A(n144), .B(n145), .C(n146), .Y(n143) );
  OAI21X1 U214 ( .A(n147), .B(n148), .C(npm1[3]), .Y(n146) );
  NAND3X1 U215 ( .A(npm2[3]), .B(npm0[3]), .C(npm3[3]), .Y(n148) );
  NAND2X1 U216 ( .A(n149), .B(n150), .Y(n147) );
  AOI22X1 U217 ( .A(npm1[2]), .B(n151), .C(n152), .D(n19), .Y(n150) );
  NAND3X1 U218 ( .A(n153), .B(n154), .C(n144), .Y(n151) );
  INVX1 U219 ( .A(n152), .Y(n154) );
  AOI22X1 U220 ( .A(n155), .B(n156), .C(n157), .D(n17), .Y(n149) );
  OAI21X1 U221 ( .A(n153), .B(n141), .C(n158), .Y(n142) );
  AOI22X1 U222 ( .A(npm1[2]), .B(n159), .C(n120), .D(n152), .Y(n158) );
  INVX1 U223 ( .A(n160), .Y(n120) );
  OAI21X1 U224 ( .A(npm2[3]), .B(n144), .C(n161), .Y(n159) );
  AOI22X1 U225 ( .A(n152), .B(n46), .C(n155), .D(n67), .Y(n161) );
  OAI21X1 U226 ( .A(npm3[2]), .B(n162), .C(n163), .Y(n152) );
  AOI22X1 U227 ( .A(npm1[1]), .B(n25), .C(n164), .D(npm1[0]), .Y(n163) );
  AOI21X1 U228 ( .A(npm3[1]), .B(n81), .C(npm3[0]), .Y(n164) );
  INVX1 U229 ( .A(n157), .Y(n144) );
  OAI21X1 U230 ( .A(npm2[2]), .B(n162), .C(n165), .Y(n157) );
  AOI21X1 U231 ( .A(n166), .B(npm1[0]), .C(n167), .Y(n165) );
  INVX1 U232 ( .A(n137), .Y(n167) );
  NAND2X1 U233 ( .A(npm1[1]), .B(n28), .Y(n137) );
  INVX1 U234 ( .A(npm2[1]), .Y(n28) );
  AND2X1 U235 ( .A(n34), .B(n136), .Y(n166) );
  NAND2X1 U236 ( .A(npm2[1]), .B(n81), .Y(n136) );
  NAND2X1 U237 ( .A(n156), .B(n67), .Y(n141) );
  INVX1 U238 ( .A(n155), .Y(n153) );
  OAI21X1 U239 ( .A(npm0[2]), .B(n162), .C(n168), .Y(n155) );
  AOI21X1 U240 ( .A(n169), .B(npm1[0]), .C(n170), .Y(n168) );
  NOR2X1 U241 ( .A(npm0[0]), .B(n171), .Y(n169) );
  NOR2X1 U242 ( .A(n172), .B(n173), .Y(n47) );
  OAI21X1 U243 ( .A(n174), .B(n145), .C(n175), .Y(n173) );
  OAI21X1 U244 ( .A(n176), .B(n177), .C(npm0[3]), .Y(n175) );
  NAND3X1 U245 ( .A(npm3[3]), .B(npm2[3]), .C(npm1[3]), .Y(n177) );
  NAND2X1 U246 ( .A(n178), .B(n179), .Y(n176) );
  AOI22X1 U247 ( .A(npm0[2]), .B(n180), .C(n181), .D(n19), .Y(n179) );
  NAND3X1 U248 ( .A(n182), .B(n183), .C(n174), .Y(n180) );
  INVX1 U249 ( .A(n184), .Y(n182) );
  AOI22X1 U250 ( .A(n184), .B(n162), .C(n185), .D(n17), .Y(n178) );
  NAND2X1 U251 ( .A(n17), .B(n12), .Y(n145) );
  INVX1 U252 ( .A(npm2[3]), .Y(n12) );
  INVX1 U253 ( .A(npm2[2]), .Y(n17) );
  OAI21X1 U254 ( .A(n183), .B(n160), .C(n186), .Y(n172) );
  AOI22X1 U255 ( .A(npm0[2]), .B(n187), .C(n188), .D(n184), .Y(n186) );
  INVX1 U256 ( .A(n124), .Y(n188) );
  NAND2X1 U257 ( .A(n162), .B(n97), .Y(n124) );
  INVX1 U258 ( .A(npm1[2]), .Y(n162) );
  OAI21X1 U259 ( .A(npm2[3]), .B(n174), .C(n189), .Y(n187) );
  AOI22X1 U260 ( .A(n181), .B(n46), .C(n184), .D(n97), .Y(n189) );
  INVX1 U261 ( .A(npm1[3]), .Y(n97) );
  OAI21X1 U262 ( .A(npm1[2]), .B(n156), .C(n190), .Y(n184) );
  AOI21X1 U263 ( .A(n191), .B(npm0[0]), .C(n171), .Y(n190) );
  NOR2X1 U264 ( .A(n112), .B(npm1[1]), .Y(n171) );
  NOR2X1 U265 ( .A(npm1[0]), .B(n170), .Y(n191) );
  NOR2X1 U266 ( .A(n81), .B(npm0[1]), .Y(n170) );
  INVX1 U267 ( .A(npm1[1]), .Y(n81) );
  INVX1 U268 ( .A(n185), .Y(n174) );
  OAI21X1 U269 ( .A(npm2[2]), .B(n156), .C(n192), .Y(n185) );
  AOI21X1 U270 ( .A(n193), .B(npm0[0]), .C(n140), .Y(n192) );
  NOR2X1 U271 ( .A(n112), .B(npm2[1]), .Y(n140) );
  AND2X1 U272 ( .A(n34), .B(n139), .Y(n193) );
  NAND2X1 U273 ( .A(npm2[1]), .B(n112), .Y(n139) );
  INVX1 U274 ( .A(npm2[0]), .Y(n34) );
  NAND2X1 U275 ( .A(n19), .B(n46), .Y(n160) );
  INVX1 U276 ( .A(npm3[3]), .Y(n46) );
  INVX1 U277 ( .A(npm3[2]), .Y(n19) );
  INVX1 U278 ( .A(n181), .Y(n183) );
  OAI21X1 U279 ( .A(npm3[2]), .B(n156), .C(n194), .Y(n181) );
  AOI22X1 U280 ( .A(npm0[1]), .B(n25), .C(n195), .D(npm0[0]), .Y(n194) );
  AOI21X1 U281 ( .A(npm3[1]), .B(n112), .C(npm3[0]), .Y(n195) );
  INVX1 U282 ( .A(npm0[1]), .Y(n112) );
  INVX1 U283 ( .A(npm3[1]), .Y(n25) );
  INVX1 U284 ( .A(npm0[2]), .Y(n156) );
  INVX1 U285 ( .A(npm0[3]), .Y(n67) );
endmodule


module add_compare_select_3 ( npm, d, pm1, bm1, pm2, bm2 );
  output [3:0] npm;
  input [3:0] pm1;
  input [1:0] bm1;
  input [3:0] pm2;
  input [1:0] bm2;
  output d;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43;

  MUX2X1 U29 ( .B(n1), .A(n2), .S(d), .Y(npm[3]) );
  MUX2X1 U30 ( .B(n3), .A(n4), .S(d), .Y(npm[2]) );
  MUX2X1 U31 ( .B(n5), .A(n6), .S(d), .Y(npm[1]) );
  MUX2X1 U32 ( .B(n7), .A(n8), .S(d), .Y(npm[0]) );
  AOI21X1 U33 ( .A(n9), .B(n1), .C(n10), .Y(d) );
  INVX1 U34 ( .A(n11), .Y(n10) );
  OAI21X1 U35 ( .A(n1), .B(n9), .C(n12), .Y(n11) );
  OAI21X1 U36 ( .A(n4), .B(n13), .C(n14), .Y(n12) );
  OAI21X1 U37 ( .A(n3), .B(n15), .C(n16), .Y(n14) );
  AOI22X1 U38 ( .A(n17), .B(n8), .C(n6), .D(n18), .Y(n16) );
  INVX1 U39 ( .A(n19), .Y(n6) );
  INVX1 U40 ( .A(n20), .Y(n8) );
  OAI21X1 U41 ( .A(n21), .B(n22), .C(n23), .Y(n20) );
  NOR2X1 U42 ( .A(pm2[0]), .B(bm2[0]), .Y(n21) );
  AOI21X1 U43 ( .A(n5), .B(n19), .C(n7), .Y(n17) );
  INVX1 U44 ( .A(n24), .Y(n7) );
  OAI21X1 U45 ( .A(n25), .B(n26), .C(n27), .Y(n24) );
  NOR2X1 U46 ( .A(pm1[0]), .B(bm1[0]), .Y(n25) );
  NAND2X1 U47 ( .A(n28), .B(n23), .Y(n19) );
  XOR2X1 U48 ( .A(n29), .B(n30), .Y(n28) );
  XOR2X1 U49 ( .A(pm2[1]), .B(bm2[1]), .Y(n30) );
  INVX1 U50 ( .A(n18), .Y(n5) );
  NAND2X1 U51 ( .A(n31), .B(n27), .Y(n18) );
  XOR2X1 U52 ( .A(n32), .B(n33), .Y(n31) );
  XOR2X1 U53 ( .A(pm1[1]), .B(bm1[1]), .Y(n33) );
  INVX1 U54 ( .A(n13), .Y(n3) );
  OAI21X1 U55 ( .A(n34), .B(n35), .C(n27), .Y(n13) );
  NAND2X1 U56 ( .A(pm1[3]), .B(n35), .Y(n27) );
  NOR2X1 U57 ( .A(pm1[2]), .B(n36), .Y(n34) );
  INVX1 U58 ( .A(n15), .Y(n4) );
  OAI21X1 U59 ( .A(n37), .B(n38), .C(n23), .Y(n15) );
  NAND2X1 U60 ( .A(pm2[3]), .B(n38), .Y(n23) );
  NOR2X1 U61 ( .A(pm2[2]), .B(n39), .Y(n37) );
  NOR2X1 U62 ( .A(n35), .B(pm1[3]), .Y(n1) );
  AND2X1 U63 ( .A(pm1[2]), .B(n36), .Y(n35) );
  AOI21X1 U64 ( .A(n40), .B(n32), .C(n41), .Y(n36) );
  AOI21X1 U65 ( .A(n26), .B(bm1[1]), .C(pm1[1]), .Y(n41) );
  INVX1 U66 ( .A(n32), .Y(n26) );
  NAND2X1 U67 ( .A(pm1[0]), .B(bm1[0]), .Y(n32) );
  INVX1 U68 ( .A(bm1[1]), .Y(n40) );
  INVX1 U69 ( .A(n2), .Y(n9) );
  NOR2X1 U70 ( .A(n38), .B(pm2[3]), .Y(n2) );
  AND2X1 U71 ( .A(pm2[2]), .B(n39), .Y(n38) );
  AOI21X1 U72 ( .A(n42), .B(n29), .C(n43), .Y(n39) );
  AOI21X1 U73 ( .A(n22), .B(bm2[1]), .C(pm2[1]), .Y(n43) );
  INVX1 U74 ( .A(n29), .Y(n22) );
  NAND2X1 U75 ( .A(pm2[0]), .B(bm2[0]), .Y(n29) );
  INVX1 U76 ( .A(bm2[1]), .Y(n42) );
endmodule


module bmu ( cx0, cx1, bm0, bm1, bm2, bm3, bm4, bm5, bm6, bm7 );
  output [1:0] bm0;
  output [1:0] bm1;
  output [1:0] bm2;
  output [1:0] bm3;
  output [1:0] bm4;
  output [1:0] bm5;
  output [1:0] bm6;
  output [1:0] bm7;
  input cx0, cx1;
  wire   bm2_1_, bm6_1_, n1, n2;
  assign bm1[1] = bm2_1_;
  assign bm2[1] = bm2_1_;
  assign bm0[1] = bm3[1];
  assign bm0[0] = bm3[0];
  assign bm1[0] = bm3[0];
  assign bm2[0] = bm3[0];
  assign bm5[1] = bm6_1_;
  assign bm6[1] = bm6_1_;
  assign bm4[1] = bm7[1];
  assign bm4[0] = bm7[0];
  assign bm5[0] = bm7[0];
  assign bm6[0] = bm7[0];

  AND2X1 U31 ( .A(n1), .B(cx1), .Y(bm7[1]) );
  NOR2X1 U32 ( .A(cx1), .B(n1), .Y(bm6_1_) );
  INVX1 U33 ( .A(cx0), .Y(n1) );
  NOR2X1 U34 ( .A(bm3[1]), .B(bm3[0]), .Y(bm2_1_) );
  INVX1 U35 ( .A(bm7[0]), .Y(bm3[0]) );
  OAI21X1 U36 ( .A(cx1), .B(cx0), .C(n2), .Y(bm7[0]) );
  INVX1 U37 ( .A(n2), .Y(bm3[1]) );
  NAND2X1 U38 ( .A(cx0), .B(cx1), .Y(n2) );
endmodule


module viterbi_decoder ( d, cx, clk, reset );
  input [1:0] cx;
  input clk, reset;
  output d;
  wire   d0, d1, d2, d3;
  wire   [1:0] brch_met0;
  wire   [1:0] brch_met1;
  wire   [1:0] brch_met2;
  wire   [1:0] brch_met3;
  wire   [1:0] brch_met4;
  wire   [1:0] brch_met5;
  wire   [1:0] brch_met6;
  wire   [1:0] brch_met7;
  wire   [3:0] n_pm0;
  wire   [3:0] p_m0;
  wire   [3:0] p_m1;
  wire   [3:0] n_pm1;
  wire   [3:0] p_m2;
  wire   [3:0] p_m3;
  wire   [3:0] n_pm2;
  wire   [3:0] n_pm3;

  bmu brch_met ( .cx0(cx[0]), .cx1(cx[1]), .bm0(brch_met0), .bm1(brch_met1), 
        .bm2(brch_met2), .bm3(brch_met3), .bm4(brch_met4), .bm5(brch_met5), 
        .bm6(brch_met6), .bm7(brch_met7) );
  add_compare_select_3 acs0 ( .npm(n_pm0), .d(d0), .pm1(p_m0), .bm1(brch_met0), 
        .pm2(p_m1), .bm2(brch_met2) );
  add_compare_select_2 acs1 ( .npm(n_pm1), .d(d1), .pm1(p_m2), .bm1(brch_met4), 
        .pm2(p_m3), .bm2(brch_met6) );
  add_compare_select_1 acs2 ( .npm(n_pm2), .d(d2), .pm1(p_m0), .bm1(brch_met1), 
        .pm2(p_m1), .bm2(brch_met3) );
  add_compare_select_0 acs3 ( .npm(n_pm3), .d(d3), .pm1(p_m2), .bm1(brch_met5), 
        .pm2(p_m3), .bm2(brch_met7) );
  pmsm path_metric_sm ( .npm0(n_pm0), .npm1(n_pm1), .npm2(n_pm2), .npm3(n_pm3), 
        .pm0(p_m0), .pm1(p_m1), .pm2(p_m2), .pm3(p_m3), .clk(clk), .reset(
        reset) );
  spd survivor_path_dec ( .d0(d0), .d1(d1), .d2(d2), .d3(d3), .pm0(p_m0), 
        .pm1(p_m1), .pm2(p_m2), .pm3(p_m3), .out(d), .clk(clk), .reset(reset)
         );
endmodule

