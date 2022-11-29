#!/bin/bash

isPresent=$((RANDOM%3));
perHourWage=20;
day_Hr=8;

if [ $isPresent -eq 0 ]
then
	echo "Empolyee is absent";
	workingHour=0;

elif [ $isPresent -eq 1 ]
then
	echo "Empolyee is present";
	workingHour=$day_Hr;
else 
	echo "Empolyee is working as part time";
	workingHour=$(( $day_Hr/2 ));
fi

wage=$(($perHourWage * $workingHour));
echo "Empolyee has earned $wage today";