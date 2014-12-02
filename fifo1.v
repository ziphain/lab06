module fifo1 #(parameter DSIZE = 16,parameter ADDRSIZE = 8)
(
	output [DSIZE-1:0] rdata,
	output wfull,
	output rempty,
	output rempty_almost, wfull_almost,
	output fifo_error_r, fifo_error_w,
	input [DSIZE-1:0] wdata,
	input winc, wclk, wrst_n,
	input rinc, rclk, rrst_n
);

	wire [ADDRSIZE-1:0] waddr, raddr;
	wire [ADDRSIZE:0] wptr, rptr, wq2_rptr, rq2_wptr;

	wire [DSIZE-1:0] qa;

sync_r2w sync_r2w(.wq2_rptr(wq2_rptr), .rptr(rptr), .wclk(wclk), .wrst_n(wrst_n));
sync_w2r sync_w2r(.rq2_wptr(rq2_wptr), .wptr(wptr), .rclk(rclk), .rrst_n(rrst_n));

RA2SH fifomem
(  // port A: write port
   .QA(qa),	      // Data output A
   .CLKA(~wclk),   // **
   .CENA(1'b0),   // Chip enable
   .WENA( ~(winc & ~wfull) ), // ** Write enable
   .AA(waddr),    // Address A
   .DA(wdata),    // Data input A
   .OENA(1'b1),   // Output enable
   // port B: read port
   .QB(rdata),    // Data output B
   .CLKB(~rclk),  // **
   .CENB(1'b0),   // Chip enable
   .WENB(1'b1),   // Write enable
   .AB(raddr),    // Address B
   .DB(16'd0),    // Data input B
   .OENB(1'b0)	  // Output enable
 );

rptr_empty #(ADDRSIZE) rptr_empty
(.rempty(rempty),
 .raddr(raddr),
 .rptr(rptr), 
 .rq2_wptr(rq2_wptr), 
 .rinc(rinc), 
 .rclk(rclk), 
 .rrst_n(rrst_n),
 .rempty_almost(rempty_almost),
 .fifo_error_r(fifo_error_r)
 );

wptr_full #(ADDRSIZE) wptr_full
(
 .wfull(wfull),
 .waddr(waddr), 
 .wptr(wptr), 
 .wq2_rptr(wq2_rptr), 
 .winc(winc), 
 .wclk(wclk), 
 .wrst_n(wrst_n),
 .wfull_almost(wfull_almost),
 .fifo_error_w(fifo_error_w)
 );

endmodule

