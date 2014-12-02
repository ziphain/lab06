
module sync_r2w ( wq2_rptr, rptr, wclk, wrst_n );
  output [8:0] wq2_rptr;
  input [8:0] rptr;
  input wclk, wrst_n;
  wire   n19, n20;
  wire   [8:0] wq1_rptr;

  DFFRX1 \wq2_rptr_reg[4]  ( .D(wq1_rptr[4]), .CK(wclk), .RN(n20), .Q(
        wq2_rptr[4]) );
  DFFRX1 \wq2_rptr_reg[3]  ( .D(wq1_rptr[3]), .CK(wclk), .RN(n20), .Q(
        wq2_rptr[3]) );
  DFFRX1 \wq2_rptr_reg[2]  ( .D(wq1_rptr[2]), .CK(wclk), .RN(n20), .Q(
        wq2_rptr[2]) );
  DFFRX1 \wq2_rptr_reg[1]  ( .D(wq1_rptr[1]), .CK(wclk), .RN(n20), .Q(
        wq2_rptr[1]) );
  DFFRX1 \wq2_rptr_reg[6]  ( .D(wq1_rptr[6]), .CK(wclk), .RN(n19), .Q(
        wq2_rptr[6]) );
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
  DFFRX1 \rq2_wptr_reg[4]  ( .D(rq1_wptr[4]), .CK(rclk), .RN(n20), .Q(
        rq2_wptr[4]) );
  DFFRX1 \rq2_wptr_reg[3]  ( .D(rq1_wptr[3]), .CK(rclk), .RN(n20), .Q(
        rq2_wptr[3]) );
  DFFRX1 \rq2_wptr_reg[2]  ( .D(rq1_wptr[2]), .CK(rclk), .RN(n20), .Q(
        rq2_wptr[2]) );
  DFFRX1 \rq2_wptr_reg[1]  ( .D(rq1_wptr[1]), .CK(rclk), .RN(n20), .Q(
        rq2_wptr[1]) );
  DFFRX1 \rq2_wptr_reg[5]  ( .D(rq1_wptr[5]), .CK(rclk), .RN(n20), .Q(
        rq2_wptr[5]) );
  DFFRX1 \rq2_wptr_reg[8]  ( .D(rq1_wptr[8]), .CK(rclk), .RN(n19), .Q(
        rq2_wptr[8]) );
  DFFRX1 \rq2_wptr_reg[0]  ( .D(rq1_wptr[0]), .CK(rclk), .RN(n20), .Q(
        rq2_wptr[0]) );
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
  wire   n6, n7, n1, n5;
  wire   [8:2] carry;

  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(n6) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(n7) );
  CLKINVX1 U1 ( .A(n7), .Y(n1) );
  CLKINVX1 U2 ( .A(n1), .Y(SUM[3]) );
  BUFX6 U3 ( .A(n6), .Y(SUM[5]) );
  BUFX2 U4 ( .A(n5), .Y(SUM[0]) );
  INVX8 U5 ( .A(A[0]), .Y(n5) );
  XOR2X1 U6 ( .A(carry[8]), .B(A[8]), .Y(SUM[8]) );
endmodule


