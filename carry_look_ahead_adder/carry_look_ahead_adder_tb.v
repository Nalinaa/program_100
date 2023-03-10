module carry_look_ahead_adder_tb;

  reg [3:0]A, B; 

  reg Cin;

  wire [3:0] S;

  wire Cout;

  wire[4:0] add;

  

 carry_look_ahead_adder cla(A, B, Cin, S, Cout);

  

  assign add = {Cout, S};

  initial begin

	  $dumpfile("cla.vcd");

	  $dumpvars;

    $monitor("A = %b: B = %b, Cin = %b --> S = %b, Cout = %b, Addition = %0d", A, B, Cin, S, Cout, add);

    A = 0; B = 1; Cin = 0; #3;

    A = 2; B = 4; Cin = 1; #3;

    A = 4'hb; B = 4'h6; Cin = 0; #3;

    A = 5; B = 3; Cin = 1;

  end

endmodule
