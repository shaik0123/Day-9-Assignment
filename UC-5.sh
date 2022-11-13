#!/bin/bash -x
isPartTime=1
isFullTime=2
totalsalary=0
empRatePerHour=20
numWorkingDays=20
for (( day=1; day<=$numWorkingDays; day++))
do
	randomcheck=$((RANDOM%3))
	case $randomcheck in
	$isFullTime)
	empHours=8
	;;
	$isPartTime)
	empHours=4
	;;
	*)
	empHours=0
	;;
esac
salary=$(($empHours*$empRatePerHour))
totalsalary=$(($totalsalary+$salary))
done
