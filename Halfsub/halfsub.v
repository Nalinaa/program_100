module halfsub(D,Br,A,B);
  input A,B;
  output D,Br;
  xor(D,A,B);
  and(Br,~A,B);
endmodule
