// Code your design here
/*module blocking_nonblocking();
  reg [2:0] a,b,c;
  initial begin
    a<= #2 2;
    b<= #5 4;
    c<= #7 6;
    
  end
  
  initial begin
    a= #2 1;
    b= #5 3;
    c= #7 5;
    
  end
  
  initial begin
    $monitor("time=%0t, a=%d, b=%d, c=%d",$time,a,b,c);
  end
  
endmodule*/

module blocking_nonblocking();
  
  reg a,b,c,d;
  initial begin
    #10 a=0;
    #11 a=1;
    #12 a=0;
    #13 a= 1;
  end
  
  initial begin
    #10 b<= 0;
    #11 b<= 1;
    #12 b<= 0;
    #13 b<= 1;
  end
  
  initial begin
    c= #10 0;
    c= #12 0;
    c= #11 1;
    c= #13 1;
  end
  
  initial begin
    $monitor("time=%0t, a=%d, b=%d, c=%d, d=%d", $time,a,b,c,d);
    
    #50 $finish;
  end
  
endmodule


    
 
  
  
  
  
  
  
  
  
  
 

