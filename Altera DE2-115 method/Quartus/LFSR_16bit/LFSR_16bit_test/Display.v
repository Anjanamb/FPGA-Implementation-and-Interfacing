module Display(
  input clk_50,
  input clr,
  input wire Rdreq,
  input wire Wrreq,
  input wire Wr_en,
  input wire select,
  output wire clk,
  output wire Fifo_empty,
  output wire Fifo_full,
  output [6:0] out1,
  output [6:0] out2,
  output [6:0] out3,
  output [6:0] out4,
  output wire Tx,
  output wire Tx_busy
);
  
  wire Txclk_en; 
  wire [7:0] Tx_data;   
  wire [3:0] out1_wire;
  wire [3:0] out2_wire;
  wire [3:0] out3_wire;
  wire [3:0] out4_wire;
  wire [15:0] lfsr_out;
  wire [31:0] cir_in;
  wire Clk_100hz; 
  wire clk_sel;
  
  // Assign the input segments
  assign out1_wire = lfsr_out[3:0];   // Bits 3:0 of the input
  assign out2_wire = lfsr_out[7:4];   // Bits 7:4 of the input
  assign out3_wire = lfsr_out[11:8];  // Bits 11:8 of the input
  assign out4_wire = lfsr_out[15:12]; // Bits 15:12 of the input
  // Multiplexer to select the clock for the second stage
  assign clk_sel = select ? Clk_100hz : Clk_0_25hz;
  assign clk = clk_sel;
  

  // Instantiate the hexadigit modules
  hexadigit1 hexadigit1 (
    .in(lfsr_out),
    .out(out1)
  );

  hexadigit2 hexadigit2 (
    .in(out2_wire),
    .out(out2)
  );

  hexadigit3 hexadigit3 (
    .in(out3_wire),
    .out(out3)
  );

  hexadigit4 hexadigit4 (
    .in(out4_wire),
    .out(out4)
  );
  
  lfsr lfsr (
	 .y(lfsr_out),
	 .clk(clk_sel),
	 .clr(clr),
	 .data_out(cir_in)
  );
  

  clk_0_25hz clk_0_25hz ( .clk_50mhz(clk_50),
								  .clk_0_25hz(Clk_0_25hz)
								  );	 
								  
  clock_100hz clock_100hz ( .clk_50mhz(clk_50),
								  .clk_100hz(Clk_100hz)
								  );		
								  
  clk_400hz clk_400hz ( .clk_50mhz(clk_50),
							 .clk_400hz(Clk_400hz)
							 );	 			  
  
  FIFO FIFO ( .rdclk(Clk_400hz),
            .wrclk(clk_sel),
				.data(cir_in),
				.q(Tx_data),
				.wrfull(Fifo_full),
				.rdempty(Fifo_empty),
				.rdreq(Rdreq),
				.wrreq(Wrreq),				
				);
				
  baudrate uart_baud(	.clk_50m(clk_50),
							.Txclk_en(Txclk_en)
							);
							
  transmitter uart_Tx(	.data_in(Tx_data),
							.wr_en(Wr_en),
							.clk_50m(clk_50),
							.clken(Txclk_en), //We assign Tx clock to enable clock 
							.Tx(Tx),
							.Tx_busy(Tx_busy)
							);			

endmodule
