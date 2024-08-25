// Code your design here
module deco_2x4(i0,i1,y0,y1,y2,y3);
  output y0,y1,y2,y3;
  input i0,i1;
  
  and a0(y0,w1,w2);
  and a1(y1,w1,ii);
  and a2(y2,w2,i0);
  and a3(y3,i0,i1
  not n1(w1,i0);
  not n2(w2,i1);
  
  endmodule