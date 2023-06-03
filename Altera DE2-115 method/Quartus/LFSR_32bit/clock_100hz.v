module clock_100hz (
    input clk_50mhz,
    output reg clk_100hz
);

reg [25:0] counter = 0;

always @(posedge clk_50mhz) begin
    if (counter == 499999) begin
        counter <= 0;
        clk_100hz <= ~clk_100hz;
    end
    else begin
        counter <= counter + 1;
    end
end

endmodule
