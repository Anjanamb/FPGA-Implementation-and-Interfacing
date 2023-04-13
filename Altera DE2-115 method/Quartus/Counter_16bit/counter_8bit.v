module counter_8bit (
    input clock,
    input reset,
	 output reg [31:0] data_out
);

reg [15:0] count;
reg [31:0] temp_data;

// Counter logic
always @(posedge clock) begin
    if (reset) begin
        count = 16'b0;
        temp_data = {7'b0, count, 1'b1};
		  data_out = {3'b011, 3'b000, temp_data[16:15], 3'b010, temp_data[14:10], 3'b001, temp_data[9:5], 3'b001, temp_data[4:0]};
    end else begin
        count = count + 1;
        temp_data = {7'b0, count, 1'b0};
    end
end


endmodule