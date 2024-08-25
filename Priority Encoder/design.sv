// Code your design here
/*module pren(y1,y0,i0,i1,i2,i3);
  output y0,y1;
  input i0,i1,i2,i3;
  
  or r1(y0,i3,w1);
  and a1(w1,w2,i1);
  not n1(w2,i2);
  or r2(y1,i2,i3);
  
endmodule */


module pren(y1,y0,i0,i1,i2,i3);
  output y0,y1;
  input i0,i1,i2,i3;
  
  assign y0 = i3 | ~i2 & i1;
  assign y1 = i2 |  i3;
  
endmodule

               
               
       