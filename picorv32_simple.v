module picorv32_simple(
    input clk,
    input reset,
    output reg [31:0] pc,
    output reg [31:0] instruction_count
);

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        pc <= 0;
        instruction_count <= 0;
    end
    else
    begin
        pc <= pc + 4;
        instruction_count <= instruction_count + 1;
    end
end

endmodule