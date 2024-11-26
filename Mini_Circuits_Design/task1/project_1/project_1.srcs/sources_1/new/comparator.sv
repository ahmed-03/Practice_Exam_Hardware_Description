`timescale 1ns / 1ps

module comparator(
    input [13:0]a,
    input [13:0]b,
    output logic q
    );

    always @(*) begin
        if(a == b)
         q = 1;
        else
         q = 0;
    end 

endmodule
