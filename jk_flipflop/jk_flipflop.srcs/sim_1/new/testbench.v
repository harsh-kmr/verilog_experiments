module testbench;
reg clk, j,k;
wire q, qbar;
jk_flipflop ff(q, qbar, j, k, clk);
initial begin
clk = 1'b0;
forever #10 clk = ~clk;
end
initial begin
j = 0; k =0;
#100 j = 0; k =1;
#100 j = 1; k =0;
#100 j = 1; k =1;
end
initial begin
$monitor(" J = %b K = %b Q = %b Qbar = %b", j, k, q,qbar);

end
endmodule