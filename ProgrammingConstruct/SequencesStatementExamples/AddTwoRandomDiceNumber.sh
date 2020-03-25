
#!/bin/bash -x

firstDiceNum=$((  RANDOM%6 + 1 ));
secondDiceNum=$(( RANDOM%6 + 1 ));

echo "Addition OF Two Random Dice Number Is :" $(( firstDiceNum + secondDiceNum ))
