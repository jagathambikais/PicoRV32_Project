module control_unit(
    input [6:0] opcode,
    output reg reg_write,
    output reg alu_src
);

always @(*)
begin
    case(opcode)
        7'b0110011:
        begin
            reg_write = 1;
            alu_src = 0;
        end

        7'b0010011:
        begin
            reg_write = 1;
            alu_src = 1;
        end

        default:
        begin
            reg_write = 0;
            alu_src = 0;
        end
    endcase
end

endmodule