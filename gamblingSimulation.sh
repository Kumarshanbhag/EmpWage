#!/bin/bash -x
echo "Welcome to Gambling Simulation"
function Gamble(){
while [[ $cash -lt $(($STAKE+$percent)) && $cash -gt $(($STAKE-$percent)) ]]
do
	if((RANDOM%2==0))
	then
		echo "Bet Won"
		((cash++))
	else
		echo "Bet Lost"
		((cash--))
	fi
	echo "Stake=$cash"
done
}

function PercentageLimit(){
percent=$(($STAKE*50/100));
Gamble
}

STAKE=100
BET=1
cash=$STAKE
PercentageLimit


