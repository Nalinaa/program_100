module ud_counter_tb;
    reg Clk;
    reg reset;
    reg UpOrDown;
    wire [3:0] Count;
    ud_ uut ( .Clk(Clk), .reset(reset), .UpOrDown(UpOrDown), .Count(Count));
    initial Clk = 0;
    always #5 Clk = ~Clk;
    initial begin #2 reset =1; end
    initial begin
	    $dumpfile("waveform.vcd");
	    $dumpvars;
       #5 reset = 0;
      #20  UpOrDown = 0;
      #50 UpOrDown = 1;
       #100 UpOrDown = 0;  
    end
    initial begin #120 $finish; end
      
    endmodule
