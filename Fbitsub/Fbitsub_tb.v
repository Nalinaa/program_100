module Fbitsub_tb;
reg [3:0] a;
reg [3:0] b;
  reg [3:0]c;
  wire [3:0] diff;
wire brw;
  Fbitsub dut (.a(a),.b(b),.c(c),.diff(diff),.brw(brw));
  initial
    begin
      $dumpfile("fbs.vcd");
      $dumpvars(1,Fbitsub_tb);
    end
initial 
  begin
    $monitor($time,"\ta=%b,b=%b,c=%b,diff=%b,brw=%b",a,b,c,diff,brw);
a = 1110;b = 1110;c = 1110;
#10;
a = 0000;b =0001;c = 1000;
#10 $finish;
end
endmodule

