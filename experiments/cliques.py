import os
import math

from libQasm import libQasm
from networkx import nx
from networkx.algorithms import clique, isomorphism

def do_file(file):
	lq = libQasm()
	lq.parse_file(file['path'])
	qasm = lq.getQasmRepresentation()

	G = nx.Graph()

	for subcircuit in qasm.getSubCircuits().getAllSubCircuits():
		for operation_cluster in subcircuit.getOperationsCluster():
			for operation in operation_cluster.getOperations():
                # Qubit indices
				qubit_indices = list(operation.getQubitsInvolved().getSelectedQubits().getIndices())
				if (len(qubit_indices) == 0):
					# Single/Two qubit gate
					first_qubit = operation.getTwoQubitPairs()[0].getSelectedQubits().getIndices()
					second_qubit = operation.getTwoQubitPairs()[1].getSelectedQubits().getIndices()
					if (len(first_qubit) > 0):
						qubit_indices.append(first_qubit[0])
					if (len(second_qubit) > 0):
						qubit_indices.append(second_qubit[0])
					if (len(first_qubit) == 0 and len(second_qubit) == 0):
						# Toffoli
						qubit_indices.append(operation.getToffoliQubitPairs()[0].getSelectedQubits().getIndices()[0])
						qubit_indices.append(operation.getToffoliQubitPairs()[1][0].getSelectedQubits().getIndices()[0])
						qubit_indices.append(operation.getToffoliQubitPairs()[1][1].getSelectedQubits().getIndices()[0])

					if (len(qubit_indices) >= 2):
						# Add to graph
						for i in qubit_indices:
							for j in qubit_indices:
								if (i == j): continue
								G.add_edge(i, j)

	#print(file['name'])
	#print(G.number_of_nodes())
	#print(G.number_of_edges())

	# Create grid
	size = math.ceil(math.sqrt(G.number_of_nodes() * 2))
	G_grid = nx.grid_graph(dim = [size, size])

	#G_new = nx.Graph()
	#G_new.add_edge(1, 2)
	GM = isomorphism.GraphMatcher(G_grid, G)
	#if (GM.subgraph_is_isomorphic()):
	if (True):
		import matplotlib.pyplot as plt
		nx.draw_networkx(G, font_color = 'white', pos = nx.spring_layout(G, k = 0.2, iterations = 50))
		plt.savefig("./graphs/" + file['name'] + ".png")
		plt.clf()
		print(os.path.splitext(file['name'])[0])
		#print('FOUND ISOMORPHISM')

	#if ("graycode" in file['name']) or ("mod5d2_64.qasm" in file['name']):
		#print('PRINTEADOOOOOOO')
		#import matplotlib.pyplot as plt
		#nx.draw_networkx(G, font_color = 'white')
		#plt.savefig(file['name'] + ".png")
		#plt.clf()
	#print(list(clique.find_cliques(G)))

	return

if __name__ == '__main__':
	input_path_1 = "../../qbench/benchmarks/RevLib/cQASM_converted"
	input_path_2 = "../../qbench/benchmarks/QLib/cQASM_converted"
	input_path_3 = "../../qbench/benchmarks/Custom/cQASM_converted"

	# Go through all cqasm files
	cqasm_files_1 = ({"name": filename, "source": "RevLib", "path": os.path.join(input_path_1, filename)} for filename in os.listdir(input_path_1)
		if os.path.isfile(os.path.join(input_path_1, filename)) and ".qasm" in filename
	)
	cqasm_files_2 = ({"name": filename, "source": "QLib", "path": os.path.join(input_path_2, filename)} for filename in os.listdir(input_path_2)
        if os.path.isfile(os.path.join(input_path_2, filename)) and ".qasm" in filename
    )
	cqasm_files_3 = ({"name": filename, "source": "Custom", "path": os.path.join(input_path_3, filename)} for filename in os.listdir(input_path_3)
        if os.path.isfile(os.path.join(input_path_3, filename)) and ".qasm" in filename
    )
	cqasm_files = []

	for file in cqasm_files_1:
		cqasm_files.append(file)

	for file in cqasm_files_2:
		cqasm_files.append(file)

	for file in cqasm_files_3:
		cqasm_files.append(file)

	cqasm_files.sort(key = lambda item: (int(item['name'][0]) if item['name'][0].isdigit() else float('inf'), item['name']))
	for file in cqasm_files:
		if ("rd84" in file['name']):
			do_file(file)
