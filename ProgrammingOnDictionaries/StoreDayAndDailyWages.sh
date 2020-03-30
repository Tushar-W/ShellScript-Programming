#!/bin/bash -x

# CONSTANTS
IS_FULL_TIME=1;
IS_PART_TIME=2;
EMP_WAGE_PER_HR=20;
DAYS_IN_MONTH=20;
MAX_HRS_IN_MONTH=4;
# VARIABLES
totalWorkingHr=0;
totalWorkingDays=0;

function getWorkingHours() {
		workHr=$1;
		case $workHr in
				$IS_FULL_TIME)
						workHr=8
						;;
				$IS_PART_TIME)
						workHr=4
						;;
				*)
						workHr=0
						;;
		esac
		echo $workHr
}
function calcDailyWage() {
		local workHr=$1;
		wage=$((workHr*EMP_WAGE_PER_HR));
		echo $wage
}

while [[ $totalWorkingHr -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $DAYS_IN_MONTH ]]
do
	workHr="$( getWorkingHours $((RANDOM%3)) )"
	totalWorkHrs=$((totalWorkHrs+workHr));
	empDailyWage["$totalWorkingDays"]="$( calcDailyWage $workHr )";
	((totalWorkingDays++))
done
totalWage="$( calcDailyWage $totalWorkHrs)";
echo "Daily Wage" ${empDailyWage[@]}
echo "Days" ${!empDailyWage[@]}
