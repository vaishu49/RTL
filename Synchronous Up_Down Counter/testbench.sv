// Code your testbench here
// or browse Examples
module tb;
   reg reset,load,mode;
  reg clk = 1'b0;
  reg [2:0] d_in;
  wire [2:0] q;
  
  syn_up_down uut(.clk(clk),.reset(reset),.load(load),.mode(mode),.d_in(d_in),.q(q));
  
  always 
    #10 clk = ~clk;
  
  initial
    begin
  
      $monitor("t=%0t, clk=%b ,reset =%b, load=%b, mode=%b, d_in=%b, q=%b", $time, clk, reset, load, mode, d_in, q);
      begin
        #10 reset=1'b1; 
        #20 reset=1'b0;load=1'b1;
        #20 d_in = 010;
        #20 mode =1'b1;
        // #20 d_in = 4'b010;
        
        
      end
    end
      
      initial
        #200 $finish;
      
      initial
  
        begin
        $dumpfile("flie.vcd");
          $dumpvars("1");
        end 
                
      endmodule 
      
  
  
  
  
  
  