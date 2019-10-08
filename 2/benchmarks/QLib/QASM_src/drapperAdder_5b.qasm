# Circuit generated by QLib
# Draper's Adder
# arXiv: quant-ph/0008033
# 5 bit quantum adder

.qubit 11

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
qubit b5

.begin
H q0
CP b1 b0 2
CP b2 b0 1
CP b3 b0 0.5
CP b4 b0 0.25
H q1
CP b2 b1 2
CP b3 b1 1
CP b4 b1 0.5
H q2
CP b3 b2 2
CP b4 b2 1
H q3
CP b4 b3 2
H q4
H q5
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
H b1
CP b2 b1 -2
CP b3 b1 -1
CP b4 b1 -0.5
H b2
CP b3 b2 -2
CP b4 b2 -1
H b3
CP b4 b3 -2
H b4
H b5
.end
