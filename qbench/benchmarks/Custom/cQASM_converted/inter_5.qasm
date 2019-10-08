version 1.0
qubits 5

z q[2]
sqswap q[3], q[0]
z q[3]
sqswap q[4], q[3]
z q[0]
sqswap q[0], q[1]
z q[1]
sqswap q[2], q[4]
z q[4]
sqswap q[1], q[0]
