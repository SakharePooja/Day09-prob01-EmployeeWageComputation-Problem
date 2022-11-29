#!/bin/bash

isPresent=$((RANDOM%3));
perHourWage=20;
day_Hr=8;
daysOf_Month=20;

case $isPresent in
	0)  
		echo "Empolyee is absent";
		workingHour=0;
	;;

	1)
		echo "Empolyee is present";
		workingHour=$day_Hr;
	;;
	
	*)
		echo "Empolyee is working as part time";
		workingHour=$(( $day_Hr/2 ));
esac

wage=$(($perHourWage * $workingHour));
echo "Empolyee has earned $wage today";
Month_wage=$(($wage * daysOf_Month));
echo "Empolyee has earned $Month_wage";