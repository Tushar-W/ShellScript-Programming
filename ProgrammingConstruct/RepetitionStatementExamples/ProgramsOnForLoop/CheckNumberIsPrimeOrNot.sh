

#!/bin/bash -x

read  -p "Enter Number  :"  number;
count=0;

if [    "$number" != 0   ] && [  "$number" != 1  ];
then

   for   (( tempNum=1;  tempNum <= number;  tempNum++   ))
   do

      if [  $((number%tempNum)) == 0  ];
      then
         count=$((++count))
      fi
   done

  	if [  "$count" == 2 ]
  	then
		echo "$number Is prime"
  	else
      echo  "$number Is Not Prime"
  	fi
else
   if [ "$number" == 0  ]
   then
      echo  "0 Is Not Prime Number"
   else
      echo  "1 Is Neither Prime Nor Composite Number"
   fi
fi
