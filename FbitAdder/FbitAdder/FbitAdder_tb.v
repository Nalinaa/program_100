module FbitAdder_tb;
reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] sum;
wire cout;
FbitAdder uut (.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
  initial
    begin
      $dumpfile("fba.vcd");
      $dumpvars(1,FbitAdder_tb);
    end
initial 
  begin
    $monitor($time,"\ta=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
a = 1110;b = 1110;cin = 0;
#10;
a = 0000;b =0001;cin = 1;
#10 $finish;
end
endmodule

