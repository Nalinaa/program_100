module fulladder(S,Ca,A,B,C);
  input A,B,C;
  output S,Ca;
  xnor(S,A,B,C);
  assign Ca=(A&B)&(((A&~B)|(~A&B))&C)
 endmodule
