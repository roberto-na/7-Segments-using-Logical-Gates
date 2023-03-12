# 7 Segments using Logic Gates
VHDL code that drives a seven segment display using logic gates  input ports B3, B2, B1, B0, and an output port Dot along with seven segment display output ports A, B, C, D, E, F, and G.

The architecture "Behavioral" describes the behavior of the function. In this case, it implements a combinational logic circuit that maps the four binary inputs (B3, B2, B1, B0) to the corresponding segment display outputs (A, B, C, D, E, F, G). The logic is implemented using Boolean equations for each output.

The DOT output is tied to a constant value of '1', indicating that the decimal point of the seven segment display should be turned on.

