#!/bin/bash -x
echo "Welcome to employee wage"
if(($((RANDOM%2))==0 ))
then
	echo "Employee is absent"
else
	echo "Employee is present"
fi
