//Dual port RAM - 64*B Bit (Synchronous)
module dual_port_ram(
input [7:0] data_a,data_b,
input [5:0] addr_a,addr_b,
input we_a, we_b,
input clk,
output reg [7:0] q_a,q_b
);
    reg [7:0] ram[63:0]; //64 * 8 bit
    
    always @ (posedge clk)
    begin
        if(we_a)
        begin
            ram[addr_a]<=data_a; //write
        end
        else
        begin
            q_a<=ram[addr_a]; //read
        end
    end
    
    always @ (posedge clk)
    begin
        if(we_b)
        begin
            ram[addr_b]<=data_b; //write
        end
        else
        begin
            q_b<=ram[addr_b]; //read
        end
    end
endmodule
