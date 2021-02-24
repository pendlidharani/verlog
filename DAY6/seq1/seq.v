module seq (clk,rst,q1,q2);
  input clk,rst;
  output q1,q2;
  
  reg q1,q2;
  wire q1bar;
  
  
  always @ (posedge clk or posedge rst)
    begin
      if (rst)   q1<=0;
      else   q1<=q1bar;
    end
  assign q1bar=!q1;
  
  always @ (posedge clk or posedge rst)
    begin
      if (rst)  q2<=0;
      else q2<= q1bar;
    end
endmodule