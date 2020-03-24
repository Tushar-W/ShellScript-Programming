
 cd ..
 ls
 mkdir AWKCommands
 ls
 cd AWKCommands/
 cd ..
 cd ProcessManagement/
 ls
 ps -elf | grep java | grep -v grep
 ps -elf
 java HelloWorld &
 ps -elf
 which /usr/bin/bash
 ps -elf | grep java | grep -v grep | awk '{ print $2 }'
 kill -9 `ps -elf | grep java | grep -v grep | awk '{ print $2 }'`
 mypid= `ps -elf | grep java | grep -v grep | awk '{ print $2 }'`
 echo $mypid
 kill -9 $mypid
 echo Hello Tom
 echo Hello Tom | awk '{ print $0 }'
 echo Hello Tom | awk '{ print $2 }'
 echo Hello Tom | awk '{ $2 = "Adam"} { print $0 }'
 ls
 cd ..
 cd ..
 cd TerminalCommands/
 ls
 cd linux-content/
 cat data.csv
 cat data.csv | grep -i captain | awk '{ print $2 " " $4}'
 cat data.csv | grep -i captain | awk '{ sum+=$4 }END{ print sum}'
 cat data.csv | grep -i captain | awk '{ sum+=$4 }END{ print sum/NR }'
 nano AWKCommands.sh
