#!/bin/bash
chess () {
local size=$1;
for (( row=1; row<=size; row++ ))
do
        for (( col=1; col<=size; col++ ))
        do
                tot=`expr $col + $row`;
                tmp=`expr $tot % 2`;
                if [ $tmp -eq 0 ]; then
                        echo -e -n "\e[47m ";
                else
                        echo -e -n "\e[40m ";
                fi
        done
        echo -e "\e[0m"
done
}

chess "$1"