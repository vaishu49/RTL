// Code your design here

module exor_dut(y,a,b);
  input a,b;
  output y;
//  assign  y = (~a&b)+(a&~b);
  xor x1(y,a,b); 
endmodule
