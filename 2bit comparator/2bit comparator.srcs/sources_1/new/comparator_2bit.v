module comparator_2bit(agb, alb, aeb, a, b);

output reg agb, aeb, alb;
input [1:0] a,b;

always @(a or b) begin
if(a>b) begin agb = 1; alb = 0; aeb = 0; end
if(a<b) begin alb = 1; agb = 0; aeb = 0; end
if(a==b)begin aeb = 1; alb = 0; agb = 0;end 
end

endmodule
