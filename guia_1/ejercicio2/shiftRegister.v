// Diseña un registro de desplazamiento de 4 bits con entrada serial serial_in, señal de reloj clk, y
// salida en paralelo q[3:0]. En cada flanco positivo de clk debe desplazarse el dato serial hacia la
// derecha.

module flipflop_d (
    input d, clk,
    output q
);
    
    always @(posedge clk) begin
        q <= d;
    end
endmodule

module shiftRegister (
    input d, clk,
    output reg [3:0] q
);

    flipflop_d ffd3 (.d(d), .clk(clk), .q(q[3]));

    flipflop_d ffd2 (.d(q[3]), .clk(clk), .q(q[2]));
    flipflop_d ffd1 (.d(q[2]), .clk(clk), .q(q[1]));
    flipflop_d ffd0 (.d(q[1]), .clk(clk), .q(q[0]));

    wire q1, q2, q3;
endmodule