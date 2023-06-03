module clk_400hz (
    input clk_50mhz,
    output reg clk_400hz
);

reg [25:0] counter = 0;

always @(posedge clk_50mhz) begin
    if (counter == 62499) begin
        counter <= 0;
        clk_400hz <= ~clk_400hz;
    end
    else begin
        counter <= counter + 1;
    end
end

endmodule
