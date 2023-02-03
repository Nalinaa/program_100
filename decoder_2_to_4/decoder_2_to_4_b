module decoder_2_to_4_b(EN, A0, A1, D0, D1, D2, D3);
 input EN, A0, A1;
 output D0, D1, D2, D3;
reg D3, D2, D1, D0;
always @(A0 or A1 or EN) begin
if (EN == 1'b1)
case ( {A1, A0} )
2'b00: { D3, D2, D1, D0} = 4'b0001;
2'b01: { D3, D2, D1, D0} = 4'b0010;
2'b10: { D3, D2, D1, D0} = 4'b0100;
2'b11: { D3, D2, D1, D0} = 4'b1000;
default: { D3, D2, D1, D0} = 4'bxxxx;
endcase
if (EN == 0)
{ D3, D2, D1, D0} = 4'b0000;
end
endmodule
