// Code your testbench here
// or browse Examples
module halfadder_tb;
   reg a;
   reg b;
   
  wire sum;
  wire carry;
  
   //Instantiate the unit under test 
   
   halfadder uut (.sum(sum),.carry(carry),
                  .a(a),
                  .b(b)
                  
                 );
   
   initial begin 
     #5 a=0; b=0;
             
     #5 a=0;b=1;
     #5 a=1;b=0;
     #5 a=1;b=1;
   end 
  initial begin 
   $dumpfile("dump.vcd");
    $dumpvars(1);
  end
   
             
  
  
   // wait 100ns for global reset to finish
   
 endmodule