version 1.0

qubits 5

._4gt11_83
  cnot q[2], q[1]
  cnot q[1], q[2]
  cnot q[3], q[2]
  cnot q[2], q[3]
  cnot q[4], q[3]
  cnot q[3], q[4]
  h q[0]
  t q[1]
  t q[4]
  t q[0]
  cnot q[4], q[1]
  cnot q[0], q[4]
  cnot q[1], q[0]
  tdag q[4]
  cnot q[1], q[4]
  tdag q[1]
  tdag q[4]
  t q[0]
  cnot q[0], q[4]
  cnot q[1], q[0]
  cnot q[4], q[1]
  h q[0]
  cnot q[0], q[4]