#!/bin/bash

check_divisibility() {
        local n=$1;
        local x=$2;
        local y=$3;
        if [ $n -le 0 ] || [ $x -le 0 ] || [ $y -le 0 ]
        then
                exit 1;
        elif [ $((n%x)) -eq 0 ] && [ $((n%y)) -eq 0 ]
        then
                echo "true because $n is divisible by $x and $y";
        elif [ $((n%x)) -eq 0 ]
        then
                echo "false because $n is not divisible by $y";
        elif [ $((n%x)) -eq 0 ]
        then
                echo "false because $n is not divisible by $x";
        else
                echo "false because $n is neither divisible by $x nor $y";
        fi
}

check_divisibility "$1" "$2" "$3"