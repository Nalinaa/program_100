module seven_segment_tb;
    reg [3:0] num;
	integer i;
    wire [6:0] Segment;
//dut design under test
  seven_segment dut (
		.num(num), 
		.Segment(Segment)
	);
  initial
    begin
      $dumpfile("seven_segment.vcd");
      $dumpvars(1,seven_segment_tb);
    end
initial
		begin
		for(i=0;i<10;i=i+1)
		begin
		num=i;
		#10;
		end
		end
		initial
		begin
		$monitor("Binary Num=%b | ABCDEFG=%b",num,Segment);
	   #400 $finish;
		end
endmodule
