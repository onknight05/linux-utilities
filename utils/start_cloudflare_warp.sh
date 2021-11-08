#!/bin/bash
INPUT=$1

if [[ ${INPUT} = 'register' ]]; then
    warp-cli register
elif [[ ${INPUT} = 'connect' ]]; then
    warp-cli connect
    curl https://www.cloudflare.com/cdn-cgi/trace/
elif [[ ${INPUT} = 'disconnect' ]]; then
    warp-cli disconnect
fi