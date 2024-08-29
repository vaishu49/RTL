// Code your testbench here
// or browse Examples
module tb;
 
  reg reset,shift,load;
  wire [3:0] out;
 // wire [3:0] q; 
  reg [3:0] data;
  reg clk =0;
  
  PISO uut(.data(data),.clk(clk),. reset(reset),.shift(shift),.load(load),.out(out));
  
  always
    #10 clk = ~clk;
  
  initial
    begin
     // $monitor("t=%0t, clk=%b, reset =%b, load=%b, shift =%b,  data=%b, q=%b,  out=%b", $time,clk,reset,load,shift,data,q,  out);
      #10 reset = 1'b1; 
      #20 reset = 1'b0; load = 1'b1; data = 4'b1110;
      #20 load = 1'b0;
      #20 shift = 1'b1;
      //#20 data = 4'b1110;
    end
  initial 
    #200 $finish;
    
  initial 
     begin
       $dumpfile("file.vcd");
       $dumpvars("1");
     end
  
endmodule 