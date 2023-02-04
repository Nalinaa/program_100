module b_g2_tb;
  reg B1,B0;
  wire G1,G0;
  b_g2 gray(G1,G0,B1,B0);
  initial
    begin
      $dumpfile("gray.vcd");
      $dumpvars(1,b_g2_tb);
    end
  initial
    begin
      $monitor($time,"\tB1=%d;\tB0=%d;\tG1=%d;\tG0=%d",B1,B0,G1,G0);
    end
  initial
    begin
      B1=0;B0=0;
      #5 B1=0;B0=1;
      #5 B1=1;B0=0;
      #5 B1=1;B0=1;
      #5 $finish;
    end
endmodule
  
