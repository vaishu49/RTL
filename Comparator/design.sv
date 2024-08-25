// Code your design here
/*module comp(x,y,z,a,b);
  
  output x,y,z;
  input a,b;
  // x represents a=b
  //y represents a>b
  //z represents a<b
  xnor(x,a,b);
  and(y,a,w1);
  not(w1,b);
  and(z,b,w2);
  not(w2,a);
  
  endmodule*/
  

module comp(x,y,z,a,b);
  output x,y,z;
  input a,b;
  
  assign x = (~a & ~b | a & b);
  assign y = a & ~b;
  assign z = ~a & b;
  
endmodule 


    