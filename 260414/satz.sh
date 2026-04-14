#!/bin/bash

file="wordlist.txt"

anzahl=$(cat $file | wc -l)

for i in {1..5}
do
# Zeilennummer
    random=$((RANDOM % anzahl + 1))

    word=$(sed -n "${random}p" "$file") 

    satz="$satz $word"
done

echo $satz