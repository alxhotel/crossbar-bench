# Circuit generated by QLib
# Bernstein-Vazirani search
# Secret= 4
.qubit 5
qubit x0 
qubit x1 
qubit x2 
qubit x3 
qubit y
Prep0 y
.begin
X y
H x0
H x1
H x2
H x3
H y
CNOT x2 y
H x0
H x1
H x2
H x3
H y
.end
