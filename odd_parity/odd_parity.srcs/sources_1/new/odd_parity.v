module odd_parity_generator(parity, a, b, c);

output parity;
input a, b, c;

assign parity = a^~(b^c);

endmodule