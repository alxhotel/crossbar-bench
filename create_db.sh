#!/bin/sh

DB="./database/benchmarks.csv"

COMPILED_FOLDER="/tmp/compiled_cqasm"
CONFIG="./config_10.json"
ALL_QASMS="./benchmarks/*/cQASM_converted/*.qasm"

echo "Algorithm,No. qubits,No. gates,Depth,Source,Expected Behaviour"

# Create a temp folder
mkdir -p ${COMPILED_FOLDER}

for filename in ${ALL_QASMS}; do
	basename=$(basename ${filename} | cut -d. -f1)

	while IFS=, read -r name qubits gates source behaviour
	do
		if [ ${name} = ${basename} ]; then

			# Execute
			python3 "./run_benchmark.py" ${filename} ${COMPILED_FOLDER} \
				--config ${CONFIG} \
				--log-level LOG_NOTHING \
				--scheduler-post179 no

			depth=$(cat "${COMPILED_FOLDER}/${name}_scheduled.qasm" | grep "q\[" | wc -l)
			echo "${name},${qubits},${gates},${depth},${source},${behaviour}"

			break
		fi
	done < ${DB}

done

# Clean
rm -rf ${COMPILED_FOLDER}
