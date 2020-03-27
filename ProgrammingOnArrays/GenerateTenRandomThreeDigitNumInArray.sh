#!/bin/bash	-x

for	((	counter=0;	counter < 10;	counter++	))
do
		result=$((RANDOM%1000))
		if	[	$result	-ge	100	];
		then
			randomNum[((counter))]=$result
		else
			((counter--))
		fi
done

echo "${randomNum[@]}"
