version 1.0

qubits 20

._cuccaroAdder_9b
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
  cnot q[11], q[12]
  cnot q[11], q[9]
  toffoli q[9], q[12], q[11]
  cnot q[13], q[14]
  cnot q[13], q[11]
  toffoli q[11], q[14], q[13]
  cnot q[15], q[16]
  cnot q[15], q[13]
  toffoli q[13], q[16], q[15]
  cnot q[17], q[18]
  cnot q[17], q[15]
  toffoli q[15], q[18], q[17]
  cnot q[17], q[19]
  toffoli q[15], q[18], q[17]
  cnot q[17], q[15]
  cnot q[15], q[18]
  toffoli q[13], q[16], q[15]
  cnot q[15], q[13]
  cnot q[13], q[16]
  toffoli q[11], q[14], q[13]
  cnot q[13], q[11]
  cnot q[11], q[14]
  toffoli q[9], q[12], q[11]
  cnot q[11], q[9]
  cnot q[9], q[12]
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
