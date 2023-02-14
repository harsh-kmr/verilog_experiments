module halfsub(diff,borr,a,b);
  input a,b;
  output diff,borr;
  assign diff = a^b;
  assign borr = (~a)&b;
endmodule
