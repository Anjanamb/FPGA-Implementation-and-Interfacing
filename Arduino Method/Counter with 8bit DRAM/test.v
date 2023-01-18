module Transmitter(	input wire [7:0] data_in, //input data as an 8-bit regsiter/vector 
							input wire wr_en, //enable wire to start 
							input wire clk_slow,
							input wire clk_tx, //clock signal for the transmitter
							output reg [7:0] Tx, //a single 1-bit register variable to hold transmitting bit
							output wire Tx_busy, //transmitter is busy signal 
							output [1:0] state_out,
							output [15:0] test_out
							);
assign state_out = state;
assign test_out = test;
							
initial begin
	 Tx = 8'b1; //initialize Tx = 1 to begin the transmission 
end
//Define the 4 states using 00,01,10,11 signals
parameter TX_STATE_IDLE	= 2'b00;
parameter TX_STATE_START	= 2'b01;
parameter TX_STATE_DATA	= 2'b10;
parameter TX_STATE_STOP	= 2'b11;

reg [7:0] data = 8'h00; //set an 16-bit register/vector as data,initially equal to 00000000
reg [2:0] bit_pos = 3'h0; //bit position is a 3-bit register/vector, initially equal to 000
reg [1:0] state = TX_STATE_IDLE; //state is a 2 bit register/vector,initially equal to 00
reg [15:0] test = 16'd0;

always @(posedge clk_tx)  begin
	Tx <= data_in;

end
always @(negedge clk_tx)  begin
	test <= test + 15'd1;

end
endmodule