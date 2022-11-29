#!/bin/bash

isPresent=$((RANDOM%3));
perHourWage=20;
workingHour=8;

if [ $isPresent -eq 0 ]
then
	echo "Empolyee is absent";
	workingHour=0;

elif [ $isPresent -eq 1 ]
then
	echo "Empolyee is present";
	workingHour=8;
else 
	echo "Empolyee is working as part time";
	workingHour=4;
fi

wage=$(($perHourWage * $workingHour));
echo "Empolyee has earned $wage $ today";