module ripple_counter_tb;
  reg t0,t1,t2,clk;
  wire [2:0] out;
  ripple_counter rc(t0,t1,t2,clk,out);
  initial
    begin
      $dumpfile("rc.vcd");
      $dumpvars(1,ripple_counter_tb);
    end
  initial
    begin
      clk=0;
      $monitor($time,"\tout=%b",out);
       
      forever 
         begin
            t0=1;
            t1=1;
            t2=1;
          end
    end
  always #5 clk=~clk;
endmodule
      
