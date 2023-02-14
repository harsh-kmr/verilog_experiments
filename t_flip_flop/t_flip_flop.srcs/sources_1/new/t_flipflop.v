module t_flipflop(q, qbar, t, clk);
output reg q; 
output qbar;
input t, clk;
initial q = 0;
always @(posedge clk) begin
case (t)
0: q = q; 
1: q = ~q;
endcase
end
assign qbar = ~q;
endmodule