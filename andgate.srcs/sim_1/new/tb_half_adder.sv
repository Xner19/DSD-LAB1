`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 01:59:49 PM
// Design Name: 
// Module Name: tb_half_adder
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


module tb_half_adder;
    logic a, b;
    logic S, C;

    
    half_adder a1 (
        .a(a),
        .b(b),
        .S(S),
        .C(C)
    );

   
    initial begin 
       
        a = 1'b0; b = 1'b0; #5;
        $display("a=%b, b=%b, S=%b, C=%b", a, b, S, C);
        
        a = 1'b0; b = 1'b1; #5;
        $display("a=%b, b=%b, S=%b, C=%b", a, b, S, C);

        a = 1'b1; b = 1'b0; #5;
        $display("a=%b, b=%b, S=%b, C=%b", a, b, S, C);

        a = 1'b1; b = 1'b1; #5;
        $display("a=%b, b=%b, S=%b, C=%b", a, b, S, C);

 
    end
endmodule

