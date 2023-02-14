module moore101(input in,input clk,input rst,output reg out);
  reg [1:0] cst;
  reg [1:0] nst;
  parameter [1:0]s0=2'b00;
  parameter [1:0]s1=2'b01;
  parameter [1:0]s2=2'b10;
  parameter [1:0]s3=2'b11;
always@(posedge clk)
begin
  if(rst)begin
    out=1'b0;
    cst=s0;
    nst=s0;end
  else
    begin
    cst=nst;
    case(cst)
  s0:begin    
      out=1'b0; 
     if(in) 
       nst=s1;
     else begin
      nst=s0;end 
    end
  s1:begin
      out=1'b0; 
      if(in)
       nst=s0;
      else begin
       nst=s2;end
     end
  s2 :begin   
        out=1'b0;
        if(in)
         nst=s3;
        else begin
         nst=s0;end 
      end
  s3:begin    
        out=1'b1; 
       if(in) 
         nst=s1;
       else begin
       nst=s0 ;end
     end
    endcase
end
end
endmodule