module rptr_empty_ADDRSIZE8 ( rempty, rempty_almost, fifo_error_r, raddr, rptr, 
        rq2_wptr, rinc, rclk, rrst_n );
  output [7:0] raddr;
  output [8:0] rptr;
  input [8:0] rq2_wptr;
  input rinc, rclk, rrst_n;
  output rempty, rempty_almost, fifo_error_r;
  wire   n88, \rbin[8] , N2, N12, N13, N14, N15, N16, N17, N18, N19,
         \rgraynext_almost[8] , rempty_val, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49,
         \add_1_root_add_32_2/carry[8] , \add_1_root_add_32_2/carry[7] ,
         \add_1_root_add_32_2/carry[6] , \add_1_root_add_32_2/carry[5] ,
         \add_1_root_add_32_2/carry[4] , \add_1_root_add_32_2/carry[3] ,
         \add_1_root_add_32_2/carry[2] , \add_1_root_add_32_2/carry[1] ,
         \add_29/carry[8] , \add_29/carry[7] , \add_29/carry[6] ,
         \add_29/carry[5] , \add_29/carry[4] , \add_29/carry[3] ,
         \add_29/carry[2] , \add_29/carry[1] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n62, n63, n64, n65, n66, n86,
         n87;
  wire   [8:0] rbinnext;
  wire   [7:0] rgraynext;
  wire   [8:0] rbinnext_almost;

  rptr_empty_ADDRSIZE8_DW01_inc_0 add_33 ( .A({rbinnext_almost[8:1], n16}), 
        .SUM({\rgraynext_almost[8] , N19, N18, N17, N16, N15, N14, N13, N12})
         );
  DFFRX1 \rbin_reg[8]  ( .D(rbinnext[8]), .CK(rclk), .RN(n87), .Q(\rbin[8] )
         );
  DFFSX1 rempty_reg ( .D(rempty_val), .CK(rclk), .SN(n87), .Q(rempty) );
  DFFRX1 \rbin_reg[1]  ( .D(rbinnext[1]), .CK(rclk), .RN(n86), .Q(raddr[1]) );
  DFFRX1 \rbin_reg[2]  ( .D(rbinnext[2]), .CK(rclk), .RN(n86), .Q(raddr[2]) );
  DFFRX1 \rbin_reg[3]  ( .D(rbinnext[3]), .CK(rclk), .RN(n86), .Q(raddr[3]) );
  DFFRX1 \rbin_reg[4]  ( .D(rbinnext[4]), .CK(rclk), .RN(n86), .Q(raddr[4]) );
  DFFRX1 \rbin_reg[5]  ( .D(rbinnext[5]), .CK(rclk), .RN(n86), .Q(raddr[5]) );
  DFFRX1 \rbin_reg[6]  ( .D(rbinnext[6]), .CK(rclk), .RN(n86), .Q(raddr[6]) );
  DFFRX1 \rbin_reg[7]  ( .D(rbinnext[7]), .CK(rclk), .RN(n87), .Q(raddr[7]) );
  DFFRX1 \rbin_reg[0]  ( .D(rbinnext[0]), .CK(rclk), .RN(n86), .Q(raddr[0]) );
  DFFRX1 \rptr_reg[0]  ( .D(rgraynext[0]), .CK(rclk), .RN(n86), .Q(rptr[0]) );
  DFFRX1 \rptr_reg[1]  ( .D(rgraynext[1]), .CK(rclk), .RN(n86), .Q(rptr[1]) );
  DFFRX1 \rptr_reg[2]  ( .D(rgraynext[2]), .CK(rclk), .RN(n86), .Q(rptr[2]) );
  DFFRX1 \rptr_reg[3]  ( .D(rgraynext[3]), .CK(rclk), .RN(n86), .Q(rptr[3]) );
  DFFRX1 \rptr_reg[4]  ( .D(rgraynext[4]), .CK(rclk), .RN(n86), .Q(rptr[4]) );
  DFFRX1 \rptr_reg[5]  ( .D(rgraynext[5]), .CK(rclk), .RN(n87), .Q(rptr[5]) );
  DFFRX1 \rptr_reg[6]  ( .D(rgraynext[6]), .CK(rclk), .RN(n87), .Q(rptr[6]) );
  DFFRX1 \rptr_reg[8]  ( .D(rbinnext[8]), .CK(rclk), .RN(n87), .Q(rptr[8]) );
  DFFRX1 \rptr_reg[7]  ( .D(rgraynext[7]), .CK(rclk), .RN(n87), .Q(rptr[7]) );
  INVX16 U3 ( .A(n51), .Y(n3) );
  BUFX8 U4 ( .A(n55), .Y(n51) );
  CLKXOR2X1 U5 ( .A(N17), .B(n36), .Y(n33) );
  CLKINVX1 U6 ( .A(n8), .Y(n1) );
  CLKINVX1 U7 ( .A(n1), .Y(n2) );
  CLKINVX2 U8 ( .A(n3), .Y(n4) );
  CLKBUFX3 U9 ( .A(n57), .Y(n56) );
  BUFX6 U10 ( .A(n31), .Y(n57) );
  XOR2XL U11 ( .A(n49), .B(N16), .Y(n42) );
  AND2XL U12 ( .A(raddr[3]), .B(\add_1_root_add_32_2/carry[3] ), .Y(
        \add_1_root_add_32_2/carry[4] ) );
  CLKBUFX2 U13 ( .A(n43), .Y(n9) );
  CLKXOR2X1 U14 ( .A(n48), .B(N15), .Y(n43) );
  BUFX2 U15 ( .A(n10), .Y(n5) );
  INVX2 U16 ( .A(n53), .Y(n54) );
  CLKINVX12 U17 ( .A(\add_1_root_add_32_2/carry[1] ), .Y(n53) );
  CLKXOR2X1 U18 ( .A(raddr[3]), .B(\add_1_root_add_32_2/carry[3] ), .Y(
        rbinnext_almost[3]) );
  BUFX2 U19 ( .A(n12), .Y(n6) );
  BUFX2 U20 ( .A(n11), .Y(n7) );
  BUFX2 U21 ( .A(n38), .Y(n8) );
  CLKXOR2X2 U22 ( .A(raddr[2]), .B(\add_1_root_add_32_2/carry[2] ), .Y(
        rbinnext_almost[2]) );
  BUFX2 U23 ( .A(n14), .Y(n10) );
  BUFX2 U24 ( .A(n18), .Y(n11) );
  BUFX2 U25 ( .A(n15), .Y(n12) );
  BUFX2 U26 ( .A(n17), .Y(n13) );
  BUFX2 U27 ( .A(n45), .Y(n14) );
  BUFX2 U28 ( .A(n58), .Y(n15) );
  DLY2X1 U29 ( .A(rbinnext_almost[0]), .Y(n16) );
  XNOR2X2 U30 ( .A(N2), .B(raddr[0]), .Y(rbinnext_almost[0]) );
  BUFX2 U31 ( .A(n19), .Y(n17) );
  NAND4XL U32 ( .A(n42), .B(n9), .C(n6), .D(n5), .Y(n31) );
  BUFX2 U33 ( .A(n50), .Y(n18) );
  BUFX2 U34 ( .A(n33), .Y(n19) );
  BUFX2 U35 ( .A(n52), .Y(n50) );
  AND2XL U36 ( .A(raddr[1]), .B(n54), .Y(\add_1_root_add_32_2/carry[2] ) );
  CLKXOR2X1 U37 ( .A(raddr[1]), .B(n54), .Y(rbinnext_almost[1]) );
  BUFX2 U38 ( .A(n59), .Y(n52) );
  OR2X8 U39 ( .A(raddr[0]), .B(N2), .Y(\add_1_root_add_32_2/carry[1] ) );
  BUFX2 U40 ( .A(n56), .Y(n55) );
  BUFX2 U41 ( .A(n44), .Y(n58) );
  DLY4X4 U42 ( .A(n34), .Y(n59) );
  CLKXOR2X1 U43 ( .A(N12), .B(n35), .Y(n34) );
  INVX3 U44 ( .A(n60), .Y(fifo_error_r) );
  CLKINVX4 U45 ( .A(n63), .Y(n60) );
  INVXL U46 ( .A(n62), .Y(n63) );
  CLKINVX20 U47 ( .A(n65), .Y(n62) );
  DLY4X1 U48 ( .A(n66), .Y(n65) );
  DLY4X4 U49 ( .A(n88), .Y(n64) );
  DLY4X4 U50 ( .A(n64), .Y(n66) );
  CLKAND2X2 U51 ( .A(rempty), .B(rinc), .Y(n88) );
  XOR2X1 U52 ( .A(rbinnext[6]), .B(rbinnext[7]), .Y(rgraynext[6]) );
  XOR2X1 U53 ( .A(rbinnext[7]), .B(rbinnext[8]), .Y(rgraynext[7]) );
  NOR4X1 U54 ( .A(n4), .B(n32), .C(n13), .D(n7), .Y(rempty_almost) );
  XOR2X1 U55 ( .A(rbinnext[5]), .B(rbinnext[6]), .Y(rgraynext[5]) );
  XOR2X1 U56 ( .A(rbinnext[4]), .B(rbinnext[5]), .Y(rgraynext[4]) );
  XOR2X1 U57 ( .A(rbinnext[3]), .B(rbinnext[4]), .Y(rgraynext[3]) );
  XOR2X1 U58 ( .A(rbinnext[2]), .B(rbinnext[3]), .Y(rgraynext[2]) );
  XOR2X1 U59 ( .A(rbinnext[1]), .B(rbinnext[2]), .Y(rgraynext[1]) );
  XOR2X1 U60 ( .A(rbinnext[1]), .B(rbinnext[0]), .Y(rgraynext[0]) );
  NOR4X1 U61 ( .A(n20), .B(n21), .C(n22), .D(n23), .Y(rempty_val) );
  XOR2X1 U62 ( .A(rq2_wptr[0]), .B(rgraynext[0]), .Y(n23) );
  NAND4X1 U63 ( .A(n27), .B(n28), .C(n29), .D(n30), .Y(n20) );
  XOR2X1 U64 ( .A(rq2_wptr[5]), .B(rgraynext[5]), .Y(n22) );
  NAND3X1 U65 ( .A(n24), .B(n25), .C(n26), .Y(n21) );
  XNOR2X1 U66 ( .A(rbinnext[8]), .B(rq2_wptr[8]), .Y(n24) );
  XNOR2X1 U67 ( .A(rq2_wptr[6]), .B(rgraynext[6]), .Y(n25) );
  XNOR2X1 U68 ( .A(rq2_wptr[7]), .B(rgraynext[7]), .Y(n26) );
  NOR2BX1 U69 ( .AN(rinc), .B(rempty), .Y(N2) );
  XNOR2X1 U70 ( .A(rq2_wptr[6]), .B(rbinnext_almost[7]), .Y(n41) );
  XNOR2X1 U71 ( .A(rq2_wptr[4]), .B(rgraynext[4]), .Y(n27) );
  XNOR2X1 U72 ( .A(rq2_wptr[2]), .B(rgraynext[2]), .Y(n30) );
  XNOR2X1 U73 ( .A(rq2_wptr[1]), .B(rgraynext[1]), .Y(n29) );
  XNOR2X1 U74 ( .A(rq2_wptr[3]), .B(rgraynext[3]), .Y(n28) );
  XNOR2X1 U75 ( .A(rq2_wptr[7]), .B(rbinnext_almost[8]), .Y(n40) );
  NAND3X1 U76 ( .A(n37), .B(n2), .C(n39), .Y(n32) );
  XOR2X1 U77 ( .A(n40), .B(N19), .Y(n39) );
  XOR2X1 U78 ( .A(n41), .B(N18), .Y(n38) );
  XNOR2X1 U79 ( .A(rq2_wptr[8]), .B(\rgraynext_almost[8] ), .Y(n37) );
  XNOR2X1 U80 ( .A(rq2_wptr[4]), .B(rbinnext_almost[5]), .Y(n49) );
  XNOR2X1 U81 ( .A(rq2_wptr[3]), .B(rbinnext_almost[4]), .Y(n48) );
  XOR2X1 U82 ( .A(rq2_wptr[5]), .B(rbinnext_almost[6]), .Y(n36) );
  XOR2X1 U83 ( .A(n46), .B(N14), .Y(n45) );
  XNOR2X1 U84 ( .A(rq2_wptr[2]), .B(rbinnext_almost[3]), .Y(n46) );
  XOR2X1 U85 ( .A(n47), .B(N13), .Y(n44) );
  XNOR2X1 U86 ( .A(rq2_wptr[1]), .B(rbinnext_almost[2]), .Y(n47) );
  XOR2X1 U87 ( .A(rq2_wptr[0]), .B(rbinnext_almost[1]), .Y(n35) );
  CLKBUFX3 U88 ( .A(rrst_n), .Y(n86) );
  CLKBUFX3 U89 ( .A(rrst_n), .Y(n87) );
  XOR2X1 U90 ( .A(\rbin[8] ), .B(\add_1_root_add_32_2/carry[8] ), .Y(
        rbinnext_almost[8]) );
  AND2X1 U91 ( .A(raddr[7]), .B(\add_1_root_add_32_2/carry[7] ), .Y(
        \add_1_root_add_32_2/carry[8] ) );
  XOR2X1 U92 ( .A(raddr[7]), .B(\add_1_root_add_32_2/carry[7] ), .Y(
        rbinnext_almost[7]) );
  AND2X1 U93 ( .A(raddr[6]), .B(\add_1_root_add_32_2/carry[6] ), .Y(
        \add_1_root_add_32_2/carry[7] ) );
  XOR2X1 U94 ( .A(raddr[6]), .B(\add_1_root_add_32_2/carry[6] ), .Y(
        rbinnext_almost[6]) );
  AND2X1 U95 ( .A(raddr[5]), .B(\add_1_root_add_32_2/carry[5] ), .Y(
        \add_1_root_add_32_2/carry[6] ) );
  XOR2X1 U96 ( .A(raddr[5]), .B(\add_1_root_add_32_2/carry[5] ), .Y(
        rbinnext_almost[5]) );
  AND2X1 U97 ( .A(raddr[4]), .B(\add_1_root_add_32_2/carry[4] ), .Y(
        \add_1_root_add_32_2/carry[5] ) );
  XOR2X1 U98 ( .A(raddr[4]), .B(\add_1_root_add_32_2/carry[4] ), .Y(
        rbinnext_almost[4]) );
  AND2X1 U99 ( .A(raddr[2]), .B(\add_1_root_add_32_2/carry[2] ), .Y(
        \add_1_root_add_32_2/carry[3] ) );
  XOR2X1 U100 ( .A(\rbin[8] ), .B(\add_29/carry[8] ), .Y(rbinnext[8]) );
  AND2X1 U101 ( .A(raddr[7]), .B(\add_29/carry[7] ), .Y(\add_29/carry[8] ) );
  XOR2X1 U102 ( .A(raddr[7]), .B(\add_29/carry[7] ), .Y(rbinnext[7]) );
  AND2X1 U103 ( .A(raddr[6]), .B(\add_29/carry[6] ), .Y(\add_29/carry[7] ) );
  XOR2X1 U104 ( .A(raddr[6]), .B(\add_29/carry[6] ), .Y(rbinnext[6]) );
  AND2X1 U105 ( .A(raddr[5]), .B(\add_29/carry[5] ), .Y(\add_29/carry[6] ) );
  XOR2X1 U106 ( .A(raddr[5]), .B(\add_29/carry[5] ), .Y(rbinnext[5]) );
  AND2X1 U107 ( .A(raddr[4]), .B(\add_29/carry[4] ), .Y(\add_29/carry[5] ) );
  XOR2X1 U108 ( .A(raddr[4]), .B(\add_29/carry[4] ), .Y(rbinnext[4]) );
  AND2X1 U109 ( .A(raddr[3]), .B(\add_29/carry[3] ), .Y(\add_29/carry[4] ) );
  XOR2X1 U110 ( .A(raddr[3]), .B(\add_29/carry[3] ), .Y(rbinnext[3]) );
  AND2X1 U111 ( .A(raddr[2]), .B(\add_29/carry[2] ), .Y(\add_29/carry[3] ) );
  XOR2X1 U112 ( .A(raddr[2]), .B(\add_29/carry[2] ), .Y(rbinnext[2]) );
  AND2X1 U113 ( .A(raddr[1]), .B(\add_29/carry[1] ), .Y(\add_29/carry[2] ) );
  XOR2X1 U114 ( .A(raddr[1]), .B(\add_29/carry[1] ), .Y(rbinnext[1]) );
  AND2X1 U115 ( .A(N2), .B(raddr[0]), .Y(\add_29/carry[1] ) );
  XOR2X1 U116 ( .A(N2), .B(raddr[0]), .Y(rbinnext[0]) );
