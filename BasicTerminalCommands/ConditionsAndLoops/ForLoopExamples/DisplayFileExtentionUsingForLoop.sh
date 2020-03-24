
#!/bin/bash -x

for file in `ls *.txt`;
do
	echo $file | awk -F. '{print $2}';
done
