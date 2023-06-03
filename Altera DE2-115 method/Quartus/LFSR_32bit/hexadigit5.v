module hexadigit5(
	input wire [3:0] in,
	output reg [6:0] out
	);
	
	always @* begin
	out = 7'b1111111;
	
	case(in)
	
		4'h0:begin		//for display 0 on seven-segment display
		
	out [6] = 1'b1;
	out [5] = 1'b0;
	out [4] = 1'b0;
	out [3] = 1'b0;
	out [2] = 1'b0;
	out [1] = 1'b0;
	out [0] = 1'b0;
		end
		
		4'h1:begin		//for display 1 on seven-segment display
		
	out [6] = 1'b1;
	out [5] = 1'b1;
	out [4] = 1'b1;
	out [3] = 1'b1;
	out [2] = 1'b0;
	out [1] = 1'b0;
	out [0] = 1'b1;
		end
		
		4'h2:begin		//for display 2 on seven-segment display
		
	out [6] = 1'b0;
	out [5] = 1'b1;
	out [4] = 1'b0;
	out [3] = 1'b0;
	out [2] = 1'b1;
	out [1] = 1'b0;
	out [0] = 1'b0;
		end
		
		4'h3:begin		//for display 3 on seven-segment display
		
	out [6] = 1'b0;
	out [5] = 1'b1;
	out [4] = 1'b1;
	out [3] = 1'b0;
	out [2] = 1'b0;
	out [1] = 1'b0;
	out [0] = 1'b0;
		end
		
		4'h4:begin		//for display 4 on seven-segment display
		
	out [6] = 1'b0;
	out [5] = 1'b0;
	out [4] = 1'b1;
	out [3] = 1'b1;
	out [2] = 1'b0;
	out [1] = 1'b0;
	out [0] = 1'b1;
		end
		
		4'h5:begin		//for display 5 on seven-segment display
		
	out [6] = 1'b0;
	out [5] = 1'b0;
	out [4] = 1'b1;
	out [3] = 1'b0;
	out [2] = 1'b0;
	out [1] = 1'b1;
	out [0] = 1'b0;
		end
		
		4'h6:begin		//for display 6 on seven-segment display
		
	out [6] = 1'b0;
	out [5] = 1'b0;
	out [4] = 1'b0;
	out [3] = 1'b0;
	out [2] = 1'b0;
	out [1] = 1'b1;
	out [0] = 1'b0;
		end
		
		4'h7:begin		//for display 7 on seven-segment display
		
	out [6] = 1'b1;
	out [5] = 1'b1;
	out [4] = 1'b1;
	out [3] = 1'b1;
	out [2] = 1'b0;
	out [1] = 1'b0;
	out [0] = 1'b0;
		end
		
		4'h8:begin		//for display 8 on seven-segment display
		
	out [6] = 1'b0;
	out [5] = 1'b0;
	out [4] = 1'b0;
	out [3] = 1'b0;
	out [2] = 1'b0;
	out [1] = 1'b0;
	out [0] = 1'b0;
		end
		
		4'h9:begin		//for display 9 on seven-segment display
		
	out [6] = 1'b0;
	out [5] = 1'b0;
	out [4] = 1'b1;
	out [3] = 1'b0;
	out [2] = 1'b0;
	out [1] = 1'b0;
	out [0] = 1'b0;
		end
		
		4'hA:begin		//for display 9 on seven-segment display
		
	out [6] = 1'b0;
	out [5] = 1'b0;
	out [4] = 1'b0;
	out [3] = 1'b1;
	out [2] = 1'b0;
	out [1] = 1'b0;
	out [0] = 1'b0;
		end
		
		4'hB:begin		//for display 9 on seven-segment display
		
	out [6] = 1'b0;
	out [5] = 1'b0;
	out [4] = 1'b0;
	out [3] = 1'b0;
	out [2] = 1'b0;
	out [1] = 1'b1;
	out [0] = 1'b1;
		end

		4'hC:begin		//for display 9 on seven-segment display
		
	out [6] = 1'b1;
	out [5] = 1'b0;
	out [4] = 1'b0;
	out [3] = 1'b0;
	out [2] = 1'b1;
	out [1] = 1'b1;
	out [0] = 1'b0;
		end

		4'hD:begin		//for display 9 on seven-segment display
		
	out [6] = 1'b0;
	out [5] = 1'b1;
	out [4] = 1'b0;
	out [3] = 1'b0;
	out [2] = 1'b0;
	out [1] = 1'b0;
	out [0] = 1'b1;
		end	

		4'hE:begin		//for display 9 on seven-segment display
		
	out [6] = 1'b0;
	out [5] = 1'b0;
	out [4] = 1'b0;
	out [3] = 1'b0;
	out [2] = 1'b1;
	out [1] = 1'b1;
	out [0] = 1'b0;
		end	

		4'hF:begin		//for display 9 on seven-segment display
		
	out [6] = 1'b0;
	out [5] = 1'b0;
	out [4] = 1'b0;
	out [3] = 1'b1;
	out [2] = 1'b1;
	out [1] = 1'b1;
	out [0] = 1'b0;
		end
    endcase
  end

endmodule