module master_slave_ff ( din ,clk ,reset ,dout );

output dout ;

input din ;
input clk ;
input reset ;   

wire s;
wire in_clk;

assign in_clk = ~clk ;

d_flip_flop u0 (.din(din),
.clk(clk),
.reset(reset),
.dout(s));  

d_flip_flop u1 (.din(s),
.clk(in_clk),
.reset(reset),
.dout(dout)); 

endmodule
module d_flip_flop ( din ,clk ,reset ,dout );

output dout ;
reg dout;

input din ;
input clk ;
input reset ; 

always @ (posedge clk)
begin
 if (reset)
  dout <= 1;
 else
  dout <= din;
end

endmodule

