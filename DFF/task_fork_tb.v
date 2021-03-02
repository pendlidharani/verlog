// Code your testbench here
// or browse Examples
module tb;  
    reg clk=0;  
    reg d,d1;  
    reg rst,rst1; 
  wire  q;
  reg q1;
    always #10 clk = ~clk;  
    initial
      begin 
      @(posedge clk);
        rst <= 1;  
      rst1 <= 1;
        clk <= 0;
      d <= 0;d1<=0; 
      @(posedge clk);
       rst <= 1;  
      rst1 <= 0;
        repeat(2)@(posedge clk);
        @(posedge clk) rst<=0;rst1<=0;
   
        repeat (10) begin
          @(posedge  clk) 
        {d,d1} <=$random;
        #200; $finish;
		endend
   
  //fork join
  initial 
  begin
   fork
    comparator;
    predictor;
  join
  end
     //self checking code 
  task comparator;
    forever@ (posedge clk or posedge rst1 ) 
    begin
      if (rst1)  
          q1 <= 0;  
       else  
          q1 <= d1;  
     end
  endtask
  
  task predictor;
   
   forever@(negedge clk) 
     begin
     if (q1==q)
          $display($time,"...equal....",q,q1);

     else
       
          $display($time,"... not equal....", q,q1);  
    end
    endtask   
endmodule  
      
 