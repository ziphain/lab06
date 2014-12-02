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

	integer i, j;

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

		// for synthesis, load .sdf
		initial begin
			$sdf_annotate("fifo.sdf", fifo);
		end

		initial begin
			$fsdbDumpfile("fifo_syn.fsdb");
			$fsdbDumpvars;

			$monitor($time, " rclk=%b wclk=%b rrst_n=%b wrst_n=%b winc= %b wdata=%d rinc=%b rdata=%d", rclk, wclk, rrst_n,wrst_n, winc, wdata, rinc, rdata);
		end

		initial begin
			rclk = 1;
			wclk = 1;
			rrst_n = 0;
			wrst_n = 0;
			//wdata = 16'd1;
			rinc = 0;
			winc = 0;


			#(rcyc) wrst_n = 1; rrst_n = 1;
			// 
			fork
				// write thread
				begin
					
					//#(wcyc) wdata = 16'd1;
					for (i = 1; i <= 260; i = i + 1) begin
						#(wcyc) wdata = i; 
						winc = 1; 
					end // end of for
					#(wcyc) winc = 0;
					
				end
				// read thread
				begin
					for (j = 0; j < 130; j = j + 1) begin
						#(rcyc);
					end // end of for
					rinc = 1;
					for (j = 0; j < 270; j = j + 1) begin
						#(rcyc);
					end // end of for
					rinc = 0;
				end
			join

			fork
				// write
				begin
					for (i = 1; i <= 50; i = i +1) begin
						#(wcyc) wdata = i;
						winc = 1;
					end
					#(wcyc) winc = 0;
				end
				// read
				begin
					rinc = 1;
					for (j = 30; j < 100; j = j + 1) begin
						#(rcyc);
					end
					rinc = 0;
				end
			join



			#(rcyc*8); $finish;
		end

		/*
		task nop;
			begin
				start = 0;
			end
		endtask

		task load;
			begin
				start = 1;
			end
		endtask

		task data_in;
			input [7:0] data1, data2;
			begin
				a = data1;
				b = data2;
			end
		endtask
		*/
endmodule



