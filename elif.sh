#!/bin/bash

echo "Please enter your age:"
read -p "Age: " age

if [ $age -lt 18 ] || [ $age -eq 18 ]
then
	echo "Warning, you are underage."
elif [ $age -gt 70 ]
then
	echo "You are over the age limit"
else
	echo "Welcome!"
fi
