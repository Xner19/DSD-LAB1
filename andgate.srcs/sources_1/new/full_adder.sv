`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 02:22:45 PM
// Design Name: 
// Module Name: full_adder
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

module full_adder (
    input logic A,
    input logic B,
    input logic Cin,
    output logic Cout,
    output logic S
);
    logic xor1, and1, and2;

    assign xor1 = A ^ B;
    assign and1 = A & B;
    assign S = xor1 ^ Cin;
    assign and2 = Cin & xor1;
    assign Cout = and1 | and2;
endmodule
