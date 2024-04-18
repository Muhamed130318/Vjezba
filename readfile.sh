#!/bin/bash

file="filetest.txt"

while read line
do
	echo $line
done < $file


