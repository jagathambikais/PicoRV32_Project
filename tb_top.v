`timescale 1ns/1ps

module tb_top;

reg clk;
reg reset;

picorv32_top DUT(
    .clk(clk),
    .reset(reset)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;

    #20 reset = 0;

    #200;

    $finish;
end

endmodule