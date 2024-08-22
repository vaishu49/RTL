// Code your design here
module xnor_dut(y,a,b);
  input a,b;
  output y;
 // assign  y = ~((~a&b)+(a&~b));
  xnor x1(y,a,b);
endmodule
