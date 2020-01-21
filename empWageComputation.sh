#!/bin/bash -x
echo "Welcome to employee wage"
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
if(($((RANDOM%2))==0 ))
then
	echo "Employee is absent"
	echo "Daily Wage=0"
else
	echo "Employee is present"
	echo "Daily Wage=$(($WAGE_PER_HOUR * $FULL_DAY_HOUR))"
fi
#echo $dailyWage
