#!/bin/bash -x

read  -p "Enter The Power :  "  power;
base=2;
result=0;

limit=$((base**power));

if [  $limit -lt 256 ]
then
   tempVar=limit;
else
   tempVar=256;
fi

for   (( count=0; result<tempVar;  count++  ))
do
      result=$((base**count));
      echo  "$base^$count  =  $result"
done
