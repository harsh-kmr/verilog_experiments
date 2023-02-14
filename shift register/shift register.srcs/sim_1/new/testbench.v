module testbench;
reg [3:0] in;
reg [1:0] s;
reg sir, sil, clk;
wire [3:0] out;
universal_shift_register us1(out, in, sir, sil, s, clk);
initial begin
clk = 0;
forever #10 clk = ~clk;
end
initial begin

s = 2'b10; sil = 1; sir = 0;
#100 s = 2'b01; sil = 1; sir = 0;
#100 in = 4'b1010; s = 2'b11; sil = 0; sir = 0;
#100 s = 2'b00; sil = 0; sir = 0;
end
initial begin
$monitor(" In = %b  Out = %b  Sel = %b  SIR = %b  SIL = %b ", in, out, s, sir, sil);
end
endmodule