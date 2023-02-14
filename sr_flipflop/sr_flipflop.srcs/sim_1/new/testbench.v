module testbench;
reg clk, s,r;
wire q, qbar;
sr_flipflop ff(q, qbar, s, r, clk);
initial begin
clk = 1'b0;
forever #10 clk = ~clk;
end
initial begin
s = 0; r = 0;
#100 s = 0; r =1;
#100 s = 1; r =0;
#100 s = 1; r =1;
#100 $finish;
end
initial begin
$monitor(" S = %b R = %b Q = %b Qbar = %b", s, r, q, qbar); end
endmodule