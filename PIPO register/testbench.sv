// Code your testbench here
// or browse Examples

/*module tb;
  
  reg clk = 0;
  reg [3:0] d;
  wire [3:0] q;
  
  PIPO uut(.d(d),.clk(clk),.q(q));
  begin 
  
  initial 
    #10 clk = ~clk;
    
    initial 
      begin
        $monitor("t=%0t, d =%b, q=%b", $time, d,q);
        #10 d = 4'b1010;
        #10 d = 4'b0011;
      end 
    initial 
       #50 $finish;
      
  
  initial 
     begin
       $dumpfile("file.vcd");
       $dumpvars("1");
     end
  
  end 
endmodule*/

module tb;
  reg clk=0;
  reg reset;
  wire [3:0] q;
  reg  [3:0] d;
  

  PIPO uut(.reset(reset),.clk(clk),.d(d),.q(q));
  begin
    
  always 
  #10 clk = ~clk;
    
    initial 
      begin
        $monitor("t=%0t, reset=%b, d=%b, q=%b",$time, reset,d,q);
        #10 reset = 1'b1; d = 4'b1011;
        #20 reset = 1'b0; d = 4'b0010;
        #20 d=4'b1001;
        #20 d=4'b0001;
        #20 d= 4'b1011;
      end
    initial 
     #180 $finish;
     
  initial 
     begin
       $dumpfile("file.vcd");
       $dumpvars("1");
     end
  
    
  end
endmodule