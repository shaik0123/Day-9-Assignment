#!/bin/bash -x
isPartTime=1
isFullTime=2
maxHoursInMonth=10
empRatePerHour=20
numWorkingDays=20
totalempHour=0
totalWorkingDays=0
while [[ $totalempHour -lt $maxHoursInMonth &&
	$totalWorkingDays -lt $numWorkingDays ]]
do
((totalWorkingDays++))
((totalempHour++))
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
totalempHours=$(($totalempHour*$empHours))
done
totalsalary=$(($totalempHours*$empRatePerHour))
