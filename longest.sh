#!/bin/bash
s1=$1
s2=$2
combined=$(echo "$s1$s2" | grep -o . | sort -u | tr -d '\n')
echo "$combined"