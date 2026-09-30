# Multi-Gate Logic Display — Verilog / Xilinx Artix-7 FPGA

Verilog implementations of five fundamental logic gates (AND, NAND, OR, XOR, NOT), each individually synthesized and tested on a Xilinx Artix-7 FPGA (Basys3 board), plus a combined top-level module that drives all five gate outputs simultaneously from a shared pair of inputs.

## What it does

- Each gate takes 1–2 physical switch inputs and drives a single LED output on the FPGA board.
- `top_module/logic_gate_display.v` combines all five gates into one design: 2 shared input switches drive 5 separate LED outputs, so every gate's result is visible at once — built and verified on real hardware.

## Gates implemented

| Gate | Logic Expression |
|------|-------------------|
| AND  | `Inp_1 & Inp_2` |
| NAND | `~(Inp_1 & Inp_2)` |
| OR   | `Inp_1 \| Inp_2` |
| XOR  | `(Inp_1 \| Inp_2) & ~(Inp_1 & Inp_2)` |
| NOT  | `~Inp_1` |

## Tools & Hardware

- **Language:** Verilog
- **Toolchain:** Xilinx Vivado
- **Target board:** Xilinx Artix-7 (Basys3 FPGA dev board)

## Repository structure

```
logic-gates-fpga/
├── gates/                  # Individual gate modules
├── constraints/             # Pin constraint (.xdc) files for each individual gate
└── top_module/              # Combined 2-input / 5-output display module
```

## How to run

1. Open Xilinx Vivado and create a new project targeting an Artix-7 part (e.g. `xc7a35tcpg236-1` for Basys3).
2. Add the desired gate file(s) from `gates/` as design sources.
3. Add the matching `.xdc` file from `constraints/` as a constraints file.
4. Run Synthesis → Implementation → Generate Bitstream.
5. Program the FPGA and toggle the on-board switches to see the gate's output reflected on the corresponding LED.

For the combined display, use `top_module/logic_gate_display.v` with `top_module/logic_gate_display.xdc`.

## Background

Built as part of a digital logic design lab exercise, then extended into a combined multi-gate display to compare all five gates' behavior side by side on real hardware.
