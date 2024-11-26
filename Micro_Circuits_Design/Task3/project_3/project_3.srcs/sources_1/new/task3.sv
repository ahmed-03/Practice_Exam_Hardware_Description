`timescale 1ns / 1ps

module task3(
    a,
    b,
    cin,
    c,
    s
    );
    
    input [7:0]a;
    input [7:0]b;  
    input cin;
    output[7:0]s;
    output c;
    
    logic cout_temp;

    adder4bit a1(
    .a(a[3:0]),
    .b(b[3:0]),
    .cin(cin),
    .c(cout_temp),
    .s(s[3:0])
    );
    
    adder4bit a2(
    .a(a[7:4]),
    .b(b[7:4]),
    .cin(cout_temp),
    .c(c),
    .s(s[7:4])
    );
    

    
endmodule
