`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 12:59:26 PM
// Design Name: 
// Module Name: testbench_andgate
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module tb_andgate;
// Declare testbench signals
logic a, b;
logic f;
// Instantiate the andgate module
and_gate dut(
.a(a),
.b(b),
.f(f)
);
// Testbench logic
initial begin
$display("Time\t a\t b\t f");
$display("------------------------");
a = 0; b = 0; #10;
$display("%0t\t %b\t %b\t %b", $time, a, b, f);
a = 0; b = 1; #10;
$display("%0t\t %b\t %b\t %b", $time, a, b, f);
a = 1; b = 0; #10;
$display("%0t\t %b\t %b\t %b", $time, a, b, f);
a = 1; b = 1; #10;
$display("%0t\t %b\t %b\t %b", $time, a, b, f);
// End simulation
$finish;
end
endmodule