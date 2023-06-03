module clk_800hz (
    input clk_50mhz,
    output reg clk_800hz
);

reg [25:0] counter = 0;

always @(posedge clk_50mhz) begin
    if (counter == 31249) begin
        counter <= 0;
        clk_800hz <= ~clk_800hz;
    end
    else begin
        counter <= counter + 1;
    end
end

endmodule
