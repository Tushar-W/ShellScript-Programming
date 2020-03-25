
#!/bin/bash -x

read -p  "Enter Single Digit Number   :" digit;

case	$digit	in
			0)
				echo  "ZERO"
				;;
			1)
				echo  "ONE"
				;;
			2)
				echo  "Two"
				;;
			3)
				echo  "THREE"
				;;
			4)
				echo  "FOUR"
				;;
			5)
				echo  "FIVE"
				;;
			6)
				echo  "SIX"
				;;
			7)
				echo  "SEVENTH"
				;;

			8)
				echo  "EIGHT"
				;;
			9)
				echo  "NINE"
				;;
			*)
 				echo  "Please Enter Single Digit Number"
				;;
esac
