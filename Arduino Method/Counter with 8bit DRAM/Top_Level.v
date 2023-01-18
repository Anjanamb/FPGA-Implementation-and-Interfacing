module Top_Level(input clk_in, 						 
						output[7:0] count, 
						output[15:0] address_out,
						output[7:0] out_val,
						output clkout,
						output wren_out,
						output[7:0] Tx_bit,
						output TxBusy,
						output[1:0] state_out,
						output Clock_trans,
						output[15:0] test_out_pin
						);
								
wire [7:0] Data_counter_to_dram;
wire [15:0] Address_counter_to_dram;
wire wren;
wire clk_out;
wire Tx_clk;
wire [15:0] test;
//wire state;
//wire clock_transmit;


assign wren_out = wren;
assign clkout = clk_out; 
assign count = Data_counter_to_dram;
assign address_out = Address_counter_to_dram;
//assign STATE = state;
assign Clock_trans = Tx_clk;
assign test_out_pin = test;
						
Slow_Clock Slow_Clock(.clkin(clk_in), 
							.clkout(clk_out));
							
DRAM DRAM(.data(Data_counter_to_dram),
		.address(Address_counter_to_dram),
		.wren(wren),
		.q(out_val),
		.clock(clk_out));

Counter_8bit Counter_8bit(.address(Address_counter_to_dram),
		.counter(Data_counter_to_dram),
		.wren(wren),
		.clk(clk_out),
		.test_inp(test));
		
Baud_Rate Baud_Rate(.clk_slow(clk_out),
							.Txclk(Tx_clk)
							);
							
Transmitter Transmitter(.data_in(out_val),
							.wr_en(wren_out),
							.clk_slow(clk_out),
							.clk_tx(Tx_clk), //We assign Tx clock to enable clock 
							.Tx(Tx_bit),
							.Tx_busy(TxBusy),
							.state_out(state_out),
							.test_out(test)
							);
											 											 		  
endmodule