#!/bin/bash 
echo "Welcome to Gambling Simulation"
declare -A amount

function Gamble(){
for((i=1; i<=20; i++))
do
	cash=$STAKE
	while [[ $cash -lt $(($STAKE+$percent)) && $cash -gt $(($STAKE-$percent)) ]]
	do
		if((RANDOM%2==0))
		then
			((cash++))
		else
			((cash--))
		fi
	done
	amount[Day$i]=$(($cash-$STAKE))
done
TotalAmount 
}

function TotalAmount {
amount[Day0]=0
for ((i=1; i<=20; i++))
do
 		j=$i
	amount[Day$j]=$(( ${amount[Day$j]} + ${amount[Day$((j-1))]} ))
	echo "Amount on Day$i = ${amount[Day$j]}"
done
}

function LuckyAndUnlucky {
compare=$2
day=0
for ((i=2; i<=20; i++))
do
 	if((compare $1= ${amount[Day$i]}))	
	then
		day=$i
		compare=${amount[Day$i]}
	fi
done
}

function PercentageLimit(){
percent=$(($STAKE*50/100));
Gamble
}

STAKE=100
BET=1
PercentageLimit

LuckyAndUnlucky '<' ${amount[Day1]}
echo "Lucky Day is $day And Amount won is $compare"
LuckyAndUnlucky '>' ${amount[Day1]}
echo "Unlucky Day is $day And Amount won is $compare"

while((${amount[Day20]} >= 0 ))
do
	echo "Playing Next Month"
	Gamble
done
echo "Wont Play Next Month"
