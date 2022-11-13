#!/bin/bash -x
isPartTime=1
isFullTime=2
maxHoursInMonth=100
empRatePerHr=20
numOfWorkingDays=20
totalEmpHr=0
totalWorkingHrs=0

function getWorkHours()
{
	case $randomCheck in 
			$isPartTime )
			empHrs=4 
			;;
			$isFullTime )
			empHrs=8 
			;;
			*)
			empHrs=0 
			;;
	esac
}
while [[ $totalEmpHr -lt $maxHoursInMonth && $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	randomCheck=$((RANDOM%3))
	getWorkHours $randomCheck
	totalEmpHr=$(($totalEmpHr+$empHrs))
	dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done
totalSalary=$(($totalEmpHr*$empRatePerHr))
echo ${dailyWages[@]}
echo ${!dailyWages[@]}
echo ${#dailyWages[@]}
