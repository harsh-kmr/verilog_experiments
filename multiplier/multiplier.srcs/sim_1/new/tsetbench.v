module testbench;

reg [3:0] a, b;
wire [7:0] out;

multiplier mul(out, a, b);

initial begin
a = 4'b1011;
b = 4'b0110;

#100 
a = 4'b1111;
b= 4'b1111;
#100
a= 4'b0000;
b = 4'b1111;
#100
a= 4'b0001;
b = 4'b1111;
#100
$finish;
end
initial $monitor("A = %b  B = %b  A*B = %b", a, b, out);
endmodule