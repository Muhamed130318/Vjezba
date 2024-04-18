#!/bin/bash


var=$(ls -la | cut -d ' ' -f 4)

#echo -e "$var\n"

for ((i=${#var}-1; i>=0; i--))
	do rev=$rev${var:i:1}
done

#echo -e "$rev\n"

#echo ${#var}

sed "s/$(ls -la | cut -d ' ' -f 4)/$rev/g"
