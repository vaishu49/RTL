// Code your design here
module full_adder(sum,c_out,a,b,c_in);
input a,b,c_in;
 output sum,c_out;
  
  assign {c_out,sum} = a+b+c_in;
  
endmodule

module rip_add(sum,c_out,a,b,c_in);
  output [3:0] sum;
  output c_out;
  input[3:0] a,b;
  input c_in; 
  
  wire c1,c2,c3;
  
  full_adder f0(sum[0], c1,  a[0], b[0], c_in);
  full_adder f1(sum[1], c2,  a[1], b[1], c1);
  full_adder f2(sum[2], c3,  a[2], b[2], c2);
  full_adder f3(sum[3],c_out,  a[3], b[3], c3);
  
endmodule 
  
  
  
  