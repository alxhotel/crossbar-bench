# Circuit generated by QLib
# Multiplier circuit
.qubit 46
qubit b0
qubit b1
qubit b2
qubit b3
qubit b4
qubit b5
qubit b6
qubit b7
qubit b8
qubit a0
qubit a1
qubit a2
qubit a3
qubit a4
qubit a5
qubit a6
qubit a7
qubit a8
qubit a9
qubit a10
qubit a11
qubit a12
qubit a13
qubit a14
qubit a15
qubit a16
qubit a17
qubit out0
qubit out1
qubit out2
qubit out3
qubit out4
qubit out5
qubit out6
qubit out7
qubit out8
qubit out9
qubit out10
qubit out11
qubit out12
qubit out13
qubit out14
qubit out15
qubit out16
qubit out17
qubit anc0
Prep0 a9
Prep0 a10
Prep0 a11
Prep0 a12
Prep0 a13
Prep0 a14
Prep0 a15
Prep0 a16
Prep0 a17
Prep0 out0
Prep0 out1
Prep0 out2
Prep0 out3
Prep0 out4
Prep0 out5
Prep0 out6
Prep0 out7
Prep0 out8
Prep0 out9
Prep0 out10
Prep0 out11
Prep0 out12
Prep0 out13
Prep0 out14
Prep0 out15
Prep0 out16
Prep0 out17
Prep0 anc0

