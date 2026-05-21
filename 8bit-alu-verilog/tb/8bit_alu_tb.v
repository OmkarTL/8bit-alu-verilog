module alu_8bit_tb;

reg [7:0] A;
reg [7:0] B;
reg [2:0] SEL;

wire [7:0] Y;
wire Carry;
wire Zero;

alu_8bit uut (
    .A(A),
    .B(B),
    .SEL(SEL),
    .Y(Y),
    .Carry(Carry),
    .Zero(Zero)
);

initial begin

    A = 8'b00001111;
    B = 8'b00000011;

    // ADD
    SEL = 3'b000;
    #10;

    // SUB
    SEL = 3'b001;
    #10;

    // AND
    SEL = 3'b010;
    #10;

    // OR
    SEL = 3'b011;
    #10;

    // XOR
    SEL = 3'b100;
    #10;

    // NOT
    SEL = 3'b101;
    #10;

    // LEFT SHIFT
    SEL = 3'b110;
    #10;

    // RIGHT SHIFT
    SEL = 3'b111;
    #10;

    $finish;

end

endmodule