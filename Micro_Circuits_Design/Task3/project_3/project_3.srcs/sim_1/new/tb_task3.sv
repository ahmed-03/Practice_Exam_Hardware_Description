`timescale 1ns / 1ps

module tb_task3;

    logic [7:0]a;
    logic [7:0]b;
    logic cin;
    logic c;
    logic [7:0]s;
    
    task3 aa(
    .a(a),
    .b(b),
    .cin(cin),
    .c(c),
    .s(s)
    );
    
    initial begin 
    cin=1'b0;
    a=8'b0000_0001;
    b=8'b0000_0000;#1

    cin=1'b1;
    a=8'b1100_0100;
    b=8'b0000_0000;#1
    
    cin=1'b0;
    a=8'b1100_0100;
    b=8'b1111_1111;#1
    
    $finish;
    end
endmodule
