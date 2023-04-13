module counter_8bit (
    input clock,
    input reset,
    output reg [7:0] count
);

// Counter logic
always @(posedge clock) begin
    if (reset) begin
        count <= 8'b0;
    end else begin
        count <= count + 1;
    end
end

endmodule