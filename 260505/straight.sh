#!/bin/bash

NUMBER=$1

if (( NUMBER % 2 == 0 ));
then
echo "Die Zahl $NUMBER ist gerade"
else
echo "Die Zahl $NUMBER ist ungerade"
fi