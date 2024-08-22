module halfadder(sum,carry,a,b);
output sum,carry;
input a,b;
xor x1(sum,a,b);
and a1 (carry,a,b);
  
  
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end

endmodule// Code your design here
