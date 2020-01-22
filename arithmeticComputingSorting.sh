#!/bin/bash -x
echo "Welcome to Arithmetic Computing and Sorting"
read -p "Enter 3 values to perform operation " a b c
echo -e "Three numbers are : \n$a \n$b \n$c"
f1=$(($a+$b*$c))
echo "$a + $b * $c = $f1"
