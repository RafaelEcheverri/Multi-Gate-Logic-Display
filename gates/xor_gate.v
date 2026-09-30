`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////
// Module Name: xor_gate
// Description: 2-input XOR gate implemented in Verilog.
// Target Device: Xilinx Artix-7 (Basys3 board)
//////////////////////////////////////////////////////////////////////////////

module xor_gate(
    input Inp_1, Inp_2,
    output Outp
    );

    assign Outp = (Inp_1 | Inp_2) & ~(Inp_1 & Inp_2);

endmodule
