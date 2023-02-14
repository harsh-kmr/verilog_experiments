module full_sub(borrow,diff,a,b,c);
input a,b,c; 
output borrow,diff; 
  assign diff=(a ^ b) ^ c; 
  assign borrow= ((~a)&b) | ((a)&c) | (b&c);
endmodule
