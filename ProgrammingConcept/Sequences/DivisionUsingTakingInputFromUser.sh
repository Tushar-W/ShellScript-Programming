
#!/bin/bash -x

read -p "Enter First Number : " firstNum
read -p "Enter Second Number : " secondNum

division=$(( $firstNum / $secondNum ));

echo "Division Is : " $division
