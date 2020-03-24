
#!/bin/bash -x

echo "Enter Three Numbers"

read -p "First : " first;
read -p "Second : " second;
read -p "Third : " third;

echo "1. a + b * c"
echo "Answer Is : " $(( $first + $second * $third ))

echo "2. a % b + c"
echo "Answer Is : " $(( $first % $second + $third ))

echo "3. c + a / b"
echo "Answer Is : " $(( $third + $first / $second ))

echo "4. a * b + c"
echo "Answer Is : " $(( $first * $second + $third ))
