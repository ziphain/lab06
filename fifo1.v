module fifo1 #(parameter DSIZE = 16,parameter ASIZE = 8)
(output [DSIZE-1:0] rdata,
output wfull,
output rempty,
input [DSIZE-1:0] wdata,
input winc, wclk, wrst_n,
input rinc, rclk, rrst_n);

wire [ASIZE-1:0] waddr, raddr;
wire [ASIZE:0] wptr, rptr, wq2_rptr, rq2_wptr;


sync_r2w sync_r2w(.wq2_rptr(wq2_rptr), .rptr(rptr), .wclk(wclk), .wrst_n(wrst_n));
sync_w2r sync_w2r(.rq2_wptr(rq2_wptr), .wptr(wptr), .rclk(rclk), .rrst_n(rrst_n));

RA2SH #(DSIZE,ASIZE) fifomem
(.QB(rdata),
 .DA(wdata),
 .AA(waddr),
 .AB(raddr),
 .WENA(winc),
 //.wfull(wfull),  // should add almost full, almost empty, full, empty
 .CLKA(wclk)
 );

rptr_empty #(ASIZE) rptr_empty
(.rempty(rempty),
 .raddr(raddr),
 .rptr(rptr), 
 .rq2_wptr(rq2_wptr), 
 .rinc(rinc), 
 .rclk(rclk), 
 .rrst_n(rrst_n)
 );

wptr_full #(ASIZE) wptr_full
(
 .wfull(wfull),
 .waddr(waddr), 
 .wptr(wptr), 
 .wq2_rptr(wq2_rptr), 
 .winc(winc), 
 .wclk(wclk), 
 .wrst_n(wrst_n)
 );

endmodule

