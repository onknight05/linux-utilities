#!/bin/bash

FE_SOURCE="/home/namdang/workspace/projects/frontend/source"
FE_PORT=8000
alias start-fe="cd ${FE_SOURCE} && angular-http-server ./ -p ${FE_PORT}"

# mysql
alias mysql-shell='sudo mysql -u root -p'

# nodejs
alias rm-modulepkl='rm -rdf node_modules/ package-lock.json'
alias rm-module='rm -rdf node_modules'
