module async_single_port_RAM (
 input [7:0] data,
 input [5:0] addr,
 input we,
 output [7:0] q
 );

 reg [7:0] ram [63:0];
 reg [5:0] addr_reg;

 always@(data or addr or we)
 begin
 if(we)
 ram[addr]<=data;
 else
 addr_reg <=addr;
 end

 assign q=ram[addr_reg];

endmodule
