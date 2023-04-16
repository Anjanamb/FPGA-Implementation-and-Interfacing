module counter (
    input clk,
    input reset,
    output reg [7:0] count
);

always @(posedge clk, posedge reset) begin
    if (reset) begin
        count <= 8'd0;  // Reset the counter to 0 when reset is high
    end else begin
        count <= count + 1;  // Increment the counter on each clock cycle
    end
end

endmodule