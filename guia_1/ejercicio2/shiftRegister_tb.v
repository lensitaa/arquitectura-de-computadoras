`timescale 1ps/1ps
`include "shiftRegister.v"

module shiftRegister_tb;
    reg d,clk;
    wire q;

    reg datoEnviar[3:0];
    integer i;


    shiftRegister uud(
        .d(d),
        .clk(clk),
        .q(q)
    )

    always #10 clk = ~clk;

    initial begin
        $dumpfile("shiftRegister.vcd");
        $dumpvars(0, shiftRegister_tb);
        $monitor("At time %0t: d=%b, clk=%b -> q=%b", $time, d,clk,q);
    
    clk = 0;
    
    end
endmodule