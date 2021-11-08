#!/bin/bash
function start_fe_func {
	VERSION=${1}
	BASE_FE_SOURCE="/home/onknight/workspaces/cubable/frontend"
	TARGET="dist/source"

	if [[ ! -z "${VERSION}" ]]; then
		FE_SOURCE="${BASE_FE_SOURCE}/${VERSION}/${TARGET}"
	else
		FE_SOURCE="${BASE_FE_SOURCE}/${TARGET}"
	fi

	FE_PORT=8000
	cd ${FE_SOURCE} && angular-http-server ./ -p ${FE_PORT}
}
alias start-fe="start_fe_func"

# mysql
alias mysql-shell='sudo mysql -u root -p'

# nodejs
alias rm-modulepkl='rm -rdf node_modules/ package-lock.json'
alias rm-module='rm -rdf node_modules'
alias parse-hash-token='node /home/onknight/workspaces/test_code/js/src/test-hash/test.js'	# argv1: token; argv2: env, default testing