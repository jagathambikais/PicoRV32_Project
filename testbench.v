`timescale 1ns/1ps

module testbench;

reg clk;
reg reset;

wire [31:0] pc;
wire [31:0] instruction_count;

picorv32_simple uut(
    .clk(clk),
    .reset(reset),
    .pc(pc),
    .instruction_count(instruction_count)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;

    #20;
    reset = 0;

    #200;

    $finish;
end

initial
begin
    $dumpfile("picorv32.vcd");
    $dumpvars(0,testbench);
end

initial
begin
    $monitor("Time=%0t PC=%d Instructions=%d",
              $time, pc, instruction_count);
end

endmodule