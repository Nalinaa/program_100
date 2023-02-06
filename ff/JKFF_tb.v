module JKFF_tb;
reg J,K,clk,rst;
wire Q;
JKFF JKflipflop(.J(J),.K(K),.clk(clk),.rst(rst),.Q(Q));
  initial
    begin
      $dumpfile("jk.vcd");
      $dumpvars(1,JKFF_tb);
    end
initial
begin
clk=0; J = 0; K = 0;
#5 rst = 1;
#30 rst = 0;
$monitor($time, "\tclk=%b\t ,rst=%b\t, J=%b\t,K=%b\t, Q=%b",clk,rst,J,K,Q);
#100 $finish;
end
always #5 clk = ~clk;
always #30 J = ~J;
always #40 K = ~K;
endmodule
