module FIFO_UART(
				input wire clk_50m,
				input wire Rdreq,
				input wire Wrreq,
				input wire Reset,
				input wire Wr_en,
				output wire [7:0] Data_out,
				output wire Used_words,
				output wire Tx,
				output wire Tx_busy,
				output wire Fifo_empty,
				output wire Fifo_full,
				output wire Tx2//output data
				);	
				
assign Tx2 = Tx;
wire Txclk_en; 
wire Slow_clk;
wire [7:0] Tx_data;
wire [7:0] cir_in; //circuit data
assign Data_out = Tx_data;

baudrate uart_baud(	.clk_50m(clk_50m),
							.Txclk_en(Txclk_en)
							);
							
transmitter uart_Tx(	.data_in(Tx_data),
							.wr_en(Wr_en),
							.clk_50m(clk_50m),
							.clken(Txclk_en), //We assign Tx clock to enable clock 
							.Tx(Tx),
							.Tx_busy(Tx_busy)
							);
							
FIFO FIFO ( .clock(Slow_clk),
				.data(cir_in),
				.q(Tx_data),
				.full(Fifo_full),
				.empty(Fifo_empty),
				.rdreq(Rdreq),
				.wrreq(Wrreq),
				.usedw(Used_words)				
				);

counter_8bit counter_8bit ( .clock(Slow_clk),
									 .reset(Reset),
									 .count(cir_in)
									 );

clock_var clock_var ( .clk_50mhz(clk_50m),
						    .clk_100hz(Slow_clk)
						    );	 

endmodule