module testbench;
reg [7:0] data_a,data_b;
reg [5:0] addr_a,addr_b;
reg we_a, we_b;
reg clk;
wire [7:0] q_a,q_b;
dual_port_ram ram(data_a, data_b, addr_a, addr_b, we_a, we_b, clk, q_a, q_b);
initial begin
clk = 0;
forever #10 clk = ~clk;
end
initial begin
we_a = 1; addr_a = 6'b00000; data_a = 8'b10101010;
#100 we_a = 0; addr_a = 6'b00000; data_a = 7'd0;
#100 we_b = 1; addr_b = 6'b00000; data_b = 8'b01010101; we_a = 1'bx; data_a =
8'bx; addr_a = 6'bx;
#100 we_b = 0; addr_b = 6'b00000; data_b = 7'd0;
end
initial
begin
$monitor("Addr_a=%b, data_a =%b, we_a=%b, q_a=%b",addr_a, data_a, we_a, q_a);

$monitor("Addr_b=%b, data_b =%b, we_b=%b, q_b=%b",addr_b, data_b, we_b, q_b);
end

endmodule
