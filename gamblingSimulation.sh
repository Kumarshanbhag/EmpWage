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
	amount[Day$i]=$(($STAKE-$cash))
	echo "Amount on Day$i = ${amount[Day$i]}"
done
}

function PercentageLimit(){
percent=$(($STAKE*50/100));
Gamble
}

STAKE=100
BET=1
PercentageLimit
