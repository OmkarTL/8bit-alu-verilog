module alu_8bit(
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] SEL,
    output reg [7:0] Y,
    output reg Carry,
    output Zero
);
always @(*) begin
    Carry = 1'b0;
    case(SEL)

        // Addition
        3'b000:
        begin
            {Carry, Y} = A + B;
        end

        // Subtraction
        3'b001:
        begin
            {Carry, Y} = A - B;
        end

        // AND
        3'b010:
        begin
            Y = A & B;
        end

        // OR
        3'b011:
        begin
            Y = A | B;
        end

        // XOR
        3'b100:
        begin
            Y = A ^ B;
        end

        // NOT
        3'b101:
        begin
            Y = ~A;
        end

        // Left Shift
        3'b110:
        begin
            Y = A << 1;
        end

        // Right Shift
        3'b111:
        begin
            Y = A >> 1;
        end

    endcase

end
assign Zero = (Y == 8'b00000000);
endmodule