module comp_tb;
  reg [1:0] A, B;
wire E, G, L;
  comp cmp(A, B, E, G, L);
  initial
    begin
      $dumpfile("cmp.vcd");
      $dumpvars(1,comp_tb);
    end

initial
begin
  $monitor($time, "\tA=%b\t , B=%b\t, E=%b\t, G=%b\t, L=%b\t", A,B, E, G, L);
  
#5A=2'b00;B=2'b01;
  #5A=2'b11;B=2'b10;
  #5A=2'b01;B=2'b00;
#10 $finish;
end
endmodule
