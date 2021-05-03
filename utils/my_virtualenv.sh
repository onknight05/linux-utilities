#!/bin/bash

if [ "$0" = "$BASH_SOURCE" ]; then
    echo "Error: Script must be sourced"
    exit 1
fi

ACTION=${1:-activate}

DIR_NAME="${PWD##*/}"

if [[ ! $DIR_NAME ]]; then
    echo "Could not init here!"
    exit 2
fi

ACTIVE_DIR="${DIR_NAME}/bin/activate"

if [ ! -f "$ACTIVE_DIR" ]; then
    echo "Not init yet! Init virtualenv for ${PWD}"
    virtualenv $DIR_NAME
fi

if [[ "${ACTION}" = "activate" ]]; then
    echo 'activate'
    source $ACTIVE_DIR
elif [[ "${ACTION}" = "deactivate" ]]; then
    echo 'deactivate'
    deactivate
elif [[ "$ACTIVE_DIR" = "clear" ]]; then
    echo "Not support now!"
    # danger
    # sudo rm -rf $DIR_NAME
fi
