module debounce(
			   input wire in,
				input wire acy_clr,
				input wire syn_clr,
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
							
FIFO FIFO ( .clock(in),
				.aclr(acy_clr),
				.sclr(syn_clr),
				.data(cir_in),
				.q(Tx_data),
				.full(Fifo_full),
				.empty(Fifo_empty),
				.rdreq(Rdreq),
				.wrreq(Wrreq),
				.usedw(Used_words)				
				);

counter counter ( .clk(in),
						.reset(Reset),
						.count(cir_in)
						);

endmodule