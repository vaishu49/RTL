// Code your design here
module nor_dut(y,a,b);
  input a,b;
  output y;
  //assign  y = ~(a||b);
  nor x1(y,a,b);
endmodule