module servo(
    input mclk,
    input toggle1,
	 input toggle2,
	 input toggle3,
	 input toggle4,
	 input freeze1,
	 input freeze2,
	 input freeze3,
	 input freeze4,
	 input wire Rdreq,
	 input wire Wrreq,
	 input wire Wr_en,
    output [0:0] servo1_dir,
	 output [0:0] servo2_dir,
	 output [0:0] servo3_dir,
	 output [0:0] servo4_dir,
    output PWM1,
	 output PWM2,
	 output PWM3,
	 output PWM4,
	 output wire [15:0] Data_out,
	 output wire Fifo_empty,
	 output wire Fifo_full,
	 output wire Tx,
	 output wire Tx_busy
    );
	 
wire Txclk_en; 
wire Clk_100hz;	 
wire Clk_1mhz;
wire Clk_200hz;
wire [15:0] cir_in; //circuit data
wire [7:0] Tx_data;
wire [11:0] control1;
wire [11:0] control2;
wire [11:0] control3;
wire [11:0] control4;
wire [14:0] counter1;
wire [14:0] counter2;
wire [14:0] counter3;
wire [14:0] counter4;
assign Data_out = cir_in;

clock_100hz clock_100hz ( .clk_50mhz(mclk),
								  .clk_100hz(Clk_100hz)
								  );	 
								  
clock_var clock_var ( .clk_50mhz(mclk),
							 .clk_1mhz(Clk_1mhz)
							 );	
								  
clk_200hz clk_200hz ( .clk_50mhz(mclk),
							 .clk_200hz(Clk_200hz)
							 );	 
								  
motor1 motor1( .mclk(Clk_1mhz),
				 .toggle(toggle1),
				 .freeze(freeze1),
				 .Led(servo1_dir),
				 .data_out(cir_in),
				 .control(control1),
				 .counter(counter1)
				 );
				 
motor2 motor2( .mclk(Clk_1mhz),
				 .toggle(toggle2),
				 .freeze(freeze2),
				 .Led(servo2_dir),
				 .control(control2),
				 .counter(counter2)
				 );
				 
motor3 motor3( .mclk(Clk_1mhz),
				 .toggle(toggle3),
				 .freeze(freeze3),
				 .Led(servo3_dir),
				 .control(control3),
				 .counter(counter3)
				 );
				 
motor4 motor4( .mclk(Clk_1mhz),
				 .toggle(toggle4),
				 .freeze(freeze4),
				 .Led(servo4_dir),
				 .control(control4),
				 .counter(counter4)
				 );
				 				 
				 
pwm1 pwm1(  .mclk(Clk_1mhz),
			 .servo(PWM1),
			 .control(control1),
			 .counter(counter1)
			);
			

pwm2 pwm2(  .mclk(Clk_1mhz),
			 .servo(PWM2),
			 .control(control2),
			 .counter(counter2)
			);		

pwm3 pwm3(  .mclk(Clk_1mhz),
			 .servo(PWM3),
			 .control(control3),
			 .counter(counter3)
			);		

pwm4 pwm4(  .mclk(Clk_1mhz),
			 .servo(PWM4),
			 .control(control4),
			 .counter(counter4)
			);			

baudrate uart_baud(	.clk_50m(mclk),
							.Txclk_en(Txclk_en)
							);
							
transmitter uart_Tx(	.data_in(Tx_data),
							.wr_en(Wr_en),
							.clk_50m(mclk),
							.clken(Txclk_en), //We assign Tx clock to enable clock 
							.Tx(Tx),
							.Tx_busy(Tx_busy)
							);
				 
FIFO FIFO ( .rdclk(Clk_200hz),
            .wrclk(Clk_100hz),
				.data(cir_in),
				.q(Tx_data),
				.wrfull(Fifo_full),
				.rdempty(Fifo_empty),
				.rdreq(Rdreq),
				.wrreq(Wrreq),				
				);
				 
endmodule