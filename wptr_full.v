module wptr_full #(parameter ADDRSIZE=8)
(
	output reg				wfull,
	output [ADDRSIZE-1:0] waddr,
	output reg[ADDRSIZE:0] wptr,
	input	[ADDRSIZE:0] wq2_rptr,
	input					winc,wclk,wrst_n
);
reg [ADDRSIZE:0] wbin;
wire [ADDRSIZE:0] wgraynext,wbinnext;

reg wfull_val;

//GRAYSTYLE2 pointer
always @(posedge wclk or negedge wrst_n) begin
	if(!wrst_n)begin
		wbin<=0;
		wptr<=0;
	end else begin
		wbin<=wbinnext;
		wptr<=wgraynext;
	end
end

assign waddr = wbin + (winc & ~wfull);

assign wbinnext = wbin + (winc & ~wfull);
assign wgraynext = (wbinnext >> 1) ^ wbinnext;

//------------------------------------------------------------------
// Simplified version of the three necessary full-tests:
// assign wfull_val=((wgnext[ADDRSIZE] !=wq2_rptr[ADDRSIZE] ) &&
// (wgnext[ADDRSIZE-1] !=wq2_rptr[ADDRSIZE-1]) &&
// (wgnext[ADDRSIZE-2:0]==wq2_rptr[ADDRSIZE-2:0]));
//------------------------------------------------------------------


always @* begin
	if ( wgraynext == {~wq2_rptr[ADDRSIZE:ADDRSIZE-1], wq2_rptr[ADDRSIZE-2:0]}) begin
		wfull_val = 1'b1;
	end else begin
		wfull_val = 0;
	end
end

always @(posedge wclk or negedge wrst_n) begin
	if (!wrst_n) begin
		wfull <= 1'b0;
	end else begin
		wfull <= wfull_val;
	end
end
endmodule