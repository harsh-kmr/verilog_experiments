module half_adder_tb;
reg A,B;
wire S,C;
half_adder lut(S,C,A,B); //module instantiation
initial
begin
A=0; B=0;
#10 A=0; B=1;
#10 A=1; B=0;
#10 A=1; B=1;
#10 $finish;
end
initial
begin
$monitor("A=%b, B=%b, S=%b, C=%b",A,B,S,C);
end
endmodule