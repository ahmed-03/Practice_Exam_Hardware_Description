`timescale 1ns / 1ps

module task2(
    clk,
    rst_n,
    d,
    out,
    q
    );
    input clk,rst_n;
    input logic [7:0]d;
    output logic [7:0]q;
    output logic out;
    
    always @(posedge clk, negedge rst_n) begin
    
    if (~rst_n) q <= 0;
    else
    q <= d;
    end
    
    assign out = ^(q[7:0]);
        
endmodule
