`timescale 1ns / 1ps

module task1(
    input clki,
    input resetn_i,
    output trigger_o
    );

    logic w1,w2,w3;
    logic [13:0] w4;
    logic equal1 ,equal2;
    logic w5;

    assign w1 = ~equal2 & resetn_i;
    assign w3 = ~w2; 
    assign w5= equal1 | equal2;
    assign trigger_o= w2;

    counter a1(
    .clk(clki),
    .rst_n(w1),
    .q(w4)
    );


    comparator aa1(
    .a(w4),
    .b(14'd499),
    .q(equal1)
    );

    comparator aa2(
    .a(w4),
    .b(14'd9999),
    .q(equal2)
    );

    dff a2(
    .clk(clki),
    .rst_n(resetn_i),
    .en(w5),
    .d(w3),
    .q(w2)
    );


endmodule
