
#!/bin/bash -x

read  -p "Enter Range  :"  range;
count=0;

if [    "$range" != 0   ] && [  "$range" != 1  ];
then
	echo	"Prime Number Within The $range"

   for   (( i=2;  i <=  range;  i++   ))
   do

		for ((  j=1;  j <= i; j++ ))
    	do

			if [  $((i%j)) == 0  ];
      	then
      		count=$((count+1))
     	 	fi
    	done

      if [  "$count" == 2 ]
      then
      	echo  "$i"
      fi
      count=0;
  	done
else
   echo "No Prime Numbers In This Range"
fi
