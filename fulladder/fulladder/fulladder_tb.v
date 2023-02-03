module fulladder_tb;
  reg A,B,C;
wire S,Ca;
  fulladder dut(S,Ca,A,B,C);
  initial
    begin
      $dumpfile("fulladder.vcd");
      $dumpvars(1,fulladder_tb);
    end
  initial
    begin
      $monitor($time,"\tA=%b,B=%b,C=%b,S=%b,Ca=%b",A,B,C,S,Ca);
      #5 A=0;B=0;C=0;
      #5 A=0;B=0;C=1;
      #5 A=0;B=1;C=0;
      #5 A=0;B=1;C=1;
      #5 A=1;B=0;C=0;
      #5 A=1;B=0;C=1;
      #5 A=1;B=1;C=0;
      #5 A=1;B=1;C=1;
      #5 $finish;
    end
endmodule
