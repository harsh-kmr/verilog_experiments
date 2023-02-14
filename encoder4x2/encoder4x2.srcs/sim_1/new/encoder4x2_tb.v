module encoder4x2_tb;
reg [3:0]x; wire [1:0]y;
encoder4x2 en(.d(x),.a(y));
initial begin
x=0;
$monitor("At time=%t,d=%b, out=%b",$time,x,y);
#100 $finish;
end
initial begin
#10 x=4'b0001;
#10 x=4'b0010;
#10 x=4'b0100;
#10 x=4'b1000;
#10 $finish;
end
endmodule