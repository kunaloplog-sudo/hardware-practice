`timescale 1ns/1ps
module tb;
  reg clk = 0;
  wire led;
  blink dut(.clk(clk), .led(led));
  always #5 clk = ~clk;
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb);
    #100 $finish;
  end
endmodule
