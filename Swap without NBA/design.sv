// Code your design here
module swapp();
  
 // reg clk =0;
  reg a=1,b=0;
  reg temp;
  
  //always
   // #10 clk = ~clk;
  
 // always@(posedge clk)
  initial
    begin
      #10 temp=a;
      #10   a=b;
       #10  b=temp;
      $monitor("t=%0t, a=%b,b=%b,temp=%b",$time,a,b,temp);
   end
  
     // initial
     //   #50 $finish;
  
  initial
    begin
    $dumpfile("file.vcd");
  $dumpvars("1");
    end
  
  
endmodule
      
    