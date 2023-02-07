module master_slave_ff_tb;
  reg din,reset,clk;
  wire dout;
  master_slave_ff ms(din ,clk ,reset ,dout);
  initial
    begin
      $dumpfile("ms.vcd");
      $dumpvars(1,master_slave_ff_tb);
    end
  initial
    begin
      reset=1;clk=0;din=0;
      #5 reset=0;
      $monitor($time,"\tdin=%b,dout=%b",din,dout);
      
      end
    always #5 clk = ~clk;
always #5 din = ~din;
   endmodule
