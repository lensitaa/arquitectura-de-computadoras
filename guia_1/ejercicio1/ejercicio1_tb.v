`timescale 1ns/1ps
`include "ejercicio1.v"

module ejercicio1_tb;
    reg a,b,cin;
    wire s, cout;

    
    fulladder uud(
        .a(a),
        .b(b),
        .cin(cin),
        .s(s),
        .cout(cout)
    );

    initial begin
        $dumpfile("ejercicio1.vcd");
        $dumpvars(0, ejercicio1_tb);
        $monitor("At time %0t: a=%b, b=%b, cin=%b -> sum=%b, carry=%b", $time, a, b, cin, s, cout);


        //every variable value combination
        a=0; b=0; cin=0; #10;
        a=0; b=0; cin=1; #10;
        a=0; b=1; cin=0; #10;
        a=0; b=1; cin=1; #10;
        a=1; b=0; cin=0; #10;
        a=1; b=0; cin=1; #10;
        a=1; b=1; cin=0; #10;
        a=1; b=1; cin=1; #10;

        $finish;
    end
endmodule