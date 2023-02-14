module alu(out, a, b, sel);

output reg [3:0] out;
input [3:0] a, b, sel;

always @(a or b or sel) begin
case (sel)
4'b0000: out = a+b;
4'b0001: out = a-b;
4'b0010: out = a*b;
4'b0011: out = a/b;
4'b0100: out = a<<b;
4'b0101: out = a>>b;
4'b0110: out = {a[2:0], a[3]};
4'b0111: out = {a[0], a[3:1]};
4'b1000: out = a&b;
4'b1001: out = a|b;
4'b1010: out = a^b;
4'b1011: out = ~(a|b);
4'b1100: out = ~(a&b);
4'b1101: out = ~(a^b);
4'b1110: out = a>b?1:0;
4'b1111: out = a==b?1:0;
endcase
end

endmodule

