
module sync_r2w ( wq2_rptr, rptr, wclk, wrst_n );
  output [8:0] wq2_rptr;
  input [8:0] rptr;
  input wclk, wrst_n;
  wire   n19, n20;
  wire   [8:0] wq1_rptr;

  DFFRX1 \wq2_rptr_reg[6]  ( .D(wq1_rptr[6]), .CK(wclk), .RN(n19), .Q(
        wq2_rptr[6]) );
  DFFRX1 \wq2_rptr_reg[4]  ( .D(wq1_rptr[4]), .CK(wclk), .RN(n20), .Q(
        wq2_rptr[4]) );
  DFFRX1 \wq2_rptr_reg[3]  ( .D(wq1_rptr[3]), .CK(wclk), .RN(n20), .Q(
        wq2_rptr[3]) );
  DFFRX1 \wq2_rptr_reg[2]  ( .D(wq1_rptr[2]), .CK(wclk), .RN(n20), .Q(
        wq2_rptr[2]) );
  DFFRX1 \wq2_rptr_reg[1]  ( .D(wq1_rptr[1]), .CK(wclk), .RN(n20), .Q(
        wq2_rptr[1]) );
  DFFRX1 \wq2_rptr_reg[8]  ( .D(wq1_rptr[8]), .CK(wclk), .RN(n19), .Q(
        wq2_rptr[8]) );
  DFFRX1 \wq2_rptr_reg[7]  ( .D(wq1_rptr[7]), .CK(wclk), .RN(n19), .Q(
        wq2_rptr[7]) );
  DFFRX1 \wq2_rptr_reg[5]  ( .D(wq1_rptr[5]), .CK(wclk), .RN(n20), .Q(
        wq2_rptr[5]) );
  DFFRX1 \wq2_rptr_reg[0]  ( .D(wq1_rptr[0]), .CK(wclk), .RN(n20), .Q(
        wq2_rptr[0]) );
  DFFRX1 \wq1_rptr_reg[8]  ( .D(rptr[8]), .CK(wclk), .RN(n19), .Q(wq1_rptr[8])
         );
  DFFRX1 \wq1_rptr_reg[7]  ( .D(rptr[7]), .CK(wclk), .RN(n19), .Q(wq1_rptr[7])
         );
  DFFRX1 \wq1_rptr_reg[6]  ( .D(rptr[6]), .CK(wclk), .RN(n19), .Q(wq1_rptr[6])
         );
  DFFRX1 \wq1_rptr_reg[5]  ( .D(rptr[5]), .CK(wclk), .RN(n19), .Q(wq1_rptr[5])
         );
  DFFRX1 \wq1_rptr_reg[4]  ( .D(rptr[4]), .CK(wclk), .RN(n19), .Q(wq1_rptr[4])
         );
  DFFRX1 \wq1_rptr_reg[3]  ( .D(rptr[3]), .CK(wclk), .RN(n19), .Q(wq1_rptr[3])
         );
  DFFRX1 \wq1_rptr_reg[2]  ( .D(rptr[2]), .CK(wclk), .RN(n19), .Q(wq1_rptr[2])
         );
  DFFRX1 \wq1_rptr_reg[1]  ( .D(rptr[1]), .CK(wclk), .RN(n19), .Q(wq1_rptr[1])
         );
  DFFRX1 \wq1_rptr_reg[0]  ( .D(rptr[0]), .CK(wclk), .RN(n19), .Q(wq1_rptr[0])
         );
  CLKBUFX3 U3 ( .A(wrst_n), .Y(n19) );
  CLKBUFX3 U4 ( .A(wrst_n), .Y(n20) );
endmodule


module sync_w2r ( rq2_wptr, wptr, rclk, rrst_n );
  output [8:0] rq2_wptr;
  input [8:0] wptr;
  input rclk, rrst_n;
  wire   n19, n20;
  wire   [8:0] rq1_wptr;

  DFFRX1 \rq2_wptr_reg[7]  ( .D(rq1_wptr[7]), .CK(rclk), .RN(n19), .Q(
        rq2_wptr[7]) );
  DFFRX1 \rq2_wptr_reg[6]  ( .D(rq1_wptr[6]), .CK(rclk), .RN(n19), .Q(
        rq2_wptr[6]) );
  DFFRX1 \rq2_wptr_reg[5]  ( .D(rq1_wptr[5]), .CK(rclk), .RN(n20), .Q(
        rq2_wptr[5]) );
  DFFRX1 \rq2_wptr_reg[4]  ( .D(rq1_wptr[4]), .CK(rclk), .RN(n20), .Q(
        rq2_wptr[4]) );
  DFFRX1 \rq2_wptr_reg[3]  ( .D(rq1_wptr[3]), .CK(rclk), .RN(n20), .Q(
        rq2_wptr[3]) );
  DFFRX1 \rq2_wptr_reg[2]  ( .D(rq1_wptr[2]), .CK(rclk), .RN(n20), .Q(
        rq2_wptr[2]) );
  DFFRX1 \rq2_wptr_reg[1]  ( .D(rq1_wptr[1]), .CK(rclk), .RN(n20), .Q(
        rq2_wptr[1]) );
  DFFRX1 \rq2_wptr_reg[0]  ( .D(rq1_wptr[0]), .CK(rclk), .RN(n20), .Q(
        rq2_wptr[0]) );
  DFFRX1 \rq2_wptr_reg[8]  ( .D(rq1_wptr[8]), .CK(rclk), .RN(n19), .Q(
        rq2_wptr[8]) );
  DFFRX1 \rq1_wptr_reg[8]  ( .D(wptr[8]), .CK(rclk), .RN(n19), .Q(rq1_wptr[8])
         );
  DFFRX1 \rq1_wptr_reg[7]  ( .D(wptr[7]), .CK(rclk), .RN(n19), .Q(rq1_wptr[7])
         );
  DFFRX1 \rq1_wptr_reg[6]  ( .D(wptr[6]), .CK(rclk), .RN(n19), .Q(rq1_wptr[6])
         );
  DFFRX1 \rq1_wptr_reg[5]  ( .D(wptr[5]), .CK(rclk), .RN(n19), .Q(rq1_wptr[5])
         );
  DFFRX1 \rq1_wptr_reg[4]  ( .D(wptr[4]), .CK(rclk), .RN(n19), .Q(rq1_wptr[4])
         );
  DFFRX1 \rq1_wptr_reg[3]  ( .D(wptr[3]), .CK(rclk), .RN(n19), .Q(rq1_wptr[3])
         );
  DFFRX1 \rq1_wptr_reg[2]  ( .D(wptr[2]), .CK(rclk), .RN(n19), .Q(rq1_wptr[2])
         );
  DFFRX1 \rq1_wptr_reg[1]  ( .D(wptr[1]), .CK(rclk), .RN(n19), .Q(rq1_wptr[1])
         );
  DFFRX1 \rq1_wptr_reg[0]  ( .D(wptr[0]), .CK(rclk), .RN(n19), .Q(rq1_wptr[0])
         );
  CLKBUFX3 U3 ( .A(rrst_n), .Y(n19) );
  CLKBUFX3 U4 ( .A(rrst_n), .Y(n20) );
