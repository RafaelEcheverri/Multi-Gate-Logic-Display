`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////
// Module Name: not_gate
// Description: 1-input NOT (inverter) gate implemented in Verilog.
// Target Device: Xilinx Artix-7 (Basys3 board)
//////////////////////////////////////////////////////////////////////////////

module not_gate(
    input Inp_1,
    output Outp
    );

    assign Outp = ~Inp_1;

endmodule
