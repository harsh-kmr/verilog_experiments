module fulladder(s,cout,a,b,cin);
  input a,b,cin;
  output s,cout;
  assign s = a^b^cin;
  assign cout = a&b | cin & (a^b);
endmodule
