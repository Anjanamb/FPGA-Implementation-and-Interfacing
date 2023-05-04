module Input_switch(
    input clk,
    input switch,
    output reg gpio
);

always @(posedge clk)
    gpio <= switch;

endmodule