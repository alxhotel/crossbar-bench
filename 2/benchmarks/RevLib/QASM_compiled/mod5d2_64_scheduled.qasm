qubits 5

.mod5d2_64
    cnot q2,q1 
    qwait 3
    { t q2  | t q3  }
    qwait 1
    { cnot q2,q3  | h q0  }
    qwait 1
    t q0 
    qwait 1
    cnot q0,q2 
    qwait 3
    cnot q3,q0 
    qwait 1
    tdag q2 
    qwait 1
    cnot q3,q2 
    qwait 3
    { t q0  | tdag q2  }
    qwait 1
    cnot q0,q2 
    qwait 1
    tdag q3 
    qwait 1
    cnot q3,q0 
    qwait 3
    cnot q2,q3 
    qwait 3
    cnot q4,q3 
    qwait 3
    x q4 
    qwait 1
    cnot q4,q2 
    qwait 3
    { t q1  | t q2  | h q0  }
    qwait 1
    { cnot q1,q2  | h q0  }
    qwait 1
    t q0 
    qwait 1
    cnot q0,q1 
    qwait 3
    cnot q2,q0 
    qwait 1
    tdag q1 
    qwait 1
    cnot q2,q1 
    qwait 3
    { t q0  | tdag q1  }
    qwait 1
    cnot q0,q1 
    qwait 1
    tdag q2 
    qwait 1
    cnot q2,q0 
    qwait 3
    cnot q1,q2 
    qwait 3
    cnot q3,q2 
    qwait 3
    { t q2  | t q4  | h q0  }
    qwait 1
    { cnot q2,q4  | h q0  }
    qwait 1
    t q0 
    qwait 1
    cnot q0,q2 
    qwait 3
    cnot q4,q0 
    qwait 1
    tdag q2 
    qwait 1
    cnot q4,q2 
    qwait 3
    { t q0  | tdag q2  }
    qwait 1
    cnot q0,q2 
    qwait 1
    tdag q4 
    qwait 1
    cnot q4,q0 
    qwait 3
    { h q0  | cnot q2,q4  }
    qwait 3

