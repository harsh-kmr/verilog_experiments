module halfsub_tb;
  reg a,b;
  wire diff,borr;
 
  halfsub lut(diff,borr,a,b);
 
  initial
    begin
      a=0;b=0;
      #10 a=0;b=1;
      #10 a=1;b=0;
      #10 a=1;b=1;
      #10 $finish;
    end
 
  initial
  begin
    $display("i/p and o/p are");
    $monitor("a= %b,b= %b,diff= %b,borr= %b",a,b,diff,borr);
  end
 
endmodule
