module fulladder(S,Ca,A,B,C);
  input A,B,C;
  output S,Ca;
  xor(S,A,B,C);
  assign Ca=(A&B)|(B&C)|(A&C);
 endmodule
