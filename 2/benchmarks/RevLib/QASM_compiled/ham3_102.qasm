# this file has been automatically generated by the OpenQL compiler please do not modify it manually.
qubits 3

.ham3_102
   h q0
   t q1
   t q2
   t q0
   cnot q2,q1
   cnot q0,q2
   cnot q1,q0
   tdag q2
   cnot q1,q2
   tdag q1
   tdag q2
   t q0
   cnot q0,q2
   cnot q1,q0
   cnot q2,q1
   h q0
   cnot q2,q1
   cnot q1,q2
   cnot q0,q2
   cnot q2,q1
