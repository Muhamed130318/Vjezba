#!/bin/bash

function test {
	i=0
	while [ $i -le 12 ]
	do
		#echo $i
		((i++))
	done
echo $i
echo "I am the first function"
}

function test2 {
	i=0
	while [ $i -le 22 ]
	do
		#echo $i
		((i++))
	done
echo $i
echo "I am the second function" 
}

echo "Please choose which function you would like to run: "

read -p "function1 or function2 or both: " func

if [ $func = "function1" ]
then
	test
elif [ $func = "function2" ]
then
	test2
else
	test
	test2
fi


