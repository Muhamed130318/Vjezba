#!/bin/bash

echo "Please enter your age: "

read -p "Age: " age

if [ $age -lt 18 ]
then
	echo "Warning, you are underage. Access denied."
else
	echo "Welcome!"
fi
