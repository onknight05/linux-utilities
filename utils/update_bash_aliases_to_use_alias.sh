#!/bin/bash

echo '''
ALIAS_DIR="/home/namdang/utils/alias"
if [ -d "${ALIAS_DIR}" ]; then
    aliases=`ls ${ALIAS_DIR}/`
    for f in ${aliases}
    do
        if [ -f ${ALIAS_DIR}/${f} ]; then
            . ${ALIAS_DIR}/${f}
        fi
    done
fi
''' >> ~/.bash_aliases
