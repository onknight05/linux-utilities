#!/bin/bash

function start_cloudflare_warp_func {
    warp-cli register
    warp-cli connect
    curl https://www.cloudflare.com/cdn-cgi/trace/
}

alias start_cloudflare_warp='start_cloudflare_warp_func'
alias stop_cloudflare_warp='warp-cli disconnect'

alias get-public-ip='dig +short myip.opendns.com @resolver1.opendns.com'

function stress_mem {
    mem_percent=${1:-0.9}
    echo "Virtual mem: $(echo $mem_percent*100 | bc)%"
    stress-ng --vm-bytes $(awk -v mem_percent="$mem_percent" '/MemAvailable/{printf "%d\n", $2 * mem_percent;}' < /proc/meminfo)k --vm-keep -m 1
}

alias stress_mem_percent='stress_mem'

function grep_most_big_dir_func {
    num=${1:-5}
    echo "List ${num} biggest folder:"
    find -type f -exec du -Sh {} + | sort -rh | head -n ${num}
}

alias list-biggest-folder="grep_most_big_dir_func"