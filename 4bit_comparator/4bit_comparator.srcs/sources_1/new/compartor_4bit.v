module comparator_2bit(agb, alb, aeb, a, b);

output reg agb, aeb, alb;
input [1:0] a,b;

always @(a or b) begin
if(a>b) begin agb = 1; alb = 0; aeb = 0; end
if(a<b) begin alb = 1; agb = 0; aeb = 0; end
if(a==b)begin aeb = 1; alb = 0; agb = 0;end 
end

endmodule


module comparator_4bit(agb, alb, aeb, a, b);

output agb, alb, aeb;
input [3:0] a, b;

wire agb1, alb1, aeb1, agb2, alb2, aeb2;

comparator_2bit comp1(agb1, alb1, aeb1, a[3:2], b[3:2]);
comparator_2bit comp2(agb2, alb2, aeb2, a[1:0], b[1:0]);

assign agb = agb1 | aeb1&agb2;
assign alb = alb1 | aeb1&alb2;
assign aeb = aeb1 & aeb2;

endmodule