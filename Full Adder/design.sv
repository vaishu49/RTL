// Code your design here
/*module full_adder(sum,carry,a,b,c);
  output sum,carry;
  input a,b,c;
  wire w1,w2,w3;
 
  
  xor x1(w1,a,b);
  xor x2(sum,w1,c);
  and a1(w2,a,b);
  and a2(w3,w1,c);
  or r1(carry,w2,w3);
  
endmodule */

module ful_add(sum,carry,a,b,c);
  
  output sum,carry;
  input a,b,c;
  
  assign sum = a^b^c;
  assign carry = a&b|(a^b)&c;
endmodule


  
  
  
  
  