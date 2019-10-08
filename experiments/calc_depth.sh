#!/bin/sh

DB="/home/alex/Documents/University/Delft/Thesis/Code/qbench/database/benchmarks.csv"
CQASM_FOLDER="/home/alex/Documents/University/Delft/Thesis/Code/qbench/benchmarks/Custom/cQASM_converted"
RUN_SCRIPT="/home/alex/Documents/University/Delft/Thesis/Code/qbench/run_benchmark.py"

CONFIG_FILE_PRE="./config_files/config_10.json"
OUTPUT_FOLDER="/tmp/test-ouput"

mkdir -p ${OUTPUT_FOLDER}

echo "Name,Qubits,Gates,Depth,New Gates,New Depth,SQSWAPs"

name="good_40"

python3 ${RUN_SCRIPT} "${CQASM_FOLDER}/${name}.qasm" ${OUTPUT_FOLDER} \
	--config ${CONFIG_FILE_PRE} \
	--scheduler-post179 no \
	--log-level LOG_NOTHING

# Gates (trimmed)
new_gates=$(grep "Total no. of quantum gates:" "${OUTPUT_FOLDER}/${name}.qasm" \
	| cut -d ":" -f 2 \
	| sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')

# Depth
new_depth=$(cat "${OUTPUT_FOLDER}/${name}_scheduled.qasm" | grep "q\[" | wc -l)

# SQSWAPs
sqswaps=$(tr ' ' '\n' < "${OUTPUT_FOLDER}/${name}.qasm" | grep "^sqswap$" | wc -l)

#echo "${name},${qubits},${gates},${depth},${new_gates},${new_depth},${sqswaps}"
echo "${new_gates},${new_depth},${sqswaps}"
