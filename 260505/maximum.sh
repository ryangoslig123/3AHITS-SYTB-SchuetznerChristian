#!/bin/bash

x=$1
y=$2

if((x != y))
then
    if((x>y))
    then
    echo "$x"
    else
    echo "$y"
    fi
else
echo "Die Zahlen sind gleich groß"
fi