#!/bin/bash -x
echo "Welcome to employee wage"
WAGE_PER_HOUR=20
FULL_TIME_HOUR=8
PART_TIME_HOUR=4
IS_ABSENT=0
monthlyWage=0
day=1
working_Hours=0

function WageCalculation() {
   timeInHours=$1
   day=$2
   working_Hours=$(($working_Hours + $timeInHours))
   dailyWage[$day]=$(($timeInHours * $WAGE_PER_HOUR))
   monthlyWage=$((${dailyWage[$day]} + $monthlyWage))
   echo "Working Hours=$working_Hours"
}

function EmployeeAttendance() {
randomCheck=$1
case $randomCheck in
      0)
         echo "Employee is absent on day $day"
         WageCalculation $IS_ABSENT $day
      ;;
      1)
         echo "Employee is Part Time on day $day"
         WageCalculation $PART_TIME_HOUR $day 
      ;;
      2)
         echo "Employee is Full Time on day $day"
         WageCalculation $FULL_TIME_HOUR $day
      ;;
   esac
}

while [[ $day -le 20 && $working_Hours -lt 100 ]]
do
   if(($working_Hours > 92))
   then
      randomCheck=$((RANDOM%2))
      EmployeeAttendance $randomCheck
   else
      randomCheck=$((RANDOM%3))
      EmployeeAttendance $randomCheck
   fi
   echo "Daily Wage=${dailyWage[$day]}"
   ((day++))
done
echo "Monthly Wage=$monthlyWage"
