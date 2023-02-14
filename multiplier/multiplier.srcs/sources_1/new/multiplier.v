module multiplier(out, a, b);

output [7:0] out;
input [3:0] a, b;

// Behavioral Model

wire [7:0] temp1;
integer i;

reg [7:0] out;
assign temp1 = b;

always @(a or b) begin
out = 8'd0;

for(i = 0; i<4; i=i+1) begin
out = out + (temp1<<i)*a[i];
end
end
endmodule