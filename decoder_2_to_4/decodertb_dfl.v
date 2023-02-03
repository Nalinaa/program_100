module decodertb_dfl; 
reg EN, A0, A1;
wire D0, D1, D2, D3;
decoder_2_to_4_dfl decoder(.EN(EN), .A0(A0), .A1(A1), .D0(D0), .D1(D1), .D2(D2), .D3(D3));
  initial
    begin
      $dumpfile("decoder.vcd");
      $dumpvars(1,decodertb_dfl);
    end
initial begin
EN=1'b0; A1 =1'bX ; A0 =1'bX;
#2 EN=1'b1; A1 =1'b0 ; A0 =1'b0;
#2 EN=1'b1; A1 =1'b0 ; A0 =1'b1;
#2 EN=1'b1; A1 =1'b1 ; A0 =1'b0;
#2 EN=1'b1; A1 =1'b1 ; A0 =1'b1;
#2$stop;
end
always @(D0, D1, D2, D3)
  $display( $time,"\tINPUT VALUES: \t EN=%b \tA1 =%b \t A0 =%b \t output value D3 D2 D1 D0 = %b%b%b%b",EN,A1, A0, D3,D2, D1, D0);
endmodule
