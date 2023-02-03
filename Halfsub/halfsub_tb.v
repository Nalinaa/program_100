module halfsub_tb;
  reg A,B;
  wire D,Br;	
  halfsub dut(D,Br,A,B);
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1,halfsub_tb);
    end
  initial
    begin
      $display($time,"A=%b,B=%b,D=%b,Br=%b",A,B,D,Br);
    end
  initial
    begin
      #5 A=0;B=0;
      #5 A=0;B=1;
      #5 A=1;B=0;
      #5 A=1;B=1;
      #5 $finish;
    end 
endmodule
