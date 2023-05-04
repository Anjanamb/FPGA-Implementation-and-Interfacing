module servo(
    input mclk,
    input toggle,
	 input freeze,
	 input wire Rdreq,
	 input wire Wrreq,
	 input wire Wr_en,
    output [0:0] servo,
    output pwm,
	 output wire [15:0] Data_out,
	 output wire Fifo_empty,
	 output wire Fifo_full,
	 output wire Tx,
	 output wire Tx_busy
    );
	 
wire Txclk_en; 
wire Clk_100hz;	 
wire Clk_1mhz;
wire Clk_200hz;
wire [15:0] cir_in; //circuit data
wire [7:0] Tx_data;
assign Data_out = cir_in;

clock_100hz clock_100hz ( .clk_50mhz(mclk),
								  .clk_100hz(Clk_100hz)
								  );	 
								  
clock_var clock_var ( .clk_50mhz(mclk),
							 .clk_1mhz(Clk_1mhz)
							 );	
								  
clk_200hz clk_200hz ( .clk_50mhz(mclk),
							 .clk_200hz(Clk_200hz)
							 );	 
								  
motor motor( .mclk(Clk_1mhz),
				 .toggle(toggle),
				 .freeze(freeze),
				 .Led(servo),
				 .servo(pwm),
				 .data_out(cir_in)
				 );

baudrate uart_baud(	.clk_50m(mclk),
							.Txclk_en(Txclk_en)
							);
							
transmitter uart_Tx(	.data_in(Tx_data),
							.wr_en(Wr_en),
							.clk_50m(mclk),
							.clken(Txclk_en), //We assign Tx clock to enable clock 
							.Tx(Tx),
							.Tx_busy(Tx_busy)
							);
				 
FIFO FIFO ( .rdclk(Clk_200hz),
            .wrclk(Clk_100hz),
				.data(cir_in),
				.q(Tx_data),
				.wrfull(Fifo_full),
				.rdempty(Fifo_empty),
				.rdreq(Rdreq),
				.wrreq(Wrreq),				
				);
				 
endmodule