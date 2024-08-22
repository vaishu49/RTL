// Code your design here
module half_adder(sum,carry,a,b);
  output sum, carry;
  input a,b;
  
 // xor x1(sum,a,b);
 // and a1(carry,a,b);
  assign sum = a ^ b;
  assign carry = a & b;
  
endmodule

  
  
  
 