module flipflop(
	output reg q, 
	input clk, 
	input rst,
	input d
	);

	
	always @(posedge clk or posedge rst)
		begin
		if (rst)
			#2 q = 0;
		else
			q = #3 d;
		end
		
	specify
		$setup(d, clk, 2);
		$hold(clk, d, 0);
	endspecify

endmodule