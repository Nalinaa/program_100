module demux(Do,S,D);
  input [2:0]S;
  input D;
  output reg [7:0] Do;
  initial
    begin
      if(S==3'b000)
        Do[0]=D;
      else if(S==3'b001)
        Do[1]=D;
      else if (S==3'b010)
        Do[2]=D;
      else if (S==3'b011)
        Do[3]=D;
      else if (S==3'b100)
        Do[4]=D;
      else if (S==3'b101)
        Do[5]=D;
      else if (S==3'b110)
        Do[6]=D;
      else if (S==3'b111)
        Do[7]=D;
      end
endmodule
            
     
