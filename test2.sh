#!/bin/bash

varCount(){

	echo "there are $# variables."
	echo  "User" $USER $UID  "has run this script."

}

varCount "var, var2", "var3", "var4", "var5"

echo "Please select an answer: 1 or 2"
read answer

if(($answer == 1))
	then echo "Hello1"
else
	echo "Bye2"
fi

echo "Your answer was $answer."






exit 15
