/*
This file provides the mapping from the Wokwi modules to Verilog HDL.

It's only needed for Wokwi designs.
*/

`define default_netname none


module buffer_cell (
    input wire in,
    output wire out
    );
    assign out = in;
endmodule


module and_cell (
    input wire a,
    input wire b,
    output wire out
    );

    assign out = a & b;
endmodule

module dff_cell (
    input wire clk,
    input wire d,
    output reg q,
    output wire notq
    );

    assign notq = !q;
    always @(posedge clk)
        q <= d;

endmodule



    always @(posedge clk or posedge s or posedge r) begin
        
            q <= d;
    end
endmodule
