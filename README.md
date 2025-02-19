# VHDL Race Condition Example

This repository demonstrates a subtle race condition that can occur in VHDL code when capturing asynchronous inputs.  The example showcases a simple entity that attempts to register an input signal. However, due to timing constraints, there's a risk of capturing an unstable value, resulting in unpredictable output. 

The `bug.vhdl` file contains the flawed code exhibiting the race condition. The `bugSolution.vhdl` demonstrates a solution using a synchronizer to eliminate the risk.  See the detailed explanation in the solution file.

## How to reproduce

1.  Simulate `bug.vhdl` with a testbench that rapidly changes `data_in` around the clock's rising edge.  Observe the potential instability in `data_out`.
2. Compare this to the results of simulating `bugSolution.vhdl` under the same conditions.