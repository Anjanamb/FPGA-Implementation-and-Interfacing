module servo1(
    input mclk,
    input toggle,  //Use this as the control input
	 output [0:0] Led,
    output servo
    );

//50 MHz clock onBoard
//20 ms counter.
//		1/50,000,000  Hz 			= 20  ns (every posedge)
//		(20,000,000 ns)/(20 ns) = 1,000,000
//
//    (20 bits) (2^(20)-1) 	= 1,048,575 (from 0 to 1,048,575)
//				Therefore, counter needs 20 bits [19:0]
//				Count up to 999,999 (0 included)

//Assumed Max (180 deg) 2 ms 			= 100,000*20 ns (100,000 clks)
//Assumed Min (0   deg) 1 ms 			=  50,000*20 ns ( 50,000 clks)
//Positions  100,000 - 50,000 		= 50,000
//Resolution (180 degrees)/50,000 	= 0.0036 degrees

//essential registers
reg [19:0] counter;
reg        servo_reg;

////////////////////////////////////////////////////////////
//Test Control registers ///////////////////////////////////
////////////////////////////////////////////////////////////
reg [16:0] control	=	0; //131071 there is wiggle room but you should be careful to not overcontrol
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////


always @(posedge mclk)
begin

//Servo algorithm
	counter <= counter + 1;
	if(counter == 'd999999)
			counter <= 0;

	if(counter < ('d20000 + control))
			servo_reg <= 1;
	else
			servo_reg <= 0;

////////////////////////////////////////////////////////////
//Test control algorithm////////////////////////////////////
////////////////////////////////////////////////////////////



	if(counter == 0)
		begin
			if(toggle == 0)
					if(control == 0)
							control <= control;
					else
							control <= control - 500;
			if(toggle == 1)
					if(control == 'd110000)
							control <= control;
					else
							control <= control + 500;
		end
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

end

assign Led[0]	= toggle;
assign servo	= servo_reg;

endmodule