endmodule


module rptr_empty_ADDRSIZE8_DW01_inc_0 ( A, SUM );
  input [8:0] A;
  output [8:0] SUM;

  wire   [8:2] carry;

  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[8]), .B(A[8]), .Y(SUM[8]) );
endmodule


module rptr_empty_ADDRSIZE8 ( rempty, rempty_almost, fifo_error_r, raddr, rptr, 
        rq2_wptr, rinc, rclk, rrst_n );
  output [7:0] raddr;
  output [8:0] rptr;
  input [8:0] rq2_wptr;
  input rinc, rclk, rrst_n;
  output rempty, rempty_almost, fifo_error_r;
  wire   n89, \rbin[8] , N2, N12, N13, N14, N15, N16, N17, N18, N19,
         \rgraynext_almost[8] , rempty_val, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         \add_1_root_add_29_2/carry[8] , \add_1_root_add_29_2/carry[7] ,
         \add_1_root_add_29_2/carry[6] , \add_1_root_add_29_2/carry[5] ,
         \add_1_root_add_29_2/carry[4] , \add_1_root_add_29_2/carry[3] ,
         \add_1_root_add_29_2/carry[2] , \add_1_root_add_29_2/carry[1] ,
         \add_26/carry[8] , \add_26/carry[7] , \add_26/carry[6] ,
         \add_26/carry[5] , \add_26/carry[4] , \add_26/carry[3] ,
         \add_26/carry[2] , \add_26/carry[1] , n1, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n75, n76, n87, n88;
  wire   [8:0] rbinnext;
  wire   [7:0] rgraynext;
  wire   [8:0] rbinnext_almost;

  rptr_empty_ADDRSIZE8_DW01_inc_0 add_30 ( .A(rbinnext_almost), .SUM({
        \rgraynext_almost[8] , N19, N18, N17, N16, N15, N14, N13, N12}) );
  DFFRX1 \rbin_reg[8]  ( .D(rbinnext[8]), .CK(rclk), .RN(n87), .Q(\rbin[8] )
         );
  DFFSX1 rempty_reg ( .D(rempty_val), .CK(rclk), .SN(n87), .Q(rempty) );
  DFFRX1 \rbin_reg[1]  ( .D(rbinnext[1]), .CK(rclk), .RN(n87), .Q(raddr[1]) );
  DFFRX1 \rbin_reg[2]  ( .D(rbinnext[2]), .CK(rclk), .RN(n87), .Q(raddr[2]) );
  DFFRX1 \rbin_reg[3]  ( .D(rbinnext[3]), .CK(rclk), .RN(n87), .Q(raddr[3]) );
  DFFRX1 \rbin_reg[4]  ( .D(rbinnext[4]), .CK(rclk), .RN(n87), .Q(raddr[4]) );
  DFFRX1 \rbin_reg[5]  ( .D(rbinnext[5]), .CK(rclk), .RN(n87), .Q(raddr[5]) );
  DFFRX1 \rbin_reg[6]  ( .D(rbinnext[6]), .CK(rclk), .RN(n87), .Q(raddr[6]) );
  DFFRX1 \rbin_reg[7]  ( .D(rbinnext[7]), .CK(rclk), .RN(n87), .Q(raddr[7]) );
  DFFRX1 \rbin_reg[0]  ( .D(rbinnext[0]), .CK(rclk), .RN(n87), .Q(raddr[0]) );
  DFFRX1 \rptr_reg[0]  ( .D(rgraynext[0]), .CK(rclk), .RN(n87), .Q(rptr[0]) );
  DFFRX1 \rptr_reg[1]  ( .D(rgraynext[1]), .CK(rclk), .RN(n87), .Q(rptr[1]) );
  DFFRX1 \rptr_reg[2]  ( .D(rgraynext[2]), .CK(rclk), .RN(n87), .Q(rptr[2]) );
  DFFRX1 \rptr_reg[3]  ( .D(rgraynext[3]), .CK(rclk), .RN(n87), .Q(rptr[3]) );
  DFFRX1 \rptr_reg[4]  ( .D(rgraynext[4]), .CK(rclk), .RN(n87), .Q(rptr[4]) );
  DFFRX1 \rptr_reg[5]  ( .D(rgraynext[5]), .CK(rclk), .RN(n87), .Q(rptr[5]) );
  DFFRX1 \rptr_reg[6]  ( .D(rgraynext[6]), .CK(rclk), .RN(n87), .Q(rptr[6]) );
  DFFRX1 \rptr_reg[8]  ( .D(rbinnext[8]), .CK(rclk), .RN(n87), .Q(rptr[8]) );
  DFFRX1 \rptr_reg[7]  ( .D(rgraynext[7]), .CK(rclk), .RN(n87), .Q(rptr[7]) );
  DFFSRX1 rempty_almost_reg ( .D(n88), .CK(rclk), .SN(n75), .RN(n76), .Q(
        rempty_almost) );
  INVX6 U3 ( .A(n1), .Y(fifo_error_r) );
  CLKINVX8 U4 ( .A(n4), .Y(n1) );
  INVXL U5 ( .A(n3), .Y(n4) );
  CLKINVX20 U6 ( .A(n5), .Y(n3) );
  DLY3X1 U7 ( .A(n6), .Y(n5) );
  DLY4X4 U8 ( .A(n7), .Y(n6) );
  DLY4X4 U9 ( .A(n8), .Y(n7) );
  DLY4X4 U10 ( .A(n9), .Y(n8) );
  DLY4X4 U11 ( .A(n10), .Y(n9) );
  DLY4X4 U12 ( .A(n11), .Y(n10) );
  DLY4X4 U13 ( .A(n12), .Y(n11) );
  DLY4X4 U14 ( .A(n13), .Y(n12) );
  DLY4X4 U15 ( .A(n14), .Y(n13) );
  DLY4X4 U16 ( .A(n15), .Y(n14) );
  DLY4X4 U17 ( .A(n16), .Y(n15) );
  DLY4X4 U18 ( .A(n17), .Y(n16) );
  DLY4X4 U19 ( .A(n18), .Y(n17) );
  DLY4X4 U20 ( .A(n19), .Y(n18) );
  DLY4X4 U21 ( .A(n20), .Y(n19) );
  DLY4X4 U22 ( .A(n21), .Y(n20) );
  DLY4X4 U23 ( .A(n22), .Y(n21) );
  DLY4X4 U24 ( .A(n23), .Y(n22) );
  DLY4X4 U25 ( .A(n55), .Y(n23) );
  DLY4X4 U26 ( .A(n56), .Y(n55) );
  DLY4X4 U27 ( .A(n57), .Y(n56) );
  DLY4X4 U28 ( .A(n58), .Y(n57) );
  DLY4X4 U29 ( .A(n59), .Y(n58) );
  DLY4X4 U30 ( .A(n60), .Y(n59) );
  DLY4X4 U31 ( .A(n61), .Y(n60) );
  DLY4X4 U32 ( .A(n62), .Y(n61) );
  DLY4X4 U33 ( .A(n63), .Y(n62) );
  DLY4X4 U34 ( .A(n64), .Y(n63) );
  DLY4X4 U35 ( .A(n89), .Y(n64) );
  AND2XL U36 ( .A(rempty), .B(rinc), .Y(n89) );
  CLKINVX1 U37 ( .A(n35), .Y(n88) );
  NAND4X1 U38 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n35) );
  XOR2X1 U39 ( .A(n54), .B(N12), .Y(n36) );
  XOR2X1 U40 ( .A(n53), .B(N17), .Y(n37) );
  NOR4X1 U41 ( .A(n40), .B(n41), .C(n42), .D(n43), .Y(n39) );
  XOR2X1 U42 ( .A(rbinnext[6]), .B(rbinnext[7]), .Y(rgraynext[6]) );
  XOR2X1 U43 ( .A(rbinnext[7]), .B(rbinnext[8]), .Y(rgraynext[7]) );
  XOR2X1 U44 ( .A(rbinnext[5]), .B(rbinnext[6]), .Y(rgraynext[5]) );
  XOR2X1 U45 ( .A(rbinnext[4]), .B(rbinnext[5]), .Y(rgraynext[4]) );
  XOR2X1 U46 ( .A(rbinnext[3]), .B(rbinnext[4]), .Y(rgraynext[3]) );
  XOR2X1 U47 ( .A(rbinnext[2]), .B(rbinnext[3]), .Y(rgraynext[2]) );
  XOR2X1 U48 ( .A(rbinnext[1]), .B(rbinnext[2]), .Y(rgraynext[1]) );
  XOR2X1 U49 ( .A(rbinnext[1]), .B(rbinnext[0]), .Y(rgraynext[0]) );
  OR2X1 U50 ( .A(n87), .B(n35), .Y(n75) );
  OR2X1 U51 ( .A(n87), .B(n88), .Y(n76) );
  XNOR2X1 U52 ( .A(rq2_wptr[5]), .B(rbinnext_almost[6]), .Y(n53) );
  NOR4X1 U53 ( .A(n24), .B(n25), .C(n26), .D(n27), .Y(rempty_val) );
  XOR2X1 U54 ( .A(rq2_wptr[0]), .B(rgraynext[0]), .Y(n27) );
  NAND4X1 U55 ( .A(n31), .B(n32), .C(n33), .D(n34), .Y(n24) );
  XOR2X1 U56 ( .A(rq2_wptr[5]), .B(rgraynext[5]), .Y(n26) );
  NOR3X1 U57 ( .A(n48), .B(n49), .C(n50), .Y(n38) );
  XOR2X1 U58 ( .A(N19), .B(n52), .Y(n48) );
  XOR2X1 U59 ( .A(N18), .B(n51), .Y(n49) );
  XOR2X1 U60 ( .A(rq2_wptr[8]), .B(\rgraynext_almost[8] ), .Y(n50) );
  NAND3X1 U61 ( .A(n28), .B(n29), .C(n30), .Y(n25) );
  XNOR2X1 U62 ( .A(rbinnext[8]), .B(rq2_wptr[8]), .Y(n28) );
  XNOR2X1 U63 ( .A(rq2_wptr[6]), .B(rgraynext[6]), .Y(n29) );
  XNOR2X1 U64 ( .A(rq2_wptr[7]), .B(rgraynext[7]), .Y(n30) );
  NOR2BX1 U65 ( .AN(rinc), .B(rempty), .Y(N2) );
  XOR2X1 U66 ( .A(N16), .B(n44), .Y(n43) );
  XOR2X1 U67 ( .A(rq2_wptr[4]), .B(rbinnext_almost[5]), .Y(n44) );
  XOR2X1 U68 ( .A(rq2_wptr[6]), .B(rbinnext_almost[7]), .Y(n51) );
  XOR2X1 U69 ( .A(N15), .B(n45), .Y(n42) );
  XOR2X1 U70 ( .A(rq2_wptr[3]), .B(rbinnext_almost[4]), .Y(n45) );
  XOR2X1 U71 ( .A(rq2_wptr[7]), .B(rbinnext_almost[8]), .Y(n52) );
  XNOR2X1 U72 ( .A(rq2_wptr[0]), .B(rbinnext_almost[1]), .Y(n54) );
  XNOR2X1 U73 ( .A(rq2_wptr[4]), .B(rgraynext[4]), .Y(n31) );
  XNOR2X1 U74 ( .A(rq2_wptr[2]), .B(rgraynext[2]), .Y(n34) );
  XNOR2X1 U75 ( .A(rq2_wptr[1]), .B(rgraynext[1]), .Y(n33) );
  XNOR2X1 U76 ( .A(rq2_wptr[3]), .B(rgraynext[3]), .Y(n32) );
  XOR2X1 U77 ( .A(N14), .B(n47), .Y(n40) );
  XOR2X1 U78 ( .A(rq2_wptr[2]), .B(rbinnext_almost[3]), .Y(n47) );
  XOR2X1 U79 ( .A(N13), .B(n46), .Y(n41) );
  XOR2X1 U80 ( .A(rq2_wptr[1]), .B(rbinnext_almost[2]), .Y(n46) );
  CLKBUFX3 U81 ( .A(rrst_n), .Y(n87) );
  XOR2X1 U82 ( .A(\rbin[8] ), .B(\add_1_root_add_29_2/carry[8] ), .Y(
        rbinnext_almost[8]) );
  AND2X1 U83 ( .A(raddr[7]), .B(\add_1_root_add_29_2/carry[7] ), .Y(
        \add_1_root_add_29_2/carry[8] ) );
  XOR2X1 U84 ( .A(raddr[7]), .B(\add_1_root_add_29_2/carry[7] ), .Y(
        rbinnext_almost[7]) );
  AND2X1 U85 ( .A(raddr[6]), .B(\add_1_root_add_29_2/carry[6] ), .Y(
        \add_1_root_add_29_2/carry[7] ) );
  XOR2X1 U86 ( .A(raddr[6]), .B(\add_1_root_add_29_2/carry[6] ), .Y(
        rbinnext_almost[6]) );
  AND2X1 U87 ( .A(raddr[5]), .B(\add_1_root_add_29_2/carry[5] ), .Y(
        \add_1_root_add_29_2/carry[6] ) );
  XOR2X1 U88 ( .A(raddr[5]), .B(\add_1_root_add_29_2/carry[5] ), .Y(
        rbinnext_almost[5]) );
  AND2X1 U89 ( .A(raddr[4]), .B(\add_1_root_add_29_2/carry[4] ), .Y(
        \add_1_root_add_29_2/carry[5] ) );
  XOR2X1 U90 ( .A(raddr[4]), .B(\add_1_root_add_29_2/carry[4] ), .Y(
        rbinnext_almost[4]) );
  AND2X1 U91 ( .A(raddr[3]), .B(\add_1_root_add_29_2/carry[3] ), .Y(
        \add_1_root_add_29_2/carry[4] ) );
  XOR2X1 U92 ( .A(raddr[3]), .B(\add_1_root_add_29_2/carry[3] ), .Y(
        rbinnext_almost[3]) );
  AND2X1 U93 ( .A(raddr[2]), .B(\add_1_root_add_29_2/carry[2] ), .Y(
        \add_1_root_add_29_2/carry[3] ) );
  XOR2X1 U94 ( .A(raddr[2]), .B(\add_1_root_add_29_2/carry[2] ), .Y(
        rbinnext_almost[2]) );
  AND2X1 U95 ( .A(raddr[1]), .B(\add_1_root_add_29_2/carry[1] ), .Y(
        \add_1_root_add_29_2/carry[2] ) );
  XOR2X1 U96 ( .A(raddr[1]), .B(\add_1_root_add_29_2/carry[1] ), .Y(
        rbinnext_almost[1]) );
  OR2X1 U97 ( .A(raddr[0]), .B(N2), .Y(\add_1_root_add_29_2/carry[1] ) );
  XNOR2X1 U98 ( .A(N2), .B(raddr[0]), .Y(rbinnext_almost[0]) );
  XOR2X1 U99 ( .A(\rbin[8] ), .B(\add_26/carry[8] ), .Y(rbinnext[8]) );
  AND2X1 U100 ( .A(raddr[7]), .B(\add_26/carry[7] ), .Y(\add_26/carry[8] ) );
  XOR2X1 U101 ( .A(raddr[7]), .B(\add_26/carry[7] ), .Y(rbinnext[7]) );
  AND2X1 U102 ( .A(raddr[6]), .B(\add_26/carry[6] ), .Y(\add_26/carry[7] ) );
  XOR2X1 U103 ( .A(raddr[6]), .B(\add_26/carry[6] ), .Y(rbinnext[6]) );
  AND2X1 U104 ( .A(raddr[5]), .B(\add_26/carry[5] ), .Y(\add_26/carry[6] ) );
  XOR2X1 U105 ( .A(raddr[5]), .B(\add_26/carry[5] ), .Y(rbinnext[5]) );
  AND2X1 U106 ( .A(raddr[4]), .B(\add_26/carry[4] ), .Y(\add_26/carry[5] ) );
  XOR2X1 U107 ( .A(raddr[4]), .B(\add_26/carry[4] ), .Y(rbinnext[4]) );
  AND2X1 U108 ( .A(raddr[3]), .B(\add_26/carry[3] ), .Y(\add_26/carry[4] ) );
  XOR2X1 U109 ( .A(raddr[3]), .B(\add_26/carry[3] ), .Y(rbinnext[3]) );
  AND2X1 U110 ( .A(raddr[2]), .B(\add_26/carry[2] ), .Y(\add_26/carry[3] ) );
  XOR2X1 U111 ( .A(raddr[2]), .B(\add_26/carry[2] ), .Y(rbinnext[2]) );
  AND2X1 U112 ( .A(raddr[1]), .B(\add_26/carry[1] ), .Y(\add_26/carry[2] ) );
  XOR2X1 U113 ( .A(raddr[1]), .B(\add_26/carry[1] ), .Y(rbinnext[1]) );
  AND2X1 U114 ( .A(N2), .B(raddr[0]), .Y(\add_26/carry[1] ) );
  XOR2X1 U115 ( .A(N2), .B(raddr[0]), .Y(rbinnext[0]) );
