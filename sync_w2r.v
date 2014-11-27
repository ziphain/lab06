module sync_w2r #(parameter ADDRSIZE = 8)
	(output reg [ADDRSIZE:0] rq2_wptr,
	input		[ADDRSIZE:0] wptr,
	input					 rclk, rrst_n);

	reg [ADDRSIZE:0] rq1_wptr;

	always @(posedge rclk or negedge rrst_n) begin
		if (!rrst_n) begin
			{rq2_wptr, rq1_wptr} <= 0;
		end else begin 
			{rq2_wptr, rq1_wptr} <= {rq1_wptr, wptr};
		end
	end
endmodule