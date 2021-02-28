module tb;
wire [3:0] a;
//strength resolution

assign a=4'b0101;
assign a=4'b1101;

initial #5 $display ("%b",a);
assign y=a[3];

endmodule