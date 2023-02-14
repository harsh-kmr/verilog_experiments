module carry_lookahead_adder_4bit(s, cout, x, y);

input [3:0] x, y;
output [3:0]s;
output cout;

wire [3:0] p, g, c;

assign p[0] = x[0]^y[0];
assign g[0] = x[0]&y[0];
assign c[0] = 0;

assign p[1] = x[1]^y[1];
assign g[1] = x[1]&y[1];
assign c[1] = g[0] | p[0]&c[0];

assign p[2] = x[2]^y[2];
assign g[2] = x[2]&y[2];
assign c[2] = g[1] | p[1]&c[1];

assign p[3] = x[3]^y[3];
assign g[3] = x[3]&y[3];
assign c[3] = g[2] | p[2]&c[2];

assign s[0] = p[0]^c[0];
assign s[1] = p[1]^c[1];
assign s[2] = p[2]^c[2];
assign s[3] = p[3]^c[3];

assign cout = g[3] | p[3]&c[3];

endmodule
