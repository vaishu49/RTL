// Code your design here
/*module demux_1x2 (s,y1,y0,i);
  output y1,y0;
  input s,i;
  
  and a1(y0,w1,i);
  and a2(y1,s,i);
  not n1(w1,s);
  
  endmodule 
*/



module demux_1x2(s,y1,y0,i);
  output y1,y0;
  input s,i;
  
  assign y0 = ~s&i ;
  assign y1 =  s&i ;
  
endmodule




