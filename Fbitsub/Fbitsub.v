module Fbitsub(a,b,c,diff,brw);
  input [3:0] a,b,c;

  output [3:0]diff;
output brw;
  assign {brw,diff}=a-b-c;
endmodule
