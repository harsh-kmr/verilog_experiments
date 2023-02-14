module testbench; reg [2:0] in;
wire [7:0] out;
decoder_3x8 decoder(out, in);
initial
begin
in = 3'b000;
#100 in = 3'b001;
#100 in = 3'b010;
#100 in = 3'b011;
#100 in = 3'b100;
#100 in = 3'b101;
#100 in = 3'b110;
#100 in = 3'b111;
#100 $finish;
end

initial
begin
$display("i/p and o/p are");
$monitor("in= %b and y= %b",in,out);

//$dumpvars;
end

endmodule