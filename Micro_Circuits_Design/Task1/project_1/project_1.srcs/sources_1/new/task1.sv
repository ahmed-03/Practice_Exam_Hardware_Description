`timescale 1ns / 1ps

module task1(
    clk,
    rst_n,
    d,
    overflow,
    q
);
    input clk, rst_n;
    input [7:0]d;
    output logic overflow;
    output logic q;
    
    logic dd;
    assign dd = d[7];
    always @(posedge clk, negedge rst_n) begin
    
    if (~rst_n) q <= 0;
    else
    q <= d[7] + 1;
    end
    
    assign overflow = ((~dd)&q);

endmodule
