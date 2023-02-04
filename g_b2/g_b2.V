module g_b2(G1,G0,B1,B0);
  input G1,G0;
  output B1,B0;
  xor(B0,G0,G1);
  buf(B1,G1);
endmodule
