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
	//wire almost_rempty, almost_wfull;

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
		.wfull_almost(wfull_almost)
	);

	always #(rcyc/2) rclk = ~rclk;
	always #(wcyc/2) wclk = ~wclk;

		initial begin
			$fsdbDumpfile("fifo.fsdb");
			$fsdbDumpvars;

			$monitor($time, " rclk=%b wclk=%b rrst_n=%b wrst_n=%b winc= %b wdata=%d rinc=%b rdata=%d", rclk, wclk, rrst_n,wrst_n, winc, wdata, rinc, rdata);
		end

		initial begin
			rclk = 0;
			wclk = 0;
			rrst_n = 0;
			wrst_n = 0;
			//wdata = 16'd0;
			rinc = 0;
			winc = 0;

			#(wcyc); wrst_n = 1; rrst_n = 1;
			winc = 1; 
			#(wcyc); wdata = 16'd16;
			#(wcyc); wdata = 16'd19;
			#(wcyc); wdata = 16'd10;
			#(wcyc);
			winc = 0;
			rinc = 1;
			#(rcyc);
			#(rcyc);
			#(rcyc);
			#(rcyc);

			


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



