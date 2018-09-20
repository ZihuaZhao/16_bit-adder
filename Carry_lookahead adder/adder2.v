/* ACM Class System (I) 2018 Fall Assignment 1 
 *
 * Part I: Write an adder in Verilog
 *
 * Implement your Carry Look Ahead Adder here
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
    input [15:0] a,
    input [15:0] b,
    output [15:0] ans,
    output carry_out
);
    wire [2 : 0] c;
    bit4_adder_h ad1(
        .a(a[3:0]),
        .b(b[3:0]),
        .ans(ans[3:0]),
        .carry_out(c[0])
    );
    
    bit4_adder ad2(
        .a(a[7:4]),
        .b(b[7:4]),
        .carry_in(c[0]),
        .ans(ans[7:4]),
        .carry_out(c[1])
    );
    
    bit4_adder ad3(
        .a(a[11:8]),
        .b(b[11:8]),
        .carry_in(c[1]),
        .ans(ans[11:8]),
        .carry_out(c[2])
    );
    
    bit4_adder ad4(
        .a(a[15:12]),
        .b(b[15:12]),
        .carry_in(c[2]),
        .ans(ans[15:12]),
        .carry_out(carry_out)
    );
	 
endmodule