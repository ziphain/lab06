`timescale 1ns/1ps
module stimulus;
	parameter DSIZE = 16;
	parameter ADDRSIZE = 8;
	parameter rcyc = 20;
	parameter wcyc = 10;
	// inputs
	reg rclk, wclk, rrst_n, wrst_n;
	reg [DSIZE - 1:0] wdata;

	reg rinc, winc;
	// outputs
	wire [DSIZE - 1:0] rdata;
	wire wfull, rempty;
	wire rempty_almost, wfull_almost;
	wire fifo_error_r, fifo_error_w;

	fifo1 fifo(
		.rclk(rclk),
		.wclk(wclk),
		.rrst_n(rrst_n),
		.wrst_n(wrst_n),
		.rinc(rinc),
		.winc(winc),
		.rdata(rdata),
		.wdata(wdata),
		.rempty(rempty),
		.wfull(wfull),
		.rempty_almost(rempty_almost),
		.wfull_almost(wfull_almost),
		.fifo_error_r(fifo_error_r),
		.fifo_error_w(fifo_error_w)
	);

	always #(rcyc/2) rclk = ~rclk;
	always #(wcyc/2) wclk = ~wclk;

		initial begin
			$fsdbDumpfile("fifo.fsdb");
			$fsdbDumpvars;

			$monitor($time, " rclk=%b wclk=%b rrst_n=%b wrst_n=%b winc= %b wdata=%d rinc=%b rdata=%d", rclk, wclk, rrst_n,wrst_n, winc, wdata, rinc, rdata);
		end

		initial begin
			rclk = 1;
			wclk = 1;
			rrst_n = 0;
			wrst_n = 0;
			//wdata = 16'd0;
			rinc = 0;
			winc = 0;

			#(rcyc) wrst_n = 1; rrst_n = 1;
			// 
			fork
				// write thread
				begin
					#(wcyc) winc = 1; 
					#(wcyc) wdata = 16'd1;
					#(wcyc) wdata = 16'd2;
					#(wcyc) wdata = 16'd3;
					#(wcyc) wdata = 16'd4;
					#(wcyc) wdata = 16'd5;
					#(wcyc) wdata = 16'd6;
					/*
					#(wcyc) wdata = 16'd7;
					#(wcyc) wdata = 16'd8;
					#(wcyc) wdata = 16'd9;
					
					#(wcyc) wdata = 16'd10;
					#(wcyc) wdata = 16'd11;
					#(wcyc) wdata = 16'd12;
					#(wcyc) wdata = 16'd13;
					#(wcyc) wdata = 16'd14;
					#(wcyc) wdata = 16'd15;
					#(wcyc) wdata = 16'd16;
					#(wcyc) wdata = 16'd17;
					#(wcyc) wdata = 16'd18;
					#(wcyc) wdata = 16'd19;
					#(wcyc) winc = 0;
					*/
				end
				// read thread
				begin
					#(rcyc) rinc = 1;
					#(rcyc);
					#(rcyc);
					#(rcyc);
					#(rcyc);
					#(rcyc);
					#(rcyc);
					#(rcyc);
					#(rcyc);
					#(rcyc);
					#(rcyc) rinc = 0;
				end
			join


			#(rcyc); $finish;
		end


endmodule



