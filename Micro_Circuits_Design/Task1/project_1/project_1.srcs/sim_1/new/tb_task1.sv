`timescale 1ns / 1ps

module tb_task1;

    logic clk,rst_n;
    logic [7:0]d;
    logic overflow;
    logic q;
task1 ta(
    .clk(clk),
    .rst_n(rst_n),
    .d(d),
    .overflow(overflow),
    .q(q)
);
    
    
    initial begin 
    
    clk = 0;
    rst_n=0; #1
    d=8'b1100_0000;
    clk = 1;
    rst_n=1; #1
    d=8'b0000_0000;

    clk = 0; #5
    clk = 1; #5
    d=8'b1000_0000;#5


    
    $finish;
    
    
    end
endmodule
