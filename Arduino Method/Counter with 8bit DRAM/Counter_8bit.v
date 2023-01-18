module Counter_8bit(input clk, input [15:0] test_inp, output[7:0] counter, output[15:0] address, output wren);
reg [7:0] counter_up;
reg [15:0] address_reg;
reg reset;
reg wren_reg; 

assign counter = counter_up;
assign address = address_reg;
assign wren = wren_reg;

initial
begin
address_reg=16'b0;
reset = 0;
counter_up = 0;
wren_reg = 1;
end	




always @(posedge clk or posedge reset)
begin
if(reset)
begin
 counter_up <= 8'd0;
end
else
begin
 if(counter_up < 8'd255)
   counter_up <= counter_up + 8'd1;
end 

end 


always @(negedge clk)
begin
   if(counter_up == 8'd255)
	begin
	wren_reg <= 0;
	address_reg <= test_inp;
	end
	else
	begin
	address_reg <= address_reg + 16'd1;
	end
end

endmodule