//This is a baud rate generator to divide a 50MHz clock into a 115200 baud Tx.

module Baud_Rate  (input wire clk_slow,
						output wire Txclk
						);
//Our Testbench uses a 50 MHz clock.
//Want to interface to 115200 baud UART for Tx/Rx pair
//Hence, 50000000 / 115200 = 435 Clocks Per Bit.
//parameter TX_ACC_MAX = 12500000 / 115200;     //218
//parameter TX_ACC_WIDTH = $clog2(TX_ACC_MAX);   //8
parameter TX_ACC_WIDTH = 1;
reg [TX_ACC_WIDTH - 1:0] tx_acc = 0;
//reg tx_acc = 0;

//assign Txclk = (tx_acc == 9'd0);
assign Txclk = clk_slow;


//always @(posedge clk_slow) begin
	//if (tx_acc == TX_ACC_MAX[TX_ACC_WIDTH - 1:0])
	  // begin
		//tx_acc <= 0;
		//end
	//else
	 //  begin
		//tx_acc <= tx_acc + 9'b1; //increment by 000000001
		//end
//end

endmodule