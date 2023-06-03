module clk_0_125hz (
    input clk_50mhz,
    output reg clk_0_125hz
);

reg [26:0] counter = 0;

always @(posedge clk_50mhz) begin
    if (counter == 62499999) begin
        counter <= 0;
        clk_0_125hz <= ~clk_0_125hz;
    end
    else begin
        counter <= counter + 1;
    end
end

endmodule
