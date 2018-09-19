/* ACM Class System (I) 2018 Fall Assignment 1 
 *
 * Part I: Write an adder in Verilog
 *
 * Implement your naive adder here
 * 
 * GUIDE:
 *   1. Create a RTL project in Vivado
 *   2. Put this file into `Sources'
 *   3. Put `test_adder.v' into `Simulation Sources'
 *   4. Run Behavioral Simulation
 *   5. Make sure to run at least 100 steps during the simulation (usually 100ns)
 *   6. You can see the results in `Tcl console'
 *
 */

module adder(
	// TODO: Write the ports of this module here
	//
	// Hint: 
	//   The module needs 4 ports, 
	//     the first 2 ports input two 16-bit unsigned numbers as the addends
	//     the third port outputs a 16-bit unsigned number as the sum
	//	   the forth port outputs a 1-bit carry flag as the overflow
	// 
	input wire [15:0] a,
	input wire [15:0] b,
	output wire [15:0] answer,
	output wire carry
);
    //
    wire h_ad1_cout;
    half_adder h_ad1 (
    .a(a[0]),
    .b(b[0]),
    .ans(answer[0]),
    .carry_out(h_ad1_cout)
    );
    //
    wire a_ad1_cout;
    all_adder a_ad1(
    .a(a[1]),
    .b(b[1]),
    .carry_in(h_ad1_cout),
    .ans(answer[1]),
    .carry_out(a_ad1_cout)
    );
    //
    wire a_ad2_cout;
    all_adder a_ad2(
    .a(a[2]),
    .b(b[2]),
    .carry_in(a_ad1_cout),
    .ans(answer[2]),
    .carry_out(a_ad2_cout)
    );
    //
    wire a_ad3_cout;
    all_adder a_ad3(
    .a(a[3]),
    .b(b[3]),
    .carry_in(a_ad2_cout),
    .ans(answer[3]),
    .carry_out(a_ad3_cout)
    );
    //
    wire a_ad4_cout;
    all_adder a_ad4(
    .a(a[4]),
    .b(b[4]),
    .carry_in(a_ad3_cout),
    .ans(answer[4]),
    .carry_out(a_ad4_cout)
    );
    //
    wire a_ad5_cout;
    all_adder a_ad5(
    .a(a[5]),
    .b(b[5]),
    .carry_in(a_ad4_cout),
    .ans(answer[5]),
    .carry_out(a_ad5_cout)
    );
    //
    wire a_ad6_cout;
    all_adder a_ad6(
    .a(a[6]),
    .b(b[6]),
    .carry_in(a_ad5_cout),
    .ans(answer[6]),
    .carry_out(a_ad6_cout)
    );
    //
    wire a_ad7_cout;
    all_adder a_ad7(
    .a(a[7]),
    .b(b[7]),
    .carry_in(a_ad6_cout),
    .ans(answer[7]),
    .carry_out(a_ad7_cout)
    );
    //
    wire a_ad8_cout;
    all_adder a_ad8(
    .a(a[8]),
    .b(b[8]),
    .carry_in(a_ad7_cout),
    .ans(answer[8]),
    .carry_out(a_ad8_cout)
    );
    //
    wire a_ad9_cout;
    all_adder a_ad9(
    .a(a[9]),
    .b(b[9]),
    .carry_in(a_ad8_cout),
    .ans(answer[9]),
    .carry_out(a_ad9_cout)
    );
    //
    wire a_ad10_cout;
    all_adder a_ad10(
    .a(a[10]),
    .b(b[10]),
    .carry_in(a_ad9_cout),
    .ans(answer[10]),
    .carry_out(a_ad10_cout)
    );
    //
    wire a_ad11_cout;
    all_adder a_ad11(
    .a(a[11]),
    .b(b[11]),
    .carry_in(a_ad10_cout),
    .ans(answer[11]),
    .carry_out(a_ad11_cout)
    );
    //
    wire a_ad12_cout;
    all_adder a_ad12(
    .a(a[12]),
    .b(b[12]),
    .carry_in(a_ad11_cout),
    .ans(answer[12]),
    .carry_out(a_ad12_cout)
    );
    //
    wire a_ad13_cout;
    all_adder a_ad13(
    .a(a[13]),
    .b(b[13]),
    .carry_in(a_ad12_cout),
    .ans(answer[13]),
    .carry_out(a_ad13_cout)
    );
    //
    wire a_ad14_cout;
    all_adder a_ad14(
    .a(a[14]),
    .b(b[14]),
    .carry_in(a_ad13_cout),
    .ans(answer[14]),
    .carry_out(a_ad14_cout)
    );
    //
    all_adder a_ad15(
    .a(a[15]),
    .b(b[15]),
    .carry_in(a_ad14_cout),
    .ans(answer[15]),
    .carry_out(carry)
    );
    
	// TODO: Implement this module here
	// Hint: You can use generate statement in Verilog to create multiple instantiations of modules and code.
	
endmodule
