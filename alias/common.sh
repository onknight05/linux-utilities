#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

alias my_rm='rm -rf'
alias jmeter="~/Downloads/software/apache-jmeter-5.4.1/bin/jmeter"
alias grep-port="sudo netstat -tulpn | grep"
alias kill-process="sudo kill -9 "

alias grep-and-kill="${SCRIPT_DIR}/../utils/grep_and_kill_process_port.sh "