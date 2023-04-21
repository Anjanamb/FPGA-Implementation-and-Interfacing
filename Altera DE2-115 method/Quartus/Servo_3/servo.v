module servo(
    input mclk,
    input t1,
	 input t2,
	 input t3,
    output [0:0] Led1,
	 output [0:0] Led2,
	 output [0:0] Led3,
    output s1,
	 output s2,
	 output s3
    );

servo1 servo1(
    .mclk(mclk),
	 .toggle(t1),
    .Led(Led1),
	 .servo(s1)
);

servo2 servo2(
    .mclk(mclk),
	 .toggle(t2),
    .Led(Led2),
	 .servo(s2)
);

servo3 servo3(
    .mclk(mclk),
	 .toggle(t3),
    .Led(Led3),
	 .servo(s3)
);

endmodule