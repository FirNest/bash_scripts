#!/bin/bash

s="Ann:Russel;John:Gates;Paul:Wahl;Alex:Tolkien;Ann:Bell;Lewis:Kern;Sarah:Rudd;Sydney:Korn;Madison:Meta"

s=$(echo "$s" | tr 'a-z' 'A-Z')
sorted_pairs=$(echo "$s" | tr ';' '\n' | sort -t':' -k2,2 -k1,1)

result=""
for pair in $sorted_pairs; do
    name=$(echo "$pair" | cut -d':' -f1)
    surname=$(echo "$pair" | cut -d':' -f2)
    result+="($surname, $name)"
done

echo $result
