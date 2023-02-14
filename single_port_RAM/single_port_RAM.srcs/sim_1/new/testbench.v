module testbench;
reg [7:0] data;
reg [5:0] addr;
reg we,clk;
wire [7:0] q;
single_port_RAM ram(data, addr, we, clk, q);

initial begin
clk = 0;
forever #10 clk = ~clk;
end


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

