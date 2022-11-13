#!/bin/bash -x
isPartTime=1
isFullTime=2
empRatePerHour=20
randomcheck=$((RANDOM%3))
if [ $isFullTime -eq $randomcheck ]
then
	empHours=20
elif [ $isPartTime -eq $randomcheck ]
then
	empHours=8
else
	empHours=0
fi
salary=$(( $empHours * $empRatePerHour ))
