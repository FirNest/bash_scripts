#!/usr/bin/bash

valid_ipv4() {
    local ip="$1"
    err_msg='IP address is invalid'
    [[ "$ip" =~ ^(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[0-9]{2}|[0-9])(\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[0-9]{2}|[0-9])){3}$ ]] || { echo "$err_msg"; return 1; }
    for i in ${ip//./ }; do
        [[ "${#i}" -gt 1 && "${i:0:1}" == 0 ]] && { echo "$err_msg"; return 1; }
        [[ "$i" -gt 255 ]] && { echo "$err_msg"; return 1; }
    done
    echo 'IP address is valid'
}

valid_ipv4 "$1"