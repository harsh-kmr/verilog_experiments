module testbench;
reg [7:0] data;
reg [5:0] addr;
reg we;
wire [7:0] q;
async_single_port_RAM ram(data, addr, we, q);
initial begin
we = 1; addr = 6'b00000; data = 8'h1;
#100 we = 1; addr = 6'b00001; data = 8'h2;
#100 we = 1; addr = 6'b00010; data = 8'h3;
#100 we = 0; addr = 6'b00000; 
#100 we = 0; addr = 6'b00001; 
#100 we = 0; addr = 6'b00010; 
end
initial begin
$monitor("Addr=%b, data =%b, we=%b, q=%b",addr, data, we, q);
end
endmodule
