module addertestbench;
  reg A,B;
  wire S,C;
  halfadder dut(S,C,A,B);
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1,addertestbench);
    end
  initial
    begin
      $monitor($time,"A=%b,B=%b,C=%b,S=%b",A,B,C,S);
      #5 A=0;B=0;
      #5 A=0;B=1;
      #5 A=1;B=0;
      #5 A=1;B=1;
      #5 $finish;
    end 
endmodule

