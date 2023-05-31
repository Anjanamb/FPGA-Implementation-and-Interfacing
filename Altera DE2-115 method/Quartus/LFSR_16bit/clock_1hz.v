module clock_1hz (
    input clk_50mhz,
    output reg clk_1hz
);

reg [25:0] counter = 0;

always @(posedge clk_50mhz) begin
    if (counter == 24999999) begin
        counter <= 0;
        clk_1hz <= ~clk_1hz;
    end
    else begin
        counter <= counter + 1;
    end
end

endmodule
