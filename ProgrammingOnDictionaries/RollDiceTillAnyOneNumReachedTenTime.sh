#!/bin/bash -x

count=0;
while [ $count != 10 ]
do
	echo $((RANDOM%6 + 1))
	((count++));
done
