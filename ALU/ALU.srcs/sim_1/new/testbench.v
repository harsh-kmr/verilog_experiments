module testbench;

wire [3:0] out;
reg [3:0] a, b, sel;

alu chip1(out, a, b, sel);

initial begin a = 4'b1010; b = 4'b0001;
sel = 4'b0000; 
#100 sel = 4'b0001; 
#100 sel = 4'b0010; 
#100 sel = 4'b0011; 
#100 sel = 4'b0100; 
#100 sel = 4'b0101; 
#100 sel = 4'b0110; 
#100 sel = 4'b0111; 
#100 sel = 4'b1000; 
#100 sel = 4'b1001; 
#100 sel = 4'b1010; 
#100 sel = 4'b1011; 
#100 sel = 4'b1100; 
#100 sel = 4'b1101; 
#100 sel = 4'b1110; 
#100 sel = 4'b1111; 
end
initial $monitor("A = %b  B = %b  Sel = %b  Out = %b", a, b, sel, out);
endmodule
