
#!/bin/bash -x

function	checkPrime()	{
	num=$1
	count=0;

   	for   (( tempNum=1;  tempNum <= num;  tempNum++   ))
   	do

      	if [  $((number%tempNum)) == 0  ];
      	then
         	count=$((++count))
      	fi
   	done

  		if [  "$count" == 2 ]
  		then
			echo	"1"
  		else
      	echo  "0"
  		fi
}

function getPalindrome() {
   num=$1;
   local rem;
   local revNum;
   while [  $((num%10)) -ne   0  ]
   do
      rem=$((num%10));
      num=$((num/10));
      revNum="${revNum}${rem}"
   done
   echo  "$revNum"
}

read  -p "Enter Number : " number;

result="$(  checkPrime   "number"  )"
if	[	"$result"	==	1	];
then
	echo	"$number Is Prime"
	palindromeNum="$(	getPalindrome	"number"	)"
	result="$(	checkPrime	"palindromeNum"	)"

	if	[	"$result"	==	1	];
	then
		echo	"$palindromeNum Is Also Prime"
	else
		echo	"$palindromeNum Is Not Prime"
	fi
else
	echo	"$number Is Not Prime"
fi
