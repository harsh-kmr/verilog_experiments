module testbench;
reg clk, d;
wire q, qbar;
d_flipflop ff(q, qbar, d, clk);
initial begin
clk = 1'b0;
forever #10 clk = ~clk;
end
initial begin
d = 0;
#100 d = 1;
#200 $finish;
end
initial begin
$monitor(" D = %b Q = %b Qbar = %b", d, q, qbar); end
endmodule