// Code your design here
module enc_4x2( y0,y1,i0,i1,i2,i3);
  output y0,y1;
  input i0,i1,i2,i3;
  
  or r1(y0,i1,i3);
  or r2(y1,i2,i3);
  
endmodule


  
  



/*module enc_4x2( y0,y1,i0,i1,i2,i3);
  output y0,y1;
  input i0,i1,i2,i3;
  
 // assign y0 = i1 | i3;
  
 // assign y1 = i2 | i3;
  
  assign {y0 ,y1} =  {i1|i3 ,  i2|i3};
  
endmodule */
 
  