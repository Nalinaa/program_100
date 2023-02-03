module halfadder(S,C,A,B);
  input A,B;
  output S,C;
  xnor(S,A,B);
  and(C,A,B);
endmodule
