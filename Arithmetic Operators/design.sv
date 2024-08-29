// Code your design here
module op;
  
  reg [3:0] a = 4'b0011;
  reg [3:0] b = 4'b0100;
  reg [3:0] d= 4'b0011;
  reg [3:0] e = 4'b0010;
  wire [3:0] out;
  wire [3:0] ans,p,q,r;
  
 assign out  = a + b;
 assign p = a-b;
  assign q = a*b;
  assign ans = d/e;
 assign r = d%e;
  
  
  initial
  
    $monitor("t=%0t , a=%d, b=%d, out = %b,ans = %b, d=%d, e=%b, p=%b, q=%b, r=%b" , $time, a,b,out,ans,d,e,p,q,r);
    
endmodule 