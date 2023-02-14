module full_sub_tb;
reg a,b,c; 
wire borrow,diff; 
full_sub lut(borrow,diff,a,b,c); //module instantiation

  initial
    begin
      a=00;b=00; c = 0;
      #100; a = 0;b = 0;c = 1;
      #100; a = 0;b = 1;c = 0;
      #100; a = 0;b = 1;c = 1;
      #100; a = 1;b = 0;c = 0;
      #100; a = 1;b = 0;c = 1;
      #100; a = 1;b = 1;c = 0;
      #100; a = 1;b = 1;c = 1;
      #100 $finish;
    end
 
  initial
  begin
    $display("i/p and o/p are");
    $monitor("a= %b,b= %b,c=%b, borrow= %b,diff= %b",a,b,c,borrow,diff);
  end
 
endmodule