`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////
// Module Name: logic_gate_display
// Description: Top-level module combining AND, NAND, OR, XOR, and NOT gates.
//              Takes 2 shared inputs and drives 5 separate LED outputs,
//              displaying the result of all five gates simultaneously.
//
//              Outp1 = AND  (Inp_1 & Inp_2)
//              Outp2 = NAND ~(Inp_1 & Inp_2)
//              Outp3 = OR   (Inp_1 | Inp_2)
//              Outp4 = XOR  (Inp_1 | Inp_2) & ~(Inp_1 & Inp_2)
//              Outp5 = NOT  (~Inp_1)   -- uses only Inp_1
//
// Target Device: Xilinx Artix-7 (Basys3 board)
//////////////////////////////////////////////////////////////////////////////

module logic_gate_display(
    input Inp_1, Inp_2,
    output Outp1, Outp2, Outp3, Outp4, Outp5
    );

    assign Outp1 = Inp_1 & Inp_2;                      // AND
    assign Outp2 = ~(Inp_1 & Inp_2);                    // NAND
    assign Outp3 = Inp_1 | Inp_2;                       // OR
    assign Outp4 = (Inp_1 | Inp_2) & ~(Inp_1 & Inp_2);  // XOR
    assign Outp5 = ~(Inp_1);                            // NOT

endmodule
