
#!/bin/bash -x

read  -p "Enter The Number :  " number;
echo  -n  "Hn =  "

for   (( count=1; count <= number; count++  ))
do
  if  [ "$count"  -ge  2 ];
  then
    echo  -n  "+  1/$count "
  else
    echo  -n  "1/$count "
  fi
done
printf "\n";
