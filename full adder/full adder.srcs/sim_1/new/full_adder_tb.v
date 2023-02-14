
module fulladder_tb;
  reg a,b,cin;
  wire s,cout;
 
  fulladder lut(s,cout,a,b,cin);
 
  initial
    begin
      a=00;b=00; cin = 0;
      #100; a = 0;b = 0;cin = 1;
      #100; a = 0;b = 1;cin = 0;
      #100; a = 0;b = 1;cin = 1;
      #100; a = 1;b = 0;cin = 0;
      #100; a = 1;b = 0;cin = 1;
      #100; a = 1;b = 1;cin = 0;
      #100; a = 1;b = 1;cin = 1;
      #100 $finish;
     
    end
 
  initial
  begin
    $display("i/p and o/p are");
    $monitor("a= %b,b= %b,cin=%b, s= %b,cout= %b",a,b,cin,s,cout);
    $dumpfile("test.vcd");
    $dumpvars(0,fulladder_tb);
    //$dumpvars;
  end
 
endmodule
