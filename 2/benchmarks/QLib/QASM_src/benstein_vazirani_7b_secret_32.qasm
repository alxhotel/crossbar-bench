# Circuit generated by QLib
# Bernstein-Vazirani search
# Secret= 32
.qubit 8
qubit x0 
qubit x1 
qubit x2 
qubit x3 
qubit x4 
qubit x5 
qubit x6 
qubit y
Prep0 y
.begin
X y
H x0
H x1
H x2
H x3
H x4
H x5
H x6
H y
CNOT x5 y
H x0
H x1
H x2
H x3
H x4
H x5
H x6
H y
.end
