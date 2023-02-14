module mux_4x1(out, i, s);

input [3:0] i;
input [1:0] s;
output out;

assign s00 = ~s[0];
assign s11 = ~s[1];

assign out = s11&s00&i[0] | s11&s[0]&i[1] | s[1]&s00&i[2] | s[1]&s[0]&i[3];

endmodule

module d_flipflop(q, d, clk);

output reg q;
input d, clk;

initial q = 1'b0;

always @(posedge clk) begin
case (d)
0: q = d;
1: q = d;
endcase
end

endmodule



module universal_shift_register(out, in, sir, sil, s, clk);
input [3:0] in;
input [1:0] s;
input sir, sil, clk;
output [3:0] out;
wire [3:0] w;
mux_4x1 m1(w[3], {in[3], out[2], sir, out[3]}, s);
mux_4x1 m2(w[2], {in[2], out[1], out[3], out[2]}, s);
mux_4x1 m3(w[1], {in[1], out[0], out[2], out[1]}, s);
mux_4x1 m4(w[0], {in[0], sil, out[1], out[0]}, s);
d_flipflop d1(out[3], w[3], clk);
d_flipflop d2(out[2], w[2], clk);
d_flipflop d3(out[1], w[1], clk);
d_flipflop d4(out[0], w[0], clk);
endmodule
