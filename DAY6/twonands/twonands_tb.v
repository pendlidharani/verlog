module tb;
reg a,b;
wire q,qbar;
twonands ABC (a,b,q,qbar);

initial 
 begin
 repeat(10)
 begin
   a=$random;
   b=$random;
  #1;
  $display (a,b,":",q,qbar);
  end
  end
 endmodule