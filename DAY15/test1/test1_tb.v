module tb;

reg [2:0] a;
reg [3:0] b,c;

initial
   begin
   b=4'b1010;
   c=4'b0010;
   
   $display ("%b", b&c);
   $display ("%b", b&&c);
   
   
   
   a=3'b111;
   
   b=0001;c=1101;$display (b & c);
   b=0000;c=1111;$display (b & c);
   b=1111;c=0101;$display (b & c);
   b=10;c=10;$display (b & c);
   
   $finish;
   
   end
endmodule