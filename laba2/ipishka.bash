#!/bin/bash

bin() {
    local num=$1
    bin=""
    for ((i=7; i>=0; i--)); do
        bin="$bin$(((num >> i)&1))"
    done
    echo "$bin"
}
read ip
bin_ip=""
IFS='.' read byte1 byte2 byte3 byte4 <<< "$ip"
bin_ip="$(bin $byte1).$(bin $byte2).$(bin $byte3).$(bin $byte4)"
echo "${bin_ip}"
