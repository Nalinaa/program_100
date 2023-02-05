module odd_parity_tb;
  reg x,y,z;
  wire result;
  odd_parity dut(x,y,z,result);
initial
  begin
    $dumpfile("op.vcd");
    $dumpvars(1,odd_parity_tb);
  end
  initial
begin
  $monitor($time,"\tx=%b;\ty=%b;\tz=%b;\tresult=%b",x,y,z,result);
x = 0;y = 0;z = 0;
#10 x = 0;y = 0;z = 1;
#10x = 0;y = 1;z = 0;
#10x = 0;y = 1;z = 1;
#10x = 1;y = 0;z = 0;
#10x = 1;y = 0;z = 1;
#10x = 1;y = 1;z = 0;
#10x = 1;y = 1;z = 1;
#10$finish;
end
endmodule
