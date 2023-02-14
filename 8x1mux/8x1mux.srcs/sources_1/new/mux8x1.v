module multip(y,sel,i1,i2,i3,i4,i5,i6,i7,i8);
  input [2:0] sel;
  input i1,i2,i3,i4,i5,i6,i7,i8;
  output y;
  wire w1,w2,w3,w4,w5,w6,w7,w8;
  and(w1, ~sel[0],~sel[1],~sel[2], i1);
  and(w2, sel[0],~sel[1],~sel[2],i2);
  and(w3, ~sel[0],sel[1], ~sel[2],i3);
  and(w4, sel[0],sel[1], ~sel[2],i4);
  and(w5, ~sel[0],~sel[1],sel[2], i5);
  and(w6, sel[0],~sel[1],sel[2],i6);
  and(w7, ~sel[0],sel[1], sel[2],i7);
  and(w8, sel[0],sel[1], sel[2],i8);
  or(y,w1,w2,w3,w4,w5,w6,w7,w8);
endmodule
