module motor1(
    input mclk,
    input toggle,  //Use this as the control input
	 input freeze,  //Use this as the freeze input
	 output [0:0] Led,
	 output reg [15:0] data_out,
	 output reg [11:0] control,
	 output reg [14:0] counter
    );

//50 MHz clock onBoard
//1 MHz input clock 
//20 ms counter.
//		1/1,000,000  Hz 			= 1000  ns (every posedge)
//		(20,000,000 ns)/(1,000 ns) = 20,000
//
//    (15 bits) (2^(15)-1) 	= 32,767 (from 0 to 32,767)
//				Therefore, counter needs 15 bits [14:0]
//				Count up to 19,999 (0 included)

//Assumed Max (180 deg) 2 ms 			= 100,000*1000 ns (2,000 clks)
//Assumed Min (0   deg) 1 ms 			=  50,000*1000 ns ( 1,000 clks)
//Positions  2,000 - 1,000 		= 1,000
//Resolution (180 degrees)/1,000 	= 0.18 degrees

//essential registers
reg [7:0] data_reg	=	0; //255
initial begin
    control = 0; // Assign an initial value to control
end
////////////////////////////////////////////////////////////
//Test Control registers ///////////////////////////////////
////////////////////////////////////////////////////////////

always @(posedge mclk)
begin

//Servo algorithm
	counter <= counter + 1;
	if(counter == 'd19999)
			counter <= 0;

////////////////////////////////////////////////////////////
//control algorithm////////////////////////////////////
////////////////////////////////////////////////////////////



	if(counter == 0)
		begin
			if(toggle == 0)
					if(control == 0 || freeze == 1) 
						begin
							control = control;
							data_reg = data_reg;
							if(freeze == 0)
								data_out = {2'b01, 2'b00, data_reg[7:4], 2'b00, data_reg[3:0], 1'b0, 1'b0};
							else
								data_out = {2'b01, 2'b00, data_reg[7:4], 2'b00, data_reg[3:0], 1'b0, 1'b1};
						end
					else
						begin
							control = control - 10;
							data_reg = data_reg - 1;
							data_out = {2'b01, 2'b00, data_reg[7:4], 2'b00, data_reg[3:0], 1'b0, 1'b0};
						end
			if(toggle == 1)
					if(control == 'd2200 || freeze == 1) 
						begin
							control = control;
							data_reg = data_reg;
							if(freeze == 0)
								data_out = {2'b01, 2'b00, data_reg[7:4], 2'b00, data_reg[3:0], 1'b1, 1'b0};
							else
								data_out = {2'b01, 2'b00, data_reg[7:4], 2'b00, data_reg[3:0], 1'b1, 1'b1};
						end
					else
						begin
							control = control + 10;
							data_reg = data_reg + 1;
							data_out = {2'b01, 2'b00, data_reg[7:4], 2'b00, data_reg[3:0], 1'b1, 1'b0};
						end
		end
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

end

assign Led[0]	= toggle;
//assign control	= control;

endmodule
