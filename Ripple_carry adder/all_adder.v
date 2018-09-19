`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/18 16:40:54
// Design Name: 
// Module Name: all_adder
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

module all_adder(
    input wire a,
    input wire b,
    input wire carry_in,
    output wire ans,
    output wire carry_out 
 );
    wire S1 , S2 , S3 , S4;
    xor x1 (S1 , a , b);
    xor x2 (ans , S1 , carry_in);
    and a1 (S2 , a , b);
    and a2 (S3 , b , carry_in);
    and a3 (S4 , a , carry_in);
    or O (carry_out , S2 , S3 , S4);

endmodule
