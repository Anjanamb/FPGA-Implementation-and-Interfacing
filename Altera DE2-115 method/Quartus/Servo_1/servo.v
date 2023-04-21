module servo(
    input mclk,
    input toggle,
    output [0:0] Led1,
    output pwm
    );

motor motor(
    .mclk(mclk),
	 .toggle(toggle),
    .Led(Led1),
	 .servo(pwm)
);

endmodule