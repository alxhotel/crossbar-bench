#!/bin/sh

DB="/home/alex/Documents/University/Delft/Thesis/Code/qbench/database/benchmarks.csv"
CQASM_FOLDER="/home/alex/Documents/University/Delft/Thesis/Code/qbench/benchmarks/RevLib/cQASM_converted"
RUN_SCRIPT="/home/alex/Documents/University/Delft/Thesis/Code/qbench/run_benchmark.py"

CONFIG_FILE="./config_de.json"
OUTPUT_FOLDER="./test_output"

while IFS=, read -r name qubits gates depth source behaviour
do
	if [ ${source} = "RevLib" ]; then
		#if [ ${qubits} -gt 13 ] && [ ${qubits} -le 18 ]; then
		#if [ ${qubits} -le 13 ]; then
		if [ ${qubits} -gt 18 ]; then
			echo "${name}\t${qubits}"
		fi
	fi
done < ${DB}
