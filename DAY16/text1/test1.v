module tb;
integer a;
initial a=10;
initial a=20;
initial a=12;
initial #5 $display (a);//last exicuted value will come as the output but we can't expect which number will come last
endmodule
