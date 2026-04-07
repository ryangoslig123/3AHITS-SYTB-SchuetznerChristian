#!/bin/bash
> result.txt

for file in $@
do
    echo "== $file ==========================================" >> result.txt
    cat $file >> result.txt
    echo "" >> result.txt
done
cat result.txt