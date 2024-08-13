// Code your design here
module nand_dut(y,a,b);
  input a,b;
  output y;
  assign  y = ~(a&b);
  
endmodule