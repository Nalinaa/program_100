module fullsubtractor(D,W,A,B,C);
  input A,B,C;
  output D,W;
  assign D=(A^B^C);
  assign W=((~A&B)|(B&C)|(~A&C));
endmodule
