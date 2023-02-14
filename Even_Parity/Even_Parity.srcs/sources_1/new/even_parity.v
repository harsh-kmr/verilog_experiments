module even_parity(parity, a, b, c);

output parity;
input a, b, c;

assign parity = a^b^c;

endmodule