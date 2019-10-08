#!/usr/bin/python3

import json
import math

"""
"topology": {
	"init_configuration": {},
	"form": "irregular",
	"x_size": X,
	"y_size": X,
	"edges": []
}
"""

BASE_CONFIG_FILE = "./hw_default.json"
OUTPUT_DIR = "."

def gen_topology(size):
	base_file = open(BASE_CONFIG_FILE)
	data = json.load(base_file)

	topology = data['topology']

	topology['x_size'] = size
	topology['y_size'] = size

	# Create qubit number
	data['hardware_settings']['qubit_number'] = math.ceil((size * size) / 2)

	# Create matrix
	qubit = 0
	topo = {}
	for i in range(0, size):
		topo[i] = {}
		for j in range(0, size):
			if (i % 2 == 0 and j % 2 == 0) or (i % 2 != 0 and j % 2 != 0):
				topo[i][j] = qubit
				qubit += 1

	# Create init configuration
	topology['init_configuration'] = {}
	for i, val in topo.items():
		for j, qubit in val.items():
			topology['init_configuration'][qubit] = {"type": "data", "position": [i, j]}

	# Creat edges
	topology['edges']  = []
	id = 1
	for i, val in topo.items():
		for j, qubit in val.items():
			# Check if there is an top row
			if (i < size - 1):
				# Check left
				if (j > 0):
					topology['edges'].append({"id": id, "src": topo[i][j], "dst": topo[i + 1][j - 1]})
					id += 1
				# Check right
				if (j < size - 1):
					topology['edges'].append({"id": id, "src": topo[i][j], "dst": topo[i + 1][j + 1]})
					id += 1

	# Save to file
	out_file = open(OUTPUT_DIR + "/hw_" + str(size) + "x" + str(size) + ".json", 'w')
	json.dump(data, out_file, sort_keys=True, indent=4)

	print("DONE")
	return

if __name__ == "__main__":
	# Sizes of config files
	min_size = 3
	max_size = 50

	# Generate crossbar topologies
	for i in range(min_size, max_size + 1):
		print("Generating topology for size " + str(i) + "...")
		gen_topology(i)
