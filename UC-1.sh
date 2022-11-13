#!/bin/bash -x
is present=1
randomcheck=$((RANDOM%2))
if [ $randomcheck -eq 1 ]
then
echo "emp is present"
else
echo "emp is absent"
fi
