#!/bin/sh

# Include
MY_DIR="$(dirname "$0")"
. "${MY_DIR}/func.sh"

# Validate params
#if [ "$#" -eq 0 ]; then
#	echo "Usage: stats FOLDER"
#	echo "  FOLDER  path of the test folder"
#	exit 1
#fi

# Validate folder
#if ! [ -d "$1" ]; then
#	echo "FOLDER must be a folder"
#	exit 1
#fi

QBENCH_FOLDER="/home/alex/Documents/University/Delft/Thesis/Code/qbench"
DB="${QBENCH_FOLDER}/database/benchmarks.csv"
BENCHMARKS_FOLDER="${QBENCH_FOLDER}/benchmarks"
RUN_SCRIPT="${QBENCH_FOLDER}/run_benchmark.py"

PRE_CONFIG_FILE="./config_files/config_de.json"
CONFIG_FILE="./config_files/hw_5x5.json"
OUTPUT_FOLDER="./revlib_5x5/compiled_output"

DEL="	"

printf "benchmark${DEL}qubits${DEL}init_gates${DEL}init_depth"
printf "${DEL}decomposed_gates${DEL}decomposed_depth${DEL}decomposed_latency${DEL}sqswaps_ad"
printf "${DEL}mapped_gates${DEL}mapped_depth${DEL}mapped_latency${DEL}swaps_am${DEL}extra_gate_am${DEL}z_shuttles_am"
printf "${DEL}swap_shuttles${DEL}sqswap_shuttles${DEL}single_gate_shuttles${DEL}measurement_shuttles${DEL}total_shuttles"
printf "${DEL}time_ms"
echo ""

EXECUTE=0

while IFS=, read -r name qubits gates depth source behaviour
do
	# Ignore header
	if [ -z "${qubits##*[!0-9]*}" ]; then
		continue
	fi

	# Temp skip
	if [ "$(echo ${name} | grep -c 'miller_11')" -eq "1" ]; then
		# Execute the following
		EXECUTE=1
	fi
	if [ ${EXECUTE} -eq 0 ]; then
		continue
	fi

	RUN_MAPPING=1
	# Do not execute DIFFICULT benchmarks
	#if [ $((${qubits})) -ge 9 ] || [ $((${qubits} * ${depth} * ${gates})) -ge 100000 ]; then
	#if [ $((${qubits} * ${depth} * ${gates})) -ge 1000000 ]; then
	#if [ $((${qubits} * ${depth} * ${gates})) -ge 100000 ] || [ "$(echo ${source} | grep -c 'QLib')" -eq "1" ]; then
		#RUN_MAPPING=0
		#continue
	#fi

	#if [ "$(echo ${source} | grep -c 'QLib')" -eq "1" ]; then
	#	continue
	#fi

	# Calculate minimal size based number of qubits
	SIZE=$(echo "sqrt(2 * ${qubits} - 1)" | bc -l | awk '{printf("%d\n", $0 += $0 < 0 ? 0 : 0.9999)}')
	#echo "Using size: ${SIZE} for ${qubits} qubits"
	CONFIG_FILE="./config_files/hw_${SIZE}x${SIZE}.json"
	OUTPUT_FOLDER="./tmp/compiled_output"
	mkdir -p ${OUTPUT_FOLDER}

	# Set cQASM folder
	CQASM_FOLDER="${BENCHMARKS_FOLDER}/${source}/cQASM_converted"

	NAME=${name}
	QUBITS=${qubits}

	# Initial
	INIT_GATES=${gates}
	INIT_DEPTH=${depth}

	# EXECUTE: DECOMPOSITION
	python3 ${RUN_SCRIPT} "${CQASM_FOLDER}/${name}.qasm" ${OUTPUT_FOLDER} \
		--config ${PRE_CONFIG_FILE} \
		--scheduler-post179 no \
		--log-level LOG_NOTHING

	# Decomposed 1
	DECOMPOSED_GATES=$(get_decomposed_num_gates ${name})
	DECOMPOSED_DEPTH=$(get_decomposed_depth ${name})
	SQSWAPS_AD=$(get_sqswap_ad ${name})

	#echo ${CONFIG_FILE}

	python3 ${RUN_SCRIPT} "${CQASM_FOLDER}/${name}.qasm" ${OUTPUT_FOLDER} \
		--config ${CONFIG_FILE} \
		--scheduler-post179 yes \
		--mapper base \
		--scheduler-commute no \
		--log-level LOG_NOTHING > /dev/null
		#--log-level LOG_DEBUG

	# Decomposed 2
	DECOMPOSED_LATENCY=$(get_decomposed_latency ${name})

	if [ ${RUN_MAPPING} -eq 1 ]; then
		START_TIME=$(($(date +%s%N)/1000000))
		# EXECUTE: MAPPER
		python3 ${RUN_SCRIPT} "${CQASM_FOLDER}/${name}.qasm" ${OUTPUT_FOLDER} \
			--config ${CONFIG_FILE} \
			--scheduler-post179 yes \
			--mapper minextend \
			--initialplace yes \
			--log-level LOG_NOTHING > compilation_output.txt 2>&1
		END_TIME=$(($(date +%s%N)/1000000))
		TOTAL_TIME=$((END_TIME - START_TIME))

		# Compiled
		COMPILED_GATES=$(get_compiled_num_gates ${name})
		COMPILED_DEPTH=$(get_compiled_depth ${name})
		COMPILED_LATENCY=$(get_compiled_latency ${name})
		SWAPS_AM=$(get_swaps_am ${name})
		EXTRA_GATES_AM=$(get_extra_gates_am ${name})
		Z_SHUTTLES_AM=$(get_z_shuttles_am ${name})

		# Shuttles
		SWAP_SHUTTLES=$((${SWAPS_AM} * 4))
		SQSWAP_SHUTTLES=$((${SQSWAPS_AD} * 2))
		SINGLE_GATE_SHUTTLES=$((${EXTRA_GATES_AM} * 2))
		MEASUREMENT_SHUTTLES=0
		TOTAL_SHUTTLES=$(get_total_shuttles ${name})
	else
		TOTAL_TIME=0

		# Compiled
		COMPILED_GATES=0
        COMPILED_DEPTH=0
        SWAPS_AM=0
        EXTRA_GATES_AM=0
		Z_SHUTTLES_AM=0

        # Shuttles
        SWAP_SHUTTLES=0
        SQSWAP_SHUTTLES=0
        SINGLE_GATE_SHUTTLES=0
        MEASUREMENT_SHUTTLES=0
        TOTAL_SHUTTLES=0
    fi

	printf "${NAME}${DEL}${QUBITS}${DEL}${INIT_GATES}${DEL}${INIT_DEPTH}"

	printf "${DEL}${DECOMPOSED_GATES}${DEL}${DECOMPOSED_DEPTH}${DEL}${DECOMPOSED_LATENCY}${DEL}${SQSWAPS_AD}"

	printf "${DEL}${COMPILED_GATES}${DEL}${COMPILED_DEPTH}${DEL}${COMPILED_LATENCY}${DEL}${SWAPS_AM}${DEL}${EXTRA_GATES_AM}${DEL}${Z_SHUTTLES_AM}"

	printf "${DEL}${SWAP_SHUTTLES}${DEL}${SQSWAP_SHUTTLES}${DEL}${SINGLE_GATE_SHUTTLES}${DEL}${MEASUREMENT_SHUTTLES}${DEL}${TOTAL_SHUTTLES}"

	printf "${DEL}${TOTAL_TIME}"

	echo ""

done < ${DB}
