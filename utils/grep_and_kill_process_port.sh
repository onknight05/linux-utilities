#!/bin/bash

INPUT_PORT=${1}
GREP_LOG=$(sudo netstat -tulpn | grep ${INPUT_PORT})

PID_str=$(echo ${GREP_LOG} | awk '{print $7}' | awk -F/ '{print $1}')
PIDs=(${PID_str})

if [ ${#PIDs[@]} = 0 ]; then
    echo 'Not found!'
elif [ ${#PIDs[@]} = 1 ]; then
    echo "Kill process ${PIDs[0]}"
    sudo kill -9 ${PIDs[0]}
else
    echo "Found many process: ${PID_str}"
    echo ${GREP_LOG}
fi