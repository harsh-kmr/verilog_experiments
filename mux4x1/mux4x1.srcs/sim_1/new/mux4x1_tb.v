module Mul_tb;
  reg i1,i2,i3,i4;
  reg [1:0] sel;
  wire y;
 
  multip lut(y,sel,i1,i2,i3,i4);
 
  initial
    begin
      i1= 1;i2=0;i4=0;i3=0;sel=2'b00;
      #10 sel=2'b01; i2 =1; i1=0;
      #10 sel=2'b10; i3 = 1; i2 = 0;
      #10 sel=2'b11; i4 = 1; i3 = 0;
      #10 $finish;
    end
 
  initial
  begin
    $display("i/p and o/p are");
    $monitor("sel= %b and y= %b",sel,y);
  end
 
endmodule
