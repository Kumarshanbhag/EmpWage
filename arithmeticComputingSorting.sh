#!/bin/bash -x
declare -A result
echo "Welcome to Arithmetic Computing and Sorting"
read -p "Enter 3 values to perform operation " a b c
echo -e "Three numbers are : \n$a \n$b \n$c"
count=1
result["Operation "$((count++))]=$(($a+$b*$c))
result["Operation "$((count++))]=$(($a*$b+$c))
result["Operation "$((count++))]=$(($c+$a/$b))
result["Operation "$((count++))]=$(($a%$b+$c))

for((i=1; i<=4; i++))
do
	arr[$i]=${result[Operation $i]}
done
echo "$a + $b * $c = ${arr[1]}"
echo "$a * $b + $c = ${arr[2]}"
echo "$c + $a / $b = ${arr[3]}"
echo "$a % $b + $c = ${arr[4]}"

echo "Before sorting : "
echo ${arr[@]}
echo "After Descending sorting:"
for((i=1; i<=4; i++))
do
	for((j=$i+1; j<=4; j++))
	do
		if((${arr[$i]} < ${arr[$j]}))
		then
			temp=${arr[$i]}
			arr[$i]=${arr[$j]}
			arr[$j]=$temp
		fi
	done
done

echo ${arr[@]}

echo "After Ascending sorting:"
for((i=1; i<=4; i++))
do
	for((j=$i+1; j<=4; j++))
	do
		if((${arr[$i]} > ${arr[$j]}))
		then
			temp=${arr[$i]}
			arr[$i]=${arr[$j]}
			arr[$j]=$temp
		fi
	done
done

echo ${arr[@]}
