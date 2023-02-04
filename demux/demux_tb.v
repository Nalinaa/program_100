module demux_tb;
  reg [2:0]S;
  reg D;
  wire [7:0] Do;
  demux dem(Do,S,D);
  initial
    begin
      $dumpfile("dem.vcd");
      $dumpvars(1,demux_tb);
    end
  initial
    begin
      $monitor($time,"\tD%b;\tS=%b;\tDo=%b",D,S,Do);
    end
  initial
    begin
      D=0;S=000;
      #5 D=$random;S=000;
      #5 D=$random;S=001;
      #5 D=$random;S=010;
      #5 D=$random;S=011;
      #5 D=$random;S=100;
      #5 D=$random;S=101;
      #5 D=$random;S=110;
      #5 D=$random;S=111;
      #10 $finish;
    end
endmodule
