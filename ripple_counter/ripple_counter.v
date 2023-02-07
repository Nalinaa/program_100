module tff(t,clk,q,q_bar);
  input t,clk;
  output q,q_bar;
  reg q;
  assign q_bar=~q;
  always@(posedge clk)
    begin
    case(t)
      0:q<=q;
      1:q<=~q_bar;
    endcase
    end
endmodule
module ripple_counter(t0,t1,t2,clk,out);
  input t0,t1,t2,clk;
  output [2:0] out;
  wire qo,q1,q2,q0_bar,q1_bar,q2_bar;
  assign t0=1;
  assign t1=1;
  assign t2=1;
  tff tff0(.t(t0),.clk(clk),.q(q0),.q_bar(q0_bar));
  tff tff1(.t(t1),.clk(q0),.q(q1),.q_bar(q1_bar));
  tff tff2(.t(t2),.clk(q1),.q(q2),.q_bar(q0_bar));
  assign out={q2,q1,q0};
endmodule
