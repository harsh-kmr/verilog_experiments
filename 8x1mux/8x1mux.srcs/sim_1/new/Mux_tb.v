module Mux_tb;
  reg i1,i2,i3,i4,i5,i6,i7,i8;
  reg [2:0] sel;
  wire y;
 
  multip lut(y,sel,i1,i2,i3,i4,i5,i6,i7,i8);
 
  initial
    begin
      i1= 1;i2=0;i4=0;i3=0;i5= 0;i6=0;i7=0;i8=0;sel=3'b000;
      #10 sel=3'b001; i2 =1; i1=0;
      #10 sel=3'b010; i3 = 1; i2 = 0;
      #10 sel=3'b011; i4 = 1; i3 = 0;
      #10 sel=3'b100; i5 = 1; i4 = 0;
      #10 sel=3'b101; i6 = 1; i5 =0;
      #10 sel=3'b110; i7 = 1; i6 = 0;
      #10 sel=3'b111; i8 = 1; i7 = 0;
      #10 $finish;
    end
 
  initial
  begin
    $display("i/p and o/p are");
    $monitor("sel= %b and y= %b",sel,y);
    
  end
 
endmodule
