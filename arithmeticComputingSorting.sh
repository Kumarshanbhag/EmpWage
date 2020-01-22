#!/bin/bash -x
echo "Welcome to Arithmetic Computing and Sorting"
read -p "Enter 3 values to perform operation " a b c
echo -e "Three numbers are : \n$a \n$b \n$c"
f1=$(($a+$b*$c))
f2=$(($a*$b+$c))
f3=$(($c+$a/$b))
f4=$(($a%$b+$c))
echo "$a + $b * $c = $f1"
echo "$a * $b + $c = $f2"
echo "$c + $a / $b = $f3"
echo "$a % $b + $c = $f4"
