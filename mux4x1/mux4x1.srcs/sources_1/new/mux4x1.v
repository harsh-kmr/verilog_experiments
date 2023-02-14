// Code your design here
module multip(y,sel,i1,i2,i3,i4);
input [1:0] sel;
input i1,i2,i3,i4;
output y;
assign y = ((~sel[0]) & (~sel[1]) & i1) + (sel[0] & (~sel[1]) & i2) + ((~sel[0]) & sel[1] & i3) + (sel[0]& sel[1] & i4) ;
endmodule