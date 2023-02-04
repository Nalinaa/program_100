module comp (A, B, E, G, L);
  input [1:0] A, B;
output E, G, L;
reg E, G, L;
  initial
    begin
      E = 0;
G = 0;
L = 0;
    end
always @(A or B)
begin
if(A == B)
E= 1;
else if (A > B)
G= 1;
else
L= 1;
end
endmodu
