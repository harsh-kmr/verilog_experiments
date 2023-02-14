module encoder_8x3_priority(out, in);
output reg [2:0] out;
input [7:0] in; always
@(in) begin
casex(in)
8'b00000001: out = 3'b000;
8'b0000001x: out = 3'b001;
8'b000001xx: out = 3'b010;
8'b00001xxx: out = 3'b011;
8'b0001xxxx: out = 3'b100;
8'b001xxxxx: out = 3'b101;
8'b01xxxxxx: out = 3'b110;
8'b1xxxxxxx: out = 3'b111;
endcase
end
endmodule