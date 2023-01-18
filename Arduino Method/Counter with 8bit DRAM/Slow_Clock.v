module Slow_Clock(clkin, clkout);

reg [24:0] counter;
output reg clkout;
input clkin;
//assign clkout = clkin;

initial begin
    counter = 25'd0;
    clkout = 0;
end

always @(posedge clkin) begin
    if (counter == 25'd0) begin
        //counter <= 24999999;
		  counter <= 9999999;  //0.4 sec
		  //counter <= 25'd1;
        clkout <= ~clkout;
    end else begin
        counter <= counter - 25'd1;
    end
end

endmodule