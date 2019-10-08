# Circuit generated by QLib
# Cuccaro's Adder
# arXiv:quant-ph/0410184v1 
# 10 bit quantum adder

.qubit 22

qubit c0
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
qubit a9
qubit b9
qubit z

.begin
CNOT a0 b0
CNOT a0 c0
Toffoli c0 b0 a0
CNOT a1 b1
CNOT a1 a0
Toffoli a0 b1 a1
CNOT a2 b2
CNOT a2 a1
Toffoli a1 b2 a2
CNOT a3 b3
CNOT a3 a2
Toffoli a2 b3 a3
CNOT a4 b4
CNOT a4 a3
Toffoli a3 b4 a4
CNOT a5 b5
CNOT a5 a4
Toffoli a4 b5 a5
CNOT a6 b6
CNOT a6 a5
Toffoli a5 b6 a6
CNOT a7 b7
CNOT a7 a6
Toffoli a6 b7 a7
CNOT a8 b8
CNOT a8 a7
Toffoli a7 b8 a8
CNOT a9 b9
CNOT a9 a8
Toffoli a8 b9 a9
CNOT a9 z
Toffoli a8 b9 a9
CNOT a9 a8
CNOT a8 b9
Toffoli a7 b8 a8
CNOT a8 a7
CNOT a7 b8
Toffoli a6 b7 a7
CNOT a7 a6
CNOT a6 b7
Toffoli a5 b6 a6
CNOT a6 a5
CNOT a5 b6
Toffoli a4 b5 a5
CNOT a5 a4
CNOT a4 b5
Toffoli a3 b4 a4
CNOT a4 a3
CNOT a3 b4
Toffoli a2 b3 a3
CNOT a3 a2
CNOT a2 b3
Toffoli a1 b2 a2
CNOT a2 a1
CNOT a1 b2
Toffoli a0 b1 a1
CNOT a1 a0
CNOT a0 b1
Toffoli c0 b0 a0
CNOT a0 c0
CNOT c0 b0
.end
