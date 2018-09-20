`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/19 21:49:07
// Design Name: 
// Module Name: bit4_adder
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
/////////////////////////////////////////////////////////////////////////////////
module bit4_adder(
    input [3:0] a,
    input [3:0] b,
    input carry_in,
    output [3:0] ans,
    output carry_out
    );
    wire [3:0] g , p;
    //
    assign g = a & b;
    assign p = a ^ b;
    assign ans[0] = p[0] ^ carry_in;
    assign ans[1] = p[1] ^ (g[0] | (carry_in & p[0]));
    assign ans[2] = p[2] ^ (g[1] | (g[0] & p[1]) | (carry_in & p[0] & p[1]));
    assign ans[3] = p[3] ^ (g[2] | (g[1] & p[2]) | (g[0] & p[1] & p[2]) | (carry_in & p[0] & p[1] & p[2]));
    assign carry_out = g[3] | (g[2] & p[3]) | (g[1] & p[2] & p[3]) | (g[0] & p[1] & p[2] & p[3]) | (carry_in & p[0] & p[1] & p[2] & p[3]);
endmodule

module bit4_adder_h(
    input [3:0] a,
    input [3:0] b,
    output [3:0] ans,
    output carry_out
    );
    wire [3:0] g , p , c;
    //
    assign g = a & b;
    assign p = a ^ b;
    assign ans[0] = p[0];
    assign ans[1] = p[1] ^ g[0];
    assign ans[2] = p[2] ^ (g[1] | (g[0] & p[1]));
    assign ans[3] = p[3] ^ (g[2] | (g[1] & p[2]) | (g[0] & p[1] & p[2]));
    assign carry_out = g[3] | (g[2] & p[3]) | (g[1] & p[2] & p[3]) | (g[0] & p[1] & p[2] & p[3]);
endmodule