endmodule


module wptr_full_ADDRSIZE8_DW01_inc_0 ( A, SUM );
  input [8:0] A;
  output [8:0] SUM;

  wire   [8:2] carry;

  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[8]), .B(A[8]), .Y(SUM[8]) );
endmodule


module wptr_full_ADDRSIZE8 ( wfull, wfull_almost, fifo_error_w, waddr, wptr, 
        wq2_rptr, winc, wclk, wrst_n );
  output [7:0] waddr;
  output [8:0] wptr;
  input [8:0] wq2_rptr;
  input winc, wclk, wrst_n;
  output wfull, wfull_almost, fifo_error_w;
  wire   n68, N3, N13, N14, N15, N16, N17, N18, N19, N20,
         \wgraynext_almost[8] , N23, N24, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50,
         \add_1_root_add_33_2/carry[8] , \add_1_root_add_33_2/carry[7] ,
         \add_1_root_add_33_2/carry[6] , \add_1_root_add_33_2/carry[5] ,
         \add_1_root_add_33_2/carry[4] , \add_1_root_add_33_2/carry[3] ,
         \add_1_root_add_33_2/carry[2] , \add_1_root_add_33_2/carry[1] ,
         \add_30/carry[8] , \add_30/carry[7] , \add_30/carry[6] ,
         \add_30/carry[5] , \add_30/carry[4] , \add_30/carry[3] ,
         \add_30/carry[2] , \add_30/carry[1] , \add_28/carry[7] ,
         \add_28/carry[6] , \add_28/carry[5] , \add_28/carry[4] ,
         \add_28/carry[3] , \add_28/carry[2] , \add_28/carry[1] , n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n66, n67;
  wire   [8:0] wbin;
  wire   [8:0] wbinnext;
  wire   [7:0] wgraynext;
  wire   [8:0] wbinnext_almost;

  wptr_full_ADDRSIZE8_DW01_inc_0 add_34 ( .A(wbinnext_almost), .SUM({
        \wgraynext_almost[8] , N20, N19, N18, N17, N16, N15, N14, N13}) );
  DFFRX1 \wbin_reg[8]  ( .D(wbinnext[8]), .CK(wclk), .RN(n67), .Q(wbin[8]) );
  DFFRX1 \wbin_reg[7]  ( .D(wbinnext[7]), .CK(wclk), .RN(n67), .Q(wbin[7]) );
  DFFRX1 \wbin_reg[6]  ( .D(wbinnext[6]), .CK(wclk), .RN(n67), .Q(wbin[6]) );
  DFFRX1 \wbin_reg[1]  ( .D(wbinnext[1]), .CK(wclk), .RN(n66), .Q(wbin[1]) );
  DFFRX1 \wbin_reg[2]  ( .D(wbinnext[2]), .CK(wclk), .RN(n66), .Q(wbin[2]) );
  DFFRX1 \wbin_reg[3]  ( .D(wbinnext[3]), .CK(wclk), .RN(n66), .Q(wbin[3]) );
  DFFRX1 \wbin_reg[4]  ( .D(wbinnext[4]), .CK(wclk), .RN(n66), .Q(wbin[4]) );
  DFFRX1 \wbin_reg[5]  ( .D(wbinnext[5]), .CK(wclk), .RN(n66), .Q(wbin[5]) );
  DFFRX1 \wbin_reg[0]  ( .D(wbinnext[0]), .CK(wclk), .RN(n66), .Q(wbin[0]) );
  DFFRX1 wfull_reg ( .D(N23), .CK(wclk), .RN(n66), .Q(wfull) );
  DFFRX1 wfull_almost_reg ( .D(N24), .CK(wclk), .RN(n67), .Q(wfull_almost) );
  DFFRX1 \wptr_reg[0]  ( .D(wgraynext[0]), .CK(wclk), .RN(n66), .Q(wptr[0]) );
  DFFRX1 \wptr_reg[1]  ( .D(wgraynext[1]), .CK(wclk), .RN(n66), .Q(wptr[1]) );
  DFFRX1 \wptr_reg[2]  ( .D(wgraynext[2]), .CK(wclk), .RN(n66), .Q(wptr[2]) );
  DFFRX1 \wptr_reg[3]  ( .D(wgraynext[3]), .CK(wclk), .RN(n66), .Q(wptr[3]) );
  DFFRX1 \wptr_reg[4]  ( .D(wgraynext[4]), .CK(wclk), .RN(n66), .Q(wptr[4]) );
  DFFRX1 \wptr_reg[5]  ( .D(wgraynext[5]), .CK(wclk), .RN(n67), .Q(wptr[5]) );
  DFFRX1 \wptr_reg[6]  ( .D(wgraynext[6]), .CK(wclk), .RN(n67), .Q(wptr[6]) );
  DFFRX1 \wptr_reg[8]  ( .D(wbinnext[8]), .CK(wclk), .RN(n67), .Q(wptr[8]) );
  DFFRX1 \wptr_reg[7]  ( .D(wgraynext[7]), .CK(wclk), .RN(n67), .Q(wptr[7]) );
  DLY4X1 U3 ( .A(n2), .Y(fifo_error_w) );
  DLY4X4 U4 ( .A(n3), .Y(n2) );
  DLY4X4 U5 ( .A(n4), .Y(n3) );
  DLY4X4 U6 ( .A(n5), .Y(n4) );
  DLY4X4 U7 ( .A(n6), .Y(n5) );
  DLY4X4 U8 ( .A(n7), .Y(n6) );
  DLY4X4 U9 ( .A(n8), .Y(n7) );
  DLY4X4 U10 ( .A(n9), .Y(n8) );
  DLY4X4 U11 ( .A(n10), .Y(n9) );
  DLY4X4 U12 ( .A(n11), .Y(n10) );
  DLY4X4 U13 ( .A(n12), .Y(n11) );
  DLY4X4 U14 ( .A(n13), .Y(n12) );
  DLY4X4 U15 ( .A(n14), .Y(n13) );
  DLY4X4 U16 ( .A(n15), .Y(n14) );
  DLY4X4 U17 ( .A(n68), .Y(n15) );
  AND2XL U18 ( .A(wfull), .B(winc), .Y(n68) );
  NOR4X1 U19 ( .A(n21), .B(n22), .C(n23), .D(n24), .Y(N24) );
  XOR2X1 U20 ( .A(N13), .B(n25), .Y(n24) );
  NAND4X1 U21 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(n21) );
  XOR2X1 U22 ( .A(N18), .B(n26), .Y(n23) );
  XOR2X1 U23 ( .A(wbinnext[7]), .B(wbinnext[8]), .Y(wgraynext[7]) );
  XOR2X1 U24 ( .A(wbinnext[6]), .B(wbinnext[7]), .Y(wgraynext[6]) );
  XOR2X1 U25 ( .A(wbinnext[5]), .B(wbinnext[6]), .Y(wgraynext[5]) );
  XOR2X1 U26 ( .A(wbinnext[4]), .B(wbinnext[5]), .Y(wgraynext[4]) );
  XOR2X1 U27 ( .A(wbinnext[3]), .B(wbinnext[4]), .Y(wgraynext[3]) );
  XOR2X1 U28 ( .A(wbinnext[2]), .B(wbinnext[3]), .Y(wgraynext[2]) );
  XOR2X1 U29 ( .A(wbinnext[1]), .B(wbinnext[2]), .Y(wgraynext[1]) );
  XOR2X1 U30 ( .A(wbinnext[1]), .B(wbinnext[0]), .Y(wgraynext[0]) );
  NOR2BX1 U31 ( .AN(winc), .B(wfull), .Y(N3) );
  XNOR2X1 U32 ( .A(wq2_rptr[6]), .B(wbinnext_almost[7]), .Y(n30) );
  NOR4X1 U33 ( .A(n40), .B(n41), .C(n42), .D(n43), .Y(N23) );
  XOR2X1 U34 ( .A(wq2_rptr[0]), .B(wgraynext[0]), .Y(n43) );
  NAND4X1 U35 ( .A(n47), .B(n48), .C(n49), .D(n50), .Y(n40) );
  XOR2X1 U36 ( .A(wq2_rptr[5]), .B(wgraynext[5]), .Y(n42) );
  NAND3X1 U37 ( .A(n44), .B(n45), .C(n46), .Y(n41) );
  XNOR2X1 U38 ( .A(wq2_rptr[6]), .B(wgraynext[6]), .Y(n46) );
  XOR2X1 U39 ( .A(wq2_rptr[8]), .B(wbinnext[8]), .Y(n45) );
  XOR2X1 U40 ( .A(wq2_rptr[7]), .B(wgraynext[7]), .Y(n44) );
  NAND3X1 U41 ( .A(n27), .B(n28), .C(n29), .Y(n22) );
  XOR2X1 U42 ( .A(N20), .B(n31), .Y(n27) );
  XOR2X1 U43 ( .A(n30), .B(N19), .Y(n29) );
  XOR2X1 U44 ( .A(wq2_rptr[8]), .B(\wgraynext_almost[8] ), .Y(n28) );
  XOR2X1 U45 ( .A(wq2_rptr[5]), .B(wbinnext_almost[6]), .Y(n26) );
  XOR2X1 U46 ( .A(wq2_rptr[7]), .B(wbinnext_almost[8]), .Y(n31) );
  XNOR2X1 U47 ( .A(wq2_rptr[4]), .B(wgraynext[4]), .Y(n47) );
  XNOR2X1 U48 ( .A(wq2_rptr[2]), .B(wgraynext[2]), .Y(n50) );
  XNOR2X1 U49 ( .A(wq2_rptr[1]), .B(wgraynext[1]), .Y(n49) );
  XNOR2X1 U50 ( .A(wq2_rptr[3]), .B(wgraynext[3]), .Y(n48) );
  XOR2X1 U51 ( .A(n39), .B(N17), .Y(n32) );
  XNOR2X1 U52 ( .A(wq2_rptr[4]), .B(wbinnext_almost[5]), .Y(n39) );
  XOR2X1 U53 ( .A(n36), .B(N15), .Y(n35) );
  XNOR2X1 U54 ( .A(wq2_rptr[2]), .B(wbinnext_almost[3]), .Y(n36) );
  XOR2X1 U55 ( .A(n37), .B(N14), .Y(n34) );
  XNOR2X1 U56 ( .A(wq2_rptr[1]), .B(wbinnext_almost[2]), .Y(n37) );
  XOR2X1 U57 ( .A(n38), .B(N16), .Y(n33) );
  XNOR2X1 U58 ( .A(wq2_rptr[3]), .B(wbinnext_almost[4]), .Y(n38) );
  XOR2X1 U59 ( .A(wq2_rptr[0]), .B(wbinnext_almost[1]), .Y(n25) );
  CLKBUFX3 U60 ( .A(wrst_n), .Y(n66) );
  CLKBUFX3 U61 ( .A(wrst_n), .Y(n67) );
  XOR2X1 U62 ( .A(wbin[8]), .B(\add_1_root_add_33_2/carry[8] ), .Y(
        wbinnext_almost[8]) );
  AND2X1 U63 ( .A(wbin[7]), .B(\add_1_root_add_33_2/carry[7] ), .Y(
        \add_1_root_add_33_2/carry[8] ) );
  XOR2X1 U64 ( .A(wbin[7]), .B(\add_1_root_add_33_2/carry[7] ), .Y(
        wbinnext_almost[7]) );
  AND2X1 U65 ( .A(wbin[6]), .B(\add_1_root_add_33_2/carry[6] ), .Y(
        \add_1_root_add_33_2/carry[7] ) );
  XOR2X1 U66 ( .A(wbin[6]), .B(\add_1_root_add_33_2/carry[6] ), .Y(
        wbinnext_almost[6]) );
  AND2X1 U67 ( .A(wbin[5]), .B(\add_1_root_add_33_2/carry[5] ), .Y(
        \add_1_root_add_33_2/carry[6] ) );
  XOR2X1 U68 ( .A(wbin[5]), .B(\add_1_root_add_33_2/carry[5] ), .Y(
        wbinnext_almost[5]) );
  AND2X1 U69 ( .A(wbin[4]), .B(\add_1_root_add_33_2/carry[4] ), .Y(
        \add_1_root_add_33_2/carry[5] ) );
  XOR2X1 U70 ( .A(wbin[4]), .B(\add_1_root_add_33_2/carry[4] ), .Y(
        wbinnext_almost[4]) );
  AND2X1 U71 ( .A(wbin[3]), .B(\add_1_root_add_33_2/carry[3] ), .Y(
        \add_1_root_add_33_2/carry[4] ) );
  XOR2X1 U72 ( .A(wbin[3]), .B(\add_1_root_add_33_2/carry[3] ), .Y(
        wbinnext_almost[3]) );
  AND2X1 U73 ( .A(wbin[2]), .B(\add_1_root_add_33_2/carry[2] ), .Y(
        \add_1_root_add_33_2/carry[3] ) );
  XOR2X1 U74 ( .A(wbin[2]), .B(\add_1_root_add_33_2/carry[2] ), .Y(
        wbinnext_almost[2]) );
  AND2X1 U75 ( .A(wbin[1]), .B(\add_1_root_add_33_2/carry[1] ), .Y(
        \add_1_root_add_33_2/carry[2] ) );
  XOR2X1 U76 ( .A(wbin[1]), .B(\add_1_root_add_33_2/carry[1] ), .Y(
        wbinnext_almost[1]) );
  OR2X1 U77 ( .A(wbin[0]), .B(N3), .Y(\add_1_root_add_33_2/carry[1] ) );
  XNOR2X1 U78 ( .A(N3), .B(wbin[0]), .Y(wbinnext_almost[0]) );
  XOR2X1 U79 ( .A(wbin[8]), .B(\add_30/carry[8] ), .Y(wbinnext[8]) );
  AND2X1 U80 ( .A(wbin[7]), .B(\add_30/carry[7] ), .Y(\add_30/carry[8] ) );
  XOR2X1 U81 ( .A(wbin[7]), .B(\add_30/carry[7] ), .Y(wbinnext[7]) );
  AND2X1 U82 ( .A(wbin[6]), .B(\add_30/carry[6] ), .Y(\add_30/carry[7] ) );
  XOR2X1 U83 ( .A(wbin[6]), .B(\add_30/carry[6] ), .Y(wbinnext[6]) );
  AND2X1 U84 ( .A(wbin[5]), .B(\add_30/carry[5] ), .Y(\add_30/carry[6] ) );
  XOR2X1 U85 ( .A(wbin[5]), .B(\add_30/carry[5] ), .Y(wbinnext[5]) );
  AND2X1 U86 ( .A(wbin[4]), .B(\add_30/carry[4] ), .Y(\add_30/carry[5] ) );
  XOR2X1 U87 ( .A(wbin[4]), .B(\add_30/carry[4] ), .Y(wbinnext[4]) );
  AND2X1 U88 ( .A(wbin[3]), .B(\add_30/carry[3] ), .Y(\add_30/carry[4] ) );
  XOR2X1 U89 ( .A(wbin[3]), .B(\add_30/carry[3] ), .Y(wbinnext[3]) );
  AND2X1 U90 ( .A(wbin[2]), .B(\add_30/carry[2] ), .Y(\add_30/carry[3] ) );
  XOR2X1 U91 ( .A(wbin[2]), .B(\add_30/carry[2] ), .Y(wbinnext[2]) );
  AND2X1 U92 ( .A(wbin[1]), .B(\add_30/carry[1] ), .Y(\add_30/carry[2] ) );
  XOR2X1 U93 ( .A(wbin[1]), .B(\add_30/carry[1] ), .Y(wbinnext[1]) );
  AND2X1 U94 ( .A(N3), .B(wbin[0]), .Y(\add_30/carry[1] ) );
  XOR2X1 U95 ( .A(N3), .B(wbin[0]), .Y(wbinnext[0]) );
  XOR2X1 U96 ( .A(wbin[7]), .B(\add_28/carry[7] ), .Y(waddr[7]) );
  AND2X1 U97 ( .A(wbin[6]), .B(\add_28/carry[6] ), .Y(\add_28/carry[7] ) );
  XOR2X1 U98 ( .A(wbin[6]), .B(\add_28/carry[6] ), .Y(waddr[6]) );
  AND2X1 U99 ( .A(wbin[5]), .B(\add_28/carry[5] ), .Y(\add_28/carry[6] ) );
  XOR2X1 U100 ( .A(wbin[5]), .B(\add_28/carry[5] ), .Y(waddr[5]) );
  AND2X1 U101 ( .A(wbin[4]), .B(\add_28/carry[4] ), .Y(\add_28/carry[5] ) );
  XOR2X1 U102 ( .A(wbin[4]), .B(\add_28/carry[4] ), .Y(waddr[4]) );
  AND2X1 U103 ( .A(wbin[3]), .B(\add_28/carry[3] ), .Y(\add_28/carry[4] ) );
  XOR2X1 U104 ( .A(wbin[3]), .B(\add_28/carry[3] ), .Y(waddr[3]) );
  AND2X1 U105 ( .A(wbin[2]), .B(\add_28/carry[2] ), .Y(\add_28/carry[3] ) );
  XOR2X1 U106 ( .A(wbin[2]), .B(\add_28/carry[2] ), .Y(waddr[2]) );
  AND2X1 U107 ( .A(wbin[1]), .B(\add_28/carry[1] ), .Y(\add_28/carry[2] ) );
  XOR2X1 U108 ( .A(wbin[1]), .B(\add_28/carry[1] ), .Y(waddr[1]) );
  AND2X1 U109 ( .A(N3), .B(wbin[0]), .Y(\add_28/carry[1] ) );
  XOR2X1 U110 ( .A(N3), .B(wbin[0]), .Y(waddr[0]) );
