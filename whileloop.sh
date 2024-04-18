#!/bin/bash

var=1

while [ $var -le 10 ]
do
	echo 192.168.0.$var
	echo "this is echo number" $var
	((var++))
done
