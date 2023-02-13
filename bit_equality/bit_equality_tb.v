module bit_equality_tb();
    reg [1:0] A = 0, B = 0 ;
    wire z;

   bit_equality  tb ( .A(A), .B(B), .z(z) );
    always @(A or B)
    begin
        A = 00;
        B = 00;
        #10;
        A = 01;
        B = 01;
        #10;
        A =10;
        B = 00;
        #10;
        A = 11;
        B = 10;
        #10;
    end
   initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars(1);
      #10000$finish;
    end

    
endmodule
