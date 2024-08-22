// Code your design here
/*module full_sub(diff,bor,a,b,c);
  output diff, bor;
  input a,b,c;
  wire w1,w2,w3;
  
  xor x1(w1,a,b);
  xor x2(diff,w1,c);
  xnor x3(w2,a,b);
  and a1(w3,w2,c);
  and a2(w4,~a,b);
  or r1(bor,w3,w4);
  
endmodule*/


module ful_sub(dif,bor,a,b,c);
  output dif,bor;
  input a,b,c;
  
  assign dif = a^b^c;
  assign bor = ~a&b | ~(a^b)&c;
 // assign bor = ~a
  
endmodule
  