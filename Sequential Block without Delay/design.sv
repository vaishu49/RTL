// Code your design here
// Sequential block without delay

/*module block();
   reg x,y;
  reg [1:0] z,w;
  
  initial begin
      x = 1'b0;
   #5 y = 1'b1;
  #10 z = {x,y};
  #20 w ={y,x};
    $monitor("value of x =%b, y=%b, z=%b,w=%b,t=%0t",x,y,z,w,$time);
    
  end
endmodule*/
  


/*module block();
   reg x,y;
  reg [1:0] z,w;
  
  initial fork
      x = 1'b0;
   y = 1'b1;
   z = {x,y};
   w ={y,x};
    $monitor("value of x =%b, y=%b, z=%b,w=%b,t=%0t",x,y,z,w,$time);
    
  join
endmodule*/


module check();
   reg x,y;
  
  reg [1:0] z,w;
  
  initial begin
     x = 1'b0;
    fork
      #5 y= 1'b1;
      #10 z = {x,y};
       $monitor("t=%0t value of x =%b, y=%b, z=%b",$time,x,y,z);
    
    join
    #20 w = {y,x};
    $monitor("t=%0t value of x =%b, y=%b, z=%b,w=%b",$time,x,y,z,w);
    
  end
endmodule 
    