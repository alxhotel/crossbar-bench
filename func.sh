#!/bin/sh

##############
# DECOMPOSER #
##############

get_decomposed_num_gates() {
RESULT=$(grep "Total no. of quantum gates:" "${OUTPUT_FOLDER}/${1}.qasm" \
	| cut -d ":" -f 2 \
	| sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')
echo ${RESULT}
}

get_decomposed_depth() {
RESULT=$(cat "${OUTPUT_FOLDER}/${1}_scheduled.qasm" | grep "q\[" | wc -l)
echo ${RESULT}
}

get_decomposed_latency() {
RESULT=$(grep "Total depth:" "${OUTPUT_FOLDER}/${1}_scheduled.qasm" \
	| cut -d ":" -f 2 \
	| sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')
echo ${RESULT}
}

get_sqswap_ad() {
RESULT=$(tr ' ' '\n' < "${OUTPUT_FOLDER}/${1}.qasm" | grep "^sqswap$" | wc -l)
echo ${RESULT}
}

##########
# MAPPER #
##########

get_compiled_num_gates() {
RESULT=$(cat "${OUTPUT_FOLDER}/${1}_compiled.qasm" | grep "q\[" | tr ' ' '\n' | sed -e '/^[[:space:]]*$/d' -e '/^q\[/d' -e '/^[^a-z]/d' | wc -l)
echo ${RESULT}
}

get_compiled_depth() {
RESULT=$(cat "${OUTPUT_FOLDER}/${1}_compiled.qasm" | grep "q\[" | wc -l)
echo ${RESULT}
}

get_compiled_latency() {
RESULT=$(grep "Total depth:" "${OUTPUT_FOLDER}/${1}_compiled.qasm" \
	| cut -d ":" -f 2 \
	| sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')
echo ${RESULT}
}

get_swaps_am() {
RESULT=$(tr ' ' '\n' < "${OUTPUT_FOLDER}/${1}_mapped.qasm" | grep "^swap$\|^move$" | wc -l)
echo ${RESULT}
}

get_extra_gates_am() {
BEFORE=$(tr '|' '\n' < "${OUTPUT_FOLDER}/${1}_b_compiled.qasm" | grep "q\[" | wc -l)
AFTER=$(tr '|' '\n' < "${OUTPUT_FOLDER}/${1}_compiled.qasm" | grep "q\[" | wc -l)
echo $(( (${AFTER} - ${BEFORE}) / 3 ))
}

get_z_shuttles_am() {
RESULT=$(tr ' ' '\n' < "${OUTPUT_FOLDER}/${1}_compiled.qasm" | grep "^z_shuttle\|t_shuttle\|s_shuttle\|tdag_shuttle\|sdag_shuttle" | wc -l)
echo ${RESULT}
}

get_total_shuttles() {
RESULT=$(tr ' ' '\n' < "${OUTPUT_FOLDER}/${1}_compiled.qasm" | grep "^shuttle" | wc -l)
echo ${RESULT}
}
