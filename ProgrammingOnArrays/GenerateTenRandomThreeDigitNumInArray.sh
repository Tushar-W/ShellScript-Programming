#!/bin/bash	-x

function getSecLargestNum() {
		randomNums=("$@");
		local maxNum=${randomNums[0]};
		local secMaxNum=0;

		for (( count=0; count < ${#randomNums[@]}; count++ ))	#${#randomNums[@]} give size of array
		do
			if [ ${randomNums[count]} -gt $maxNum ];
			then
				secMaxNum=$maxNum;
				maxNum=${randomNums[count]};
			elif [ ${randomNums[count]} -gt $secMaxNum ];
			then
				secMaxNum=${randomNums[count]};
			fi
		done
		echo $secMaxNum
}

function getSecSmallestNum() {
		randomNums=("$@");
		local minNum=${randomNums[0]};
		local secMinNum=${randomNums[1]};

		for (( count=0; count < ${#randomNums[@]}; count++ ))
		do
			if [ ${randomNums[count]} -lt $minNum ];
			then
				secMinNum=$minNum;
				minNum=${randomNums[count]};
			elif [[ ${randomNums[count]} -gt $minNum && ${randomNums[count]} -lt $secMinNum ]];
			then
				secMinNum=${randomNums[count]};
			fi
		done
		echo $secMinNum
}

function getRandomThreeDigitNum() {
		for (( counter=0;	counter < 10; counter++ ))
		do
			result=$((RANDOM%1000))
			if [ $result -ge 100 ];
			then
				randomNums[((counter))]=$result
			else
				((counter--))
			fi
		done
		echo ${randomNums[@]}
}

randomNums="$( getRandomThreeDigitNum )"
secLargestNum="$( getSecLargestNum ${randomNums[@]} )"
secSmallestNum="$( getSecSmallestNum ${randomNums[@]} )"
echo $secLargestNum
echo $secSmallestNum
