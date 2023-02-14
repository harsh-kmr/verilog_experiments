module testbench;

reg [3:0] x, y;
wire [3:0]s; 
wire cout;

carry_lookahead_adder_4bit cla1(s, cout, x, y);

initial begin

x = 4'b1010;
y = 4'b1101;

end
initial $monitor("x = %b  y = %b  carry = %b  sum = %b",s, y, cout, s);
endmodule