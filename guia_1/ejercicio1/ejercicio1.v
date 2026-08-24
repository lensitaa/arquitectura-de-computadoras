//Diseñe un módulo en Verilog que implemente un sumador completo de un bit con entradas a,b y
//cin(carry in), y salidas sum y cout (carry out). Describir y simular con Icarus Verilog + GTKWave.

module fulladder (
    input wire a, b, cin,
    output wire s, cout
);

assign s = a ^ b ^ cin;
assign cout = (a & b) | cin & (a ^ b);

endmodule
