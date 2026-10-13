module blink(input clk, output reg led);
  initial led = 0;
  always @(posedge clk) led <= ~led;
endmodule
