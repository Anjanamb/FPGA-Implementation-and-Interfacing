module clk_0_25hz (
	 input clk_50mhz,
    output reg clk_0_25hz
);

reg [27:0] counter = 0;

always @(posedge clk_50mhz) begin
    if (counter == 99999999) begin
        counter <= 0;
        clk_0_25hz <= ~clk_0_25hz;
    end
    else begin
        counter <= counter + 1;
    end
end

endmodule