.begin
Toffoli b0 a0 out0
CNOT a0 anc0
Toffoli anc0 out0 a0
Toffoli b0 a1 out1
CNOT a1 a0
Toffoli a0 out1 a1
Toffoli b0 a2 out2
CNOT a2 a1
Toffoli a1 out2 a2
Toffoli b0 a3 out3
CNOT a3 a2
Toffoli a2 out3 a3
Toffoli b0 a4 out4
CNOT a4 a3
Toffoli a3 out4 a4
Toffoli b0 a5 out5
CNOT a5 a4
Toffoli a4 out5 a5
Toffoli b0 a6 out6
CNOT a6 a5
Toffoli a5 out6 a6
Toffoli b0 a7 out7
CNOT a7 a6
Toffoli a6 out7 a7
Toffoli b0 a8 out8
CNOT a8 a7
Toffoli a7 out8 a8
Toffoli b0 a8 out9
Toffoli a7 out8 a8
CNOT a8 a7
Toffoli b0 a7 out8
Toffoli a6 out7 a7
CNOT a7 a6
Toffoli b0 a6 out7
Toffoli a5 out6 a6
CNOT a6 a5
Toffoli b0 a5 out6
Toffoli a4 out5 a5
CNOT a5 a4
Toffoli b0 a4 out5
Toffoli a3 out4 a4
CNOT a4 a3
Toffoli b0 a3 out4
Toffoli a2 out3 a3
CNOT a3 a2
Toffoli b0 a2 out3
Toffoli a1 out2 a2
CNOT a2 a1
Toffoli b0 a1 out2
Toffoli a0 out1 a1
CNOT a1 a0
Toffoli b0 a0 out1
Toffoli anc0 out0 a0 
CNOT a0 anc0
Toffoli b0 anc0 out0 
SWAP a17 a16
SWAP a16 a15
SWAP a15 a14
SWAP a14 a13
SWAP a13 a12
SWAP a12 a11
SWAP a11 a10
SWAP a10 a9
SWAP a9 a8
SWAP a8 a7
SWAP a7 a6
SWAP a6 a5
SWAP a5 a4
SWAP a4 a3
SWAP a3 a2
SWAP a2 a1
SWAP a1 a0
Toffoli b1 a0 out0
CNOT a0 anc0
Toffoli anc0 out0 a0
Toffoli b1 a1 out1
CNOT a1 a0
Toffoli a0 out1 a1
Toffoli b1 a2 out2
CNOT a2 a1
Toffoli a1 out2 a2
Toffoli b1 a3 out3
CNOT a3 a2
Toffoli a2 out3 a3
Toffoli b1 a4 out4
CNOT a4 a3
Toffoli a3 out4 a4
Toffoli b1 a5 out5
CNOT a5 a4
Toffoli a4 out5 a5
Toffoli b1 a6 out6
CNOT a6 a5
Toffoli a5 out6 a6
Toffoli b1 a7 out7
CNOT a7 a6
Toffoli a6 out7 a7
Toffoli b1 a8 out8
CNOT a8 a7
Toffoli a7 out8 a8
Toffoli b1 a9 out9
CNOT a9 a8
Toffoli a8 out9 a9
Toffoli b1 a9 out10
Toffoli a8 out9 a9
CNOT a9 a8
Toffoli b1 a8 out9
Toffoli a7 out8 a8
CNOT a8 a7
Toffoli b1 a7 out8
Toffoli a6 out7 a7
CNOT a7 a6
Toffoli b1 a6 out7
Toffoli a5 out6 a6
CNOT a6 a5
Toffoli b1 a5 out6
Toffoli a4 out5 a5
CNOT a5 a4
Toffoli b1 a4 out5
Toffoli a3 out4 a4
CNOT a4 a3
Toffoli b1 a3 out4
Toffoli a2 out3 a3
CNOT a3 a2
Toffoli b1 a2 out3
Toffoli a1 out2 a2
CNOT a2 a1
Toffoli b1 a1 out2
Toffoli a0 out1 a1
CNOT a1 a0
Toffoli b1 a0 out1
Toffoli anc0 out0 a0 
CNOT a0 anc0
Toffoli b1 anc0 out0 
SWAP a17 a16
SWAP a16 a15
SWAP a15 a14
SWAP a14 a13
SWAP a13 a12
SWAP a12 a11
SWAP a11 a10
SWAP a10 a9
SWAP a9 a8
SWAP a8 a7
SWAP a7 a6
SWAP a6 a5
SWAP a5 a4
SWAP a4 a3
SWAP a3 a2
SWAP a2 a1
SWAP a1 a0
Toffoli b2 a0 out0
CNOT a0 anc0
Toffoli anc0 out0 a0
Toffoli b2 a1 out1
CNOT a1 a0
Toffoli a0 out1 a1
Toffoli b2 a2 out2
CNOT a2 a1
Toffoli a1 out2 a2
Toffoli b2 a3 out3
CNOT a3 a2
Toffoli a2 out3 a3
Toffoli b2 a4 out4
CNOT a4 a3
Toffoli a3 out4 a4
Toffoli b2 a5 out5
CNOT a5 a4
Toffoli a4 out5 a5
Toffoli b2 a6 out6
CNOT a6 a5
Toffoli a5 out6 a6
Toffoli b2 a7 out7
CNOT a7 a6
Toffoli a6 out7 a7
Toffoli b2 a8 out8
CNOT a8 a7
Toffoli a7 out8 a8
Toffoli b2 a9 out9
CNOT a9 a8
Toffoli a8 out9 a9
Toffoli b2 a10 out10
CNOT a10 a9
Toffoli a9 out10 a10
Toffoli b2 a10 out11
Toffoli a9 out10 a10
CNOT a10 a9
Toffoli b2 a9 out10
Toffoli a8 out9 a9
CNOT a9 a8
Toffoli b2 a8 out9
Toffoli a7 out8 a8
CNOT a8 a7
Toffoli b2 a7 out8
Toffoli a6 out7 a7
CNOT a7 a6
Toffoli b2 a6 out7
Toffoli a5 out6 a6
CNOT a6 a5
Toffoli b2 a5 out6
Toffoli a4 out5 a5
CNOT a5 a4
Toffoli b2 a4 out5
Toffoli a3 out4 a4
CNOT a4 a3
Toffoli b2 a3 out4
Toffoli a2 out3 a3
CNOT a3 a2
Toffoli b2 a2 out3
Toffoli a1 out2 a2
CNOT a2 a1
Toffoli b2 a1 out2
Toffoli a0 out1 a1
CNOT a1 a0
Toffoli b2 a0 out1
Toffoli anc0 out0 a0 
CNOT a0 anc0
Toffoli b2 anc0 out0 
SWAP a17 a16
SWAP a16 a15
SWAP a15 a14
SWAP a14 a13
SWAP a13 a12
SWAP a12 a11
SWAP a11 a10
SWAP a10 a9
SWAP a9 a8
SWAP a8 a7
SWAP a7 a6
SWAP a6 a5
SWAP a5 a4
SWAP a4 a3
SWAP a3 a2
SWAP a2 a1
SWAP a1 a0
Toffoli b3 a0 out0
CNOT a0 anc0
Toffoli anc0 out0 a0
Toffoli b3 a1 out1
CNOT a1 a0
Toffoli a0 out1 a1
Toffoli b3 a2 out2
CNOT a2 a1
Toffoli a1 out2 a2
Toffoli b3 a3 out3
CNOT a3 a2
Toffoli a2 out3 a3
Toffoli b3 a4 out4
CNOT a4 a3
Toffoli a3 out4 a4
Toffoli b3 a5 out5
CNOT a5 a4
Toffoli a4 out5 a5
Toffoli b3 a6 out6
CNOT a6 a5
Toffoli a5 out6 a6
Toffoli b3 a7 out7
CNOT a7 a6
Toffoli a6 out7 a7
Toffoli b3 a8 out8
CNOT a8 a7
Toffoli a7 out8 a8
Toffoli b3 a9 out9
CNOT a9 a8
Toffoli a8 out9 a9
Toffoli b3 a10 out10
CNOT a10 a9
Toffoli a9 out10 a10
Toffoli b3 a11 out11
CNOT a11 a10
Toffoli a10 out11 a11
Toffoli b3 a11 out12
Toffoli a10 out11 a11
CNOT a11 a10
Toffoli b3 a10 out11
Toffoli a9 out10 a10
CNOT a10 a9
Toffoli b3 a9 out10
Toffoli a8 out9 a9
CNOT a9 a8
Toffoli b3 a8 out9
Toffoli a7 out8 a8
CNOT a8 a7
Toffoli b3 a7 out8
Toffoli a6 out7 a7
CNOT a7 a6
Toffoli b3 a6 out7
Toffoli a5 out6 a6
CNOT a6 a5
Toffoli b3 a5 out6
Toffoli a4 out5 a5
CNOT a5 a4
Toffoli b3 a4 out5
Toffoli a3 out4 a4
CNOT a4 a3
Toffoli b3 a3 out4
Toffoli a2 out3 a3
CNOT a3 a2
Toffoli b3 a2 out3
Toffoli a1 out2 a2
CNOT a2 a1
Toffoli b3 a1 out2
Toffoli a0 out1 a1
CNOT a1 a0
Toffoli b3 a0 out1
Toffoli anc0 out0 a0 
CNOT a0 anc0
Toffoli b3 anc0 out0 
SWAP a17 a16
SWAP a16 a15
SWAP a15 a14
SWAP a14 a13
SWAP a13 a12
SWAP a12 a11
SWAP a11 a10
SWAP a10 a9
SWAP a9 a8
SWAP a8 a7
SWAP a7 a6
SWAP a6 a5
SWAP a5 a4
SWAP a4 a3
SWAP a3 a2
SWAP a2 a1
SWAP a1 a0
Toffoli b4 a0 out0
CNOT a0 anc0
Toffoli anc0 out0 a0
Toffoli b4 a1 out1
CNOT a1 a0
Toffoli a0 out1 a1
Toffoli b4 a2 out2
CNOT a2 a1
Toffoli a1 out2 a2
Toffoli b4 a3 out3
CNOT a3 a2
Toffoli a2 out3 a3
Toffoli b4 a4 out4
CNOT a4 a3
Toffoli a3 out4 a4
Toffoli b4 a5 out5
CNOT a5 a4
Toffoli a4 out5 a5
Toffoli b4 a6 out6
CNOT a6 a5
Toffoli a5 out6 a6
Toffoli b4 a7 out7
CNOT a7 a6
Toffoli a6 out7 a7
Toffoli b4 a8 out8
CNOT a8 a7
Toffoli a7 out8 a8
Toffoli b4 a9 out9
CNOT a9 a8
Toffoli a8 out9 a9
Toffoli b4 a10 out10
CNOT a10 a9
Toffoli a9 out10 a10
Toffoli b4 a11 out11
CNOT a11 a10
Toffoli a10 out11 a11
Toffoli b4 a12 out12
CNOT a12 a11
Toffoli a11 out12 a12
Toffoli b4 a12 out13
Toffoli a11 out12 a12
CNOT a12 a11
Toffoli b4 a11 out12
Toffoli a10 out11 a11
CNOT a11 a10
Toffoli b4 a10 out11
Toffoli a9 out10 a10
CNOT a10 a9
Toffoli b4 a9 out10
Toffoli a8 out9 a9
CNOT a9 a8
Toffoli b4 a8 out9
Toffoli a7 out8 a8
CNOT a8 a7
Toffoli b4 a7 out8
Toffoli a6 out7 a7
CNOT a7 a6
Toffoli b4 a6 out7
Toffoli a5 out6 a6
CNOT a6 a5
Toffoli b4 a5 out6
Toffoli a4 out5 a5
CNOT a5 a4
Toffoli b4 a4 out5
Toffoli a3 out4 a4
CNOT a4 a3
Toffoli b4 a3 out4
Toffoli a2 out3 a3
CNOT a3 a2
Toffoli b4 a2 out3
Toffoli a1 out2 a2
CNOT a2 a1
Toffoli b4 a1 out2
Toffoli a0 out1 a1
CNOT a1 a0
Toffoli b4 a0 out1
Toffoli anc0 out0 a0 
CNOT a0 anc0
Toffoli b4 anc0 out0 
SWAP a17 a16
SWAP a16 a15
SWAP a15 a14
SWAP a14 a13
SWAP a13 a12
SWAP a12 a11
SWAP a11 a10
SWAP a10 a9
SWAP a9 a8
SWAP a8 a7
SWAP a7 a6
SWAP a6 a5
SWAP a5 a4
SWAP a4 a3
SWAP a3 a2
SWAP a2 a1
SWAP a1 a0
Toffoli b5 a0 out0
CNOT a0 anc0
Toffoli anc0 out0 a0
Toffoli b5 a1 out1
CNOT a1 a0
Toffoli a0 out1 a1
Toffoli b5 a2 out2
CNOT a2 a1
Toffoli a1 out2 a2
Toffoli b5 a3 out3
CNOT a3 a2
Toffoli a2 out3 a3
Toffoli b5 a4 out4
CNOT a4 a3
Toffoli a3 out4 a4
Toffoli b5 a5 out5
CNOT a5 a4
Toffoli a4 out5 a5
Toffoli b5 a6 out6
CNOT a6 a5
Toffoli a5 out6 a6
Toffoli b5 a7 out7
CNOT a7 a6
Toffoli a6 out7 a7
Toffoli b5 a8 out8
CNOT a8 a7
Toffoli a7 out8 a8
Toffoli b5 a9 out9
CNOT a9 a8
Toffoli a8 out9 a9
Toffoli b5 a10 out10
CNOT a10 a9
Toffoli a9 out10 a10
Toffoli b5 a11 out11
CNOT a11 a10
Toffoli a10 out11 a11
Toffoli b5 a12 out12
CNOT a12 a11
Toffoli a11 out12 a12
Toffoli b5 a13 out13
CNOT a13 a12
Toffoli a12 out13 a13
Toffoli b5 a13 out14
Toffoli a12 out13 a13
CNOT a13 a12
Toffoli b5 a12 out13
Toffoli a11 out12 a12
CNOT a12 a11
Toffoli b5 a11 out12
Toffoli a10 out11 a11
CNOT a11 a10
Toffoli b5 a10 out11
Toffoli a9 out10 a10
CNOT a10 a9
Toffoli b5 a9 out10
Toffoli a8 out9 a9
CNOT a9 a8
Toffoli b5 a8 out9
Toffoli a7 out8 a8
CNOT a8 a7
Toffoli b5 a7 out8
Toffoli a6 out7 a7
CNOT a7 a6
Toffoli b5 a6 out7
Toffoli a5 out6 a6
CNOT a6 a5
Toffoli b5 a5 out6
Toffoli a4 out5 a5
CNOT a5 a4
Toffoli b5 a4 out5
Toffoli a3 out4 a4
CNOT a4 a3
Toffoli b5 a3 out4
Toffoli a2 out3 a3
CNOT a3 a2
Toffoli b5 a2 out3
Toffoli a1 out2 a2
CNOT a2 a1
Toffoli b5 a1 out2
Toffoli a0 out1 a1
CNOT a1 a0
Toffoli b5 a0 out1
Toffoli anc0 out0 a0 
CNOT a0 anc0
Toffoli b5 anc0 out0 
SWAP a17 a16
SWAP a16 a15
SWAP a15 a14
SWAP a14 a13
SWAP a13 a12
SWAP a12 a11
SWAP a11 a10
SWAP a10 a9
SWAP a9 a8
SWAP a8 a7
SWAP a7 a6
SWAP a6 a5
SWAP a5 a4
SWAP a4 a3
SWAP a3 a2
SWAP a2 a1
SWAP a1 a0
Toffoli b6 a0 out0
CNOT a0 anc0
Toffoli anc0 out0 a0
Toffoli b6 a1 out1
CNOT a1 a0
Toffoli a0 out1 a1
Toffoli b6 a2 out2
CNOT a2 a1
Toffoli a1 out2 a2
Toffoli b6 a3 out3
CNOT a3 a2
Toffoli a2 out3 a3
Toffoli b6 a4 out4
CNOT a4 a3
Toffoli a3 out4 a4
Toffoli b6 a5 out5
CNOT a5 a4
Toffoli a4 out5 a5
Toffoli b6 a6 out6
CNOT a6 a5
Toffoli a5 out6 a6
Toffoli b6 a7 out7
CNOT a7 a6
Toffoli a6 out7 a7
Toffoli b6 a8 out8
CNOT a8 a7
Toffoli a7 out8 a8
Toffoli b6 a9 out9
CNOT a9 a8
Toffoli a8 out9 a9
Toffoli b6 a10 out10
CNOT a10 a9
Toffoli a9 out10 a10
Toffoli b6 a11 out11
CNOT a11 a10
Toffoli a10 out11 a11
Toffoli b6 a12 out12
CNOT a12 a11
Toffoli a11 out12 a12
Toffoli b6 a13 out13
CNOT a13 a12
Toffoli a12 out13 a13
Toffoli b6 a14 out14
CNOT a14 a13
Toffoli a13 out14 a14
Toffoli b6 a14 out15
Toffoli a13 out14 a14
CNOT a14 a13
Toffoli b6 a13 out14
Toffoli a12 out13 a13
CNOT a13 a12
Toffoli b6 a12 out13
Toffoli a11 out12 a12
CNOT a12 a11
Toffoli b6 a11 out12
Toffoli a10 out11 a11
CNOT a11 a10
Toffoli b6 a10 out11
Toffoli a9 out10 a10
CNOT a10 a9
Toffoli b6 a9 out10
Toffoli a8 out9 a9
CNOT a9 a8
Toffoli b6 a8 out9
Toffoli a7 out8 a8
CNOT a8 a7
Toffoli b6 a7 out8
Toffoli a6 out7 a7
CNOT a7 a6
Toffoli b6 a6 out7
Toffoli a5 out6 a6
CNOT a6 a5
Toffoli b6 a5 out6
Toffoli a4 out5 a5
CNOT a5 a4
Toffoli b6 a4 out5
Toffoli a3 out4 a4
CNOT a4 a3
Toffoli b6 a3 out4
Toffoli a2 out3 a3
CNOT a3 a2
Toffoli b6 a2 out3
Toffoli a1 out2 a2
CNOT a2 a1
Toffoli b6 a1 out2
Toffoli a0 out1 a1
CNOT a1 a0
Toffoli b6 a0 out1
Toffoli anc0 out0 a0 
CNOT a0 anc0
Toffoli b6 anc0 out0 
SWAP a17 a16
SWAP a16 a15
SWAP a15 a14
SWAP a14 a13
SWAP a13 a12
SWAP a12 a11
SWAP a11 a10
SWAP a10 a9
SWAP a9 a8
SWAP a8 a7
SWAP a7 a6
SWAP a6 a5
SWAP a5 a4
SWAP a4 a3
SWAP a3 a2
SWAP a2 a1
SWAP a1 a0
Toffoli b7 a0 out0
CNOT a0 anc0
Toffoli anc0 out0 a0
Toffoli b7 a1 out1
CNOT a1 a0
Toffoli a0 out1 a1
Toffoli b7 a2 out2
CNOT a2 a1
Toffoli a1 out2 a2
Toffoli b7 a3 out3
CNOT a3 a2
Toffoli a2 out3 a3
Toffoli b7 a4 out4
CNOT a4 a3
Toffoli a3 out4 a4
Toffoli b7 a5 out5
CNOT a5 a4
Toffoli a4 out5 a5
Toffoli b7 a6 out6
CNOT a6 a5
Toffoli a5 out6 a6
Toffoli b7 a7 out7
CNOT a7 a6
Toffoli a6 out7 a7
Toffoli b7 a8 out8
CNOT a8 a7
Toffoli a7 out8 a8
Toffoli b7 a9 out9
CNOT a9 a8
Toffoli a8 out9 a9
Toffoli b7 a10 out10
CNOT a10 a9
Toffoli a9 out10 a10
Toffoli b7 a11 out11
CNOT a11 a10
Toffoli a10 out11 a11
Toffoli b7 a12 out12
CNOT a12 a11
Toffoli a11 out12 a12
Toffoli b7 a13 out13
CNOT a13 a12
Toffoli a12 out13 a13
Toffoli b7 a14 out14
CNOT a14 a13
Toffoli a13 out14 a14
Toffoli b7 a15 out15
CNOT a15 a14
Toffoli a14 out15 a15
Toffoli b7 a15 out16
Toffoli a14 out15 a15
CNOT a15 a14
Toffoli b7 a14 out15
Toffoli a13 out14 a14
CNOT a14 a13
Toffoli b7 a13 out14
Toffoli a12 out13 a13
CNOT a13 a12
Toffoli b7 a12 out13
Toffoli a11 out12 a12
CNOT a12 a11
Toffoli b7 a11 out12
Toffoli a10 out11 a11
CNOT a11 a10
Toffoli b7 a10 out11
Toffoli a9 out10 a10
CNOT a10 a9
Toffoli b7 a9 out10
Toffoli a8 out9 a9
CNOT a9 a8
Toffoli b7 a8 out9
Toffoli a7 out8 a8
CNOT a8 a7
Toffoli b7 a7 out8
Toffoli a6 out7 a7
CNOT a7 a6
Toffoli b7 a6 out7
Toffoli a5 out6 a6
CNOT a6 a5
Toffoli b7 a5 out6
Toffoli a4 out5 a5
CNOT a5 a4
Toffoli b7 a4 out5
Toffoli a3 out4 a4
CNOT a4 a3
Toffoli b7 a3 out4
Toffoli a2 out3 a3
CNOT a3 a2
Toffoli b7 a2 out3
Toffoli a1 out2 a2
CNOT a2 a1
Toffoli b7 a1 out2
Toffoli a0 out1 a1
CNOT a1 a0
Toffoli b7 a0 out1
Toffoli anc0 out0 a0 
CNOT a0 anc0
Toffoli b7 anc0 out0 
SWAP a17 a16
SWAP a16 a15
SWAP a15 a14
SWAP a14 a13
SWAP a13 a12
SWAP a12 a11
SWAP a11 a10
SWAP a10 a9
SWAP a9 a8
SWAP a8 a7
SWAP a7 a6
SWAP a6 a5
SWAP a5 a4
SWAP a4 a3
SWAP a3 a2
SWAP a2 a1
SWAP a1 a0
Toffoli b8 a0 out0
CNOT a0 anc0
Toffoli anc0 out0 a0
Toffoli b8 a1 out1
CNOT a1 a0
Toffoli a0 out1 a1
Toffoli b8 a2 out2
CNOT a2 a1
Toffoli a1 out2 a2
Toffoli b8 a3 out3
CNOT a3 a2
Toffoli a2 out3 a3
Toffoli b8 a4 out4
CNOT a4 a3
Toffoli a3 out4 a4
Toffoli b8 a5 out5
CNOT a5 a4
Toffoli a4 out5 a5
Toffoli b8 a6 out6
CNOT a6 a5
Toffoli a5 out6 a6
Toffoli b8 a7 out7
CNOT a7 a6
Toffoli a6 out7 a7
Toffoli b8 a8 out8
CNOT a8 a7
Toffoli a7 out8 a8
Toffoli b8 a9 out9
CNOT a9 a8
Toffoli a8 out9 a9
Toffoli b8 a10 out10
CNOT a10 a9
Toffoli a9 out10 a10
Toffoli b8 a11 out11
CNOT a11 a10
Toffoli a10 out11 a11
Toffoli b8 a12 out12
CNOT a12 a11
Toffoli a11 out12 a12
Toffoli b8 a13 out13
CNOT a13 a12
Toffoli a12 out13 a13
Toffoli b8 a14 out14
CNOT a14 a13
Toffoli a13 out14 a14
Toffoli b8 a15 out15
CNOT a15 a14
Toffoli a14 out15 a15
Toffoli b8 a16 out16
CNOT a16 a15
Toffoli a15 out16 a16
Toffoli b8 a16 out17
Toffoli a15 out16 a16
CNOT a16 a15
Toffoli b8 a15 out16
Toffoli a14 out15 a15
CNOT a15 a14
Toffoli b8 a14 out15
Toffoli a13 out14 a14
CNOT a14 a13
Toffoli b8 a13 out14
Toffoli a12 out13 a13
CNOT a13 a12
Toffoli b8 a12 out13
Toffoli a11 out12 a12
CNOT a12 a11
Toffoli b8 a11 out12
Toffoli a10 out11 a11
CNOT a11 a10
Toffoli b8 a10 out11
Toffoli a9 out10 a10
CNOT a10 a9
Toffoli b8 a9 out10
Toffoli a8 out9 a9
CNOT a9 a8
Toffoli b8 a8 out9
Toffoli a7 out8 a8
CNOT a8 a7
Toffoli b8 a7 out8
Toffoli a6 out7 a7
CNOT a7 a6
Toffoli b8 a6 out7
Toffoli a5 out6 a6
CNOT a6 a5
Toffoli b8 a5 out6
Toffoli a4 out5 a5
CNOT a5 a4
Toffoli b8 a4 out5
Toffoli a3 out4 a4
CNOT a4 a3
Toffoli b8 a3 out4
Toffoli a2 out3 a3
CNOT a3 a2
Toffoli b8 a2 out3
Toffoli a1 out2 a2
CNOT a2 a1
Toffoli b8 a1 out2
Toffoli a0 out1 a1
CNOT a1 a0
Toffoli b8 a0 out1
Toffoli anc0 out0 a0 
CNOT a0 anc0
Toffoli b8 anc0 out0 
SWAP a0 a1
SWAP a1 a2
SWAP a2 a3
SWAP a3 a4
SWAP a4 a5
SWAP a5 a6
SWAP a6 a7
SWAP a7 a8
SWAP a8 a9
SWAP a9 a10
SWAP a10 a11
SWAP a11 a12
SWAP a12 a13
SWAP a13 a14
SWAP a14 a15
SWAP a15 a16
SWAP a16 a17
SWAP a0 a1
SWAP a1 a2
SWAP a2 a3
SWAP a3 a4
SWAP a4 a5
SWAP a5 a6
SWAP a6 a7
SWAP a7 a8
SWAP a8 a9
SWAP a9 a10
SWAP a10 a11
SWAP a11 a12
SWAP a12 a13
SWAP a13 a14
SWAP a14 a15
SWAP a15 a16
SWAP a16 a17
SWAP a0 a1
SWAP a1 a2
SWAP a2 a3
SWAP a3 a4
SWAP a4 a5
SWAP a5 a6
SWAP a6 a7
SWAP a7 a8
SWAP a8 a9
SWAP a9 a10
SWAP a10 a11
SWAP a11 a12
SWAP a12 a13
SWAP a13 a14
SWAP a14 a15
SWAP a15 a16
SWAP a16 a17
SWAP a0 a1
SWAP a1 a2
SWAP a2 a3
SWAP a3 a4
SWAP a4 a5
SWAP a5 a6
SWAP a6 a7
SWAP a7 a8
SWAP a8 a9
SWAP a9 a10
SWAP a10 a11
SWAP a11 a12
SWAP a12 a13
SWAP a13 a14
SWAP a14 a15
SWAP a15 a16
SWAP a16 a17
SWAP a0 a1
SWAP a1 a2
SWAP a2 a3
SWAP a3 a4
SWAP a4 a5
SWAP a5 a6
SWAP a6 a7
SWAP a7 a8
SWAP a8 a9
SWAP a9 a10
SWAP a10 a11
SWAP a11 a12
SWAP a12 a13
SWAP a13 a14
SWAP a14 a15
SWAP a15 a16
SWAP a16 a17
SWAP a0 a1
SWAP a1 a2
SWAP a2 a3
SWAP a3 a4
SWAP a4 a5
SWAP a5 a6
SWAP a6 a7
SWAP a7 a8
SWAP a8 a9
SWAP a9 a10
SWAP a10 a11
SWAP a11 a12
SWAP a12 a13
SWAP a13 a14
SWAP a14 a15
SWAP a15 a16
SWAP a16 a17
SWAP a0 a1
SWAP a1 a2
SWAP a2 a3
SWAP a3 a4
SWAP a4 a5
SWAP a5 a6
SWAP a6 a7
SWAP a7 a8
SWAP a8 a9
SWAP a9 a10
SWAP a10 a11
SWAP a11 a12
SWAP a12 a13
SWAP a13 a14
SWAP a14 a15
SWAP a15 a16
SWAP a16 a17
SWAP a0 a1
SWAP a1 a2
SWAP a2 a3
SWAP a3 a4
SWAP a4 a5
SWAP a5 a6
SWAP a6 a7
SWAP a7 a8
SWAP a8 a9
SWAP a9 a10
SWAP a10 a11
SWAP a11 a12
SWAP a12 a13
SWAP a13 a14
SWAP a14 a15
SWAP a15 a16
SWAP a16 a17
.end
