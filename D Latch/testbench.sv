// Code your testbench here
// or browse Examples
/*module tb;
  
  reg d,en;
  wire q;
  
  dlatch dlatch_inst(.q(q),.d(d),.en(en));
  
  initial 
    begin
      //$monitor("t=%0t, d=%b, en=%en, q=%b, qbar=%b", $time,d,en,q,qbar);
      $monitor("t=%0t, d=%b, en=%b, q=%b", $time,d,en,q);
      #5 en =1; d=1;
      #5 en=1; d=0;
      #5 en=0; d=1;
    end
endmodule*/

module tb;
  
  reg clk=0;
  reg d,en;
  wire q;
  
  dlatch dlatch_inst(.q(q),.d(d),.en(en),.clk(clk));
  always 
    #10 clk = ~clk;
  
  initial 
    begin
      $monitor("t=%0t, d=%b, en=%b, q=%b", $time,d,en,q);
      #10 en =1; d=1;
      #10 en=1; d=0;
      #10 en=0; d=1;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars("1");
    end
  
  initial 
    #60 $finish();
endmodule