version 1.0

qubits 12

._cuccaroAdder_5b
  cnot q[1], q[2]
  cnot q[1], q[0]
  toffoli q[0], q[2], q[1]
  cnot q[3], q[4]
  cnot q[3], q[1]
  toffoli q[1], q[4], q[3]
  cnot q[5], q[6]
  cnot q[5], q[3]
  toffoli q[3], q[6], q[5]
  cnot q[7], q[8]
  cnot q[7], q[5]
  toffoli q[5], q[8], q[7]
  cnot q[9], q[10]
  cnot q[9], q[7]
  toffoli q[7], q[10], q[9]
  cnot q[9], q[11]
  toffoli q[7], q[10], q[9]
  cnot q[9], q[7]
  cnot q[7], q[10]
  toffoli q[5], q[8], q[7]
  cnot q[7], q[5]
  cnot q[5], q[8]
  toffoli q[3], q[6], q[5]
  cnot q[5], q[3]
  cnot q[3], q[6]
  toffoli q[1], q[4], q[3]
  cnot q[3], q[1]
  cnot q[1], q[4]
  toffoli q[0], q[2], q[1]
  cnot q[1], q[0]
  cnot q[0], q[2]
