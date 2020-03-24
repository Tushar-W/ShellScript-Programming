
#!/bin/bash -x

for file in `ls *.txt`;
do
	folderName=`echo $file | awk -F. '{print $1}'`;

	#echo "Checking for already existing directory";

	if [ -d $foldername ];
	then
		rm -r $folderName;
	fi

	#echo creating folder ${foldername};
	mkdir $folderName;

	#echo copying ${file} to ${folderName};
	cp $file $folderName;
done
