// Code your design here
module enc_8x3(y0,y1,y2,i0,i1,i2,i3,i4,i5,i6,i7);
  output y0,y1,y2;
  input i0,i1,i2,i3,i4,i5,i6,i7;
  
 // or r1(y0,i1,i3,i5,i7);
  //or r2(y1,i2,i3,i6,i7);
  //or r3(y2,i4,i5,i6,i7);
  
  assign y0 = i1 | i3 | i5 | i7;
  assign y1 = i2 | i3 | i6 | i7;
  assign y2 = i4 | i5 | i6 | i7; 
endmodule 