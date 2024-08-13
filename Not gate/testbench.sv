// Code your testbench here
// or browse Examples


 module tb;
  reg p;
  wire r ;
  
  
  not_dut not_dut_x(.y(r),.a(p));
  
  initial 
    begin
      $monitor("t =%0t , p=%b, r =%b", $time,p,r);
      #5 p = 0;  
      #5 p = 1; 
      #5 p = 0; 
    end
  
endmodule