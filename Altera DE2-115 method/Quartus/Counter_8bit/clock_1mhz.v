module clock_1mhz (
    input clk_50m,
    output reg clk_1m
);

parameter COUNT_MAX = 50; // 50MHz / 50 = 1MHz

reg [5:0] count = 0;

always @(posedge clk_50m) begin
    if (count == COUNT_MAX - 1) begin
        count <= 0;
        clk_1m <= ~clk_1m; // toggle every COUNT_MAX cycles
    end
    else begin
        count <= count + 1;
    end
end

endmodule