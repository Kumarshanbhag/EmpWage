#!/bin/bash -x
declare -A result
echo "Welcome to Arithmetic Computing and Sorting"
read -p "Enter 3 values to perform operation " a b c
echo -e "Three numbers are : \n$a \n$b \n$c"
result[Operation1]=$(($a+$b*$c))
result[Operation2]=$(($a*$b+$c))
result[Operation3]=$(($c+$a/$b))
result[Operation4]=$(($a%$b+$c))
echo "$a + $b * $c = ${result[Operation1]}"
echo "$a * $b + $c = ${result[Operation2]}"
echo "$c + $a / $b = ${result[Operation3]}"
echo "$a % $b + $c = ${result[Operation4]}"
