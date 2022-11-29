#!/bin/bash

isPresent=$((RANDOM%3));
if [ $isPresent -eq 0 ]
then
	echo "Empolyee is absent";
elif [ $isPresent -eq 1 ]
then
	echo "Empolyee is present";
else 
	echo "Empolyee is working as part time";
fi
