module dff_ar_tb;
reg data, clk, reset ; 
wire q;
dff_ar dffr (.data(data), .clk(clk), .reset(reset) ,.q(q));
  initial
    begin
      $dumpfile("dff_ar.vcd");
      $dumpvars(1,dff_ar_tb);
    end
initial
begin
clk=0;
data = 0;
reset = 1;
#5 reset = 0;
#10 reset = 1;
$monitor($time, "\tclk=%b\t ,reset=%b\t, data=%b\t, q=%b",clk,reset,data,q);
#10 $finish;
end
always #5 clk = ~clk;
always #10 data = ~data;
endmodule
