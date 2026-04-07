#!/bin/bash

for file in $@
do
    cp $file $file.$RANDOM
done