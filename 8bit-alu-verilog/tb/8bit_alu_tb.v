module alu_8bit_tb;

reg [7:0] A;
reg [7:0] B;
reg [2:0] SEL;

wire [7:0] Y;
wire Carry;
wire Zero;

integer errors;

alu_8bit uut (
    .A(A),
    .B(B),
    .SEL(SEL),
    .Y(Y),
    .Carry(Carry),
    .Zero(Zero)
);

task check_output;
    input [2:0] sel_value;
    input [7:0] expected_y;
    input expected_carry;
    input expected_zero;
    input [80*8:1] operation_name;
    begin
        SEL = sel_value;
        #10;

        if (Y !== expected_y || Carry !== expected_carry || Zero !== expected_zero) begin
            $display("FAIL: %0s SEL=%b expected Y=%h Carry=%b Zero=%b got Y=%h Carry=%b Zero=%b",
                     operation_name, sel_value, expected_y, expected_carry, expected_zero,
                     Y, Carry, Zero);
            errors = errors + 1;
        end else begin
            $display("PASS: %0s SEL=%b Y=%h Carry=%b Zero=%b",
                     operation_name, sel_value, Y, Carry, Zero);
        end
    end
endtask

initial begin
    errors = 0;
    A = 8'b00001111;
    B = 8'b00000011;

    check_output(3'b000, 8'h12, 1'b0, 1'b0, "ADD");
    check_output(3'b001, 8'h0c, 1'b0, 1'b0, "SUB");
    check_output(3'b010, 8'h03, 1'b0, 1'b0, "AND");
    check_output(3'b011, 8'h0f, 1'b0, 1'b0, "OR");
    check_output(3'b100, 8'h0c, 1'b0, 1'b0, "XOR");
    check_output(3'b101, 8'hf0, 1'b0, 1'b0, "NOT");
    check_output(3'b110, 8'h1e, 1'b0, 1'b0, "LEFT SHIFT");
    check_output(3'b111, 8'h07, 1'b0, 1'b0, "RIGHT SHIFT");

    A = 8'h0f;
    B = 8'hf0;
    check_output(3'b010, 8'h00, 1'b0, 1'b1, "AND WITH ZERO FLAG");

    if (errors == 0) begin
        $display("All ALU test cases passed.");
        $finish;
    end else begin
        $display("%0d ALU test case(s) failed.", errors);
        $fatal(1, "ALU testbench failed.");
    end

end

endmodule