endmodule


module wptr_full_ADDRSIZE8_DW01_inc_0 ( A, SUM );
  input [8:0] A;
  output [8:0] SUM;
  wire   n5, n6, n4;
  wire   [8:2] carry;

  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(n5) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(n6) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKBUFX3 U1 ( .A(n4), .Y(SUM[0]) );
  BUFX6 U2 ( .A(n6), .Y(SUM[5]) );
  BUFX2 U3 ( .A(n5), .Y(SUM[7]) );
  INVX12 U4 ( .A(A[0]), .Y(n4) );
  XOR2X1 U5 ( .A(carry[8]), .B(A[8]), .Y(SUM[8]) );
endmodule


module wptr_full_ADDRSIZE8 ( wfull, wfull_almost, fifo_error_w, waddr, wptr, 
        wq2_rptr, winc, wclk, wrst_n );
  output [7:0] waddr;
  output [8:0] wptr;
  input [8:0] wq2_rptr;
  input winc, wclk, wrst_n;
  output wfull, wfull_almost, fifo_error_w;
  wire   n100, N3, N13, N14, N15, N16, N17, N18, N19, N20,
         \wgraynext_almost[8] , N21, N24, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49,
         \add_1_root_add_34_2/carry[8] , \add_1_root_add_34_2/carry[7] ,
         \add_1_root_add_34_2/carry[6] , \add_1_root_add_34_2/carry[5] ,
         \add_1_root_add_34_2/carry[4] , \add_1_root_add_34_2/carry[3] ,
         \add_1_root_add_34_2/carry[2] , \add_1_root_add_34_2/carry[1] ,
         \add_31/carry[8] , \add_31/carry[7] , \add_31/carry[6] ,
         \add_31/carry[5] , \add_31/carry[4] , \add_31/carry[3] ,
         \add_31/carry[2] , \add_31/carry[1] , \add_29/carry[7] ,
         \add_29/carry[6] , \add_29/carry[5] , \add_29/carry[4] ,
         \add_29/carry[3] , \add_29/carry[2] , \add_29/carry[1] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n71, n72, n73, n74, n75, n76, n77,
         n78, n98, n99;
  wire   [8:0] wbin;
  wire   [8:0] wbinnext;
  wire   [7:0] wgraynext;
  wire   [8:0] wbinnext_almost;
  assign wfull_almost = N24;

  wptr_full_ADDRSIZE8_DW01_inc_0 add_35 ( .A({wbinnext_almost[8:4], n2, n14, 
        n63, n66}), .SUM({\wgraynext_almost[8] , N20, N19, N18, N17, N16, N15, 
        N14, N13}) );
  DFFRX1 \wbin_reg[8]  ( .D(wbinnext[8]), .CK(wclk), .RN(n99), .Q(wbin[8]) );
  DFFRX1 \wbin_reg[7]  ( .D(wbinnext[7]), .CK(wclk), .RN(n99), .Q(wbin[7]) );
  DFFRX1 \wbin_reg[3]  ( .D(wbinnext[3]), .CK(wclk), .RN(n98), .Q(wbin[3]) );
  DFFRX1 \wbin_reg[4]  ( .D(wbinnext[4]), .CK(wclk), .RN(n98), .Q(wbin[4]) );
  DFFRX1 \wbin_reg[5]  ( .D(wbinnext[5]), .CK(wclk), .RN(n98), .Q(wbin[5]) );
  DFFRX1 \wbin_reg[6]  ( .D(wbinnext[6]), .CK(wclk), .RN(n99), .Q(wbin[6]) );
  DFFRX1 \wbin_reg[1]  ( .D(wbinnext[1]), .CK(wclk), .RN(n98), .Q(wbin[1]) );
  DFFRX1 \wbin_reg[2]  ( .D(wbinnext[2]), .CK(wclk), .RN(n98), .Q(wbin[2]) );
  DFFRX1 \wbin_reg[0]  ( .D(wbinnext[0]), .CK(wclk), .RN(n98), .Q(wbin[0]) );
  DFFRX1 wfull_reg ( .D(N21), .CK(wclk), .RN(n98), .Q(wfull) );
  DFFRX1 \wptr_reg[0]  ( .D(wgraynext[0]), .CK(wclk), .RN(n98), .Q(wptr[0]) );
  DFFRX1 \wptr_reg[1]  ( .D(wgraynext[1]), .CK(wclk), .RN(n98), .Q(wptr[1]) );
  DFFRX1 \wptr_reg[2]  ( .D(wgraynext[2]), .CK(wclk), .RN(n98), .Q(wptr[2]) );
  DFFRX1 \wptr_reg[3]  ( .D(wgraynext[3]), .CK(wclk), .RN(n98), .Q(wptr[3]) );
  DFFRX1 \wptr_reg[4]  ( .D(wgraynext[4]), .CK(wclk), .RN(n98), .Q(wptr[4]) );
  DFFRX1 \wptr_reg[5]  ( .D(wgraynext[5]), .CK(wclk), .RN(n99), .Q(wptr[5]) );
  DFFRX1 \wptr_reg[6]  ( .D(wgraynext[6]), .CK(wclk), .RN(n99), .Q(wptr[6]) );
  DFFRX1 \wptr_reg[8]  ( .D(wbinnext[8]), .CK(wclk), .RN(n99), .Q(wptr[8]) );
  DFFRX1 \wptr_reg[7]  ( .D(wgraynext[7]), .CK(wclk), .RN(n99), .Q(wptr[7]) );
  CLKINVX1 U3 ( .A(wbinnext_almost[3]), .Y(n1) );
  CLKINVX1 U4 ( .A(n1), .Y(n2) );
  BUFX6 U5 ( .A(n33), .Y(n54) );
  AND2XL U6 ( .A(wbin[3]), .B(\add_1_root_add_34_2/carry[3] ), .Y(
        \add_1_root_add_34_2/carry[4] ) );
  INVXL U7 ( .A(n50), .Y(n3) );
  CLKINVX1 U8 ( .A(n3), .Y(n4) );
  CLKXOR2X2 U9 ( .A(n37), .B(N16), .Y(n32) );
  BUFX6 U10 ( .A(n34), .Y(n52) );
  CLKXOR2X1 U11 ( .A(n35), .B(N15), .Y(n34) );
  CLKXOR2X1 U12 ( .A(n36), .B(N14), .Y(n33) );
  INVXL U13 ( .A(n5), .Y(n6) );
  CLKINVX12 U14 ( .A(\add_1_root_add_34_2/carry[2] ), .Y(n5) );
  CLKINVX1 U15 ( .A(n15), .Y(n7) );
  CLKINVX1 U16 ( .A(n7), .Y(n8) );
  CLKINVX3 U17 ( .A(n9), .Y(n10) );
  CLKBUFX3 U18 ( .A(n61), .Y(n59) );
  CLKBUFX3 U19 ( .A(n65), .Y(n61) );
  CLKBUFX8 U20 ( .A(n20), .Y(n65) );
  CLKINVX1 U21 ( .A(n57), .Y(n9) );
  BUFX2 U22 ( .A(n17), .Y(n11) );
  CLKBUFX3 U23 ( .A(n53), .Y(n51) );
  CLKBUFX2 U24 ( .A(n55), .Y(n53) );
  CLKBUFX20 U25 ( .A(n56), .Y(n55) );
  CLKBUFX6 U26 ( .A(n58), .Y(n56) );
  CLKBUFX3 U27 ( .A(n60), .Y(n58) );
  CLKBUFX12 U28 ( .A(n62), .Y(n60) );
  CLKBUFX2 U29 ( .A(n67), .Y(n62) );
  CLKBUFX20 U30 ( .A(n68), .Y(n67) );
  CLKBUFX16 U31 ( .A(n23), .Y(n68) );
  XOR2X1 U32 ( .A(N13), .B(n24), .Y(n23) );
  BUFX2 U33 ( .A(n52), .Y(n12) );
  INVX4 U34 ( .A(n13), .Y(n14) );
  CLKINVX3 U35 ( .A(wbinnext_almost[2]), .Y(n13) );
  BUFX2 U36 ( .A(n28), .Y(n15) );
  BUFX2 U37 ( .A(n32), .Y(n16) );
  BUFX2 U38 ( .A(n19), .Y(n17) );
  CLKINVX1 U39 ( .A(n22), .Y(n18) );
  CLKINVX1 U40 ( .A(n18), .Y(n19) );
  BUFX2 U41 ( .A(n54), .Y(n50) );
  OR2XL U42 ( .A(wbin[0]), .B(N3), .Y(\add_1_root_add_34_2/carry[1] ) );
  CLKBUFX3 U43 ( .A(wbinnext_almost[1]), .Y(n64) );
  XOR2XL U44 ( .A(wbin[1]), .B(\add_1_root_add_34_2/carry[1] ), .Y(
        wbinnext_almost[1]) );
  XNOR2XL U45 ( .A(N3), .B(wbin[0]), .Y(wbinnext_almost[0]) );
  CLKXOR2X1 U46 ( .A(N18), .B(n25), .Y(n22) );
  AND2XL U47 ( .A(wbin[2]), .B(n6), .Y(\add_1_root_add_34_2/carry[3] ) );
  CLKAND2X8 U48 ( .A(wbin[1]), .B(\add_1_root_add_34_2/carry[1] ), .Y(
        \add_1_root_add_34_2/carry[2] ) );
  AND2XL U49 ( .A(wbin[4]), .B(\add_1_root_add_34_2/carry[4] ), .Y(
        \add_1_root_add_34_2/carry[5] ) );
  NAND4XL U50 ( .A(n31), .B(n16), .C(n4), .D(n12), .Y(n20) );
  CLKXOR2X1 U51 ( .A(wbin[3]), .B(\add_1_root_add_34_2/carry[3] ), .Y(
        wbinnext_almost[3]) );
  CLKXOR2X1 U52 ( .A(wbin[4]), .B(\add_1_root_add_34_2/carry[4] ), .Y(
        wbinnext_almost[4]) );
  BUFX2 U53 ( .A(n59), .Y(n57) );
  CLKXOR2X1 U54 ( .A(wbin[2]), .B(n6), .Y(wbinnext_almost[2]) );
  BUFX2 U55 ( .A(n64), .Y(n63) );
  XNOR2XL U56 ( .A(wq2_rptr[1]), .B(n14), .Y(n36) );
  DLY3X4 U57 ( .A(wbinnext_almost[0]), .Y(n66) );
  NOR4X2 U58 ( .A(n10), .B(n21), .C(n11), .D(n51), .Y(N24) );
  CLKINVX2 U59 ( .A(n72), .Y(n69) );
  INVX4 U60 ( .A(n74), .Y(n71) );
  DLY2X1 U61 ( .A(n100), .Y(n78) );
  CLKINVX1 U62 ( .A(n69), .Y(fifo_error_w) );
  INVXL U63 ( .A(n71), .Y(n72) );
  INVXL U64 ( .A(n73), .Y(n74) );
  INVX12 U65 ( .A(n75), .Y(n73) );
  DLY4X1 U66 ( .A(n76), .Y(n75) );
  DLY4X4 U67 ( .A(n77), .Y(n76) );
  DLY4X4 U68 ( .A(n78), .Y(n77) );
  CLKAND2X12 U69 ( .A(wfull), .B(winc), .Y(n100) );
  XOR2X1 U70 ( .A(wbinnext[7]), .B(wbinnext[8]), .Y(wgraynext[7]) );
  XOR2X1 U71 ( .A(wbinnext[6]), .B(wbinnext[7]), .Y(wgraynext[6]) );
  XOR2X1 U72 ( .A(wbinnext[5]), .B(wbinnext[6]), .Y(wgraynext[5]) );
  XOR2X1 U73 ( .A(wbinnext[4]), .B(wbinnext[5]), .Y(wgraynext[4]) );
  XOR2X1 U74 ( .A(wbinnext[3]), .B(wbinnext[4]), .Y(wgraynext[3]) );
  XOR2X1 U75 ( .A(wbinnext[2]), .B(wbinnext[3]), .Y(wgraynext[2]) );
  XOR2X1 U76 ( .A(wbinnext[1]), .B(wbinnext[2]), .Y(wgraynext[1]) );
  XOR2X1 U77 ( .A(wbinnext[1]), .B(wbinnext[0]), .Y(wgraynext[0]) );
  NOR2BX1 U78 ( .AN(winc), .B(wfull), .Y(N3) );
  NOR4X1 U79 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(N21) );
  XOR2X1 U80 ( .A(wq2_rptr[0]), .B(wgraynext[0]), .Y(n42) );
  NAND4X1 U81 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n39) );
  XOR2X1 U82 ( .A(wq2_rptr[5]), .B(wgraynext[5]), .Y(n41) );
  NAND3X1 U83 ( .A(n43), .B(n44), .C(n45), .Y(n40) );
  XNOR2X1 U84 ( .A(wq2_rptr[6]), .B(wgraynext[6]), .Y(n45) );
  XOR2X1 U85 ( .A(wq2_rptr[8]), .B(wbinnext[8]), .Y(n44) );
  XOR2X1 U86 ( .A(wq2_rptr[7]), .B(wgraynext[7]), .Y(n43) );
  XNOR2X1 U87 ( .A(wq2_rptr[6]), .B(wbinnext_almost[7]), .Y(n29) );
  XNOR2X1 U88 ( .A(wq2_rptr[4]), .B(wgraynext[4]), .Y(n46) );
  XNOR2X1 U89 ( .A(wq2_rptr[2]), .B(wgraynext[2]), .Y(n49) );
  XNOR2X1 U90 ( .A(wq2_rptr[1]), .B(wgraynext[1]), .Y(n48) );
  XNOR2X1 U91 ( .A(wq2_rptr[3]), .B(wgraynext[3]), .Y(n47) );
  NAND3X1 U92 ( .A(n26), .B(n27), .C(n8), .Y(n21) );
  XOR2X1 U93 ( .A(N20), .B(n30), .Y(n26) );
  XOR2X1 U94 ( .A(n29), .B(N19), .Y(n28) );
  XOR2X1 U95 ( .A(wq2_rptr[8]), .B(\wgraynext_almost[8] ), .Y(n27) );
  XOR2X1 U96 ( .A(n38), .B(N17), .Y(n31) );
  XNOR2X1 U97 ( .A(wq2_rptr[4]), .B(wbinnext_almost[5]), .Y(n38) );
  XNOR2X1 U98 ( .A(wq2_rptr[3]), .B(wbinnext_almost[4]), .Y(n37) );
  XOR2X1 U99 ( .A(wq2_rptr[5]), .B(wbinnext_almost[6]), .Y(n25) );
  XOR2X1 U100 ( .A(wq2_rptr[7]), .B(wbinnext_almost[8]), .Y(n30) );
  XNOR2X1 U101 ( .A(wq2_rptr[2]), .B(n2), .Y(n35) );
  XOR2X1 U102 ( .A(wq2_rptr[0]), .B(n63), .Y(n24) );
  CLKBUFX3 U103 ( .A(wrst_n), .Y(n98) );
  CLKBUFX3 U104 ( .A(wrst_n), .Y(n99) );
  XOR2X1 U105 ( .A(wbin[8]), .B(\add_1_root_add_34_2/carry[8] ), .Y(
        wbinnext_almost[8]) );
  AND2X1 U106 ( .A(wbin[7]), .B(\add_1_root_add_34_2/carry[7] ), .Y(
        \add_1_root_add_34_2/carry[8] ) );
  XOR2X1 U107 ( .A(wbin[7]), .B(\add_1_root_add_34_2/carry[7] ), .Y(
        wbinnext_almost[7]) );
  AND2X1 U108 ( .A(wbin[6]), .B(\add_1_root_add_34_2/carry[6] ), .Y(
        \add_1_root_add_34_2/carry[7] ) );
  XOR2X1 U109 ( .A(wbin[6]), .B(\add_1_root_add_34_2/carry[6] ), .Y(
        wbinnext_almost[6]) );
  AND2X1 U110 ( .A(wbin[5]), .B(\add_1_root_add_34_2/carry[5] ), .Y(
        \add_1_root_add_34_2/carry[6] ) );
  XOR2X1 U111 ( .A(wbin[5]), .B(\add_1_root_add_34_2/carry[5] ), .Y(
        wbinnext_almost[5]) );
  XOR2X1 U112 ( .A(wbin[8]), .B(\add_31/carry[8] ), .Y(wbinnext[8]) );
  AND2X1 U113 ( .A(wbin[7]), .B(\add_31/carry[7] ), .Y(\add_31/carry[8] ) );
  XOR2X1 U114 ( .A(wbin[7]), .B(\add_31/carry[7] ), .Y(wbinnext[7]) );
  AND2X1 U115 ( .A(wbin[6]), .B(\add_31/carry[6] ), .Y(\add_31/carry[7] ) );
  XOR2X1 U116 ( .A(wbin[6]), .B(\add_31/carry[6] ), .Y(wbinnext[6]) );
  AND2X1 U117 ( .A(wbin[5]), .B(\add_31/carry[5] ), .Y(\add_31/carry[6] ) );
  XOR2X1 U118 ( .A(wbin[5]), .B(\add_31/carry[5] ), .Y(wbinnext[5]) );
  AND2X1 U119 ( .A(wbin[4]), .B(\add_31/carry[4] ), .Y(\add_31/carry[5] ) );
  XOR2X1 U120 ( .A(wbin[4]), .B(\add_31/carry[4] ), .Y(wbinnext[4]) );
  AND2X1 U121 ( .A(wbin[3]), .B(\add_31/carry[3] ), .Y(\add_31/carry[4] ) );
  XOR2X1 U122 ( .A(wbin[3]), .B(\add_31/carry[3] ), .Y(wbinnext[3]) );
  AND2X1 U123 ( .A(wbin[2]), .B(\add_31/carry[2] ), .Y(\add_31/carry[3] ) );
  XOR2X1 U124 ( .A(wbin[2]), .B(\add_31/carry[2] ), .Y(wbinnext[2]) );
  AND2X1 U125 ( .A(wbin[1]), .B(\add_31/carry[1] ), .Y(\add_31/carry[2] ) );
  XOR2X1 U126 ( .A(wbin[1]), .B(\add_31/carry[1] ), .Y(wbinnext[1]) );
  AND2X1 U127 ( .A(N3), .B(wbin[0]), .Y(\add_31/carry[1] ) );
  XOR2X1 U128 ( .A(N3), .B(wbin[0]), .Y(wbinnext[0]) );
  XOR2X1 U129 ( .A(wbin[7]), .B(\add_29/carry[7] ), .Y(waddr[7]) );
  AND2X1 U130 ( .A(wbin[6]), .B(\add_29/carry[6] ), .Y(\add_29/carry[7] ) );
  XOR2X1 U131 ( .A(wbin[6]), .B(\add_29/carry[6] ), .Y(waddr[6]) );
  AND2X1 U132 ( .A(wbin[5]), .B(\add_29/carry[5] ), .Y(\add_29/carry[6] ) );
  XOR2X1 U133 ( .A(wbin[5]), .B(\add_29/carry[5] ), .Y(waddr[5]) );
  AND2X1 U134 ( .A(wbin[4]), .B(\add_29/carry[4] ), .Y(\add_29/carry[5] ) );
  XOR2X1 U135 ( .A(wbin[4]), .B(\add_29/carry[4] ), .Y(waddr[4]) );
  AND2X1 U136 ( .A(wbin[3]), .B(\add_29/carry[3] ), .Y(\add_29/carry[4] ) );
  XOR2X1 U137 ( .A(wbin[3]), .B(\add_29/carry[3] ), .Y(waddr[3]) );
  AND2X1 U138 ( .A(wbin[2]), .B(\add_29/carry[2] ), .Y(\add_29/carry[3] ) );
  XOR2X1 U139 ( .A(wbin[2]), .B(\add_29/carry[2] ), .Y(waddr[2]) );
  AND2X1 U140 ( .A(wbin[1]), .B(\add_29/carry[1] ), .Y(\add_29/carry[2] ) );
  XOR2X1 U141 ( .A(wbin[1]), .B(\add_29/carry[1] ), .Y(waddr[1]) );
  AND2X1 U142 ( .A(N3), .B(wbin[0]), .Y(\add_29/carry[1] ) );
  XOR2X1 U143 ( .A(N3), .B(wbin[0]), .Y(waddr[0]) );
