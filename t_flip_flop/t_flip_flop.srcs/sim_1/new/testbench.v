module testbench;
reg clk, t;
wire q, qbar;
t_flipflop ff(q, qbar, t, clk);
initial begin
clk = 1'b0;
forever #100 clk = ~clk;
end
initial begin
t=0;
#100 t =1;
#100 t =1;
#100 t =0;
#100 t =0;
#100 t =1;
#100 t =1;
end
initial begin
$monitor(" T = %b Q = %b Qbar = %b", t, q, qbar); end
endmodule