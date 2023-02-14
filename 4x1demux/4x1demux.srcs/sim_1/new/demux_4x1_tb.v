module Demux_1x4_tb;
wire [3:0] Y;
reg [1:0] A;
reg din;
demux1x4 I0 (Y, A, din);

initial

begin
    din = 1;
    A = 2'b00;
#5  A = 2'b01;
#5  A = 2'b10;
#5  A = 2'b11;
#5 $finish;
end 
 
  initial
  begin
    $display("i/p and o/p are");
    $monitor("sel= %b and y= %b",A,Y);
    
  end
 
endmodule