endmodule


module fifo1 ( rdata, wfull, rempty, rempty_almost, wfull_almost, fifo_error_r, 
        fifo_error_w, wdata, winc, wclk, wrst_n, rinc, rclk, rrst_n );
  output [15:0] rdata;
  input [15:0] wdata;
  input winc, wclk, wrst_n, rinc, rclk, rrst_n;
  output wfull, rempty, rempty_almost, wfull_almost, fifo_error_r,
         fifo_error_w;
  wire   _0_net_, _4_net_, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44;
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
        rempty_almost), .fifo_error_r(fifo_error_r), .raddr(raddr), .rptr(rptr), .rq2_wptr(rq2_wptr), .rinc(n7), .rclk(rclk), .rrst_n(rrst_n) );
  wptr_full_ADDRSIZE8 wptr_full ( .wfull(wfull), .wfull_almost(wfull_almost), 
        .fifo_error_w(fifo_error_w), .waddr(waddr), .wptr(wptr), .wq2_rptr(
        wq2_rptr), .winc(n33), .wclk(wclk), .wrst_n(wrst_n) );
  INVXL U6 ( .A(n4), .Y(n5) );
  CLKINVX1 U7 ( .A(rinc), .Y(n4) );
  DLY4X1 U8 ( .A(n5), .Y(n6) );
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
  DLY4X4 U25 ( .A(n24), .Y(n23) );
  DLY4X4 U26 ( .A(n25), .Y(n24) );
  DLY4X4 U27 ( .A(n26), .Y(n25) );
  DLY4X4 U28 ( .A(n27), .Y(n26) );
  DLY4X4 U29 ( .A(n28), .Y(n27) );
  DLY4X4 U30 ( .A(n29), .Y(n28) );
  DLY4X4 U31 ( .A(n30), .Y(n29) );
  DLY4X4 U32 ( .A(n31), .Y(n30) );
  DLY4X4 U33 ( .A(n6), .Y(n31) );
  INVX1 U34 ( .A(n32), .Y(n33) );
  CLKINVX4 U35 ( .A(n35), .Y(n32) );
  DLY4X1 U36 ( .A(n36), .Y(n35) );
  DLY4X1 U37 ( .A(winc), .Y(n34) );
  DLY4X4 U38 ( .A(n37), .Y(n36) );
  DLY4X4 U39 ( .A(n38), .Y(n37) );
  DLY4X4 U40 ( .A(n39), .Y(n38) );
  DLY4X4 U41 ( .A(n40), .Y(n39) );
  DLY4X4 U42 ( .A(n41), .Y(n40) );
  DLY4X4 U43 ( .A(n42), .Y(n41) );
  DLY4X4 U44 ( .A(n43), .Y(n42) );
  DLY4X4 U45 ( .A(n44), .Y(n43) );
  DLY4X4 U46 ( .A(n34), .Y(n44) );
  NAND2BX1 U47 ( .AN(wfull), .B(winc), .Y(n3) );
  INVX4 U48 ( .A(rclk), .Y(_4_net_) );
  INVX4 U49 ( .A(wclk), .Y(_0_net_) );
endmodule

