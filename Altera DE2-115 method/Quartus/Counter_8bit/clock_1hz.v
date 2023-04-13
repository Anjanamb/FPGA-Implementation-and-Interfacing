module clock_1hz (
    input clk_50mhz,
    output reg clk_1hz
);

reg [24:0] counter = 0;

always @(posedge clk_50mhz) begin
    counter <= counter + 1;
    if (counter == 25000000) begin
        counter <= 0;
        clk_1hz <= ~clk_1hz;
    end
end

endmodule
