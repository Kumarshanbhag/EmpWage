#!/bin/bash -x
echo "Welcome to Gambling Simulation"
STAKE=100
BET=1
cash=$STAKE

if((RANDOM%2==0))
then
	echo "Bet Won"
	((cash++))
else
	echo "Bet Lost"
	((cash--))
fi

