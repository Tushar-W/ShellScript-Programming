

#!/bin/bash	-x

read	-p	"Enter The Number	:	"	number;
fact=1;

for	((	count=1;	count	<=	number;	count++	))
do
	fact=$((fact	*	count));
done

echo	"$number!	=	$fact"
