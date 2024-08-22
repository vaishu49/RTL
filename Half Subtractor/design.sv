// Code your design here
/*module half_sub(dif,bor,a,b);
  output dif,bor;
  input a,b;
  
  xor x1(dif,a,b);
  and a1(bor,~a,b);
  
endmodule*/


module half_sub(dif,bor,a,b);
  output dif,bor;
  input a,b;
   assign dif= a^b;
  assign bor = (~a)&b;
  
endmodule

