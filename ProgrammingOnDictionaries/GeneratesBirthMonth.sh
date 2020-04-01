#!/bin/bash -x

declare -A birthMonth

function checkMonth() {
		case $1 in
					1)
						month="January"
						;;
					2)
						month="February"
						;;
					3)
						month="March"
						;;
					4)
						month="April"
						;;
					5)
						month="May"
						;;
					6)
						month="June"
						;;
					7)
						month="Jully"
						;;
					8)
						month="August"
						;;
					9)
						month="September"
						;;
					10)
						month="October"
						;;
					11)
						month="November"
						;;
					12)
						month="December"
						;;
		esac
		echo $month
}
count=1;
while [ $count != 25 ]
do
		birthMonth[$count]=0;
		((count++))
done
count=1;
while [ $count != 51 ]
do
		monthNo=$((RANDOM%24 + 1))
		noOfPeople=birthMonth[$monthNo]
		birthMonth[$monthNo]=$((++noOfPeople))
		((count++))
done
count=1;
while [ $count != 25 ]
do
		if [ $count -le 12 ];
		then
				month=$( checkMonth $count )
				echo $month "92 ==" ${birthMonth[$count]}
		elif [ $count -eq 24 ];
		then
				num=$((count%12 + 12))
				month=$( checkMonth $num )
				echo $month "93 ==" ${birthMonth[$count]}
		else
				num=$((count%12))
				month=$( checkMonth $num )
				echo $month "93 ==" ${birthMonth[$count]}
		fi
		((count++))
done
