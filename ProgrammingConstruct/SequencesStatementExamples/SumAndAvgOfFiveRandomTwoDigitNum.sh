
#!/bin/bash -x

firstValue=$(( RANDOM%100 ));
secondValue=$(( RANDOM%100 ));
thirdValue=$(( RANDOM%100 ));
fourthValue=$(( RANDOM%100 ));
fifthValue=$(( RANDOM%100 ));

sum=$(( firstValue + secondValue + thirdValue + fourthValue + fifthValue ));
avg=$(( sum/5 ));

echo "Sum Of 5 Random Values Is : " $sum
echo "Average Of 5 Random Values Is :" $avg
