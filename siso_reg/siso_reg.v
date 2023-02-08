module siso_reg(clk,clear,si,so);

input clk,sin,clear;

output reg sout;



reg [3:0] tmp;

always @(posedge clk )

begin

if (clear)

tp <= 4'b0000;

else

tp <= tp << 1;

tp[0] <= sin;

sout = tp[3];

end

endmodule
