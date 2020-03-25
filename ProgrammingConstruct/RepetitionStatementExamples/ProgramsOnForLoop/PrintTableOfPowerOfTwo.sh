
#!/bin/bash -x

read	-p	"Enter The Number	:	"	number;
base=2;
power=0;

limit=$((base**number));

for	((	count=0;	count <=number;	count++	))
do
		power=$((base**count));
		echo	"$base^$count	=	$power"
done
