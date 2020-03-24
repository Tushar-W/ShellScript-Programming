
#!/bin/bash -x

read -p "Enter First Number : " firstNum
read -p "Enter Second Number : " secondNum

sum=$(( $firstNum + $secondNum ));

echo "Addition Is : " $sum
