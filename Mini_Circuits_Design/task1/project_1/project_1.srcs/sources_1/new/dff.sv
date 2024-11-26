`timescale 1ns / 1ps

module dff(
    input clk,rst_n,en,
    input d,
    output logic q
    );

    always @(posedge clk, negedge rst_n) begin
        if (~rst_n) q <= 0;
        else if (en)
        q <= d;
        else q <=q ;
    end 

endmodule
