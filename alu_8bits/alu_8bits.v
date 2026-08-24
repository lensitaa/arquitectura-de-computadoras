module alu_8bit (
    input [7:0] a, [7:0] b, [2:0] opcode,
    output reg [7:0]result, reg [3:0] flag
);
    
    always @() begin
        case (opcode)
            3'b000: result = a+b;
            3'b001: result = a-b;
            3'b010: result = a&b;
            3'b011: result = a|b;
            3'b100: result = a^b;
            default: 
        endcase
    end
endmodule