`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 02:41:24 PM
// Design Name: 
// Module Name: tb_full_adder
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

module tb_full_adder;
    logic A, B, Cin;
    logic Cout, S;

    full_adder dut (.A(A),.B(B),.Cin(Cin),.Cout(Cout),.S(S));
    initial begin
        
        A = 0; B = 0; Cin = 0; #5;
        A = 0; B = 0; Cin = 1; #5;
        A = 0; B = 1; Cin = 0; #5;
        A = 0; B = 1; Cin = 1; #5;
        A = 1; B = 0; Cin = 0; #5;
        A = 1; B = 0; Cin = 1; #5;
        A = 1; B = 1; Cin = 0; #5;
        A = 1; B = 1; Cin = 1; #5;
    end
endmodule
