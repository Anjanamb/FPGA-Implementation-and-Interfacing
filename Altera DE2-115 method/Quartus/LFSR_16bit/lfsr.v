module lfsr (
	input clk,
	clr,
	output [15:0]y,
	output reg [31:0] data_out
	);

	//clk->clock, clr->posedge clear,y=pne bit serial output

	reg [15:0]q;

	//q->16 bit intermediate line for shift register
	//q0 is assigned to y ;right shift

	assign y=q;
	wire w1,w2,w3;

	//w1,w2,w3 has xor operation between mentioned bits

	assign w1=q[13]^q[15],

	w2=w1^q[12],	
	w3=w2^q[10];

	always@(posedge clk,posedge clr)

	begin
		//if clr=1, load the initial bits
		if(clr)
			begin
				q<=16'b1010110011100001;
				data_out = {3'b011, 3'b000, q[15:14], 3'b010, q[13:9], 3'b001, q[8:4], 3'b000, q[3:0], 1'b1};
			end
		//else right shift and load w3 as msb bit
		else
			begin
				q<={w3,q[15:1]};
				data_out = {3'b011, 3'b000, q[15:14], 3'b010, q[13:9], 3'b001, q[8:4], 3'b000, q[3:0], 1'b1};
			end
	end

endmodule