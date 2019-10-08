# Circuit generated by QLib
# Draper's Adder
# arXiv: quant-ph/0008033
# 24 bit quantum adder

.qubit 49

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
qubit a10
qubit b10
qubit a11
qubit b11
qubit a12
qubit b12
qubit a13
qubit b13
qubit a14
qubit b14
qubit a15
qubit b15
qubit a16
qubit b16
qubit a17
qubit b17
qubit a18
qubit b18
qubit a19
qubit b19
qubit a20
qubit b20
qubit a21
qubit b21
qubit a22
qubit b22
qubit a23
qubit b23
qubit b24

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
CP b9 b0 0.0078125
CP b10 b0 0.00390625
CP b11 b0 0.00195312
CP b12 b0 0.000976562
CP b13 b0 0.000488281
CP b14 b0 0.000244141
CP b15 b0 0.00012207
CP b16 b0 6.10352e-05
CP b17 b0 3.05176e-05
CP b18 b0 1.52588e-05
CP b19 b0 7.62939e-06
CP b20 b0 3.8147e-06
CP b21 b0 1.90735e-06
CP b22 b0 9.53674e-07
CP b23 b0 4.76837e-07
H q1
CP b2 b1 2
CP b3 b1 1
CP b4 b1 0.5
CP b5 b1 0.25
CP b6 b1 0.125
CP b7 b1 0.0625
CP b8 b1 0.03125
CP b9 b1 0.015625
CP b10 b1 0.0078125
CP b11 b1 0.00390625
CP b12 b1 0.00195312
CP b13 b1 0.000976562
CP b14 b1 0.000488281
CP b15 b1 0.000244141
CP b16 b1 0.00012207
CP b17 b1 6.10352e-05
CP b18 b1 3.05176e-05
CP b19 b1 1.52588e-05
CP b20 b1 7.62939e-06
CP b21 b1 3.8147e-06
CP b22 b1 1.90735e-06
CP b23 b1 9.53674e-07
H q2
CP b3 b2 2
CP b4 b2 1
CP b5 b2 0.5
CP b6 b2 0.25
CP b7 b2 0.125
CP b8 b2 0.0625
CP b9 b2 0.03125
CP b10 b2 0.015625
CP b11 b2 0.0078125
CP b12 b2 0.00390625
CP b13 b2 0.00195312
CP b14 b2 0.000976562
CP b15 b2 0.000488281
CP b16 b2 0.000244141
CP b17 b2 0.00012207
CP b18 b2 6.10352e-05
CP b19 b2 3.05176e-05
CP b20 b2 1.52588e-05
CP b21 b2 7.62939e-06
CP b22 b2 3.8147e-06
CP b23 b2 1.90735e-06
H q3
CP b4 b3 2
CP b5 b3 1
CP b6 b3 0.5
CP b7 b3 0.25
CP b8 b3 0.125
CP b9 b3 0.0625
CP b10 b3 0.03125
CP b11 b3 0.015625
CP b12 b3 0.0078125
CP b13 b3 0.00390625
CP b14 b3 0.00195312
CP b15 b3 0.000976562
CP b16 b3 0.000488281
CP b17 b3 0.000244141
CP b18 b3 0.00012207
CP b19 b3 6.10352e-05
CP b20 b3 3.05176e-05
CP b21 b3 1.52588e-05
CP b22 b3 7.62939e-06
CP b23 b3 3.8147e-06
H q4
CP b5 b4 2
CP b6 b4 1
CP b7 b4 0.5
CP b8 b4 0.25
CP b9 b4 0.125
CP b10 b4 0.0625
CP b11 b4 0.03125
CP b12 b4 0.015625
CP b13 b4 0.0078125
CP b14 b4 0.00390625
CP b15 b4 0.00195312
CP b16 b4 0.000976562
CP b17 b4 0.000488281
CP b18 b4 0.000244141
CP b19 b4 0.00012207
CP b20 b4 6.10352e-05
CP b21 b4 3.05176e-05
CP b22 b4 1.52588e-05
CP b23 b4 7.62939e-06
H q5
CP b6 b5 2
CP b7 b5 1
CP b8 b5 0.5
CP b9 b5 0.25
CP b10 b5 0.125
CP b11 b5 0.0625
CP b12 b5 0.03125
CP b13 b5 0.015625
CP b14 b5 0.0078125
CP b15 b5 0.00390625
CP b16 b5 0.00195312
CP b17 b5 0.000976562
CP b18 b5 0.000488281
CP b19 b5 0.000244141
CP b20 b5 0.00012207
CP b21 b5 6.10352e-05
CP b22 b5 3.05176e-05
CP b23 b5 1.52588e-05
H q6
CP b7 b6 2
CP b8 b6 1
CP b9 b6 0.5
CP b10 b6 0.25
CP b11 b6 0.125
CP b12 b6 0.0625
CP b13 b6 0.03125
CP b14 b6 0.015625
CP b15 b6 0.0078125
CP b16 b6 0.00390625
CP b17 b6 0.00195312
CP b18 b6 0.000976562
CP b19 b6 0.000488281
CP b20 b6 0.000244141
CP b21 b6 0.00012207
CP b22 b6 6.10352e-05
CP b23 b6 3.05176e-05
H q7
CP b8 b7 2
CP b9 b7 1
CP b10 b7 0.5
CP b11 b7 0.25
CP b12 b7 0.125
CP b13 b7 0.0625
CP b14 b7 0.03125
CP b15 b7 0.015625
CP b16 b7 0.0078125
CP b17 b7 0.00390625
CP b18 b7 0.00195312
CP b19 b7 0.000976562
CP b20 b7 0.000488281
CP b21 b7 0.000244141
CP b22 b7 0.00012207
CP b23 b7 6.10352e-05
H q8
CP b9 b8 2
CP b10 b8 1
CP b11 b8 0.5
CP b12 b8 0.25
CP b13 b8 0.125
CP b14 b8 0.0625
CP b15 b8 0.03125
CP b16 b8 0.015625
CP b17 b8 0.0078125
CP b18 b8 0.00390625
CP b19 b8 0.00195312
CP b20 b8 0.000976562
CP b21 b8 0.000488281
CP b22 b8 0.000244141
CP b23 b8 0.00012207
H q9
CP b10 b9 2
CP b11 b9 1
CP b12 b9 0.5
CP b13 b9 0.25
CP b14 b9 0.125
CP b15 b9 0.0625
CP b16 b9 0.03125
CP b17 b9 0.015625
CP b18 b9 0.0078125
CP b19 b9 0.00390625
CP b20 b9 0.00195312
CP b21 b9 0.000976562
CP b22 b9 0.000488281
CP b23 b9 0.000244141
H q10
CP b11 b10 2
CP b12 b10 1
CP b13 b10 0.5
CP b14 b10 0.25
CP b15 b10 0.125
CP b16 b10 0.0625
CP b17 b10 0.03125
CP b18 b10 0.015625
CP b19 b10 0.0078125
CP b20 b10 0.00390625
CP b21 b10 0.00195312
CP b22 b10 0.000976562
CP b23 b10 0.000488281
H q11
CP b12 b11 2
CP b13 b11 1
CP b14 b11 0.5
CP b15 b11 0.25
CP b16 b11 0.125
CP b17 b11 0.0625
CP b18 b11 0.03125
CP b19 b11 0.015625
CP b20 b11 0.0078125
CP b21 b11 0.00390625
CP b22 b11 0.00195312
CP b23 b11 0.000976562
H q12
CP b13 b12 2
CP b14 b12 1
CP b15 b12 0.5
CP b16 b12 0.25
CP b17 b12 0.125
CP b18 b12 0.0625
CP b19 b12 0.03125
CP b20 b12 0.015625
CP b21 b12 0.0078125
CP b22 b12 0.00390625
CP b23 b12 0.00195312
H q13
CP b14 b13 2
CP b15 b13 1
CP b16 b13 0.5
CP b17 b13 0.25
CP b18 b13 0.125
CP b19 b13 0.0625
CP b20 b13 0.03125
CP b21 b13 0.015625
CP b22 b13 0.0078125
CP b23 b13 0.00390625
H q14
CP b15 b14 2
CP b16 b14 1
CP b17 b14 0.5
CP b18 b14 0.25
CP b19 b14 0.125
CP b20 b14 0.0625
CP b21 b14 0.03125
CP b22 b14 0.015625
CP b23 b14 0.0078125
H q15
CP b16 b15 2
CP b17 b15 1
CP b18 b15 0.5
CP b19 b15 0.25
CP b20 b15 0.125
CP b21 b15 0.0625
CP b22 b15 0.03125
CP b23 b15 0.015625
H q16
CP b17 b16 2
CP b18 b16 1
CP b19 b16 0.5
CP b20 b16 0.25
CP b21 b16 0.125
CP b22 b16 0.0625
CP b23 b16 0.03125
H q17
CP b18 b17 2
CP b19 b17 1
CP b20 b17 0.5
CP b21 b17 0.25
CP b22 b17 0.125
CP b23 b17 0.0625
H q18
CP b19 b18 2
CP b20 b18 1
CP b21 b18 0.5
CP b22 b18 0.25
CP b23 b18 0.125
H q19
CP b20 b19 2
CP b21 b19 1
CP b22 b19 0.5
CP b23 b19 0.25
H q20
CP b21 b20 2
CP b22 b20 1
CP b23 b20 0.5
H q21
CP b22 b21 2
CP b23 b21 1
H q22
CP b23 b22 2
H q23
H q24
CP a23 b24 2
CP a22 b24 1
CP a21 b24 0.5
CP a20 b24 0.25
CP a19 b24 0.125
CP a18 b24 0.0625
CP a17 b24 0.03125
CP a16 b24 0.015625
CP a15 b24 0.0078125
CP a14 b24 0.00390625
CP a13 b24 0.00195312
CP a12 b24 0.000976562
CP a11 b24 0.000488281
CP a10 b24 0.000244141
CP a9 b24 0.00012207
CP a8 b24 6.10352e-05
CP a7 b24 3.05176e-05
CP a6 b24 1.52588e-05
CP a5 b24 7.62939e-06
CP a4 b24 3.8147e-06
CP a3 b24 1.90735e-06
CP a2 b24 9.53674e-07
CP a1 b24 4.76837e-07
CP a0 b24 2.38419e-07
CP a23 b23 4
CP a22 b23 2
CP a21 b23 1
CP a20 b23 0.5
CP a19 b23 0.25
CP a18 b23 0.125
CP a17 b23 0.0625
CP a16 b23 0.03125
CP a15 b23 0.015625
CP a14 b23 0.0078125
CP a13 b23 0.00390625
CP a12 b23 0.00195312
CP a11 b23 0.000976562
CP a10 b23 0.000488281
CP a9 b23 0.000244141
CP a8 b23 0.00012207
CP a7 b23 6.10352e-05
CP a6 b23 3.05176e-05
CP a5 b23 1.52588e-05
CP a4 b23 7.62939e-06
CP a3 b23 3.8147e-06
CP a2 b23 1.90735e-06
CP a1 b23 9.53674e-07
CP a0 b23 4.76837e-07
CP a22 b22 4
CP a21 b22 2
CP a20 b22 1
CP a19 b22 0.5
CP a18 b22 0.25
CP a17 b22 0.125
CP a16 b22 0.0625
CP a15 b22 0.03125
CP a14 b22 0.015625
CP a13 b22 0.0078125
CP a12 b22 0.00390625
CP a11 b22 0.00195312
CP a10 b22 0.000976562
CP a9 b22 0.000488281
CP a8 b22 0.000244141
CP a7 b22 0.00012207
CP a6 b22 6.10352e-05
CP a5 b22 3.05176e-05
CP a4 b22 1.52588e-05
CP a3 b22 7.62939e-06
CP a2 b22 3.8147e-06
CP a1 b22 1.90735e-06
CP a0 b22 9.53674e-07
CP a21 b21 4
CP a20 b21 2
CP a19 b21 1
CP a18 b21 0.5
CP a17 b21 0.25
CP a16 b21 0.125
CP a15 b21 0.0625
CP a14 b21 0.03125
CP a13 b21 0.015625
CP a12 b21 0.0078125
CP a11 b21 0.00390625
CP a10 b21 0.00195312
CP a9 b21 0.000976562
CP a8 b21 0.000488281
CP a7 b21 0.000244141
CP a6 b21 0.00012207
CP a5 b21 6.10352e-05
CP a4 b21 3.05176e-05
CP a3 b21 1.52588e-05
CP a2 b21 7.62939e-06
CP a1 b21 3.8147e-06
CP a0 b21 1.90735e-06
CP a20 b20 4
CP a19 b20 2
CP a18 b20 1
CP a17 b20 0.5
CP a16 b20 0.25
CP a15 b20 0.125
CP a14 b20 0.0625
CP a13 b20 0.03125
CP a12 b20 0.015625
CP a11 b20 0.0078125
CP a10 b20 0.00390625
CP a9 b20 0.00195312
CP a8 b20 0.000976562
CP a7 b20 0.000488281
CP a6 b20 0.000244141
CP a5 b20 0.00012207
CP a4 b20 6.10352e-05
CP a3 b20 3.05176e-05
CP a2 b20 1.52588e-05
CP a1 b20 7.62939e-06
CP a0 b20 3.8147e-06
CP a19 b19 4
CP a18 b19 2
CP a17 b19 1
CP a16 b19 0.5
CP a15 b19 0.25
CP a14 b19 0.125
CP a13 b19 0.0625
CP a12 b19 0.03125
CP a11 b19 0.015625
CP a10 b19 0.0078125
CP a9 b19 0.00390625
CP a8 b19 0.00195312
CP a7 b19 0.000976562
CP a6 b19 0.000488281
CP a5 b19 0.000244141
CP a4 b19 0.00012207
CP a3 b19 6.10352e-05
CP a2 b19 3.05176e-05
CP a1 b19 1.52588e-05
CP a0 b19 7.62939e-06
CP a18 b18 4
CP a17 b18 2
CP a16 b18 1
CP a15 b18 0.5
CP a14 b18 0.25
CP a13 b18 0.125
CP a12 b18 0.0625
CP a11 b18 0.03125
CP a10 b18 0.015625
CP a9 b18 0.0078125
CP a8 b18 0.00390625
CP a7 b18 0.00195312
CP a6 b18 0.000976562
CP a5 b18 0.000488281
CP a4 b18 0.000244141
CP a3 b18 0.00012207
CP a2 b18 6.10352e-05
CP a1 b18 3.05176e-05
CP a0 b18 1.52588e-05
CP a17 b17 4
CP a16 b17 2
CP a15 b17 1
CP a14 b17 0.5
CP a13 b17 0.25
CP a12 b17 0.125
CP a11 b17 0.0625
CP a10 b17 0.03125
CP a9 b17 0.015625
CP a8 b17 0.0078125
CP a7 b17 0.00390625
CP a6 b17 0.00195312
CP a5 b17 0.000976562
CP a4 b17 0.000488281
CP a3 b17 0.000244141
CP a2 b17 0.00012207
CP a1 b17 6.10352e-05
CP a0 b17 3.05176e-05
CP a16 b16 4
CP a15 b16 2
CP a14 b16 1
CP a13 b16 0.5
CP a12 b16 0.25
CP a11 b16 0.125
CP a10 b16 0.0625
CP a9 b16 0.03125
CP a8 b16 0.015625
CP a7 b16 0.0078125
CP a6 b16 0.00390625
CP a5 b16 0.00195312
CP a4 b16 0.000976562
CP a3 b16 0.000488281
CP a2 b16 0.000244141
CP a1 b16 0.00012207
CP a0 b16 6.10352e-05
CP a15 b15 4
CP a14 b15 2
CP a13 b15 1
CP a12 b15 0.5
CP a11 b15 0.25
CP a10 b15 0.125
CP a9 b15 0.0625
CP a8 b15 0.03125
CP a7 b15 0.015625
CP a6 b15 0.0078125
CP a5 b15 0.00390625
CP a4 b15 0.00195312
CP a3 b15 0.000976562
CP a2 b15 0.000488281
CP a1 b15 0.000244141
CP a0 b15 0.00012207
CP a14 b14 4
CP a13 b14 2
CP a12 b14 1
CP a11 b14 0.5
CP a10 b14 0.25
CP a9 b14 0.125
CP a8 b14 0.0625
CP a7 b14 0.03125
CP a6 b14 0.015625
CP a5 b14 0.0078125
CP a4 b14 0.00390625
CP a3 b14 0.00195312
CP a2 b14 0.000976562
CP a1 b14 0.000488281
CP a0 b14 0.000244141
CP a13 b13 4
CP a12 b13 2
CP a11 b13 1
CP a10 b13 0.5
CP a9 b13 0.25
CP a8 b13 0.125
CP a7 b13 0.0625
CP a6 b13 0.03125
CP a5 b13 0.015625
CP a4 b13 0.0078125
CP a3 b13 0.00390625
CP a2 b13 0.00195312
CP a1 b13 0.000976562
CP a0 b13 0.000488281
CP a12 b12 4
CP a11 b12 2
CP a10 b12 1
CP a9 b12 0.5
CP a8 b12 0.25
CP a7 b12 0.125
CP a6 b12 0.0625
CP a5 b12 0.03125
CP a4 b12 0.015625
CP a3 b12 0.0078125
CP a2 b12 0.00390625
CP a1 b12 0.00195312
CP a0 b12 0.000976562
CP a11 b11 4
CP a10 b11 2
CP a9 b11 1
CP a8 b11 0.5
CP a7 b11 0.25
CP a6 b11 0.125
CP a5 b11 0.0625
CP a4 b11 0.03125
CP a3 b11 0.015625
CP a2 b11 0.0078125
CP a1 b11 0.00390625
CP a0 b11 0.00195312
CP a10 b10 4
CP a9 b10 2
CP a8 b10 1
CP a7 b10 0.5
CP a6 b10 0.25
CP a5 b10 0.125
CP a4 b10 0.0625
CP a3 b10 0.03125
CP a2 b10 0.015625
CP a1 b10 0.0078125
CP a0 b10 0.00390625
CP a9 b9 4
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
CP b9 b0 -0.0078125
CP b10 b0 -0.00390625
CP b11 b0 -0.00195312
CP b12 b0 -0.000976562
CP b13 b0 -0.000488281
CP b14 b0 -0.000244141
CP b15 b0 -0.00012207
CP b16 b0 -6.10352e-05
CP b17 b0 -3.05176e-05
CP b18 b0 -1.52588e-05
CP b19 b0 -7.62939e-06
CP b20 b0 -3.8147e-06
CP b21 b0 -1.90735e-06
CP b22 b0 -9.53674e-07
CP b23 b0 -4.76837e-07
H b1
CP b2 b1 -2
CP b3 b1 -1
CP b4 b1 -0.5
CP b5 b1 -0.25
CP b6 b1 -0.125
CP b7 b1 -0.0625
CP b8 b1 -0.03125
CP b9 b1 -0.015625
CP b10 b1 -0.0078125
CP b11 b1 -0.00390625
CP b12 b1 -0.00195312
CP b13 b1 -0.000976562
CP b14 b1 -0.000488281
CP b15 b1 -0.000244141
CP b16 b1 -0.00012207
CP b17 b1 -6.10352e-05
CP b18 b1 -3.05176e-05
CP b19 b1 -1.52588e-05
CP b20 b1 -7.62939e-06
CP b21 b1 -3.8147e-06
CP b22 b1 -1.90735e-06
CP b23 b1 -9.53674e-07
H b2
CP b3 b2 -2
CP b4 b2 -1
CP b5 b2 -0.5
CP b6 b2 -0.25
CP b7 b2 -0.125
CP b8 b2 -0.0625
CP b9 b2 -0.03125
CP b10 b2 -0.015625
CP b11 b2 -0.0078125
CP b12 b2 -0.00390625
CP b13 b2 -0.00195312
CP b14 b2 -0.000976562
CP b15 b2 -0.000488281
CP b16 b2 -0.000244141
CP b17 b2 -0.00012207
CP b18 b2 -6.10352e-05
CP b19 b2 -3.05176e-05
CP b20 b2 -1.52588e-05
CP b21 b2 -7.62939e-06
CP b22 b2 -3.8147e-06
CP b23 b2 -1.90735e-06
H b3
CP b4 b3 -2
CP b5 b3 -1
CP b6 b3 -0.5
CP b7 b3 -0.25
CP b8 b3 -0.125
CP b9 b3 -0.0625
CP b10 b3 -0.03125
CP b11 b3 -0.015625
CP b12 b3 -0.0078125
CP b13 b3 -0.00390625
CP b14 b3 -0.00195312
CP b15 b3 -0.000976562
CP b16 b3 -0.000488281
CP b17 b3 -0.000244141
CP b18 b3 -0.00012207
CP b19 b3 -6.10352e-05
CP b20 b3 -3.05176e-05
CP b21 b3 -1.52588e-05
CP b22 b3 -7.62939e-06
CP b23 b3 -3.8147e-06
H b4
CP b5 b4 -2
CP b6 b4 -1
CP b7 b4 -0.5
CP b8 b4 -0.25
CP b9 b4 -0.125
CP b10 b4 -0.0625
CP b11 b4 -0.03125
CP b12 b4 -0.015625
CP b13 b4 -0.0078125
CP b14 b4 -0.00390625
CP b15 b4 -0.00195312
CP b16 b4 -0.000976562
CP b17 b4 -0.000488281
CP b18 b4 -0.000244141
CP b19 b4 -0.00012207
CP b20 b4 -6.10352e-05
CP b21 b4 -3.05176e-05
CP b22 b4 -1.52588e-05
CP b23 b4 -7.62939e-06
H b5
CP b6 b5 -2
CP b7 b5 -1
CP b8 b5 -0.5
CP b9 b5 -0.25
CP b10 b5 -0.125
CP b11 b5 -0.0625
CP b12 b5 -0.03125
CP b13 b5 -0.015625
CP b14 b5 -0.0078125
CP b15 b5 -0.00390625
CP b16 b5 -0.00195312
CP b17 b5 -0.000976562
CP b18 b5 -0.000488281
CP b19 b5 -0.000244141
CP b20 b5 -0.00012207
CP b21 b5 -6.10352e-05
CP b22 b5 -3.05176e-05
CP b23 b5 -1.52588e-05
H b6
CP b7 b6 -2
CP b8 b6 -1
CP b9 b6 -0.5
CP b10 b6 -0.25
CP b11 b6 -0.125
CP b12 b6 -0.0625
CP b13 b6 -0.03125
CP b14 b6 -0.015625
CP b15 b6 -0.0078125
CP b16 b6 -0.00390625
CP b17 b6 -0.00195312
CP b18 b6 -0.000976562
CP b19 b6 -0.000488281
CP b20 b6 -0.000244141
CP b21 b6 -0.00012207
CP b22 b6 -6.10352e-05
CP b23 b6 -3.05176e-05
H b7
CP b8 b7 -2
CP b9 b7 -1
CP b10 b7 -0.5
CP b11 b7 -0.25
CP b12 b7 -0.125
CP b13 b7 -0.0625
CP b14 b7 -0.03125
CP b15 b7 -0.015625
CP b16 b7 -0.0078125
CP b17 b7 -0.00390625
CP b18 b7 -0.00195312
CP b19 b7 -0.000976562
CP b20 b7 -0.000488281
CP b21 b7 -0.000244141
CP b22 b7 -0.00012207
CP b23 b7 -6.10352e-05
H b8
CP b9 b8 -2
CP b10 b8 -1
CP b11 b8 -0.5
CP b12 b8 -0.25
CP b13 b8 -0.125
CP b14 b8 -0.0625
CP b15 b8 -0.03125
CP b16 b8 -0.015625
CP b17 b8 -0.0078125
CP b18 b8 -0.00390625
CP b19 b8 -0.00195312
CP b20 b8 -0.000976562
CP b21 b8 -0.000488281
CP b22 b8 -0.000244141
CP b23 b8 -0.00012207
H b9
CP b10 b9 -2
CP b11 b9 -1
CP b12 b9 -0.5
CP b13 b9 -0.25
CP b14 b9 -0.125
CP b15 b9 -0.0625
CP b16 b9 -0.03125
CP b17 b9 -0.015625
CP b18 b9 -0.0078125
CP b19 b9 -0.00390625
CP b20 b9 -0.00195312
CP b21 b9 -0.000976562
CP b22 b9 -0.000488281
CP b23 b9 -0.000244141
H b10
CP b11 b10 -2
CP b12 b10 -1
CP b13 b10 -0.5
CP b14 b10 -0.25
CP b15 b10 -0.125
CP b16 b10 -0.0625
CP b17 b10 -0.03125
CP b18 b10 -0.015625
CP b19 b10 -0.0078125
CP b20 b10 -0.00390625
CP b21 b10 -0.00195312
CP b22 b10 -0.000976562
CP b23 b10 -0.000488281
H b11
CP b12 b11 -2
CP b13 b11 -1
CP b14 b11 -0.5
CP b15 b11 -0.25
CP b16 b11 -0.125
CP b17 b11 -0.0625
CP b18 b11 -0.03125
CP b19 b11 -0.015625
CP b20 b11 -0.0078125
CP b21 b11 -0.00390625
CP b22 b11 -0.00195312
CP b23 b11 -0.000976562
H b12
CP b13 b12 -2
CP b14 b12 -1
CP b15 b12 -0.5
CP b16 b12 -0.25
CP b17 b12 -0.125
CP b18 b12 -0.0625
CP b19 b12 -0.03125
CP b20 b12 -0.015625
CP b21 b12 -0.0078125
CP b22 b12 -0.00390625
CP b23 b12 -0.00195312
H b13
CP b14 b13 -2
CP b15 b13 -1
CP b16 b13 -0.5
CP b17 b13 -0.25
CP b18 b13 -0.125
CP b19 b13 -0.0625
CP b20 b13 -0.03125
CP b21 b13 -0.015625
CP b22 b13 -0.0078125
CP b23 b13 -0.00390625
H b14
CP b15 b14 -2
CP b16 b14 -1
CP b17 b14 -0.5
CP b18 b14 -0.25
CP b19 b14 -0.125
CP b20 b14 -0.0625
CP b21 b14 -0.03125
CP b22 b14 -0.015625
CP b23 b14 -0.0078125
H b15
CP b16 b15 -2
CP b17 b15 -1
CP b18 b15 -0.5
CP b19 b15 -0.25
CP b20 b15 -0.125
CP b21 b15 -0.0625
CP b22 b15 -0.03125
CP b23 b15 -0.015625
H b16
CP b17 b16 -2
CP b18 b16 -1
CP b19 b16 -0.5
CP b20 b16 -0.25
CP b21 b16 -0.125
CP b22 b16 -0.0625
CP b23 b16 -0.03125
H b17
CP b18 b17 -2
CP b19 b17 -1
CP b20 b17 -0.5
CP b21 b17 -0.25
CP b22 b17 -0.125
CP b23 b17 -0.0625
H b18
CP b19 b18 -2
CP b20 b18 -1
CP b21 b18 -0.5
CP b22 b18 -0.25
CP b23 b18 -0.125
H b19
CP b20 b19 -2
CP b21 b19 -1
CP b22 b19 -0.5
CP b23 b19 -0.25
H b20
CP b21 b20 -2
CP b22 b20 -1
CP b23 b20 -0.5
H b21
CP b22 b21 -2
CP b23 b21 -1
H b22
CP b23 b22 -2
H b23
H b24
.end
