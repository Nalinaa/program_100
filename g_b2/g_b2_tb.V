module g_b2_tb;
   reg G1,G0;
  wire B1,B0;
  g_b2 gray(G1,G0,B1,B0);
  initial
    begin
      $dumpfile("gray.vcd");
      $dumpvars(1,g_b2_tb);
    end
  initial
    begin
      $monitor($time,"\tG1=%d;\tG0=%d;\tB1=%d;\tB0=%d",G1,G0,B1,B0);
    end
  initial
    begin
      G1=0;G0=0;
      #5 G1=0;G0=1;
      #5 G1=1;G0=0;
      #5 G1=1;G0=1;
      #5 $finish;
    end
endmodule
  
