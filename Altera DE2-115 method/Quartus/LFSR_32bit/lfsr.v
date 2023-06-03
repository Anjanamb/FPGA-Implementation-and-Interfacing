module lfsr (
	input clk,
	clr,
	output [31:0]y,
	output reg [63:0] data_out
	);

	//clk->clock, clr->posedge clear,y=pne bit serial output

	reg [31:0]q;

	//q->31 bit intermediate line for shift register
	//q0 is assigned to y ;right shift

	assign y=q;
	wire w1,w2,w3;

	//w1,w2,w3 has xor operation between mentioned bits

	assign w1=q[21]^q[31],

	w2=w1^q[1],	
	w3=w2^q[0];

	always@(posedge clk,posedge clr)

	begin
		//if clr=1, load the initial bits
		if(clr)
			begin
				q<=32'b00000000000000000000000000000001;
				data_out = {3'b111, 5'b00000, 3'b110, 2'b00, q[31:29], 3'b101, q[28:24], 3'b100, q[23:19], 3'b011, q[18:14], 3'b010, q[13:9], 3'b001, q[8:4], 3'b000, q[3:0], 1'b1};
			end
		//else right shift and load w3 as msb bit
		else
			begin
				q<={w3,q[31:1]};
				data_out = {3'b111, 5'b00000, 3'b110, 2'b00, q[31:29], 3'b101, q[28:24], 3'b100, q[23:19], 3'b011, q[18:14], 3'b010, q[13:9], 3'b001, q[8:4], 3'b000, q[3:0], 1'b1};
			end
	end

endmodule