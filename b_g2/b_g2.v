module b_g2(G1,G0,B1,B0);
  input B1,B0;
  output G1,G0;
  xor(G0,B0,B1);
  buf(G1,B1);
endmodule
