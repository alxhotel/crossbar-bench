#!/bin/sh

DB="/home/alex/Documents/University/Delft/Thesis/Code/qbench/database/benchmarks.csv"
CQASM_FOLDER="/home/alex/Documents/University/Delft/Thesis/Code/qbench/benchmarks/*/cQASM_converted"

INPUT_FOLDER="./revlib_6x6"
DEST_FOLDER="${INPUT_FOLDER}/cqasm"

while IFS=, read -r name qubits gates depth source behaviour
do
	if [ ${source} = "RevLib" ]; then
		if [ ${qubits} -gt 13 ] && [ ${qubits} -le 18 ]; then
		#if [ ${qubits} -le 13 ]; then
			echo "Copying ${name}..."
			cp "${CQASM_FOLDER}/${name}.qasm" "${DEST_FOLDER}/${name}.qasm"
		fi
	fi
done < ${DB}
