module pwm3 (
    input mclk,
    input [11:0] control,
    input [14:0] counter,
    output servo
);

//essential registers
reg servo_reg;

always @(posedge mclk)
begin
    //Servo algorithm
    if(counter < ('d400 + control))
			servo_reg <= 1;
	 else
			servo_reg <= 0;

end

assign servo = servo_reg;

endmodule
