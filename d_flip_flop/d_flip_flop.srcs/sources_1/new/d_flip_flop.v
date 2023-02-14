
module d_flipflop( q, qbar, d, clk);
output reg q;
output qbar;
input d, clk;
initial q =0;
always @(posedge clk) begin
case (d)
0: q =0;
1: q =1;
endcase
end
assign qbar = ~q;
   
endmodule
