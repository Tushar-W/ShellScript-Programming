
#!/bin/bash -x

read -p "Enter First Number : " firstNum
read -p "Enter Second Number : " secondNum

modulus=$(( $firstNum % $secondNum ));

echo "Modulus Is : " $modulus
