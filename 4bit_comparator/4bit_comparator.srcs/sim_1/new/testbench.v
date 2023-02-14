module testbench;

wire agb, alb, aeb;
reg [3:0] a, b;

comparator_4bit compt(agb, alb, aeb, a, b);

initial begin
a = 4'b1101; b = 4'b1101;
#100 a = 4'b1101; b = 4'b0000;
#100 a = 4'b0000; b = 4'b1101;
#100 $finish;
end

initial begin
$monitor(" A = %b  B = %b  A=B = %b  A>B = %b  A<B = %b",a, b, aeb, agb, alb);
end

endmodule