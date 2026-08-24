UVM Verification Template

A clean, minimal UVM (Universal Verification Methodology) testbench template. 

I extracted this from a custom RTL project I wrote from scratch, simply because setting up the UVM architecture and TLM connections over and over again is time-consuming. This repository serves as a starting point for verifying new hardware designs without having to write the boilerplate code from zero.

--- What's included
The template contains a complete standard UVM hierarchy:
- `testbase.svh` & `env.svh`
- Active agent (`driver`, `sequencer`, `monitor`)
- Passive components (`scoreboard`, `coverage_collector`)
- Base sequence and sequence item templates
- Top module and interface

All UVM components are already registered with the factory and the TLM analysis ports are connected between the monitor, scoreboard, and coverage collector.

--- How to use it
1. Clone the repository into your project folder.
2. Search and replace the `name_` prefix in all file names and class names with your specific module name.
3. Define your DUT signals inside `interface.sv`.
4. Add your variables and constraints in the sequence item.
5. Fill in the `run_phase` logic for your driver and monitor.

--- Requirements
You will need a SystemVerilog simulator that supports the UVM library.
