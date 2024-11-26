`timescale 1ns / 1ps

module counter(
    input clk,rst_n,
    output logic [13:0]q
    );

    always @(posedge clk, negedge rst_n) begin
        if (~rst_n) q <= 0;
        else
        q <= q + 1;
    end 

endmodule
