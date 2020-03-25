
#!/bin/bash


for fileName in $(ls)
do
	#take extention available in a fileName
	ext=${fileName##*\.}


	case "$ext" in
		java)   echo "$fileName : Java source file"
			;;
	 	o)     echo "$fileName : Object file"
        	        ;;
		sh) 	echo "$fileName : Shell Script"
	                ;;
		txt) 	echo "$fileName : Text file"
        	        ;;
		*) 	echo "$fileName : Not processed"
        	        ;;
	esac
done
