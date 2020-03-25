
#!/bin/bash -x

read -p  "Enter Single Digit Number   :" digit;

if    [  $digit ==   0  ];
then
         echo  "ZERO"
elif  [  $digit ==   1  ];
then
         echo  "ONE"
elif  [  $digit ==   2  ];
then
         echo  "Two"
elif  [  $digit ==   3  ];
then
         echo  "THREE"
elif  [  $digit ==   4  ];
then
         echo  "FOUR"
elif  [  $digit ==   5  ];
then
         echo  "FIVE"
elif  [  $digit ==   6  ];
then
         echo  "SIX"
elif  [  $digit ==   7  ];
then
         echo  "SEVENTH"
elif  [  $digit ==   8  ];
then
         echo  "EIGHT"
elif  [  $digit ==   9  ];
then
         echo  "NINE"
else
         echo  "Please Enter Single Digit Number"
fi
