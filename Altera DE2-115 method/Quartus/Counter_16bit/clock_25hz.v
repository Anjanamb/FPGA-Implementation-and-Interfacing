module clock_25hz (
    input clk_50mhz,
    output reg clk_25hz
);

reg [25:0] counter = 0;

always @(posedge clk_50mhz) begin
    if (counter == 1999999) begin
        counter <= 0;
        clk_25hz <= ~clk_25hz;
    end
    else begin
        counter <= counter + 1;
    end
end

endmodule
