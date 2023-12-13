#!/bin/bash
letter () {
        sum=0;
        for letter in "$@"; do
                ascii_value=$(printf "%d" "'$letter")
                sum=$((sum + ascii_value - 96))
        done
        if [ $sum -gt 26 ];
        then
                sum=$((sum % 26))
        fi
        if [ sum == 0 ];
        then
                sum=26;
        fi
        result=$(printf "\\$(printf '%03o' $((sum + 96)))")
        echo "$result"
}

letter "$@"