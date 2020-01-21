#!/bin/bash -x
echo "Welcome to employee wage"
WAGE_PER_HOUR=20
FULL_TIME_HOUR=8
PART_TIME_HOUR=4
randomCheck=$((RANDOM%3))

function WageCalculation() {
	timeInHours=$1
	echo "Daily Wage=$(($timeInHours * $WAGE_PER_HOUR))"
}

if [ $randomCheck -eq 0 ]
then
	echo "Employee is absent"
	echo "Daily Wage=0"
elif [ $randomCheck -eq 1 ]
then
	echo "Employee is Full Time"
	WageCalculation $FULL_TIME_HOUR
else
	echo "Employee is Half Time"
	WageCalculation $PART_TIME_HOUR
fi
