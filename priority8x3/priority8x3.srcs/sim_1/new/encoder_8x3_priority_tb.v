module testbench;
reg [7:0] in;
wire [2:0] out; encoder_8x3_priority enc(out, in); initial begin
in = 8'b00000001;
#10 in = 8'b00000010;
#10 in = 8'b00000100;
#10 in = 8'b00001000;
#10 in = 8'b00010000;
#10 in = 8'b00100000;
#10 in = 8'b01000000;
#10 in = 8'b10000000;
#10 $finish;
end
initial begin
$display("i/p and o/p are");
$monitor("in= %b and y= %b",in,out);
//$dumpfile("test.vcd");
//$dumpvars(0,testbench);
end endmodule