endmodule


module fifo1 ( rdata, wfull, rempty, rempty_almost, wfull_almost, fifo_error_r, 
        fifo_error_w, wdata, winc, wclk, wrst_n, rinc, rclk, rrst_n );
  output [15:0] rdata;
  input [15:0] wdata;
  input winc, wclk, wrst_n, rinc, rclk, rrst_n;
  output wfull, rempty, rempty_almost, wfull_almost, fifo_error_r,
         fifo_error_w;
  wire   _0_net_, _4_net_, n3;
  wire   [8:0] wq2_rptr;
  wire   [8:0] rptr;
  wire   [8:0] rq2_wptr;
  wire   [8:0] wptr;
  wire   [7:0] waddr;
  wire   [7:0] raddr;

  RA2SH fifomem ( .AA(waddr), .DA(wdata), .QB(rdata), .AB(raddr), .DB({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .CLKA(_0_net_), .CENA(1'b0), .OENA(1'b0), .WENA(n3), .CLKB(_4_net_), .CENB(1'b0), .OENB(1'b0), .WENB(1'b1) );
  sync_r2w sync_r2w ( .wq2_rptr(wq2_rptr), .rptr(rptr), .wclk(wclk), .wrst_n(
        wrst_n) );
  sync_w2r sync_w2r ( .rq2_wptr(rq2_wptr), .wptr(wptr), .rclk(rclk), .rrst_n(
        rrst_n) );
  rptr_empty_ADDRSIZE8 rptr_empty ( .rempty(rempty), .rempty_almost(
        rempty_almost), .fifo_error_r(fifo_error_r), .raddr(raddr), .rptr(rptr), .rq2_wptr(rq2_wptr), .rinc(rinc), .rclk(rclk), .rrst_n(rrst_n) );
  wptr_full_ADDRSIZE8 wptr_full ( .wfull(wfull), .wfull_almost(wfull_almost), 
        .fifo_error_w(fifo_error_w), .waddr(waddr), .wptr(wptr), .wq2_rptr(
        wq2_rptr), .winc(winc), .wclk(wclk), .wrst_n(wrst_n) );
  NAND2BX1 U6 ( .AN(wfull), .B(winc), .Y(n3) );
  INVX4 U7 ( .A(rclk), .Y(_4_net_) );
  INVX4 U8 ( .A(wclk), .Y(_0_net_) );
endmodule

