// Code your design here
/*module dlatch(output q,qbar, input d,en);
  
  assign q = en ? d : q;
  assign qbar = ~q;
  
endmodule
*/

module dlatch(q,d,en,clk);
  input d,clk,en;
  output reg q;
  always@(en,d)
  if(en)
    q<=d;
endmodule




  