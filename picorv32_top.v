module picorv32_top(
    input clk,
    input reset
);

wire [31:0] alu_result;
wire [31:0] rdata1;
wire [31:0] rdata2;

picorv32_simple cpu(
    .clk(clk),
    .reset(reset),
    .alu_result(alu_result),
    .rdata1(rdata1),
    .rdata2(rdata2)
);

endmodule