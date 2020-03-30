#!/bin/bash -x

declare -A diceNum
# VARIABLES
count=1;

while [ $count != 10 ]
do
	diceNum[$count]=$((RANDOM%6 + 1))
	((count++))
done

echo ${diceNum[@]}
echo ${!diceNum[@]}
