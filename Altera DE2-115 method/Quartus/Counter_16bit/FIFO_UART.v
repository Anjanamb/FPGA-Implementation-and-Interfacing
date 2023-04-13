module FIFO_UART(
				input wire clk_50m,
				input wire Rdreq,
				input wire Wrreq,
				input wire Reset,
				input wire Wr_en,
				output wire Clk_out_25hz,
				output wire Clk_out_100hz,
				output wire [31:0] Count_out,
				output wire [7:0] Data_out,
				output wire Tx,
				output wire Tx_busy,
				output wire Fifo_empty,
				output wire Fifo_full,
				output wire Tx2//output data
				);	
				
assign Tx2 = Tx;
wire Txclk_en; 
wire Slow_clk;
wire clk_25hz;
wire [7:0] Tx_data;
wire [31:0] cir_in; //circuit data
assign Data_out = Tx_data;
assign Count_out = cir_in;
assign Clk_out_100hz = Slow_clk;
assign Clk_out_25hz = clk_25hz;

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
							
FIFO FIFO ( .rdclk(Slow_clk),
            .wrclk(clk_25hz),
				.data(cir_in),
				.q(Tx_data),
				.wrfull(Fifo_full),
				.rdempty(Fifo_empty),
				.rdreq(Rdreq),
				.wrreq(Wrreq),				
				);

counter_16bit counter_16bit ( .clock(clk_25hz),
									 .reset(Reset),
									 .data_out(cir_in)
									 );

clock_var clock_var ( .clk_50mhz(clk_50m),
						    .clk_100hz(Slow_clk)
						    );	 
							 
clock_25hz clock_25hz ( .clk_50mhz(clk_50m),
						    .clk_25hz(clk_25hz)
						    );	 


endmodule