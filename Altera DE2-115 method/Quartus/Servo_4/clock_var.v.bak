module clock_var (
    input clk_50mhz,
    output reg clk_1mhz
);

reg [5:0] counter = 0;

always @(posedge clk_50mhz) begin
    if (counter == 24'd24) begin
        counter <= 0;
        clk_1mhz <= ~clk_1mhz;
    end
    else begin
        counter <= counter + 1;
    end
end

endmodule