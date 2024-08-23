// Code your design here
/*module mux_2x1(y,i0,i1,s);
  output y;
  input i0,i1,s;
  wire w1,w2,w3;
  
  and a1(w1,i0,w3);
  and a2(w2,i1,s);
  not n1(w3,s);
  or r1(y,w2,w1);
  endmodule*/

module mux_2x1(y,i0,i1,s);
  output y;
  input i0,i1,s;
  
  //assign y = ~s&i0 | s&i1;
  
  assign y = s ? i1 :i0;
  
  
  
endmodule 