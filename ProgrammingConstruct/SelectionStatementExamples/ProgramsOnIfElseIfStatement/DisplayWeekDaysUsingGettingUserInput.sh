
#!/bin/bash -x

read -p  "Enter Week Day Number   :" day;

if    [  $day ==   1  ];
then
         echo  "SUNDAY"
elif  [  $day ==   2  ];
then
         echo  "MONDAY"
elif  [  $day ==   3  ];
then
         echo  "TUESDAY"
elif  [  $day ==   4  ];
then
         echo  "WEDNESDAY"
elif  [  $day ==   5  ];
then
         echo  "THURSDAY"
elif  [  $day ==   6  ];
then
         echo  "FRIDAY"
elif  [  $day ==   7  ];
then
         echo  "SATURDAY"
else
         echo  "Please Enter Single Digit Number"
fi
