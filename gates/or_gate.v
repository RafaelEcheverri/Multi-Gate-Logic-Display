`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////
// Module Name: or_gate
// Description: 2-input OR gate implemented in Verilog.
// Target Device: Xilinx Artix-7 (Basys3 board)
//////////////////////////////////////////////////////////////////////////////

module or_gate(
    input Inp_1, Inp_2,
    output Outp
    );

    assign Outp = Inp_1 | Inp_2;

endmodule
