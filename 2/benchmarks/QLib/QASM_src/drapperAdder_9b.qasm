# Circuit generated by QLib
# Draper's Adder
# arXiv: quant-ph/0008033
# 9 bit quantum adder

.qubit 19

qubit a0
qubit b0
qubit a1
qubit b1
qubit a2
qubit b2
qubit a3
qubit b3
qubit a4
qubit b4
qubit a5
qubit b5
qubit a6
qubit b6
qubit a7
qubit b7
qubit a8
qubit b8
qubit b9

.begin
H q0
CP b1 b0 2
CP b2 b0 1
CP b3 b0 0.5
CP b4 b0 0.25
CP b5 b0 0.125
CP b6 b0 0.0625
CP b7 b0 0.03125
CP b8 b0 0.015625
H q1
CP b2 b1 2
CP b3 b1 1
CP b4 b1 0.5
CP b5 b1 0.25
CP b6 b1 0.125
CP b7 b1 0.0625
CP b8 b1 0.03125
H q2
CP b3 b2 2
CP b4 b2 1
CP b5 b2 0.5
CP b6 b2 0.25
CP b7 b2 0.125
CP b8 b2 0.0625
H q3
CP b4 b3 2
CP b5 b3 1
CP b6 b3 0.5
CP b7 b3 0.25
CP b8 b3 0.125
H q4
CP b5 b4 2
CP b6 b4 1
CP b7 b4 0.5
CP b8 b4 0.25
H q5
CP b6 b5 2
CP b7 b5 1
CP b8 b5 0.5
H q6
CP b7 b6 2
CP b8 b6 1
H q7
CP b8 b7 2
H q8
H q9
CP a8 b9 2
CP a7 b9 1
CP a6 b9 0.5
CP a5 b9 0.25
CP a4 b9 0.125
CP a3 b9 0.0625
CP a2 b9 0.03125
CP a1 b9 0.015625
CP a0 b9 0.0078125
CP a8 b8 4
CP a7 b8 2
CP a6 b8 1
CP a5 b8 0.5
CP a4 b8 0.25
CP a3 b8 0.125
CP a2 b8 0.0625
CP a1 b8 0.03125
CP a0 b8 0.015625
CP a7 b7 4
CP a6 b7 2
CP a5 b7 1
CP a4 b7 0.5
CP a3 b7 0.25
CP a2 b7 0.125
CP a1 b7 0.0625
CP a0 b7 0.03125
CP a6 b6 4
CP a5 b6 2
CP a4 b6 1
CP a3 b6 0.5
CP a2 b6 0.25
CP a1 b6 0.125
CP a0 b6 0.0625
CP a5 b5 4
CP a4 b5 2
CP a3 b5 1
CP a2 b5 0.5
CP a1 b5 0.25
CP a0 b5 0.125
CP a4 b4 4
CP a3 b4 2
CP a2 b4 1
CP a1 b4 0.5
CP a0 b4 0.25
CP a3 b3 4
CP a2 b3 2
CP a1 b3 1
CP a0 b3 0.5
CP a2 b2 4
CP a1 b2 2
CP a0 b2 1
CP a1 b1 4
CP a0 b1 2
CP a0 b0 4
H b0
CP b1 b0 -2
CP b2 b0 -1
CP b3 b0 -0.5
CP b4 b0 -0.25
CP b5 b0 -0.125
CP b6 b0 -0.0625
CP b7 b0 -0.03125
CP b8 b0 -0.015625
H b1
CP b2 b1 -2
CP b3 b1 -1
CP b4 b1 -0.5
CP b5 b1 -0.25
CP b6 b1 -0.125
CP b7 b1 -0.0625
CP b8 b1 -0.03125
H b2
CP b3 b2 -2
CP b4 b2 -1
CP b5 b2 -0.5
CP b6 b2 -0.25
CP b7 b2 -0.125
CP b8 b2 -0.0625
H b3
CP b4 b3 -2
CP b5 b3 -1
CP b6 b3 -0.5
CP b7 b3 -0.25
CP b8 b3 -0.125
H b4
CP b5 b4 -2
CP b6 b4 -1
CP b7 b4 -0.5
CP b8 b4 -0.25
H b5
CP b6 b5 -2
CP b7 b5 -1
CP b8 b5 -0.5
H b6
CP b7 b6 -2
CP b8 b6 -1
H b7
CP b8 b7 -2
H b8
H b9
.end
