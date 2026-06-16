#!/usr/bin/env bash

# while
counter=1
while ((counter<=10)) # <= 10
do
    echo $counter 
    ((counter++))
done



# for

# Liste = durch white spaces getrennter string

data="1 2 3 4 5 6 7"
for i in $data
do
    echo $d
done

echo "---Kommandozeilenargumente---"
for arg in $@
do  
    echo $arg
done

for value in {20..25}
do
    echo $value
done

mylist="hallo welt, hello world, guten tag; hi hao"
IFS="