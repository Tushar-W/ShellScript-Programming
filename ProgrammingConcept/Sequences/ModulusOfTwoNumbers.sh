
#!/bin/bash -x

firstNum=50;
secondNum=20;

modulus=$(( $firstNum % $secondNum ));

echo $modulus
