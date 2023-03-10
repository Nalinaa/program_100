module srff_tb;
reg s,r,clk,rst;
wire q,qb;
srff srflipflop(.s(s),.r(r),.clk(clk),.rst(rst),.q(q),.qb(qb));
  initial
    begin
      $dumpfile("srff.vcd");
      $dumpvars(1,srff_tb);
    end
initial
begin
clk=0;
s = 0; r = 0;
#5 rst = 1; #30 rst = 0;
$monitor($time, "\tclk=%b\t ,rst=%b\t, s=%b\t,r=%b\t, q=%b\t, qb=%b",clk,rst,s,r,q,qb);
#100 $finish;
end
always #5 clk = ~clk;
always #30 s = ~s;
always #40 r = ~r;
endmodule
