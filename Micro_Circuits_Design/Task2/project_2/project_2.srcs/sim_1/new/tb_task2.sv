`timescale 1ns / 1ps

module tb_task2;
        
        logic clk;
        logic rst_n;
        logic out;
        logic [7:0]d;
        logic [7:0]q;
    
    task2 aa(
    .clk(clk),
    .rst_n(rst_n),
    .d(d),
    .out(out),
    .q(q)
    );
    
    initial begin 

    rst_n=0; #1
    d=8'b1100_0100;
    clk = 1;
    rst_n=1; #1
    d=8'b0000_0000;

    clk = 0; #5
    clk = 1; #5
    d=8'b11010101;#5
    clk = 0;#5
    clk = 1;#5
    $finish;
    end

endmodule
