module rptr_empty #(parameter ADDRSIZE = 8)
	(output reg rempty, 
	output rempty_almost,
	output fifo_error_r,
	output 		[ADDRSIZE-1:0] raddr,
	output reg	[ADDRSIZE:0]	rptr,
	input 		[ADDRSIZE:0]	rq2_wptr,
	input						rinc, rclk, rrst_n);

	wire rempty_val_almost;

	reg	[ADDRSIZE:0] rbin;
	wire [ADDRSIZE:0] rgraynext, rbinnext;
	// add following for almost full, empty
	wire [ADDRSIZE:0] rgraynext_almost, rbinnext_almost;
	//--------------------
	// GRAYSTYLE2 pointer
	//--------------------
	always @(posedge rclk or negedge rrst_n) begin
		if (!rrst_n) begin
			{rbin, rptr} <= 0;
		end else begin
			{rbin, rptr} <= {rbinnext, rgraynext};
		end
	end

	assign raddr = rbin[ADDRSIZE-1:0];

	assign rbinnext = rbin + (rinc & ~rempty);
	assign rgraynext = (rbinnext>>1) ^ rbinnext;

	assign rbinnext_almost = rbin + (rinc & ~rempty) + 1'b1;
	assign rgraynext_almost = (rbinnext_almost>>1) ^ rbinnext_almost + 1'b1; 

	//------------------
	// FIFO empty when the next rptr == synchronized wptr or on reset
	//------------------
	assign rempty_val = (rgraynext == rq2_wptr);
	// for almost
	assign rempty_val_almost = (rgraynext_almost == rq2_wptr);

	assign rempty_almost = rempty_val_almost;

	always @(posedge rclk or negedge rrst_n) begin
		if (!rrst_n) begin
			rempty <= 1'b1;
			//rempty_almost <= rempty_val_almost;
		end else begin
			rempty <= rempty_val;
			//rempty_almost <= rempty_val_almost;
		end
	end

	assign fifo_error_r = rinc & rempty;
endmodule


