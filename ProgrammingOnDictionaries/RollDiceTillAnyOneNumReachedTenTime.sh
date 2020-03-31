#!/bin/bash -x

declare -A diceNum
diceNum[1]=0;
diceNum[2]=0;
diceNum[3]=0;
diceNum[4]=0;
diceNum[5]=0;
diceNum[6]=0;

function getMaxTimeRollDiceNum() {
      diceNum=$@;
      for ((count=1; count<=6; count++))
      do
         if [ ${diceNum[$count]} -eq 10 ];
         then
               echo $count
               break;
         fi
      done
}
function getMinTimeRollDiceNum() {
      diceNum=$@;
      local minNum=$1
      for ((count=1; count<=6; count++))
      do
         if [ ${diceNum[$count]} -lt $minNum ];
         then
               minNum=${diceNum[$count]};
         fi
      done
      local count=1;
      while [ $count != 7 ]
      do
         if [ ${diceNum[$count]} -eq $minNum ];
         then
               echo $count
         fi
         ((count++))
      done
}

while [ true ]
do
   result=$((RANDOM%6 + 1))
   num=${diceNum[$result]}
   echo $num
   diceNum[$result]=$((++num))
   if [ $num -eq 10 ];
   then
         break
   fi
done
maxTimeRollDiceNum=$( getMaxTimeRollDiceNum ${diceNum[@]} );
minTimeRollDiceNum=$( getMinTimeRollDiceNum ${diceNum[@]} ${diceNum[1]} );
echo ${diceNum[@]}
echo ${!diceNum[@]}

