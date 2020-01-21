#!/bin/bash 
echo "Welcome to employee wage"
WAGE_PER_HOUR=20
FULL_TIME_HOUR=8
PART_TIME_HOUR=4
IS_ABSENT=0
monthlyWage=0

function WageCalculation() {
	timeInHours=$1
	dailyWage=$(($timeInHours * $WAGE_PER_HOUR))
	monthlyWage=$(($timeInHours * $WAGE_PER_HOUR + $monthlyWage))
	echo "Daily Wage=$dailyWage"
	echo "Monthly Wage=$monthlyWage"
}

for((day=1; day<=20; day++))
do
	randomCheck=$((RANDOM%3))
	case $randomCheck in
		0)
			echo "Employee is absent on day $day"
			WageCalculation $IS_ABSENT
		;;
		1)
			echo "Employee is Full Time on day $day"
			WageCalculation $FULL_TIME_HOUR
		;;
		2)
			echo "Employee is Half Time on day $day"
			WageCalculation $PART_TIME_HOUR
		;;
	esac
done
