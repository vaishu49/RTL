// Code your testbench here
// or browse Examples
module tb();
  reg a,b;
  wire x,y,z;
  
  comp comp_inst(.x(x),.y(y),.z(z),.a(a),.b(b));
  
  initial 
  begin
    $monitor("t=%0t, a=%b, b=%b, x=%b,  y=%b, z=%b",$time, a,b,x,y,z);
    #5 a=0; b=0;
    #5 a=0; b=1;
    #5 a=1; b=0;
    #5 a=1; b=1;
    
  end
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars("1");
    end
endmodule 