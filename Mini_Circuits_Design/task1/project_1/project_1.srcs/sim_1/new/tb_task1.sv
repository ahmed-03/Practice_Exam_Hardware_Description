`timescale 1ns / 1ps

module tb_task1;
    logic clki;
    logic resetn_i;
    logic trigger_o;

    task1 x(
    .clki(clki),
    .resetn_i(resetn_i),
    .trigger_o(trigger_o)
    );

    initial begin 
    
    clki = 0;
    resetn_i=0; #5
    resetn_i=1; #5
    #1000;
    $finish;
    end
    
    always #5 clki = ~clki;
endmodule
