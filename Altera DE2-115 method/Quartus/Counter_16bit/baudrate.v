//This is a baud rate generator to divide a 50MHz clock into a 115200 baud Tx/Rx pair.

module baudrate  (input wire clk_50m,
						output wire Txclk_en
						);
//Our Testbench uses a 50 MHz clock.
//Want to interface to 115200 baud UART for Tx/Rx pair
//Hence, 50000000 / 115200 = 435 Clocks Per Bit.
parameter TX_ACC_MAX = 50000000 / 115200;
parameter TX_ACC_WIDTH = $clog2(TX_ACC_MAX);
reg [TX_ACC_WIDTH - 1:0] tx_acc = 0;

assign Txclk_en = (tx_acc == 9'd0);

always @(posedge clk_50m) begin
	if (tx_acc == TX_ACC_MAX[TX_ACC_WIDTH - 1:0])
		tx_acc <= 0;
	else
		tx_acc <= tx_acc + 9'b1; //increment by 000000001
end

endmodule
