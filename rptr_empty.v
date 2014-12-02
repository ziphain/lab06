module rptr_empty #(parameter ADDRSIZE = 8)
(	output reg rempty, 
	output reg rempty_almost,
	output fifo_error_r,
	output 		[ADDRSIZE-1:0] raddr,
	output reg	[ADDRSIZE:0]	rptr,
	input 		[ADDRSIZE:0]	rq2_wptr,
	input						rinc, rclk, rrst_n
);

	wire rempty_val_almost;
	reg rempty_val;
	reg	[ADDRSIZE:0] rbin;
	wire [ADDRSIZE:0] rgraynext, rbinnext;
	// add following for almost full, empty
	reg [ADDRSIZE:0] rgraynext_almost, rbinnext_almost;
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

	always @* begin
		rbinnext_almost = rbin + (rinc & ~rempty) + 1'b1;
	end
	
	always @* begin
		rgraynext_almost = (rbinnext_almost>>1) ^ rbinnext_almost; 
	end
	//------------------
	// FIFO empty when the next rptr == synchronized wptr or on reset
	//------------------
	//assign rempty_val = (rgraynext == rq2_wptr);
	always @* begin
		if(!rrst_n)begin
			rempty_val <= 0;
		end else if(rgraynext == rq2_wptr) begin
			rempty_val <= 1'b1;
		end else begin
			rempty_val <= 1'b0;
		end
	end

	// for almost
	assign rempty_val_almost = (rgraynext_almost == rq2_wptr);

	always @(posedge rclk or negedge rrst_n) begin
		if (!rrst_n) begin
			rempty <= 1'b1;
			//rempty_almost <= rempty_val_almost;
		end else begin
			rempty <= rempty_val;
			rempty_almost <= rempty_val_almost;
		end
	end

	assign fifo_error_r = rinc & rempty;
endmodule


