module tff_sr_tb;
reg data, clk, reset ; 
wire q;
tff_sr tffr (.data(data), .clk(clk), .reset(reset) ,.q(q));
  initial
    begin
      $dumpfile("tff.vcd");
      $dumpvars(1,tff_sr_tb);
    end
initial
begin
clk=0;
data = 0;
reset = 1;
#5 reset = 0;
#30 reset = 1;
$monitor($time, "\tclk=%b\t ,reset=%b\t, data=%b\t, q=%b",clk,reset,data,q);
#100 $finish;
end
always #5 clk = ~clk;
always #30 data = ~data;
endmodule
