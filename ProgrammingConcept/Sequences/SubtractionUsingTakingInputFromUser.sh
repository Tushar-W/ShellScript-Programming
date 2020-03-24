
#!/bin/bash -x

read -p "Enter First Number : " firstNum
read -p "Enter Second Number : " secondNum

subtraction=$(( $firstNum - $secondNum ));

echo "Subtraction Of Two Number Is : " $subtraction
