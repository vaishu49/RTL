module cla(sum,c_out, a,b,c_in);
  
  output [3:0] sum;
  output c_out;
  input [3:0] a,b;
  input c_in;
  
  wire c1,c2,c3,c4;
  wire p0,p1,p2,p3,g0,g1,g2,g3;
  
  assign p0=a[0] ^ b[0],
    p1= a[1] ^ b[1],
    p2= a[2] ^ b[2],
    p3= a[3] ^ b[3];
  
    
  assign g0 = a[0] & b[0],
    g1 = a[1] & b[1],
    g2 = a[2] & b[2], 
    g3 = a[3] & b[3];
    
    
  assign c1 = g0 | (p0 & c_in);
  assign c2 = g1 | (p1 & g0)  | (p1 & p0 & c_in);
                    assign c3 = g2 | (p2 & g1) | (p1 & p2 & g0) | (p1 & p2 & p0 & c_in);
  assign c4 = g3 | (p3 & g2) | (p3 & p2 & g1 ) | (p3 & p2 & p1 & g0) | (p3 & p2 & p1 & p0 & c_in);
                    
                    assign{c_out,sum} = a+ b+ c_in;
                    
                   
  
endmodule
  