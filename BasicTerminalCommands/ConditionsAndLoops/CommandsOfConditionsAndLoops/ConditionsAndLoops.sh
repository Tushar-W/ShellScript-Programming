

 pwd
 cd ..
 cd ..
 cd Tushar
 cd Developement/
 mkdir ConditionsAndLoops
 cd ConditionsAndLoops/
 ls
 mkdir commands
 cd commands/
 ls
 touch abc.txt def.txt
 ls
 ls *.txt
 echo `ls *.txt`
 ls -p
 ls -a
 ls -p
 for file in `ls *.txt`;
 do
	echo $file;
 done
 for file in `ls *.txt`;
 do
        folderName=`echo $file | awk -F. '{print $1}'`;
 	echo $folderName;
 done
  for file in `ls *.txt`;
 do
        folderName=`echo $file | awk -F. '{print $2}'`;
        echo $folderName;
 done
 for file in `ls *.txt`;
 do
	folderName=`echo $file | awk -F. '{print $1}'`;
	mkdir $folderName;
	cp $file $folderName;
	echo Copied $file to $folderName/;
 done
 ls -p
 ls -p abc/
 ls -p def/
 cd ..
 ls
 mkdir forLoop
 cd forLoop
 nano forloop.sh
 less forloop.sh
 cat forloop.sh
 ls -l forloop.sh
 chmod +x forloop.sh
 ./forloop.sh
 cp --help
 nano displayFileNameUsingForLoop.sh
 ./displayFileNameUsingForLoop.sh
 nano displayFileExtentionUsingForLoop.sh
 ./displayFileExtentionUsingForLoop.sh
 nano displayFileExtentionUsingForLoop.sh
 ./displayFileExtentionUsingForLoop.sh
 nano displayFileNameUsingVarInForLoop.sh
 ./displayFileNameUsingVarInForLoop.sh
  nano copytxtFileToResDirectoryUsingForloop.sh
 ./copytxtFileToResDirectoryUsingForloop.sh
 nano copytxtFileToResDirectoryUsingForloop.sh
 ./copytxtFileToResDirectoryUsingForloop.sh
 ls abc def
 nano copytxtFileToResDirectoryUsingForloop.sh
 ./copytxtFileToResDirectoryUsingForloop.sh
 ls abc def
 nano usingIfCondCheckFolderExistinForLoop.sh
 nano -T 3 usingIfCondCheckFolderExistinForLoop.sh
 ./usingIfCondCheckFolderExistinForLoop.sh
 nano usingIfCondCheckFolderExistinForLoop.sh
 ./usingIfCondCheckFolderExistinForLoop.sh
 nano usingIfCondCheckFolderExistinForLoop.sh
 ./usingIfCondCheckFolderExistinForLoop.sh
 ls -p
 nano ConditionsAndLoops.sh
