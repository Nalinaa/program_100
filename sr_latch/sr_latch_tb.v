module sr_latch_tb();
  reg S,R;
  wire Q,Qn;
  sr_latch dut(S,R,Q,Qn);
  initial
    begin
      $dumpfile("srl.vcd");
      $dumpvars(1,sr_latch_tb);
      end
  
initial 
  begin
    $monitor($time,"\tS=%b;R=%b;Q=%b;Qn=%b",S,R,Q,Qn);
    S = 1;R = 1;
    #10S = 0;
    #10 S = 1;
    #10 R = 0;
    #10 R = 1;
    #10 S = 0;R = 0;
    #10 S = 1;R = 1;
    #10 S = 0;R = 0;
    #10$finish ;
end
endmodule
